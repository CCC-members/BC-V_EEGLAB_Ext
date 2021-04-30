classdef Redefine_channels < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure             matlab.ui.Figure
        CancelButton         matlab.ui.control.Button
        SetlabelsButton      matlab.ui.control.Button
        SelectedlayoutPanel  matlab.ui.container.Panel
        Layout_UITable       matlab.ui.control.Table
        SelectallCheckBox    matlab.ui.control.CheckBox
        NoteUncheckthelabelsthatyoudontwanttouseintheanalysisLabel  matlab.ui.control.Label
        Labelsmarked         matlab.ui.control.Label
    end

    
    properties (Access = public)
        labels_file % Description
        canceled % Description
    end
    
    properties (Access = private)
    end
    
    methods (Access = public)
        
        function load_channel_labels(app,layout)
             layout = strrep(layout,' ','_');
            
            if ft_filetype(layout, 'matlab')
                tmp = load(layout, 'lay*');
                if isfield(tmp, 'layout')
                    layout = tmp.layout;
                elseif isfield(tmp, 'lay')
                    layout = tmp.lay;
                else
                    ft_error('mat file does not contain a layout');
                end
            else
                layout = readlay(layout);
            end
            for i=1:length(layout.label) 
                fields(i).CheckBox = true;
            end
            order_layout.No         = [1:length(layout.label)]';
            order_layout.Check      = {fields.CheckBox}';
            order_layout.Labels     = layout.label;
            order_layout.Width      = layout.width;
            order_layout.Height     = layout.height;
            T                       = struct2table(order_layout);
            set(app.Layout_UITable, 'Data', T);
            ColumnWidth = app.Layout_UITable.ColumnWidth;            
            set(app.Layout_UITable, 'Data', T);             
            set(app.Layout_UITable, 'ColumnWidth', ColumnWidth);
            set(app.Layout_UITable,'ColumnFormat',{'char','logical','char','char','char'});
            set(app.Layout_UITable,'ColumnEditable',[false,true,false,false,false]);
            app.Labelsmarked.Text = 'All labels selected';
        end
        
    end
    
    methods (Access = private)
             
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
             app.UIFigure.Name = 'Redefine channel labels';
             movegui(app.UIFigure,'center');
        end

        % Button pushed function: CancelButton
        function CancelButtonPushed(app, event)
            app.canceled = true;
            uiresume(app.UIFigure);
        end

        % Value changed function: SelectallCheckBox
        function SelectallCheckBoxValueChanged(app, event)
            value = app.SelectallCheckBox.Value;
            if(value)
                Data = app.Layout_UITable.Data;
                for i=1:size(Data,1)
                  Data.Check{i} = true;
                end
                set(app.Layout_UITable,'Data',Data);
                app.Labelsmarked.Text = 'All labels selected';
            else
                Data = app.Layout_UITable.Data;
                for i=1:size(Data,1)
                  Data.Check{i} = false;
                end
                set(app.Layout_UITable,'Data',Data);
                app.Labelsmarked.Text = 'Any one label selected';
            end
        end

        % Button pushed function: SetlabelsButton
        function SetlabelsButtonPushed(app, event)
            data = table2struct(app.Layout_UITable.Data);
            labels = {data.Labels}';
            checkeds = [data.Check]';
            labels = labels(checkeds);
            base_path = fileparts(fileparts(mfilename('fullpath')));
            saveJSON(labels,fullfile(base_path,'bcv_properties','labels.json'));
            app.labels_file = fullfile(base_path,'bcv_properties','labels.json'); 
            app.canceled = false;
            uiresume(app.UIFigure);
        end

        % Cell edit callback: Layout_UITable
        function Layout_UITableCellEdit(app, event)
            data = table2struct(app.Layout_UITable.Data);
            checks = [data.Check]';
            checkeds = checks;
            checkeds(checkeds==0) = [];
            if(isequal(length(checks),length(checkeds)))
                app.SelectallCheckBox.Value = true;
                app.Labelsmarked.Text = 'All labels selected';
            else
                app.SelectallCheckBox.Value = false;
                app.Labelsmarked.Text = strcat(num2str(length(checkeds))," labels selected");
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 489];
            app.UIFigure.Name = 'MATLAB App';

            % Create CancelButton
            app.CancelButton = uibutton(app.UIFigure, 'push');
            app.CancelButton.ButtonPushedFcn = createCallbackFcn(app, @CancelButtonPushed, true);
            app.CancelButton.Icon = 'cancel.jpg';
            app.CancelButton.Position = [452 12 80 22];
            app.CancelButton.Text = 'Cancel';

            % Create SetlabelsButton
            app.SetlabelsButton = uibutton(app.UIFigure, 'push');
            app.SetlabelsButton.ButtonPushedFcn = createCallbackFcn(app, @SetlabelsButtonPushed, true);
            app.SetlabelsButton.Icon = 'ok.png';
            app.SetlabelsButton.Position = [544 12 79 22];
            app.SetlabelsButton.Text = 'Set labels';

            % Create SelectedlayoutPanel
            app.SelectedlayoutPanel = uipanel(app.UIFigure);
            app.SelectedlayoutPanel.Title = 'Selected layout';
            app.SelectedlayoutPanel.FontWeight = 'bold';
            app.SelectedlayoutPanel.Position = [8 43 626 436];

            % Create Layout_UITable
            app.Layout_UITable = uitable(app.SelectedlayoutPanel);
            app.Layout_UITable.ColumnName = {'No.'; 'Select'; 'Label'; 'Width'; 'Height'};
            app.Layout_UITable.ColumnWidth = {35, 'auto', 'auto', 'auto', 'auto'};
            app.Layout_UITable.RowName = {};
            app.Layout_UITable.CellEditCallback = createCallbackFcn(app, @Layout_UITableCellEdit, true);
            app.Layout_UITable.Position = [8 7 610 352];

            % Create SelectallCheckBox
            app.SelectallCheckBox = uicheckbox(app.SelectedlayoutPanel);
            app.SelectallCheckBox.ValueChangedFcn = createCallbackFcn(app, @SelectallCheckBoxValueChanged, true);
            app.SelectallCheckBox.Text = 'Select all';
            app.SelectallCheckBox.FontWeight = 'bold';
            app.SelectallCheckBox.Position = [76 362 74 22];
            app.SelectallCheckBox.Value = true;

            % Create NoteUncheckthelabelsthatyoudontwanttouseintheanalysisLabel
            app.NoteUncheckthelabelsthatyoudontwanttouseintheanalysisLabel = uilabel(app.SelectedlayoutPanel);
            app.NoteUncheckthelabelsthatyoudontwanttouseintheanalysisLabel.Position = [8 388 609 22];
            app.NoteUncheckthelabelsthatyoudontwanttouseintheanalysisLabel.Text = 'Note: Uncheck the labels that you don''t want to use in the analysis';

            % Create Labelsmarked
            app.Labelsmarked = uilabel(app.SelectedlayoutPanel);
            app.Labelsmarked.FontWeight = 'bold';
            app.Labelsmarked.Position = [164 363 213 22];
            app.Labelsmarked.Text = '(Labels marked)';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Redefine_channels

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end