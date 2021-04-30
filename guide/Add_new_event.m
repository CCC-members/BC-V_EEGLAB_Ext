classdef Add_new_event < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        AddneweventUIFigure      matlab.ui.Figure
        AddButton                matlab.ui.control.Button
        CancelButton             matlab.ui.control.Button
        EventnameEditFieldLabel  matlab.ui.control.Label
        EventnameEditField       matlab.ui.control.EditField
    end

    
    properties (Access = public)
        canceled % Description
        event_name % Description
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            movegui(app.AddneweventUIFigure,'center');
        end

        % Button pushed function: AddButton
        function AddButtonPushed(app, event)
            app.event_name = app.EventnameEditField.Value; 
            app.canceled = false;
            uiresume(app.AddneweventUIFigure);
        end

        % Button pushed function: CancelButton
        function CancelButtonPushed(app, event)
            app.canceled = true;
            uiresume(app.AddneweventUIFigure);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create AddneweventUIFigure and hide until all components are created
            app.AddneweventUIFigure = uifigure('Visible', 'off');
            app.AddneweventUIFigure.Position = [100 100 291 90];
            app.AddneweventUIFigure.Name = 'Add new event';
            app.AddneweventUIFigure.Resize = 'off';
            app.AddneweventUIFigure.WindowStyle = 'modal';

            % Create AddButton
            app.AddButton = uibutton(app.AddneweventUIFigure, 'push');
            app.AddButton.ButtonPushedFcn = createCallbackFcn(app, @AddButtonPushed, true);
            app.AddButton.Position = [220 12 61 22];
            app.AddButton.Text = 'Add';

            % Create CancelButton
            app.CancelButton = uibutton(app.AddneweventUIFigure, 'push');
            app.CancelButton.ButtonPushedFcn = createCallbackFcn(app, @CancelButtonPushed, true);
            app.CancelButton.Position = [148 12 66 22];
            app.CancelButton.Text = 'Cancel';

            % Create EventnameEditFieldLabel
            app.EventnameEditFieldLabel = uilabel(app.AddneweventUIFigure);
            app.EventnameEditFieldLabel.HorizontalAlignment = 'right';
            app.EventnameEditFieldLabel.Position = [8 50 73 22];
            app.EventnameEditFieldLabel.Text = 'Event name:';

            % Create EventnameEditField
            app.EventnameEditField = uieditfield(app.AddneweventUIFigure, 'text');
            app.EventnameEditField.Position = [96 50 185 22];

            % Show the figure after all components are created
            app.AddneweventUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Add_new_event

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.AddneweventUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.AddneweventUIFigure)
        end
    end
end