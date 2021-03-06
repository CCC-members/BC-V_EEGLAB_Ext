classdef BC_VARETA_guide < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        BCVARETAToolboxv10UIFigure      matlab.ui.Figure
        FileMenu                        matlab.ui.container.Menu
        DownloadtestdataMenu            matlab.ui.container.Menu
        ImportdataMenu                  matlab.ui.container.Menu
        ExitMenu                        matlab.ui.container.Menu
        ToolsMenu                       matlab.ui.container.Menu
        ViewMenu                        matlab.ui.container.Menu
        FigureMenu                      matlab.ui.container.Menu
        SubjectsresultMenu              matlab.ui.container.Menu
        SubjectsconnectivityMenu        matlab.ui.container.Menu
        SubjectsactivityMenu            matlab.ui.container.Menu
        RealEEGMenu                     matlab.ui.container.Menu
        HelpMenu                        matlab.ui.container.Menu
        TabGroup                        matlab.ui.container.TabGroup
        GeneralTab                      matlab.ui.container.Tab
        gener_PrincipalParamsPanel      matlab.ui.container.Panel
        gener_SelectOutputButton        matlab.ui.control.Button
        gener_OutputfolderEditField     matlab.ui.control.EditField
        OutputfolderLabel               matlab.ui.control.Label
        gener_AnalysislevelDropDown     matlab.ui.control.DropDown
        AnalysislevelDropDownLabel      matlab.ui.control.Label
        gener_RunbytrialsSwitch         matlab.ui.control.Switch
        RunbytrialsSwitchLabel          matlab.ui.control.Label
        gener_RunbyfrequencybinSwitch   matlab.ui.control.Switch
        RunbyfrequencybinSwitchLabel    matlab.ui.control.Label
        gener_GetsystemresponseSwitch   matlab.ui.control.Switch
        GetsystemresponseSwitchLabel    matlab.ui.control.Label
        gener_StructTemplateDropDown    matlab.ui.control.DropDown
        StructuraltamplateLabel         matlab.ui.control.Label
        DisablegraphicsSwitchLabel      matlab.ui.control.Label
        gener_DisablegraphicsSwitch     matlab.ui.control.Switch
        RuninGPUSwitchLabel             matlab.ui.control.Label
        gener_RuninGPUSwitch            matlab.ui.control.Switch
        DataconfigurationsPanel         matlab.ui.container.Panel
        gener_SelectInputButton         matlab.ui.control.Button
        gener_DataPathEditField         matlab.ui.control.EditField
        InputfolderLabel                matlab.ui.control.Label
        gener_DataFormatDropDown        matlab.ui.control.DropDown
        DataformatLabel                 matlab.ui.control.Label
        gener_CleanDataSwitch           matlab.ui.control.Switch
        CleandataLabel                  matlab.ui.control.Label
        gener_GoodSegSwitch             matlab.ui.control.Switch
        GoodsegLabel                    matlab.ui.control.Label
        gener_SelectImportPrepEDButton  matlab.ui.control.Button
        ExamplefileLabel                matlab.ui.control.Label
        gener_DataExampEditField        matlab.ui.control.EditField
        ExtractdatabyeventsMultiselectListBoxLabel  matlab.ui.control.Label
        gener_ExtractdatabyeventsMultiselectListBox  matlab.ui.control.ListBox
        AddeventButton                  matlab.ui.control.Button
        ClearselectionButton            matlab.ui.control.Button
        SensorTab                       matlab.ui.container.Tab
        sens_LayoutdescriptionPanel     matlab.ui.container.Panel
        sens_UITable                    matlab.ui.control.Table
        RedefinelabelsButton            matlab.ui.control.Button
        ResetlabelsButton               matlab.ui.control.Button
        sens_FieldtriptemplateDropDown  matlab.ui.control.DropDown
        spect_FreqPanel                 matlab.ui.container.Panel
        GridLayout                      matlab.ui.container.GridLayout
        NameLabel                       matlab.ui.control.Label
        ProcessLabel                    matlab.ui.control.Label
        StartLabel                      matlab.ui.control.Label
        EndLabel                        matlab.ui.control.Label
        delta_startEditField            matlab.ui.control.NumericEditField
        delta_endEditField              matlab.ui.control.NumericEditField
        theta_startEditField            matlab.ui.control.NumericEditField
        theta_endEditField              matlab.ui.control.NumericEditField
        alpha_startEditField            matlab.ui.control.NumericEditField
        alpha_endEditField              matlab.ui.control.NumericEditField
        beta_startEditField             matlab.ui.control.NumericEditField
        beta_endEditField               matlab.ui.control.NumericEditField
        gamma1_startEditField           matlab.ui.control.NumericEditField
        gamma1_endEditField             matlab.ui.control.NumericEditField
        gamma2_startEditField           matlab.ui.control.NumericEditField
        gamma2_endEditField             matlab.ui.control.NumericEditField
        delta_runSwitch                 matlab.ui.control.Switch
        theta_runSwitch                 matlab.ui.control.Switch
        alpha_runSwitch                 matlab.ui.control.Switch
        beta_runSwitch                  matlab.ui.control.Switch
        gamma1_runSwitch                matlab.ui.control.Switch
        gamma2_runSwitch                matlab.ui.control.Switch
        DeltaLabel                      matlab.ui.control.Label
        ThetaLabel                      matlab.ui.control.Label
        AlphaLabel                      matlab.ui.control.Label
        BetaLabel                       matlab.ui.control.Label
        Gamma1Label                     matlab.ui.control.Label
        Gamma2Label                     matlab.ui.control.Label
        spect_OtherparamsPanel          matlab.ui.container.Panel
        FreqresolutionLabel             matlab.ui.control.Label
        spect_freq_resolEditField       matlab.ui.control.NumericEditField
        SamplefreqLabel                 matlab.ui.control.Label
        spect_sample_freqEditField      matlab.ui.control.NumericEditField
        FreqmaxEditFieldLabel           matlab.ui.control.Label
        spect_FreqmaxEditField          matlab.ui.control.NumericEditField
        freq_gfiltvarEditFieldLabel     matlab.ui.control.Label
        spect_freq_gfiltvarEditField    matlab.ui.control.NumericEditField
        win_orderLabel                  matlab.ui.control.Label
        spect_win_orderSlider           matlab.ui.control.Slider
        ActivationTab                   matlab.ui.container.Tab
        activ_MethodsPanel              matlab.ui.container.Panel
        SSSBLppLabel                    matlab.ui.control.Label
        CheckBox_sssblpp                matlab.ui.control.CheckBox
        eLORETALabel                    matlab.ui.control.Label
        CheckBox_eloreta                matlab.ui.control.CheckBox
        LCMVLabel                       matlab.ui.control.Label
        CheckBox_lcmv                   matlab.ui.control.CheckBox
        ThresholdEditFieldLabel         matlab.ui.control.Label
        sssblpp_thEditField             matlab.ui.control.NumericEditField
        ThresholdEditField_2Label       matlab.ui.control.Label
        eloreta_thEditField             matlab.ui.control.NumericEditField
        gamma1EditFieldLabel            matlab.ui.control.Label
        eloreta_gamma1EditField         matlab.ui.control.NumericEditField
        gamma2EditFieldLabel            matlab.ui.control.Label
        eloreta_gamma2EditField         matlab.ui.control.NumericEditField
        deltagammaEditFieldLabel        matlab.ui.control.Label
        eloreta_deltagammaEditField     matlab.ui.control.NumericEditField
        ThresholdEditField_3Label       matlab.ui.control.Label
        lcmv_thEditField                matlab.ui.control.NumericEditField
        gamma1EditField_2Label          matlab.ui.control.Label
        lcmv_gamma1EditField            matlab.ui.control.NumericEditField
        gamma2EditField_2Label          matlab.ui.control.Label
        lcmv_gamma2EditField            matlab.ui.control.NumericEditField
        deltagammaEditField_2Label      matlab.ui.control.Label
        lcmv_deltagammaEditField        matlab.ui.control.NumericEditField
        activ_OtherparamsPanel          matlab.ui.container.Panel
        activ_IsCurvCheckBox            matlab.ui.control.CheckBox
        activ_IsParcelCheckBox          matlab.ui.control.CheckBox
        activ_IsNeighCheckBox           matlab.ui.control.CheckBox
        aGiriLabel                      matlab.ui.control.Label
        activ_aGiriEditField            matlab.ui.control.NumericEditField
        aSulcEditFieldLabel             matlab.ui.control.Label
        activ_aSulcEditField            matlab.ui.control.NumericEditField
        bGiriEditFieldLabel             matlab.ui.control.Label
        activ_bGiriEditField            matlab.ui.control.NumericEditField
        bSulcEditFieldLabel             matlab.ui.control.Label
        activ_bSulcEditField            matlab.ui.control.NumericEditField
        regLaplacianEditFieldLabel      matlab.ui.control.Label
        activ_regLaplacianEditField     matlab.ui.control.NumericEditField
        FieldLabel                      matlab.ui.control.Label
        activ_fieldSlider               matlab.ui.control.Slider
        IsCurvLabel                     matlab.ui.control.Label
        IsParcelLabel                   matlab.ui.control.Label
        IsNeighLabel                    matlab.ui.control.Label
        ConnectivityTab                 matlab.ui.container.Tab
        conn_MethodsPanel               matlab.ui.container.Panel
        HIGGSLabel                      matlab.ui.control.Label
        CheckBox_higgs                  matlab.ui.control.CheckBox
        ThresholdEditFieldLabel_2       matlab.ui.control.Label
        higgs_thEditField               matlab.ui.control.NumericEditField
        hg_LASSOLabel                   matlab.ui.control.Label
        CheckBox_hg_lasso               matlab.ui.control.CheckBox
        ThresholdEditField_2Label_2     matlab.ui.control.Label
        hg_lasso_thEditField            matlab.ui.control.NumericEditField
        conn_OtherparamsPanel           matlab.ui.container.Panel
        conn_IsCurvCheckBox             matlab.ui.control.CheckBox
        conn_IsNeighCheckBox            matlab.ui.control.CheckBox
        aGiriEditField_2Label           matlab.ui.control.Label
        conn_aGiriEditField             matlab.ui.control.NumericEditField
        aSulcEditField_2Label           matlab.ui.control.Label
        conn_aSulcEditField             matlab.ui.control.NumericEditField
        bGiriEditField_2Label           matlab.ui.control.Label
        conn_bGiriEditField             matlab.ui.control.NumericEditField
        bSulcEditField_2Label           matlab.ui.control.Label
        conn_bSulcEditField             matlab.ui.control.NumericEditField
        regLaplacianEditField_2Label    matlab.ui.control.Label
        conn_regLaplacianEditField      matlab.ui.control.NumericEditField
        MaxiterouterEditFieldLabel      matlab.ui.control.Label
        conn_MaxiterouterEditField      matlab.ui.control.NumericEditField
        MaxiterinnerEditFieldLabel      matlab.ui.control.Label
        conn_MaxiterinnerEditField      matlab.ui.control.NumericEditField
        ntryLabel                       matlab.ui.control.Label
        conn_ntrySlider                 matlab.ui.control.Slider
        axiLabel                        matlab.ui.control.Label
        conn_axiEditField               matlab.ui.control.NumericEditField
        conn_prewarmingCheckBox         matlab.ui.control.CheckBox
        penaltySliderLabel              matlab.ui.control.Label
        conn_penaltySlider              matlab.ui.control.Slider
        rth1Label                       matlab.ui.control.Label
        conn_rth1EditField              matlab.ui.control.NumericEditField
        rth2Label                       matlab.ui.control.Label
        conn_rth2EditField              matlab.ui.control.NumericEditField
        eigregLabel                     matlab.ui.control.Label
        conn_eigregEditField            matlab.ui.control.NumericEditField
        FieldLabel_2                    matlab.ui.control.Label
        conn_fieldSlider                matlab.ui.control.Slider
        IsCurvLabel_2                   matlab.ui.control.Label
        IsNeighLabel_2                  matlab.ui.control.Label
        prewarmingLabel                 matlab.ui.control.Label
        RunButton                       matlab.ui.control.Button
        CancelButton                    matlab.ui.control.Button
    end

    
    properties (Access = private)
        app_params; % Description
        general_params;
        sensor_params;
        activation_params;
        connectivity_params;
        spectral_params;
        Name;
        ref_path % Description
        data_structure % Description
        labels_file % Description
        data_params % Description
    end
    
    properties (Access = public)
        single_subject % Description
    end
    
    methods (Access = private)
        
        function setPromptFcn(app,jTextArea)
            % Prevent overlapping reentry due to prompt replacement
            persistent inProgress
            if isempty(inProgress)
                inProgress = 1;  %#ok unused
            else
                return;
            end
            
            try
                % *** Prompt modification code goes here ***
                cwText = char(jTextArea.getText);
                app.TextArea.Value = cwText;
                % force prompt-change callback to fizzle-out...
                pause(0.02);
            catch
                % Never mind - ignore errors...
            end
            
            % Enable new callbacks now that the prompt has been modified
            inProgress = [];
            
        end  % setPromptFcn
        
        % Getting default properties and seting on user interface
        function load_default_properties(app)
            f_path             = fileparts(mfilename('fullpath'));
            app.RunButton.Icon = fullfile(f_path,'guide/images/run.jpg');
            app.CancelButton.Icon = 'guide/images/cancel.jpg';
            app.ResetlabelsButton.Icon = 'guide/images/reset.png';
            app.RedefinelabelsButton.Icon = 'guide/images/edit.png';
            properties = get_properties();
            
            app.app_params.generals = properties.generals;
            app.app_params.run_bash_mode = properties.run_bash_mode;
            app.general_params = properties.general_params;
            app.sensor_params = properties.sensor_params;
            app.activation_params = properties.activation_params;
            app.connectivity_params = properties.connectivity_params;
            app.spectral_params = properties.spectral_params;
            app.data_params = properties.data_params;
            
            % Loadding App properties
            toolbox_name = properties.generals.name;
            version_date = properties.generals.version_date;
            version      = properties.generals.version;
            app.BCVARETAToolboxv10UIFigure.Name = strcat(toolbox_name," ", version, " (", version_date,")");
            
            % Loadding General properties
            templates = dir(fullfile(app.ref_path,'struct_templ'));
            templates(ismember( {templates.name}, {'.', '..'})) = [];  %remove . and ..
            app.gener_StructTemplateDropDown.Items = {templates.name};
            app.gener_StructTemplateDropDown.Items{end+1} = '--Select--';
            app.gener_StructTemplateDropDown.Value = '--Select--';
            
            disable_grafics = properties.run_bash_mode.disabled_graphics;
            if disable_grafics;  app.gener_DisablegraphicsSwitch.Value = 'Yes'; else; app.gener_DisablegraphicsSwitch.Value = 'No';end
            if disable_grafics;  app.gener_DisablegraphicsSwitch.FontColor = 'b'; app.gener_DisablegraphicsSwitch.FontWeight = 'bold'; end
            use_gpu = properties.run_bash_mode.use_gpu;
            if use_gpu; app.gener_RuninGPUSwitch.Value = 'Yes'; else; app.gener_RuninGPUSwitch.Value = 'No'; end
            try
                count = gpuDeviceCount("available");
                if(isequal(count,0)); app.gener_RuninGPUSwitch.Value = 'No'; end
                if (isequal(app.gener_RuninGPUSwitch.Value,'Yes')); app.gener_RuninGPUSwitch.FontColor = 'b'; app.gener_RuninGPUSwitch.FontWeight = 'bold'; end
            catch
                app.gener_RuninGPUSwitch.Value = 'No';
            end
            run_by_trials = app.general_params.params.run_by_trial.value;
            if run_by_trials; app.gener_RunbytrialsSwitch.Value = 'Yes'; else; app.gener_RunbytrialsSwitch.Value = 'No'; end
            if run_by_trials; app.gener_RunbytrialsSwitch.FontColor = 'b'; app.gener_RunbytrialsSwitch.FontWeight = 'bold'; end
            run_by_bin = app.general_params.params.run_frequency_bin.value;
            if run_by_bin; app.gener_RunbyfrequencybinSwitch.Value = 'Yes'; else; app.gener_RunbyfrequencybinSwitch.Value = 'No'; end
            if run_by_bin; app.gener_RunbyfrequencybinSwitch.FontColor = 'b'; app.gener_RunbyfrequencybinSwitch.FontWeight = 'bold'; end
            system_response = app.general_params.params.system_response.value;
            if system_response; app.gener_GetsystemresponseSwitch.Value = 'Yes'; else; app.gener_GetsystemresponseSwitch.Value = 'No'; end
            if system_response; app.gener_GetsystemresponseSwitch.FontColor = 'b'; app.gener_GetsystemresponseSwitch.FontWeight = 'bold'; end
            
            % Loadding Sensor properties
            ft_template_dir = fullfile(app.ref_path,"external/fieldtrip/template/layout");
            layouts = dir(ft_template_dir);
            layouts(ismember( {layouts.name}, {'.', '..'})) = [];  %remove . and ..
            app.sens_FieldtriptemplateDropDown.Items = {layouts.name};
            app.sens_FieldtriptemplateDropDown.Items{end+1} = '--Select a layout--';
            app.sens_FieldtriptemplateDropDown.Value = '--Select a layout--';
            
            fieldtrip_layout = app.sensor_params.params.fieldtrip.layout.value;
            if(~isempty(find(contains( {layouts.name}, fieldtrip_layout),1)))
                app.sens_FieldtriptemplateDropDown.Value = fieldtrip_layout;
            elseif(~isequal(lower(fieldtrip_layout),'none') || isequal(lower(fieldtrip_layout),'default') || ~isempty(fieldtrip_layout))
                app.sens_FieldtriptemplateDropDown.Value = '--Select a layout--';
            else
                msgbox({'The selected layout is not contained in the fildtrip layouts.',...
                    fieldtrip_layout,...
                    'Please configure it in the bcv_properties/sensor_level.json file.'},'Info');
            end
            
            % Loadding Activation properties
            
            activ_methods = app.activation_params.params.methods;
            for i=1:length(activ_methods)
                method = activ_methods{i};
                method_name = fieldnames(method);
                method_name = method_name{1};
                switch method_name
                    case 'sssblpp'
                        run = method.(method_name).run;
                        app.CheckBox_sssblpp.Value = run;
                        threshold = method.(method_name).sssblpp_th.value;
                        app.sssblpp_thEditField.Value = threshold;
                    case 'eloreta'
                        run = method.(method_name).run;
                        app.CheckBox_eloreta.Value = run;
                        threshold = method.(method_name).eloreta_th.value;
                        app.eloreta_thEditField.Value = threshold;
                        gamma1 = method.(method_name).gamma1.value;
                        app.eloreta_gamma1EditField.Value = gamma1;
                        gamma2 = method.(method_name).gamma2.value;
                        app.eloreta_gamma2EditField.Value = gamma2;
                        delta_gamma = method.(method_name).delta_gamma.value;
                        app.eloreta_deltagammaEditField.Value = delta_gamma;
                    case 'lcmv'
                        run = method.(method_name).run;
                        app.CheckBox_lcmv.Value = run;
                        threshold = method.(method_name).lcmv_th.value;
                        app.lcmv_thEditField.Value = threshold;
                        gamma1 = method.(method_name).gamma1.value;
                        app.lcmv_gamma1EditField.Value = gamma1;
                        gamma2 = method.(method_name).gamma2.value;
                        app.lcmv_gamma2EditField.Value = gamma2;
                        delta_gamma = method.(method_name).delta_gamma.value;
                        app.lcmv_deltagammaEditField.Value = delta_gamma;
                end
            end
            activ_IsCurv = app.activation_params.params.IsCurv.value;
            app.activ_IsCurvCheckBox.Value = activ_IsCurv;
            activ_IsParcel = app.activation_params.params.IsParcel.value;
            app.activ_IsParcelCheckBox.Value = activ_IsParcel;
            activ_IsNeigh = app.activation_params.params.IsNeigh.value;
            app.activ_IsNeighCheckBox.Value = activ_IsNeigh;
            activ_aGiri = app.activation_params.params.aGiri.value;
            app.activ_aGiriEditField.Value = activ_aGiri;
            activ_bGiri = app.activation_params.params.bGiri.value;
            app.activ_bGiriEditField.Value = activ_bGiri;
            activ_aSulc = app.activation_params.params.aSulc.value;
            app.activ_aSulcEditField.Value = activ_aSulc;
            activ_bSulc = app.activation_params.params.bSulc.value;
            app.activ_bSulcEditField.Value = activ_bSulc;
            activ_Field = app.activation_params.params.IsField.value;
            app.activ_fieldSlider.Value = activ_Field;
            activ_regLaplacian = app.activation_params.params.regLaplacian.value;
            app.activ_regLaplacianEditField.Value = activ_regLaplacian;
            
            % Loadding Connectivity properties
            conn_methods = app.connectivity_params.params.methods;
            for i=1:length(conn_methods)
                method = conn_methods{i};
                method_name = fieldnames(method);
                method_name = method_name{1};
                switch method_name
                    case 'higgs'
                        run = method.(method_name).run;
                        app.CheckBox_higgs.Value = run;
                        threshold = method.(method_name).higgs_th.value;
                        app.higgs_thEditField.Value = threshold;
                    case 'hg_lasso'
                        run = method.(method_name).run;
                        app.CheckBox_hg_lasso.Value = run;
                        threshold = method.(method_name).hg_lasso_th.value;
                        app.hg_lasso_thEditField.Value = threshold;
                end
            end
            conn_IsCurv = app.connectivity_params.params.IsCurv.value;
            app.conn_IsCurvCheckBox.Value = conn_IsCurv;
            conn_IsNeigh = app.connectivity_params.params.IsNeigh.value;
            app.conn_IsNeighCheckBox.Value = conn_IsNeigh;
            conn_prew = app.connectivity_params.params.prew.value;
            app.conn_prewarmingCheckBox.Value = conn_prew;
            conn_aGiri = app.connectivity_params.params.aGiri.value;
            app.conn_aGiriEditField.Value = conn_aGiri;
            conn_bGiri = app.connectivity_params.params.bGiri.value;
            app.conn_bGiriEditField.Value = conn_bGiri;
            conn_aSulc = app.connectivity_params.params.aSulc.value;
            app.conn_aSulcEditField.Value = conn_aSulc;
            conn_bSulc = app.connectivity_params.params.bSulc.value;
            app.conn_bSulcEditField.Value = conn_bSulc;
            conn_outer = app.connectivity_params.params.maxiter_outer.value;
            app.conn_MaxiterouterEditField.Value = conn_outer;
            conn_inner = app.connectivity_params.params.maxiter_inner.value;
            app.conn_MaxiterinnerEditField.Value = conn_inner;
            conn_axi = app.connectivity_params.params.axi.value;
            app.conn_axiEditField.Value = conn_axi;
            conn_field = app.connectivity_params.params.IsField.value;
            app.conn_fieldSlider.Value = conn_field;
            conn_penalty = app.connectivity_params.params.penalty.value;
            app.conn_penaltySlider.Value = conn_penalty;
            conn_rth1 = app.connectivity_params.params.rth1.value;
            app.conn_rth1EditField.Value = conn_rth1;
            conn_rth2 = app.connectivity_params.params.rth2.value;
            app.conn_rth2EditField.Value = conn_rth2;
            conn_ntry = app.connectivity_params.params.ntry.value;
            app.conn_ntrySlider.Value = conn_ntry;
            conn_eigreg = app.connectivity_params.params.eigreg.value;
            app.conn_eigregEditField.Value = conn_eigreg;
            conn_regLaplacian = app.connectivity_params.params.regLaplacian.value;
            app.conn_regLaplacianEditField.Value = conn_regLaplacian;
            
            % Loadding Spectral properties
            frequencies     = app.spectral_params.params.frequencies;
            for i=1:length(frequencies)
                freq = frequencies(i);
                switch lower(freq.name)
                    case 'delta'
                        if freq.run;  app.delta_runSwitch.Value = 'Yes'; else; app.delta_runSwitch.Value = 'No'; end
                        if freq.run;  app.delta_runSwitch.FontColor = 'b'; app.delta_runSwitch.FontWeight = 'bold'; end
                        if freq.run;  app.DeltaLabel.FontColor = 'b'; app.DeltaLabel.FontWeight = 'bold'; end
                        app.delta_startEditField.Value = freq.f_start;
                        app.delta_endEditField.Value = freq.f_end;
                    case 'theta'
                        if freq.run;  app.theta_runSwitch.Value = 'Yes'; else; app.theta_runSwitch.Value = 'No'; end
                        if freq.run;  app.theta_runSwitch.FontColor = 'b'; app.theta_runSwitch.FontWeight = 'bold'; end
                        if freq.run;  app.ThetaLabel.FontColor = 'b'; app.ThetaLabel.FontWeight = 'bold'; end
                        app.theta_startEditField.Value = freq.f_start;
                        app.theta_endEditField.Value = freq.f_end;
                    case 'alpha'
                        if freq.run;  app.alpha_runSwitch.Value = 'Yes'; else; app.alpha_runSwitch.Value = 'No'; end
                        if freq.run;  app.alpha_runSwitch.FontColor = 'b'; app.alpha_runSwitch.FontWeight = 'bold'; end
                        if freq.run;  app.AlphaLabel.FontColor = 'b'; app.AlphaLabel.FontWeight = 'bold'; end
                        app.alpha_startEditField.Value = freq.f_start;
                        app.alpha_endEditField.Value = freq.f_end;
                    case 'beta'
                        if freq.run;  app.beta_runSwitch.Value = 'Yes'; else; app.beta_runSwitch.Value = 'No'; end
                        if freq.run;  app.beta_runSwitch.FontColor = 'b'; app.beta_runSwitch.FontWeight = 'bold'; end
                        if freq.run;  app.BetaLabel.FontColor = 'b'; app.BetaLabel.FontWeight = 'bold'; end
                        app.beta_startEditField.Value = freq.f_start;
                        app.beta_endEditField.Value = freq.f_end;
                    case 'gamma1'
                        if freq.run;  app.gamma1_runSwitch.Value = 'Yes'; else; app.gamma1_runSwitch.Value = 'No'; end
                        if freq.run;  app.gamma1_runSwitch.FontColor = 'b'; app.gamma1_runSwitch.FontWeight = 'bold'; end
                        if freq.run;  app.Gamma1Label.FontColor = 'b'; app.Gamma1Label.FontWeight = 'bold'; end
                        app.gamma1_startEditField.Value = freq.f_start;
                        app.gamma1_endEditField.Value = freq.f_end;
                    case 'gamma2'
                        if freq.run;  app.gamma2_runSwitch.Value = 'Yes'; else; app.gamma2_runSwitch.Value = 'No'; end
                        if freq.run;  app.gamma2_runSwitch.FontColor = 'b'; app.gamma2_runSwitch.FontWeight = 'bold'; end
                        if freq.run;  app.Gamma2Label.FontColor = 'b'; app.Gamma2Label.FontWeight = 'bold'; end
                        app.gamma2_startEditField.Value = freq.f_start;
                        app.gamma2_endEditField.Value = freq.f_end;
                end
            end
            freq_resol = app.spectral_params.params.freq_resol.value;
            app.spect_freq_resolEditField.Value = freq_resol;
            samp_freq = app.spectral_params.params.samp_freq.value;
            app.spect_sample_freqEditField.Value = samp_freq;
            freq_gfiltvar = app.spectral_params.params.freq_gfiltvar.value;
            app.spect_freq_gfiltvarEditField.Value = freq_gfiltvar;
            max_freq = app.spectral_params.params.max_freq.value;
            app.spect_FreqmaxEditField.Value = max_freq;
            win_order = app.spectral_params.params.win_order.value;
            app.spect_win_orderSlider.Value = win_order;
        end % load_default_properties
        
        % Checking user interface params
        function checked = check_user_params(app)
            checked = true;
            if(isempty(app.gener_DataPathEditField.Value) || isempty(app.gener_OutputfolderEditField.Value))
                msgbox('The Input folder and Output folder fields can not be empty.','Info');
                checked = false;
            end
            if(isequal(app.sens_FieldtriptemplateDropDown.Value,'--Select a layout--'))
                msgbox('The fieldtrip layout in sensor level tab must be a correct template.','Info');
                checked = false;
            end
            if(isequal(app.gener_StructTemplateDropDown.Value,'--Select--'))
                msgbox('Please select a Structural template in Ganeral Tab.','Info');
                checked = false;
            end
            if(isequal(app.gener_DataFormatDropDown.Value,'--Select--'))
                msgbox('Please select a Data formart in Ganeral Tab.','Info');
                checked = false;
            end
            if(isequal(app.delta_runSwitch.Value,'No') && isequal(app.theta_runSwitch.Value,'No')...
                    && isequal(app.alpha_runSwitch.Value,'No') && isequal(app.beta_runSwitch.Value,'No')...
                    && isequal(app.gamma1_runSwitch.Value,'No') && isequal(app.gamma2_runSwitch.Value,'No'))
            msgbox('Please, you have to select at least a frequency to run.','Info');
            checked = false;
            end
        end % check_user_params
        
        % Setting properties files with user interface configuration
        function set_property_files(app)
            properties = get_properties();
            
            properties.run_bash_mode.value = false;
            if(isequal(app.gener_DisablegraphicsSwitch.Value,'Yes')); properties.run_bash_mode.disabled_graphics = true;
            else; properties.run_bash_mode.disabled_graphics = false; end
            if(isequal(app.gener_RuninGPUSwitch.Value,'Yes')); properties.run_bash_mode.use_gpu = true;
            else; properties.run_bash_mode.use_gpu = false; end
            if(isequal(app.gener_AnalysislevelDropDown.Value,'all')); properties.run_bash_mode.predefinition_params = 'all_analysis';
            elseif(isequal(app.gener_AnalysislevelDropDown.Value,'1')); properties.run_bash_mode.predefinition_params = 'sensor';
            elseif(isequal(app.gener_AnalysislevelDropDown.Value,'2')); properties.run_bash_mode.predefinition_params = 'activation';
            elseif(isequal(app.gener_AnalysislevelDropDown.Value,'3'));properties.run_bash_mode.predefinition_params = 'connectivity';
            elseif(isequal(app.gener_AnalysislevelDropDown.Value,'12'));properties.run_bash_mode.predefinition_params = 'sen_activ';
            elseif(isequal(app.gener_AnalysislevelDropDown.Value,'23'));properties.run_bash_mode.predefinition_params = 'activ_conn';
            end
            
            properties.general_params.params.bcv_workspace.struct_template         = app.gener_StructTemplateDropDown.Value;
            properties.general_params.params.bcv_workspace.BCV_input_dir           = app.gener_DataPathEditField.Value;
            properties.general_params.params.bcv_workspace.BCV_work_dir            = app.gener_OutputfolderEditField.Value;
            properties.general_params.params.bcv_workspace.predefinition_params    = 'user_predefinition';
            properties.general_params.params.analysis_level.value                  = app.gener_AnalysislevelDropDown.Value;
            properties.general_params.params.analysis_level.reset_all              = true;
            if(isequal(app.gener_RunbytrialsSwitch.Value,'Yes')); properties.general_params.params.run_by_trial.value = true;
            else; properties.general_params.params.run_by_trial.value = false;end
            if(isequal(app.gener_RunbyfrequencybinSwitch.Value,'Yes')); properties.general_params.params.run_frequency_bin.value = true;
            else; properties.general_params.params.run_frequency_bin.value = false; end
            if(isequal(app.gener_GetsystemresponseSwitch.Value,'Yes')); properties.general_params.params.gener_GetsystemresponseSwitch.value = true;
            else; properties.general_params.params.gener_GetsystemresponseSwitch.value = false; end
            properties.general_params.params.structure = app.data_structure;
            
            properties.data_params.params.file_location = app.gener_DataExampEditField.Value;
            properties.data_params.params.format = app.gener_DataFormatDropDown.Value;
            if(isequal(app.gener_CleanDataSwitch.Value,'Yes')); properties.data_params.params.clean_data.run = true;
            else; properties.data_params.params.clean_data.run = false; end
            if(isequal(app.gener_GoodSegSwitch.Value,'Yes')); properties.data_params.params.clean_data.good_segments = true;
            else; properties.data_params.params.clean_data.good_segments = false; end
            properties.data_params.params.labels_file = app.labels_file;
            properties.data_params.params.clean_data.select_events = app.gener_ExtractdatabyeventsMultiselectListBox.Value;
            
            properties.sensor_params.params.fieldtrip.layout.value        = app.sens_FieldtriptemplateDropDown.Value;
            
            properties.activation_params.params.methods{1, 1}.sssblpp.run               = app.CheckBox_sssblpp.Value;
            properties.activation_params.params.methods{1, 1}.sssblpp.sssblpp_th.value  = app.sssblpp_thEditField.Value;
            properties.activation_params.params.methods{2, 1}.eloreta.run               = app.CheckBox_eloreta.Value;
            properties.activation_params.params.methods{2, 1}.eloreta.gamma1.value      = app.eloreta_gamma1EditField.Value;
            properties.activation_params.params.methods{2, 1}.eloreta.gamma2.value      = app.eloreta_gamma2EditField.Value;
            properties.activation_params.params.methods{2, 1}.eloreta.delta_gamma.value = app.eloreta_deltagammaEditField.Value;
            properties.activation_params.params.methods{2, 1}.eloreta.eloreta_th.value  = app.eloreta_thEditField.Value;
            properties.activation_params.params.methods{3, 1}.lcmv.run                  = app.CheckBox_lcmv.Value;
            properties.activation_params.params.methods{3, 1}.lcmv.gamma1.value         = app.lcmv_gamma1EditField.Value;
            properties.activation_params.params.methods{3, 1}.lcmv.gamma2.value         = app.lcmv_gamma2EditField.Value;
            properties.activation_params.params.methods{3, 1}.lcmv.delta_gamma.value    = app.lcmv_deltagammaEditField.Value;
            properties.activation_params.params.methods{3, 1}.lcmv.lcmv_th.value        = app.lcmv_thEditField.Value;
            properties.activation_params.params.IsCurv.value                            = app.activ_IsCurvCheckBox.Value;
            properties.activation_params.params.IsParcel.value                          = app.activ_IsParcelCheckBox.Value;
            properties.activation_params.params.IsNeigh.value                           = app.activ_IsNeighCheckBox.Value;
            properties.activation_params.params.IsField.value                           = app.activ_fieldSlider.Value;
            properties.activation_params.params.aGiri.value                             = app.activ_aGiriEditField.Value;
            properties.activation_params.params.aSulc.value                             = app.activ_aSulcEditField.Value;
            properties.activation_params.params.bGiri.value                             = app.activ_bGiriEditField.Value;
            properties.activation_params.params.bSulc.value                             = app.activ_bSulcEditField.Value;
            properties.activation_params.params.regLaplacian.value                      = app.activ_regLaplacianEditField.Value;
            
            properties.connectivity_params.params.methods{1, 1}.higgs.run                  = app.CheckBox_higgs.Value;
            properties.connectivity_params.params.methods{1, 1}.higgs.higgs_th.value       = app.higgs_thEditField.Value;
            properties.connectivity_params.params.methods{2, 1}.hg_lasso.run               = app.CheckBox_hg_lasso.Value;
            properties.connectivity_params.params.methods{2, 1}.hg_lasso.hg_lasso_th.value = app.hg_lasso_thEditField.Value;
            properties.connectivity_params.params.IsCurv.value                             = app.conn_IsCurvCheckBox.Value;
            properties.connectivity_params.params.IsNeigh.value                            = app.conn_IsNeighCheckBox.Value;
            properties.connectivity_params.params.IsField.value                            = app.conn_fieldSlider.Value;
            properties.connectivity_params.params.aGiri.value                              = app.conn_aGiriEditField.Value;
            properties.connectivity_params.params.aSulc.value                              = app.conn_aSulcEditField.Value;
            properties.connectivity_params.params.bGiri.value                              = app.conn_bGiriEditField.Value;
            properties.connectivity_params.params.bSulc.value                              = app.conn_bSulcEditField.Value;
            properties.connectivity_params.params.axi.value                                = app.conn_axiEditField.Value;
            properties.connectivity_params.params.maxiter_outer.value                      = app.conn_MaxiterouterEditField.Value;
            properties.connectivity_params.params.maxiter_inner.value                      = app.conn_MaxiterinnerEditField.Value;
            properties.connectivity_params.params.ntry.value                               = app.conn_ntrySlider.Value;
            properties.connectivity_params.params.prew.value                               = app.conn_prewarmingCheckBox.Value;
            properties.connectivity_params.params.penalty.value                            = app.conn_penaltySlider.Value;
            properties.connectivity_params.params.rth1.value                               = app.conn_rth1EditField.Value;
            properties.connectivity_params.params.rth2.value                               = app.conn_rth2EditField.Value;
            properties.connectivity_params.params.eigreg.value                             = app.conn_eigregEditField.Value;
            properties.connectivity_params.params.regLaplacian.value                       = app.conn_regLaplacianEditField.Value;
            
            properties.spectral_params.params.frequencies(1).f_start                    = app.delta_startEditField.Value;
            properties.spectral_params.params.frequencies(1).f_end                      = app.delta_endEditField.Value;
            if(isequal(app.delta_runSwitch.Value,'Yes')); properties.spectral_params.params.frequencies(1).run = true;
            else; properties.spectral_params.params.frequencies(1).run = false; end
            properties.spectral_params.params.frequencies(2).f_start                    = app.theta_startEditField.Value;
            properties.spectral_params.params.frequencies(2).f_end                      = app.theta_endEditField.Value;
            if(isequal(app.theta_runSwitch.Value,'Yes')); properties.spectral_params.params.frequencies(2).run = true;
            else; properties.spectral_params.params.frequencies(2).run = false; end
            properties.spectral_params.params.frequencies(3).f_start                    = app.alpha_startEditField.Value;
            properties.spectral_params.params.frequencies(3).f_end                      = app.alpha_endEditField.Value;
            if(isequal(app.alpha_runSwitch.Value,'Yes')); properties.spectral_params.params.frequencies(3).run = true;
            else; properties.spectral_params.params.frequencies(3).run = false; end
            properties.spectral_params.params.frequencies(4).f_start                    = app.beta_startEditField.Value;
            properties.spectral_params.params.frequencies(4).f_end                      = app.beta_endEditField.Value;
            if(isequal(app.beta_runSwitch.Value,'Yes')); properties.spectral_params.params.frequencies(4).run = true;
            else; properties.spectral_params.params.frequencies(4).run = false; end
            properties.spectral_params.params.frequencies(5).f_start                    = app.gamma1_startEditField.Value;
            properties.spectral_params.params.frequencies(5).f_end                      = app.gamma1_endEditField.Value;
            if(isequal(app.gamma1_runSwitch.Value,'Yes')); properties.spectral_params.params.frequencies(5).run = true;
            else; properties.spectral_params.params.frequencies(5).run = false; end
            properties.spectral_params.params.frequencies(6).f_start                    = app.gamma2_startEditField.Value;
            properties.spectral_params.params.frequencies(6).f_end                      = app.gamma2_endEditField.Value;
            if(isequal(app.gamma2_runSwitch.Value,'Yes')); properties.spectral_params.params.frequencies(6).run = true;
            else; properties.spectral_params.params.frequencies(6).run = false; end
            properties.spectral_params.params.freq_resol.value                          = app.spect_freq_resolEditField.Value;
            properties.spectral_params.params.samp_freq.value                           = app.spect_sample_freqEditField.Value;
            properties.spectral_params.params.max_freq.value                            = app.spect_FreqmaxEditField.Value;
            properties.spectral_params.params.freq_gfiltvar.value                       = app.spect_freq_gfiltvarEditField.Value;
            properties.spectral_params.params.win_order.value                           = app.spect_win_orderSlider.Value;
            
            % set_property_files
            status = set_properties(properties);
            if(~status)
                fprintf(2,strcat('\nBC-V-->> Error: The current configuration has some error: \n'));
                disp('Please check the params configuration before run the process again.');
                return;
            end
        end 
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            movegui(app.BCVARETAToolboxv10UIFigure,'center');
            f_path          = mfilename('fullpath');
            [base_path,~,~]  = fileparts(f_path);
            app.ref_path = base_path;
            addpath(fullfile(app.ref_path,'app'));
            addpath(genpath(fullfile(app.ref_path,'guide')));
            addpath(genpath(fullfile(app.ref_path,'functions')));
            addpath(fullfile(app.ref_path,'bcv_properties'));
            addpath(genpath(fullfile(app.ref_path,'struct_templ')));
            addpath(genpath(fullfile(app.ref_path,'templates')));
            addpath(fullfile(app.ref_path,'tools'));
            addpath(genpath(fullfile(app.ref_path,"external/fieldtrip")));
            
            app.RunButton.Icon = fullfile(base_path,'guide/images/run.jpg');
            app.CancelButton.Icon = fullfile(base_path,'guide/images/cancel.jpg');
            app.ResetlabelsButton.Icon = fullfile(base_path,'guide/images/reset.png');
            app.RedefinelabelsButton.Icon = fullfile(base_path,'guide/images/edit.png'); 
            
            pred_options                                = jsondecode(fileread(strcat('bcv_predefinition/pred_properties.json')));
            pred_options.params.predefinition.option    = 'default';
            saveJSON(pred_options,fullfile(app.ref_path,'bcv_predefinition','pred_properties.json'));
            
            load_default_properties(app);
            processes = jsondecode(fileread(strcat('processes.json')));
            for i = 1: length(processes)
                process = processes(i);
                if(process.active)
                    addpath(process.root_folder);
                end
            end
            %             try
            %                 jDesktop = com.mathworks.mde.desk.MLDesktop.getInstance;
            %                 jCmdWin = jDesktop.getClient('Command Window');
            %                 jTextArea = jCmdWin.getComponent(0).getViewport.getView;
            %                 set(jTextArea,'CaretUpdateCallback',@app.setPromptFcn)
            %             catch
            %                 warndlg('fatal error');
            %             end
        end

        % Callback function
        function CreateDataStructureMenuSelected(app, event)
            folder = uigetdir('tittle','Select the Source Folder');
            if(folder==0)
                return;
            end
            create_data_structure(folder);
            msgbox('Completed operation!!!','Info');
        end

        % Callback function
        function ButtonPushed(app, event)
            %             jDesktop = com.mathworks.mde.desk.MLDesktop.getInstance;
            %             jCmdWin = jDesktop.getClient('Command Window');
            %             jTextArea = jCmdWin.getComponent(0).getViewport.getView;
            %             cwText = char(jTextArea.getText);
            %
            %             set(jTextArea,'CaretUpdateCallback',@myUpdateFcn)
            
        end

        % Menu selected function: ExitMenu
        function ExitMenuSelected(app, event)
            delete(app);
        end

        % Menu selected function: DownloadtestdataMenu
        function DownloadtestdataMenuSelected(app, event)
            folder = uigetdir('tittle','Select the Source Folder');
            if(folder==0)
                return;
            end
            
            f = dialog('Position',[300 300 250 80]);
            
            iconsClassName = 'com.mathworks.widgets.BusyAffordance$AffordanceSize';
            iconsSizeEnums = javaMethod('values',iconsClassName);
            SIZE_32x32 = iconsSizeEnums(2);  % (1) = 16x16,  (2) = 32x32
            jObj = com.mathworks.widgets.BusyAffordance(SIZE_32x32, 'Downloading test data...');  % icon, label
            
            jObj.setPaintsWhenStopped(true);  % default = false
            jObj.useWhiteDots(false);         % default = false (true is good for dark backgrounds)
            javacomponent(jObj.getComponent, [50,10,150,80], f);
            jObj.start;
            pause(1);
            
            app_properties= jsondecode(fileread(strcat('app_properties.json')));
            url = app_properties.generals.test_data_url;
            filename = strcat(folder,filesep,'BC_VARETA_test_data.zip');
            matlab.net.http.HTTPOptions.VerifyServerName = false;
            options = weboptions('Timeout',Inf,'RequestMethod','get');
            
            try
                disp('Downloding test data....');
                outfilename = websave(filename,url,options);
            catch
                delete(f);
                errordlg('Download error!!!','Error');
                return;
            end
            try
                disp('Unpacking test data....');
                exampleFiles = unzip(filename,folder);
            catch
                delete(f);
                errordlg('Unpackage error!!!','Error');
                return;
            end
            jObj.stop;
            jObj.setBusyText('All done!');
            disp('All done....');
            pause(2);
            delete(f);
            msgbox('Download complete','Info');
        end

        % Menu selected function: FigureMenu
        function FigureMenuSelected(app, event)
            
            [file,path] = uigetfile('*.fig');
            if isequal(file,0)
                disp('User selected Cancel');
                return;
            end
            openfig(strcat(path,filesep,file));
        end

        % Menu selected function: SubjectsresultMenu
        function SubjectsresultMenuSelected(app, event)
            folder = uigetdir('tittle','Select the Source Folder');
            if(folder==0)
                return;
            end
            files = dir(folder);
            ext='.fig';
            for j=1:size(files,1)
                file_name = files(j).name;
                file_path = strcat(folder,filesep, file_name);
                [~,~,ex]=fileparts(file_name);
                %% ----------Searching de data files ------------------------------------
                if(~isfolder(file_path) && strcmpi(strtrim(ex),ext) )
                    openfig(strcat(file_path));
                end
            end
        end

        % Menu selected function: RealEEGMenu
        function RealEEGMenuSelected(app, event)
            %             [file,path] = uigetfile('*.mat');
            %             if isequal(file,0)
            %                 disp('User selected Cancel');
            %                 return;
            %             end
            %             real_EEG=load(strcat(path,filesep,file));
            %
            %             figure_EEG = figure('Color','k','Name',file,'NumberTitle','off','units','normalized','outerposition',[0 0 1 1]);
            %             subplot(1,3,1); plot(real_EEG.Sjj);
            %             %             ylabel('generators')
            %             %     xlabel('generators')
            %             %     title('simulated partial correlations')
            %             subplot(1,3,2); plot(real_EEG.Thetajj);
            %             %             ylabel('generators')
            %             %     xlabel('generators')
            %             %     title('simulated partial correlations')
            %             subplot(1,3,3); plot(real_EEG.indms);
            
        end

        % Callback function
        function SingleSubjectMenu_ASelected(app, event)
            addpath('functions');
            bcv_properties = jsondecode(fileread(fullfile('bcv_properties','bcv_properties.json')));
            bcv_properties.run_single_subject.value = true;
            saveJSON(bcv_properties,fullfile('bcv_properties','bcv_properties.json'));
            BC_VARETA_bash;
            msgbox('Completed operation!!!','Info');
        end

        % Callback function
        function BatchProcessingMenu_ASelected(app, event)
            bcv_properties = jsondecode(fileread(fullfile('bcv_properties','bcv_properties.json')));
            bcv_properties.run_single_subject.value = false;
            saveJSON(bcv_properties,fullfile('bcv_properties','bcv_properties.json'));
            BC_VARETA_bash;
            msgbox('Completed operation!!!','Info');
        end

        % Callback function
        function SingleSubjectMenu_LFSelected(app, event)
            %             addpath('bst_lf_ppl');
            %             bs_lf_ppl;
            %             msgbox('Completed operation!!!','Info');
        end

        % Callback function
        function BatchProcessingMenu_LFSelected(app, event)
            %             addpath('bst_lf_ppl');
            %             bs_lf_ppl;
            %             msgbox('Completed operation!!!','Info');
        end

        % Menu selected function: SubjectsconnectivityMenu
        function SubjectsconnectivityMenuSelected(app, event)
            folder = uigetdir('tittle','Select the Subject''s result folder');
            if(folder==0)
                return;
            end
            files = dir(folder);
            ext='.fig';
            for j=1:size(files,1)
                file_name = files(j).name;
                file_path = strcat(folder,filesep, file_name);
                [~,~,ex]=fileparts(file_name);
                %% ----------Searching de data files ------------------------------------
                if(~isfolder(file_path) && strcmpi(strtrim(ex),ext) && contains(file_name,'roi_conn'))
                    openfig(strcat(file_path));
                end
            end
        end

        % Menu selected function: SubjectsactivityMenu
        function SubjectsactivityMenuSelected(app, event)
            folder = uigetdir('tittle','Select the Subject''s result folder');
            if(folder==0)
                return;
            end
            files = dir(folder);
            ext='.fig';
            for j=1:size(files,1)
                file_name = files(j).name;
                file_path = strcat(folder,filesep, file_name);
                [~,~,ex]=fileparts(file_name);
                %% ----------Searching de data files ------------------------------------
                if(~isfolder(file_path) && strcmpi(strtrim(ex),ext) && contains(file_name,'activity') )
                    openfig(strcat(file_path));
                end
            end
        end

        % Menu selected function: ImportdataMenu
        function ImportdataMenuSelected(app, event)
            import_data_structure;
        end

        % Button pushed function: gener_SelectInputButton
        function gener_SelectInputButtonPushed(app, event)
            try
                folder = uigetdir("Select the Raw data base path");
                folder = strrep(folder,'\','/');
                app.gener_DataPathEditField.Value = folder;
            catch
            end
        end

        % Button pushed function: gener_SelectOutputButton
        function gener_SelectOutputButtonPushed(app, event)
            try
                folder = uigetdir("Select the Output folder");
                [~,values] = fileattrib(folder);
                if(values.UserWrite)
                    app.gener_OutputfolderEditField.Value = folder;
                else
                    msgbox({'The current user do not have write permissions on the selected forder.',...
                        ' Please check the folder permission or select another output folder.'},'Info');
                end
            catch
            end
        end

        % Value changed function: sens_FieldtriptemplateDropDown
        function sens_FieldtriptemplateDropDownValueChanged(app, event)
            layout = app.sens_FieldtriptemplateDropDown.Value;
            if(~isequal(layout,'--Select a layout--'))
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
                order_layout.No         = [1:length(layout.label)]';
                order_layout.Labels     = layout.label;
                order_layout.Position   = layout.pos;
                order_layout.Width      = layout.width;
                order_layout.Height     = layout.height;
                T                       = struct2table(order_layout);
                set(app.sens_UITable, 'Data', T);
                
                data = table2struct(app.sens_UITable.Data);
                labels = {data.Labels}';
                base_path = fileparts(mfilename('fullpath'));
                saveJSON(labels,fullfile(base_path,'bcv_properties','labels.json'));
                app.labels_file = fullfile(base_path,'bcv_properties','labels.json');
            end
        end

        % Value changed function: gener_AnalysislevelDropDown
        function gener_AnalysislevelDropDownValueChanged(app, event)
            analysis_level = app.gener_AnalysislevelDropDown.Value;
            switch analysis_level
                case 'all'
                    app.SensorTab.Parent = [];
                    app.ActivationTab.Parent = [];
                    app.ConnectivityTab.Parent = [];
                    app.SensorTab.Parent = app.TabGroup;
                    app.ActivationTab.Parent = app.TabGroup;
                    app.ConnectivityTab.Parent = app.TabGroup;
                case '1'
                    app.SensorTab.Parent = [];
                    app.ActivationTab.Parent = [];
                    app.ConnectivityTab.Parent = [];
                    app.SensorTab.Parent = app.TabGroup;
                case '2'
                    app.SensorTab.Parent = [];
                    app.ActivationTab.Parent = [];
                    app.ConnectivityTab.Parent = [];
                    app.ActivationTab.Parent = app.TabGroup;
                case '3'
                    app.SensorTab.Parent = [];
                    app.ActivationTab.Parent = [];
                    app.ConnectivityTab.Parent = [];
                    app.ConnectivityTab.Parent = app.TabGroup;
                case '12'
                    app.SensorTab.Parent = [];
                    app.ActivationTab.Parent = [];
                    app.ConnectivityTab.Parent = [];
                    app.SensorTab.Parent = app.TabGroup;
                    app.ActivationTab.Parent = app.TabGroup;
                case '23'
                    app.SensorTab.Parent = [];
                    app.ActivationTab.Parent = [];
                    app.ConnectivityTab.Parent = [];
                    app.ActivationTab.Parent = app.TabGroup;
                    app.ConnectivityTab.Parent = app.TabGroup;
            end
        end

        % Button pushed function: RunButton
        function RunButtonPushed(app, event)
            checked = check_user_params(app);
            if checked
                set_property_files(app);
                opts.Interpreter = 'tex';
                % Include the desired Default answer
                opts.Default = 'Yes';
                % Use the TeX interpreter to format the question
                quest = {strcat("You will run: ",app.BCVARETAToolboxv10UIFigure.Name,"."), ...
                    'Would you like continue the process?'};
                answer = questdlg(quest,'Start process',...
                    'Yes','No',opts);
                % Handle response
                switch answer
                    case 'Yes'
                        f = dialog('Position',[300 300 250 80]);
                        movegui(f,'center')
                        iconsClassName = 'com.mathworks.widgets.BusyAffordance$AffordanceSize';
                        iconsSizeEnums = javaMethod('values',iconsClassName);
                        SIZE_32x32 = iconsSizeEnums(2);  % (1) = 16x16,  (2) = 32x32
                        jObj = com.mathworks.widgets.BusyAffordance(SIZE_32x32, 'Processing');  % icon, label
                        jObj.setPaintsWhenStopped(true);  % default = false
                        jObj.useWhiteDots(false);         % default = false (true is good for dark backgrounds)
                        javacomponent(jObj.getComponent, [50,10,150,80], f);
                        jObj.start;
                        pause(1);
                        BC_VARETA_bash;
                        jObj.stop;
                        jObj.setBusyText('All done!');
                        disp('All done....');
                        pause(2);
                        delete(f);
                        msgbox({'BC-VARETA Toolbox process completed.'},'Info');
                    case 'No'
                        
                end
                
                
            end
        end

        % Value changed function: gener_RunbytrialsSwitch
        function gener_RunbytrialsSwitchValueChanged(app, event)
            value = app.gener_RunbytrialsSwitch.Value;
            if(isequal(value,'Yes'))
                try
                    subject_files = dir(fullfile(app.gener_DataPathEditField.Value,'**','subject.mat'));
                    file_test = subject_files(1);
                    load(fullfile(file_test.folder,file_test.name));
                    load(fullfile(file_test.folder,subject_info.meeg_dir));
                    if(~iscell(MEEG.data))
                        msgbox({'The selected input data can not be run by trials.',...
                            'Please check the input dataset or Run BC-VARETA without trials.'},'Info');
                        app.gener_RunbytrialsSwitch.Value = 'No';
                        app.gener_RunbytrialsSwitch.FontColor = 'k';
                        app.gener_RunbytrialsSwitch.FontWeight = 'normal';
                    else
                        app.gener_RunbytrialsSwitch.FontColor = 'b';
                        app.gener_RunbytrialsSwitch.FontWeight = 'bold';
                    end
                catch
                    msgbox('Please select first the input data folder.','Info');
                    app.gener_RunbytrialsSwitch.Value = 'No';
                end
            else
                app.gener_RunbytrialsSwitch.FontColor = 'k';
                app.gener_RunbytrialsSwitch.FontWeight = 'normal';
            end
        end

        % Value changed function: gener_RuninGPUSwitch
        function gener_RuninGPUSwitchValueChanged(app, event)
            value = app.gener_RuninGPUSwitch.Value;
            if(isequal(value,'Yes'))
                try
                    count = gpuDeviceCount();
                    if(isequal(count,0))
                        msgbox({'BC-VARETA Toolbox con not be run in GPU on this PC.',...
                            'This PC do not have any GPU available.'},'Info');
                        app.gener_RuninGPUSwitch.Value = 'No';
                    else
                        gpuinfo = gpuDevice();
                        opts.Interpreter = 'tex';
                        % Include the desired Default answer
                        opts.Default = 'Yes';
                        % Use the TeX interpreter to format the question
                        quest = {strcat("GPU divice detected: ",gpuinfo.Name,"."), ...
                            strcat("Total memory: ",num2str(gpuinfo.TotalMemory/(1024^3))," GB."), ...
                            strcat("Available memory: ",num2str(gpuinfo.AvailableMemory/(1024^3))," GB."),...
                            strcat("Note: The GPU process was tested with 6GB of memory."),...
                            'Would you like to run BC-VARETA in GPU any way?'};
                        answer = questdlg(quest,'Use GPU',...
                            'Yes','No',opts);
                        % Handle response
                        switch answer
                            case 'Yes'
                                app.gener_RuninGPUSwitch.Value = 'Yes';
                                app.gener_RuninGPUSwitch.FontColor = 'b';
                                app.gener_RuninGPUSwitch.FontWeight = 'bold';
                            case 'No'
                                app.gener_RuninGPUSwitch.Value = 'No';
                                app.gener_RuninGPUSwitch.FontColor = 'k';
                                app.gener_RuninGPUSwitch.FontWeight = 'normal';
                        end
                    end
                catch
                    app.gener_RuninGPUSwitch.FontColor = 'k';
                    app.gener_RuninGPUSwitch.FontWeight = 'normal';
                    msgbox({'BC-VARETA Toolbox con not be run in GPU on this PC.',...
                        'This PC do not have any GPU available.'},'Info');
                    app.gener_RuninGPUSwitch.Value = 'No';
                end
            else
                app.gener_RuninGPUSwitch.FontColor = 'k';
                app.gener_RuninGPUSwitch.FontWeight = 'normal';
            end
        end

        % Value changed function: delta_endEditField
        function delta_endEditFieldValueChanged(app, event)
            end_value = app.delta_endEditField.Value;
            if(end_value<= app.delta_startEditField.Value)
                msgbox({'The end frequency value must be greater than the start value.',...
                    'Please check the frequency input values.'},'Info');
                app.delta_endEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: delta_startEditField
        function delta_startEditFieldValueChanged(app, event)
            start_value = app.delta_startEditField.Value;
            if(start_value>= app.delta_endEditField.Value)
                msgbox({'The start frequency value must be less than the end value.',...
                    'Please check the frequency input values.'},'Info');
                app.delta_startEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: theta_startEditField
        function theta_startEditFieldValueChanged(app, event)
            start_value = app.theta_startEditField.Value;
            if(start_value>= app.theta_endEditField.Value)
                msgbox({'The start frequency value must be less than the end value.',...
                    'Please check the frequency input values.'},'Info');
                app.theta_startEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: theta_endEditField
        function theta_endEditFieldValueChanged(app, event)
            end_value = app.theta_endEditField.Value;
            if(end_value<= app.theta_startEditField.Value)
                msgbox({'The end frequency value must be greater than the start value.',...
                    'Please check the frequency input values.'},'Info');
                app.theta_endEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: alpha_startEditField
        function alpha_startEditFieldValueChanged(app, event)
            start_value = app.alpha_startEditField.Value;
            if(start_value>= app.alpha_endEditField.Value)
                msgbox({'The start frequency value must be less than the end value.',...
                    'Please check the frequency input values.'},'Info');
                app.alpha_startEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: alpha_endEditField
        function alpha_endEditFieldValueChanged(app, event)
            end_value = app.alpha_endEditField.Value;
            if(end_value<= app.alpha_startEditField.Value)
                msgbox({'The end frequency value must be greater than the start value.',...
                    'Please check the frequency input values.'},'Info');
                app.alpha_endEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: beta_startEditField
        function beta_startEditFieldValueChanged(app, event)
            start_value = app.beta_startEditField.Value;
            if(start_value>= app.beta_endEditField.Value)
                msgbox({'The start frequency value must be less than the end value.',...
                    'Please check the frequency input values.'},'Info');
                app.beta_startEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: beta_endEditField
        function beta_endEditFieldValueChanged(app, event)
            end_value = app.beta_endEditField.Value;
            if(end_value<= app.beta_startEditField.Value)
                msgbox({'The end frequency value must be greater than the start value.',...
                    'Please check the frequency input values.'},'Info');
                app.beta_endEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: gamma1_startEditField
        function gamma1_startEditFieldValueChanged(app, event)
            start_value = app.gamma1_startEditField.Value;
            if(start_value>= app.gamma1_endEditField.Value)
                msgbox({'The start frequency value must be less than the end value.',...
                    'Please check the frequency input values.'},'Info');
                app.gamma1_startEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: gamma1_endEditField
        function gamma1_endEditFieldValueChanged(app, event)
            end_value = app.gamma1_endEditField.Value;
            if(end_value<= app.gamma1_startEditField.Value)
                msgbox({'The end frequency value must be greater than the start value.',...
                    'Please check the frequency input values.'},'Info');
                app.gamma1_endEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: gamma2_startEditField
        function gamma2_startEditFieldValueChanged(app, event)
            start_value = app.gamma2_startEditField.Value;
            if(start_value>= app.gamma2_endEditField.Value)
                msgbox({'The start frequency value must be less than the end value.',...
                    'Please check the frequency input values.'},'Info');
                app.gamma2_startEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: gamma2_endEditField
        function gamma2_endEditFieldValueChanged(app, event)
            end_value = app.gamma2_endEditField.Value;
            if(end_value<= app.gamma2_startEditField.Value)
                msgbox({'The end frequency value must be greater than the start value.',...
                    'Please check the frequency input values.'},'Info');
                app.gamma2_endEditField.Value = event.PreviousValue;
            end
        end

        % Value changed function: delta_runSwitch
        function delta_runSwitchValueChanged(app, event)
            value = app.delta_runSwitch.Value;
            if(isequal(value,'Yes'))
                app.delta_runSwitch.FontColor = 'b';
                app.delta_runSwitch.FontWeight = 'bold';
                app.DeltaLabel.FontColor = 'b';
                app.DeltaLabel.FontWeight = 'bold';
            else
                app.delta_runSwitch.FontColor = 'k';
                app.delta_runSwitch.FontWeight = 'normal';
                app.DeltaLabel.FontColor = 'k';
                app.DeltaLabel.FontWeight = 'normal';
            end
        end

        % Value changed function: theta_runSwitch
        function theta_runSwitchValueChanged(app, event)
            value = app.theta_runSwitch.Value;
            if(isequal(value,'Yes'))
                app.theta_runSwitch.FontColor = 'b';
                app.theta_runSwitch.FontWeight = 'bold';
                app.ThetaLabel.FontColor = 'b';
                app.ThetaLabel.FontWeight = 'bold';
            else
                app.theta_runSwitch.FontColor = 'k';
                app.theta_runSwitch.FontWeight = 'normal';
                app.ThetaLabel.FontColor = 'k';
                app.ThetaLabel.FontWeight = 'normal';
            end
        end

        % Value changed function: alpha_runSwitch
        function alpha_runSwitchValueChanged(app, event)
            value = app.alpha_runSwitch.Value;
            if(isequal(value,'Yes'))
                app.alpha_runSwitch.FontColor = 'b';
                app.alpha_runSwitch.FontWeight = 'bold';
                app.AlphaLabel.FontColor = 'b';
                app.AlphaLabel.FontWeight = 'bold';
            else
                app.alpha_runSwitch.FontColor = 'k';
                app.alpha_runSwitch.FontWeight = 'normal';
                app.AlphaLabel.FontColor = 'k';
                app.AlphaLabel.FontWeight = 'normal';
            end
        end

        % Value changed function: beta_runSwitch
        function beta_runSwitchValueChanged(app, event)
            value = app.beta_runSwitch.Value;
            if(isequal(value,'Yes'))
                app.beta_runSwitch.FontColor = 'b';
                app.beta_runSwitch.FontWeight = 'bold';
                app.BetaLabel.FontColor = 'b';
                app.BetaLabel.FontWeight = 'bold';
            else
                app.beta_runSwitch.FontColor = 'k';
                app.beta_runSwitch.FontWeight = 'normal';
                app.BetaLabel.FontColor = 'k';
                app.BetaLabel.FontWeight = 'normal';
            end
        end

        % Value changed function: gamma1_runSwitch
        function gamma1_runSwitchValueChanged(app, event)
            value = app.gamma1_runSwitch.Value;
            if(isequal(value,'Yes'))
                app.gamma1_runSwitch.FontColor = 'b';
                app.gamma1_runSwitch.FontWeight = 'bold';
                app.Gamma1Label.FontColor = 'b';
                app.Gamma1Label.FontWeight = 'bold';
            else
                app.gamma1_runSwitch.FontColor = 'k';
                app.gamma1_runSwitch.FontWeight = 'normal';
                app.Gamma1Label.FontColor = 'k';
                app.Gamma1Label.FontWeight = 'normal';
            end
        end

        % Value changed function: gamma2_runSwitch
        function gamma2_runSwitchValueChanged(app, event)
            value = app.gamma2_runSwitch.Value;
            if(isequal(value,'Yes'))
                app.gamma2_runSwitch.FontColor = 'b';
                app.gamma2_runSwitch.FontWeight = 'bold';
                app.Gamma2Label.FontColor = 'b';
                app.Gamma2Label.FontWeight = 'bold';
            else
                app.gamma2_runSwitch.FontColor = 'k';
                app.gamma2_runSwitch.FontWeight = 'normal';
                app.Gamma2Label.FontColor = 'k';
                app.Gamma2Label.FontWeight = 'normal';
            end
        end

        % Value changed function: gener_RunbyfrequencybinSwitch
        function gener_RunbyfrequencybinSwitchValueChanged(app, event)
            value = app.gener_RunbyfrequencybinSwitch.Value;
            if(isequal(value,'Yes'))
                app.gener_RunbyfrequencybinSwitch.FontColor = 'b';
                app.gener_RunbyfrequencybinSwitch.FontWeight = 'bold';
            else
                app.gener_RunbyfrequencybinSwitch.FontColor = 'k';
                app.gener_RunbyfrequencybinSwitch.FontWeight = 'normal';
            end
        end

        % Value changed function: gener_GetsystemresponseSwitch
        function gener_GetsystemresponseSwitchValueChanged(app, event)
            value = app.gener_GetsystemresponseSwitch.Value;
            if(isequal(value,'Yes'))
                app.gener_GetsystemresponseSwitch.FontColor = 'b';
                app.gener_GetsystemresponseSwitch.FontWeight = 'bold';
            else
                app.gener_GetsystemresponseSwitch.FontColor = 'k';
                app.gener_GetsystemresponseSwitch.FontWeight = 'normal';
            end
        end

        % Value changed function: gener_DisablegraphicsSwitch
        function gener_DisablegraphicsSwitchValueChanged(app, event)
            value = app.gener_DisablegraphicsSwitch.Value;
            if(isequal(value,'Yes'))
                app.gener_DisablegraphicsSwitch.FontColor = 'b';
                app.gener_DisablegraphicsSwitch.FontWeight = 'bold';
            else
                app.gener_DisablegraphicsSwitch.FontColor = 'k';
                app.gener_DisablegraphicsSwitch.FontWeight = 'normal';
            end
        end

        % Button pushed function: CancelButton
        function CancelButtonPushed(app, event)
           
            delete(app);
        end

        % Button pushed function: gener_SelectImportPrepEDButton
        function gener_SelectImportPrepEDButtonPushed(app, event)
            try
                if(isempty(app.gener_DataPathEditField.Value))
                    msgbox('Select first the base path of the preprocessed data.','Info');
                    return;
                end
                [file_name,file_path] = uigetfile({'*.mat';'*.mff';'*.edf';'*.txt';'*.plg';'*.dat';'*.set';'*.*'},...
                    'Select a reference file to import',app.gener_DataPathEditField.Value);
                file_path = strrep(file_path,'\','/');
                base_path = app.gener_DataPathEditField.Value;
                file_parts = split(file_path,base_path);
                if(isequal(length(file_parts),1))
                    msgbox({'The base path and file path do not match in the first part.', ...
                        'Please check the configuration.'},'Info');
                    return;
                end
                SubID_parts = split(file_parts{2},'/');
                if(length(SubID_parts)<2)
                    [~,SubID,~] = fileparts(SubID_parts{2});
                    app.data_structure = 'file';
                else
                    SubID = SubID_parts{2};
                    app.data_structure = 'folder';
                end
                ref_file_path = split(file_path,SubID);
                ref_file_path = strcat(ref_file_path{2},file_name);
                ref_file_path = strrep(ref_file_path,SubID,'SubID');
                if(~isequal(app.gener_DataFormatDropDown.Value,'--Select--'))
                    [~,~,ext] = fileparts(ref_file_path);
                    if(~isequal(ext,strcat('.',app.gener_DataFormatDropDown.Value)))
                        msgbox({'The reference file extension do not match with the selected data format.', ...
                            'Please select a correct file or change another data format.'},'Info');
                        return;
                    end
                end
                app.gener_DataExampEditField.Value = ref_file_path;
            catch
                
            end
        end

        % Value changed function: gener_DataFormatDropDown
        function gener_DataFormatDropDownValueChanged(app, event)
            value = app.gener_DataFormatDropDown.Value;
            if(~isempty(app.gener_DataExampEditField.Value))
                [~,~,ext] = fileparts(app.gener_DataExampEditField.Value);
                if(~isequal(ext,strcat('.',value)))
                    msgbox({'The reference file extension do not match with the selected data format.', ...
                        'Please select a correct file or change another data format.'},'Info');
                    return;
                end
            end
        end

        % Button pushed function: RedefinelabelsButton
        function RedefinelabelsButtonPushed(app, event)
            if(isequal(app.sens_FieldtriptemplateDropDown.Value,'--Select a layout--'))
                msgbox('Please select first a channel layout.','Info');
            else
                guiHandle = Redefine_channels();
                guiHandle.load_channel_labels(app.sens_FieldtriptemplateDropDown.Value);
                disp('-->> Waiting for the labels redefinition.');
                uiwait(guiHandle.UIFigure);
                if( isvalid(guiHandle) && ~guiHandle.canceled)
                    app.labels_file = guiHandle.labels_file;
                    delete(guiHandle);
                else
                    app.labels_file = [];
                end
            end
        end

        % Button pushed function: ResetlabelsButton
        function ResetlabelsButtonPushed(app, event)
            if(isequal(app.sens_FieldtriptemplateDropDown.Value,'--Select a layout--'))
                msgbox('Please select first a channel layout.','Info');
            else
                data = table2struct(app.sens_UITable.Data);
                labels = {data.Labels}';
                base_path = fileparts(mfilename('fullpath'));
                saveJSON(labels,fullfile(base_path,'bcv_properties','labels.json'));
                app.labels_file = fullfile(base_path,'bcv_properties','labels.json');
            end
        end

        % Value changed function: gener_CleanDataSwitch
        function gener_CleanDataSwitchValueChanged(app, event)
            value = app.gener_CleanDataSwitch.Value;
            if(isequal(value,'Yes'))
                app.gener_CleanDataSwitch.FontColor = 'b';
                app.gener_CleanDataSwitch.FontWeight = 'bold';
            else
                app.gener_CleanDataSwitch.FontColor = 'k';
                app.gener_CleanDataSwitch.FontWeight = 'normal';
            end
        end

        % Value changed function: gener_GoodSegSwitch
        function gener_GoodSegSwitchValueChanged(app, event)
            value = app.gener_GoodSegSwitch.Value;
            if(isequal(value,'Yes'))
                app.gener_GoodSegSwitch.FontColor = 'b';
                app.gener_GoodSegSwitch.FontWeight = 'bold';
            else
                app.gener_GoodSegSwitch.FontColor = 'k';
                app.gener_GoodSegSwitch.FontWeight = 'normal';
            end
        end

        % Button pushed function: ClearselectionButton
        function ClearselectionButtonPushed(app, event)
            app.gener_ExtractdatabyeventsMultiselectListBox.Value = {};
        end

        % Button pushed function: AddeventButton
        function AddeventButtonPushed(app, event)
            guiHandle = Add_new_event();           
            disp('-->> Waiting event addition.');
            uiwait(guiHandle.AddneweventUIFigure);
            if( isvalid(guiHandle) && ~guiHandle.canceled)
                event_name = guiHandle.event_name;
                events = app.gener_ExtractdatabyeventsMultiselectListBox.Items;
                events{end+1} = event_name;
                app.gener_ExtractdatabyeventsMultiselectListBox.Items = events;
                delete(guiHandle);
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create BCVARETAToolboxv10UIFigure and hide until all components are created
            app.BCVARETAToolboxv10UIFigure = uifigure('Visible', 'off');
            app.BCVARETAToolboxv10UIFigure.Color = [0.9412 0.9412 0.9412];
            app.BCVARETAToolboxv10UIFigure.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.BCVARETAToolboxv10UIFigure.Position = [100 100 698 517];
            app.BCVARETAToolboxv10UIFigure.Name = 'BC-VARETA Toolbox v1.0';
            app.BCVARETAToolboxv10UIFigure.Icon = 'icon.png';
            app.BCVARETAToolboxv10UIFigure.Resize = 'off';
            app.BCVARETAToolboxv10UIFigure.WindowStyle = 'modal';

            % Create FileMenu
            app.FileMenu = uimenu(app.BCVARETAToolboxv10UIFigure);
            app.FileMenu.Text = 'File';

            % Create DownloadtestdataMenu
            app.DownloadtestdataMenu = uimenu(app.FileMenu);
            app.DownloadtestdataMenu.MenuSelectedFcn = createCallbackFcn(app, @DownloadtestdataMenuSelected, true);
            app.DownloadtestdataMenu.Text = 'Download test data';

            % Create ImportdataMenu
            app.ImportdataMenu = uimenu(app.FileMenu);
            app.ImportdataMenu.MenuSelectedFcn = createCallbackFcn(app, @ImportdataMenuSelected, true);
            app.ImportdataMenu.Text = 'Import data';

            % Create ExitMenu
            app.ExitMenu = uimenu(app.FileMenu);
            app.ExitMenu.MenuSelectedFcn = createCallbackFcn(app, @ExitMenuSelected, true);
            app.ExitMenu.Text = 'Exit';

            % Create ToolsMenu
            app.ToolsMenu = uimenu(app.BCVARETAToolboxv10UIFigure);
            app.ToolsMenu.Text = 'Tools';

            % Create ViewMenu
            app.ViewMenu = uimenu(app.BCVARETAToolboxv10UIFigure);
            app.ViewMenu.Text = 'View';

            % Create FigureMenu
            app.FigureMenu = uimenu(app.ViewMenu);
            app.FigureMenu.MenuSelectedFcn = createCallbackFcn(app, @FigureMenuSelected, true);
            app.FigureMenu.Text = 'Figure';

            % Create SubjectsresultMenu
            app.SubjectsresultMenu = uimenu(app.ViewMenu);
            app.SubjectsresultMenu.MenuSelectedFcn = createCallbackFcn(app, @SubjectsresultMenuSelected, true);
            app.SubjectsresultMenu.Text = 'Subject''s result';

            % Create SubjectsconnectivityMenu
            app.SubjectsconnectivityMenu = uimenu(app.ViewMenu);
            app.SubjectsconnectivityMenu.MenuSelectedFcn = createCallbackFcn(app, @SubjectsconnectivityMenuSelected, true);
            app.SubjectsconnectivityMenu.Text = 'Subject''s connectivity';

            % Create SubjectsactivityMenu
            app.SubjectsactivityMenu = uimenu(app.ViewMenu);
            app.SubjectsactivityMenu.MenuSelectedFcn = createCallbackFcn(app, @SubjectsactivityMenuSelected, true);
            app.SubjectsactivityMenu.Text = 'Subject''s activity';

            % Create RealEEGMenu
            app.RealEEGMenu = uimenu(app.ViewMenu);
            app.RealEEGMenu.MenuSelectedFcn = createCallbackFcn(app, @RealEEGMenuSelected, true);
            app.RealEEGMenu.Text = 'Real EEG ';

            % Create HelpMenu
            app.HelpMenu = uimenu(app.BCVARETAToolboxv10UIFigure);
            app.HelpMenu.Text = 'Help';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.BCVARETAToolboxv10UIFigure);
            app.TabGroup.Position = [30 52 632 437];

            % Create GeneralTab
            app.GeneralTab = uitab(app.TabGroup);
            app.GeneralTab.Title = 'General';

            % Create gener_PrincipalParamsPanel
            app.gener_PrincipalParamsPanel = uipanel(app.GeneralTab);
            app.gener_PrincipalParamsPanel.Title = 'Principal params';
            app.gener_PrincipalParamsPanel.FontWeight = 'bold';
            app.gener_PrincipalParamsPanel.Position = [11 222 610 186];

            % Create gener_SelectOutputButton
            app.gener_SelectOutputButton = uibutton(app.gener_PrincipalParamsPanel, 'push');
            app.gener_SelectOutputButton.ButtonPushedFcn = createCallbackFcn(app, @gener_SelectOutputButtonPushed, true);
            app.gener_SelectOutputButton.Position = [506 111 77 22];
            app.gener_SelectOutputButton.Text = 'Select';

            % Create gener_OutputfolderEditField
            app.gener_OutputfolderEditField = uieditfield(app.gener_PrincipalParamsPanel, 'text');
            app.gener_OutputfolderEditField.Position = [123 111 375 22];

            % Create OutputfolderLabel
            app.OutputfolderLabel = uilabel(app.gener_PrincipalParamsPanel);
            app.OutputfolderLabel.HorizontalAlignment = 'right';
            app.OutputfolderLabel.Position = [40 111 78 22];
            app.OutputfolderLabel.Text = 'Output folder:';

            % Create gener_AnalysislevelDropDown
            app.gener_AnalysislevelDropDown = uidropdown(app.gener_PrincipalParamsPanel);
            app.gener_AnalysislevelDropDown.Items = {'All analysis', 'Sensor', 'Activation', 'Connectivity', 'Sensor and Activation', 'Activation and Connectivity'};
            app.gener_AnalysislevelDropDown.ItemsData = {'all', '1', '2', '3', '12', '23'};
            app.gener_AnalysislevelDropDown.ValueChangedFcn = createCallbackFcn(app, @gener_AnalysislevelDropDownValueChanged, true);
            app.gener_AnalysislevelDropDown.Position = [123 85 229 22];
            app.gener_AnalysislevelDropDown.Value = 'all';

            % Create AnalysislevelDropDownLabel
            app.AnalysislevelDropDownLabel = uilabel(app.gener_PrincipalParamsPanel);
            app.AnalysislevelDropDownLabel.HorizontalAlignment = 'right';
            app.AnalysislevelDropDownLabel.Position = [36 85 82 22];
            app.AnalysislevelDropDownLabel.Text = 'Analysis level:';

            % Create gener_RunbytrialsSwitch
            app.gener_RunbytrialsSwitch = uiswitch(app.gener_PrincipalParamsPanel, 'slider');
            app.gener_RunbytrialsSwitch.Items = {'No', 'Yes'};
            app.gener_RunbytrialsSwitch.ValueChangedFcn = createCallbackFcn(app, @gener_RunbytrialsSwitchValueChanged, true);
            app.gener_RunbytrialsSwitch.Position = [123 41 45 20];
            app.gener_RunbytrialsSwitch.Value = 'No';

            % Create RunbytrialsSwitchLabel
            app.RunbytrialsSwitchLabel = uilabel(app.gener_PrincipalParamsPanel);
            app.RunbytrialsSwitchLabel.HorizontalAlignment = 'center';
            app.RunbytrialsSwitchLabel.Position = [44 60 76 22];
            app.RunbytrialsSwitchLabel.Text = 'Run by trials:';

            % Create gener_RunbyfrequencybinSwitch
            app.gener_RunbyfrequencybinSwitch = uiswitch(app.gener_PrincipalParamsPanel, 'slider');
            app.gener_RunbyfrequencybinSwitch.Items = {'No', 'Yes'};
            app.gener_RunbyfrequencybinSwitch.ValueChangedFcn = createCallbackFcn(app, @gener_RunbyfrequencybinSwitchValueChanged, true);
            app.gener_RunbyfrequencybinSwitch.Position = [305 39 45 20];
            app.gener_RunbyfrequencybinSwitch.Value = 'No';

            % Create RunbyfrequencybinSwitchLabel
            app.RunbyfrequencybinSwitchLabel = uilabel(app.gener_PrincipalParamsPanel);
            app.RunbyfrequencybinSwitchLabel.HorizontalAlignment = 'center';
            app.RunbyfrequencybinSwitchLabel.Position = [226 61 122 22];
            app.RunbyfrequencybinSwitchLabel.Text = 'Run by frequency bin:';

            % Create gener_GetsystemresponseSwitch
            app.gener_GetsystemresponseSwitch = uiswitch(app.gener_PrincipalParamsPanel, 'slider');
            app.gener_GetsystemresponseSwitch.Items = {'No', 'Yes'};
            app.gener_GetsystemresponseSwitch.ValueChangedFcn = createCallbackFcn(app, @gener_GetsystemresponseSwitchValueChanged, true);
            app.gener_GetsystemresponseSwitch.Position = [490 39 45 20];
            app.gener_GetsystemresponseSwitch.Value = 'No';

            % Create GetsystemresponseSwitchLabel
            app.GetsystemresponseSwitchLabel = uilabel(app.gener_PrincipalParamsPanel);
            app.GetsystemresponseSwitchLabel.HorizontalAlignment = 'center';
            app.GetsystemresponseSwitchLabel.Position = [415 60 122 22];
            app.GetsystemresponseSwitchLabel.Text = 'Get system response:';

            % Create gener_StructTemplateDropDown
            app.gener_StructTemplateDropDown = uidropdown(app.gener_PrincipalParamsPanel);
            app.gener_StructTemplateDropDown.Items = {'--Select--'};
            app.gener_StructTemplateDropDown.Position = [123 138 229 22];
            app.gener_StructTemplateDropDown.Value = '--Select--';

            % Create StructuraltamplateLabel
            app.StructuraltamplateLabel = uilabel(app.gener_PrincipalParamsPanel);
            app.StructuraltamplateLabel.HorizontalAlignment = 'right';
            app.StructuraltamplateLabel.Position = [8 138 110 22];
            app.StructuraltamplateLabel.Text = 'Structural tamplate:';

            % Create DisablegraphicsSwitchLabel
            app.DisablegraphicsSwitchLabel = uilabel(app.gener_PrincipalParamsPanel);
            app.DisablegraphicsSwitchLabel.HorizontalAlignment = 'center';
            app.DisablegraphicsSwitchLabel.Position = [322 4 98 22];
            app.DisablegraphicsSwitchLabel.Text = 'Disable graphics:';

            % Create gener_DisablegraphicsSwitch
            app.gener_DisablegraphicsSwitch = uiswitch(app.gener_PrincipalParamsPanel, 'slider');
            app.gener_DisablegraphicsSwitch.Items = {'No', 'Yes'};
            app.gener_DisablegraphicsSwitch.ValueChangedFcn = createCallbackFcn(app, @gener_DisablegraphicsSwitchValueChanged, true);
            app.gener_DisablegraphicsSwitch.Position = [447 5 45 20];
            app.gener_DisablegraphicsSwitch.Value = 'No';

            % Create RuninGPUSwitchLabel
            app.RuninGPUSwitchLabel = uilabel(app.gener_PrincipalParamsPanel);
            app.RuninGPUSwitchLabel.HorizontalAlignment = 'center';
            app.RuninGPUSwitchLabel.Position = [72 4 73 22];
            app.RuninGPUSwitchLabel.Text = 'Run in GPU:';

            % Create gener_RuninGPUSwitch
            app.gener_RuninGPUSwitch = uiswitch(app.gener_PrincipalParamsPanel, 'slider');
            app.gener_RuninGPUSwitch.Items = {'No', 'Yes'};
            app.gener_RuninGPUSwitch.ValueChangedFcn = createCallbackFcn(app, @gener_RuninGPUSwitchValueChanged, true);
            app.gener_RuninGPUSwitch.Position = [173 5 45 20];
            app.gener_RuninGPUSwitch.Value = 'No';

            % Create DataconfigurationsPanel
            app.DataconfigurationsPanel = uipanel(app.GeneralTab);
            app.DataconfigurationsPanel.Title = 'Data configurations';
            app.DataconfigurationsPanel.FontWeight = 'bold';
            app.DataconfigurationsPanel.Position = [11 3 610 218];

            % Create gener_SelectInputButton
            app.gener_SelectInputButton = uibutton(app.DataconfigurationsPanel, 'push');
            app.gener_SelectInputButton.ButtonPushedFcn = createCallbackFcn(app, @gener_SelectInputButtonPushed, true);
            app.gener_SelectInputButton.Position = [485 170 98 22];
            app.gener_SelectInputButton.Text = 'Select';

            % Create gener_DataPathEditField
            app.gener_DataPathEditField = uieditfield(app.DataconfigurationsPanel, 'text');
            app.gener_DataPathEditField.Position = [96 170 378 22];

            % Create InputfolderLabel
            app.InputfolderLabel = uilabel(app.DataconfigurationsPanel);
            app.InputfolderLabel.HorizontalAlignment = 'right';
            app.InputfolderLabel.Position = [21 170 69 22];
            app.InputfolderLabel.Text = 'Input folder:';

            % Create gener_DataFormatDropDown
            app.gener_DataFormatDropDown = uidropdown(app.DataconfigurationsPanel);
            app.gener_DataFormatDropDown.Items = {'--Select--', 'edf', 'mat', 'txt', 'plg', 'eeglab', 'set'};
            app.gener_DataFormatDropDown.ValueChangedFcn = createCallbackFcn(app, @gener_DataFormatDropDownValueChanged, true);
            app.gener_DataFormatDropDown.Position = [96 105 129 22];
            app.gener_DataFormatDropDown.Value = '--Select--';

            % Create DataformatLabel
            app.DataformatLabel = uilabel(app.DataconfigurationsPanel);
            app.DataformatLabel.HorizontalAlignment = 'right';
            app.DataformatLabel.Position = [19 105 72 22];
            app.DataformatLabel.Text = 'Data format:';

            % Create gener_CleanDataSwitch
            app.gener_CleanDataSwitch = uiswitch(app.DataconfigurationsPanel, 'slider');
            app.gener_CleanDataSwitch.Items = {'No', 'Yes'};
            app.gener_CleanDataSwitch.ValueChangedFcn = createCallbackFcn(app, @gener_CleanDataSwitchValueChanged, true);
            app.gener_CleanDataSwitch.Position = [120 70 45 20];
            app.gener_CleanDataSwitch.Value = 'No';

            % Create CleandataLabel
            app.CleandataLabel = uilabel(app.DataconfigurationsPanel);
            app.CleandataLabel.HorizontalAlignment = 'center';
            app.CleandataLabel.Position = [27 70 67 22];
            app.CleandataLabel.Text = 'Clean data:';

            % Create gener_GoodSegSwitch
            app.gener_GoodSegSwitch = uiswitch(app.DataconfigurationsPanel, 'slider');
            app.gener_GoodSegSwitch.Items = {'No', 'Yes'};
            app.gener_GoodSegSwitch.ValueChangedFcn = createCallbackFcn(app, @gener_GoodSegSwitchValueChanged, true);
            app.gener_GoodSegSwitch.Position = [120 32 45 20];
            app.gener_GoodSegSwitch.Value = 'No';

            % Create GoodsegLabel
            app.GoodsegLabel = uilabel(app.DataconfigurationsPanel);
            app.GoodsegLabel.HorizontalAlignment = 'center';
            app.GoodsegLabel.Position = [33 32 61 22];
            app.GoodsegLabel.Text = 'Good seg:';

            % Create gener_SelectImportPrepEDButton
            app.gener_SelectImportPrepEDButton = uibutton(app.DataconfigurationsPanel, 'push');
            app.gener_SelectImportPrepEDButton.ButtonPushedFcn = createCallbackFcn(app, @gener_SelectImportPrepEDButtonPushed, true);
            app.gener_SelectImportPrepEDButton.Position = [486 140 97 22];
            app.gener_SelectImportPrepEDButton.Text = 'Select';

            % Create ExamplefileLabel
            app.ExamplefileLabel = uilabel(app.DataconfigurationsPanel);
            app.ExamplefileLabel.HorizontalAlignment = 'right';
            app.ExamplefileLabel.Position = [17 139 74 22];
            app.ExamplefileLabel.Text = 'Example file:';

            % Create gener_DataExampEditField
            app.gener_DataExampEditField = uieditfield(app.DataconfigurationsPanel, 'text');
            app.gener_DataExampEditField.Position = [96 139 378 22];

            % Create ExtractdatabyeventsMultiselectListBoxLabel
            app.ExtractdatabyeventsMultiselectListBoxLabel = uilabel(app.DataconfigurationsPanel);
            app.ExtractdatabyeventsMultiselectListBoxLabel.HorizontalAlignment = 'right';
            app.ExtractdatabyeventsMultiselectListBoxLabel.FontWeight = 'bold';
            app.ExtractdatabyeventsMultiselectListBoxLabel.Position = [259 109 211 22];
            app.ExtractdatabyeventsMultiselectListBoxLabel.Text = 'Extract data by events: (Multiselect)';

            % Create gener_ExtractdatabyeventsMultiselectListBox
            app.gener_ExtractdatabyeventsMultiselectListBox = uilistbox(app.DataconfigurationsPanel);
            app.gener_ExtractdatabyeventsMultiselectListBox.Items = {'open_eyes', 'closed_eyes', 'hyperventilation_1', 'recuperation'};
            app.gener_ExtractdatabyeventsMultiselectListBox.Multiselect = 'on';
            app.gener_ExtractdatabyeventsMultiselectListBox.Position = [287 9 187 96];
            app.gener_ExtractdatabyeventsMultiselectListBox.Value = {};

            % Create AddeventButton
            app.AddeventButton = uibutton(app.DataconfigurationsPanel, 'push');
            app.AddeventButton.ButtonPushedFcn = createCallbackFcn(app, @AddeventButtonPushed, true);
            app.AddeventButton.Position = [485 83 98 22];
            app.AddeventButton.Text = 'Add event';

            % Create ClearselectionButton
            app.ClearselectionButton = uibutton(app.DataconfigurationsPanel, 'push');
            app.ClearselectionButton.ButtonPushedFcn = createCallbackFcn(app, @ClearselectionButtonPushed, true);
            app.ClearselectionButton.Position = [484 53 100 22];
            app.ClearselectionButton.Text = 'Clear selection';

            % Create SensorTab
            app.SensorTab = uitab(app.TabGroup);
            app.SensorTab.Title = 'Sensor';

            % Create sens_LayoutdescriptionPanel
            app.sens_LayoutdescriptionPanel = uipanel(app.SensorTab);
            app.sens_LayoutdescriptionPanel.Title = 'Layout description';
            app.sens_LayoutdescriptionPanel.FontWeight = 'bold';
            app.sens_LayoutdescriptionPanel.Position = [12 280 609 129];

            % Create sens_UITable
            app.sens_UITable = uitable(app.sens_LayoutdescriptionPanel);
            app.sens_UITable.ColumnName = {'No.'; 'Labels'; 'Position'; 'Width'; 'Height'};
            app.sens_UITable.ColumnWidth = {35, 'auto', 'auto', 'auto', 'auto'};
            app.sens_UITable.RowName = {};
            app.sens_UITable.Position = [166 3 438 106];

            % Create RedefinelabelsButton
            app.RedefinelabelsButton = uibutton(app.sens_LayoutdescriptionPanel, 'push');
            app.RedefinelabelsButton.ButtonPushedFcn = createCallbackFcn(app, @RedefinelabelsButtonPushed, true);
            app.RedefinelabelsButton.FontWeight = 'bold';
            app.RedefinelabelsButton.Position = [24 48 112 22];
            app.RedefinelabelsButton.Text = 'Redefine labels';

            % Create ResetlabelsButton
            app.ResetlabelsButton = uibutton(app.sens_LayoutdescriptionPanel, 'push');
            app.ResetlabelsButton.ButtonPushedFcn = createCallbackFcn(app, @ResetlabelsButtonPushed, true);
            app.ResetlabelsButton.FontWeight = 'bold';
            app.ResetlabelsButton.Position = [25 16 112 22];
            app.ResetlabelsButton.Text = 'Reset labels';

            % Create sens_FieldtriptemplateDropDown
            app.sens_FieldtriptemplateDropDown = uidropdown(app.sens_LayoutdescriptionPanel);
            app.sens_FieldtriptemplateDropDown.Items = {'--Select a layout--'};
            app.sens_FieldtriptemplateDropDown.ValueChangedFcn = createCallbackFcn(app, @sens_FieldtriptemplateDropDownValueChanged, true);
            app.sens_FieldtriptemplateDropDown.Position = [11 82 146 22];
            app.sens_FieldtriptemplateDropDown.Value = '--Select a layout--';

            % Create spect_FreqPanel
            app.spect_FreqPanel = uipanel(app.SensorTab);
            app.spect_FreqPanel.Title = 'Frequency bands';
            app.spect_FreqPanel.FontWeight = 'bold';
            app.spect_FreqPanel.Position = [12 96 610 181];

            % Create GridLayout
            app.GridLayout = uigridlayout(app.spect_FreqPanel);
            app.GridLayout.ColumnWidth = {'1x', '1x', '1x', '1x'};
            app.GridLayout.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout.ColumnSpacing = 5;
            app.GridLayout.RowSpacing = 1;
            app.GridLayout.Padding = [5 5 5 5];

            % Create NameLabel
            app.NameLabel = uilabel(app.GridLayout);
            app.NameLabel.HorizontalAlignment = 'center';
            app.NameLabel.FontWeight = 'bold';
            app.NameLabel.Layout.Row = 1;
            app.NameLabel.Layout.Column = 1;
            app.NameLabel.Text = 'Name';

            % Create ProcessLabel
            app.ProcessLabel = uilabel(app.GridLayout);
            app.ProcessLabel.HorizontalAlignment = 'center';
            app.ProcessLabel.FontWeight = 'bold';
            app.ProcessLabel.Layout.Row = 1;
            app.ProcessLabel.Layout.Column = 2;
            app.ProcessLabel.Text = 'Process';

            % Create StartLabel
            app.StartLabel = uilabel(app.GridLayout);
            app.StartLabel.HorizontalAlignment = 'center';
            app.StartLabel.FontWeight = 'bold';
            app.StartLabel.Layout.Row = 1;
            app.StartLabel.Layout.Column = 3;
            app.StartLabel.Text = 'Start';

            % Create EndLabel
            app.EndLabel = uilabel(app.GridLayout);
            app.EndLabel.HorizontalAlignment = 'center';
            app.EndLabel.FontWeight = 'bold';
            app.EndLabel.Layout.Row = 1;
            app.EndLabel.Layout.Column = 4;
            app.EndLabel.Text = 'End';

            % Create delta_startEditField
            app.delta_startEditField = uieditfield(app.GridLayout, 'numeric');
            app.delta_startEditField.Limits = [0 4];
            app.delta_startEditField.ValueChangedFcn = createCallbackFcn(app, @delta_startEditFieldValueChanged, true);
            app.delta_startEditField.Layout.Row = 2;
            app.delta_startEditField.Layout.Column = 3;

            % Create delta_endEditField
            app.delta_endEditField = uieditfield(app.GridLayout, 'numeric');
            app.delta_endEditField.Limits = [0 4];
            app.delta_endEditField.ValueChangedFcn = createCallbackFcn(app, @delta_endEditFieldValueChanged, true);
            app.delta_endEditField.Layout.Row = 2;
            app.delta_endEditField.Layout.Column = 4;
            app.delta_endEditField.Value = 4;

            % Create theta_startEditField
            app.theta_startEditField = uieditfield(app.GridLayout, 'numeric');
            app.theta_startEditField.Limits = [4 7];
            app.theta_startEditField.ValueChangedFcn = createCallbackFcn(app, @theta_startEditFieldValueChanged, true);
            app.theta_startEditField.Layout.Row = 3;
            app.theta_startEditField.Layout.Column = 3;
            app.theta_startEditField.Value = 4;

            % Create theta_endEditField
            app.theta_endEditField = uieditfield(app.GridLayout, 'numeric');
            app.theta_endEditField.Limits = [4 7];
            app.theta_endEditField.ValueChangedFcn = createCallbackFcn(app, @theta_endEditFieldValueChanged, true);
            app.theta_endEditField.Layout.Row = 3;
            app.theta_endEditField.Layout.Column = 4;
            app.theta_endEditField.Value = 7;

            % Create alpha_startEditField
            app.alpha_startEditField = uieditfield(app.GridLayout, 'numeric');
            app.alpha_startEditField.Limits = [7 14];
            app.alpha_startEditField.ValueChangedFcn = createCallbackFcn(app, @alpha_startEditFieldValueChanged, true);
            app.alpha_startEditField.Layout.Row = 4;
            app.alpha_startEditField.Layout.Column = 3;
            app.alpha_startEditField.Value = 7;

            % Create alpha_endEditField
            app.alpha_endEditField = uieditfield(app.GridLayout, 'numeric');
            app.alpha_endEditField.Limits = [7 14];
            app.alpha_endEditField.ValueChangedFcn = createCallbackFcn(app, @alpha_endEditFieldValueChanged, true);
            app.alpha_endEditField.Layout.Row = 4;
            app.alpha_endEditField.Layout.Column = 4;
            app.alpha_endEditField.Value = 14;

            % Create beta_startEditField
            app.beta_startEditField = uieditfield(app.GridLayout, 'numeric');
            app.beta_startEditField.Limits = [14 31];
            app.beta_startEditField.ValueChangedFcn = createCallbackFcn(app, @beta_startEditFieldValueChanged, true);
            app.beta_startEditField.Layout.Row = 5;
            app.beta_startEditField.Layout.Column = 3;
            app.beta_startEditField.Value = 14;

            % Create beta_endEditField
            app.beta_endEditField = uieditfield(app.GridLayout, 'numeric');
            app.beta_endEditField.Limits = [14 31];
            app.beta_endEditField.ValueChangedFcn = createCallbackFcn(app, @beta_endEditFieldValueChanged, true);
            app.beta_endEditField.Layout.Row = 5;
            app.beta_endEditField.Layout.Column = 4;
            app.beta_endEditField.Value = 31;

            % Create gamma1_startEditField
            app.gamma1_startEditField = uieditfield(app.GridLayout, 'numeric');
            app.gamma1_startEditField.Limits = [31 60];
            app.gamma1_startEditField.ValueChangedFcn = createCallbackFcn(app, @gamma1_startEditFieldValueChanged, true);
            app.gamma1_startEditField.Layout.Row = 6;
            app.gamma1_startEditField.Layout.Column = 3;
            app.gamma1_startEditField.Value = 31;

            % Create gamma1_endEditField
            app.gamma1_endEditField = uieditfield(app.GridLayout, 'numeric');
            app.gamma1_endEditField.Limits = [31 60];
            app.gamma1_endEditField.ValueChangedFcn = createCallbackFcn(app, @gamma1_endEditFieldValueChanged, true);
            app.gamma1_endEditField.Layout.Row = 6;
            app.gamma1_endEditField.Layout.Column = 4;
            app.gamma1_endEditField.Value = 60;

            % Create gamma2_startEditField
            app.gamma2_startEditField = uieditfield(app.GridLayout, 'numeric');
            app.gamma2_startEditField.Limits = [60 90];
            app.gamma2_startEditField.ValueChangedFcn = createCallbackFcn(app, @gamma2_startEditFieldValueChanged, true);
            app.gamma2_startEditField.Layout.Row = 7;
            app.gamma2_startEditField.Layout.Column = 3;
            app.gamma2_startEditField.Value = 60;

            % Create gamma2_endEditField
            app.gamma2_endEditField = uieditfield(app.GridLayout, 'numeric');
            app.gamma2_endEditField.Limits = [60 90];
            app.gamma2_endEditField.ValueChangedFcn = createCallbackFcn(app, @gamma2_endEditFieldValueChanged, true);
            app.gamma2_endEditField.Layout.Row = 7;
            app.gamma2_endEditField.Layout.Column = 4;
            app.gamma2_endEditField.Value = 90;

            % Create delta_runSwitch
            app.delta_runSwitch = uiswitch(app.GridLayout, 'slider');
            app.delta_runSwitch.Items = {'No', 'Yes'};
            app.delta_runSwitch.ValueChangedFcn = createCallbackFcn(app, @delta_runSwitchValueChanged, true);
            app.delta_runSwitch.Layout.Row = 2;
            app.delta_runSwitch.Layout.Column = 2;
            app.delta_runSwitch.Value = 'Yes';

            % Create theta_runSwitch
            app.theta_runSwitch = uiswitch(app.GridLayout, 'slider');
            app.theta_runSwitch.Items = {'No', 'Yes'};
            app.theta_runSwitch.ValueChangedFcn = createCallbackFcn(app, @theta_runSwitchValueChanged, true);
            app.theta_runSwitch.Layout.Row = 3;
            app.theta_runSwitch.Layout.Column = 2;
            app.theta_runSwitch.Value = 'Yes';

            % Create alpha_runSwitch
            app.alpha_runSwitch = uiswitch(app.GridLayout, 'slider');
            app.alpha_runSwitch.Items = {'No', 'Yes'};
            app.alpha_runSwitch.ValueChangedFcn = createCallbackFcn(app, @alpha_runSwitchValueChanged, true);
            app.alpha_runSwitch.Layout.Row = 4;
            app.alpha_runSwitch.Layout.Column = 2;
            app.alpha_runSwitch.Value = 'Yes';

            % Create beta_runSwitch
            app.beta_runSwitch = uiswitch(app.GridLayout, 'slider');
            app.beta_runSwitch.Items = {'No', 'Yes'};
            app.beta_runSwitch.ValueChangedFcn = createCallbackFcn(app, @beta_runSwitchValueChanged, true);
            app.beta_runSwitch.Layout.Row = 5;
            app.beta_runSwitch.Layout.Column = 2;
            app.beta_runSwitch.Value = 'Yes';

            % Create gamma1_runSwitch
            app.gamma1_runSwitch = uiswitch(app.GridLayout, 'slider');
            app.gamma1_runSwitch.Items = {'No', 'Yes'};
            app.gamma1_runSwitch.ValueChangedFcn = createCallbackFcn(app, @gamma1_runSwitchValueChanged, true);
            app.gamma1_runSwitch.Layout.Row = 6;
            app.gamma1_runSwitch.Layout.Column = 2;
            app.gamma1_runSwitch.Value = 'Yes';

            % Create gamma2_runSwitch
            app.gamma2_runSwitch = uiswitch(app.GridLayout, 'slider');
            app.gamma2_runSwitch.Items = {'No', 'Yes'};
            app.gamma2_runSwitch.ValueChangedFcn = createCallbackFcn(app, @gamma2_runSwitchValueChanged, true);
            app.gamma2_runSwitch.Layout.Row = 7;
            app.gamma2_runSwitch.Layout.Column = 2;
            app.gamma2_runSwitch.Value = 'Yes';

            % Create DeltaLabel
            app.DeltaLabel = uilabel(app.GridLayout);
            app.DeltaLabel.HorizontalAlignment = 'center';
            app.DeltaLabel.Layout.Row = 2;
            app.DeltaLabel.Layout.Column = 1;
            app.DeltaLabel.Text = 'Delta';

            % Create ThetaLabel
            app.ThetaLabel = uilabel(app.GridLayout);
            app.ThetaLabel.HorizontalAlignment = 'center';
            app.ThetaLabel.Layout.Row = 3;
            app.ThetaLabel.Layout.Column = 1;
            app.ThetaLabel.Text = 'Theta';

            % Create AlphaLabel
            app.AlphaLabel = uilabel(app.GridLayout);
            app.AlphaLabel.HorizontalAlignment = 'center';
            app.AlphaLabel.Layout.Row = 4;
            app.AlphaLabel.Layout.Column = 1;
            app.AlphaLabel.Text = 'Alpha';

            % Create BetaLabel
            app.BetaLabel = uilabel(app.GridLayout);
            app.BetaLabel.HorizontalAlignment = 'center';
            app.BetaLabel.Layout.Row = 5;
            app.BetaLabel.Layout.Column = 1;
            app.BetaLabel.Text = 'Beta';

            % Create Gamma1Label
            app.Gamma1Label = uilabel(app.GridLayout);
            app.Gamma1Label.HorizontalAlignment = 'center';
            app.Gamma1Label.Layout.Row = 6;
            app.Gamma1Label.Layout.Column = 1;
            app.Gamma1Label.Text = 'Gamma1';

            % Create Gamma2Label
            app.Gamma2Label = uilabel(app.GridLayout);
            app.Gamma2Label.HorizontalAlignment = 'center';
            app.Gamma2Label.Layout.Row = 7;
            app.Gamma2Label.Layout.Column = 1;
            app.Gamma2Label.Text = 'Gamma2';

            % Create spect_OtherparamsPanel
            app.spect_OtherparamsPanel = uipanel(app.SensorTab);
            app.spect_OtherparamsPanel.Title = 'Other params';
            app.spect_OtherparamsPanel.FontWeight = 'bold';
            app.spect_OtherparamsPanel.Position = [12 3 610 92];

            % Create FreqresolutionLabel
            app.FreqresolutionLabel = uilabel(app.spect_OtherparamsPanel);
            app.FreqresolutionLabel.HorizontalAlignment = 'right';
            app.FreqresolutionLabel.Position = [24 40 89 22];
            app.FreqresolutionLabel.Text = 'Freq resolution:';

            % Create spect_freq_resolEditField
            app.spect_freq_resolEditField = uieditfield(app.spect_OtherparamsPanel, 'numeric');
            app.spect_freq_resolEditField.Limits = [0.1 1];
            app.spect_freq_resolEditField.Position = [121 40 43 22];
            app.spect_freq_resolEditField.Value = 0.5;

            % Create SamplefreqLabel
            app.SamplefreqLabel = uilabel(app.spect_OtherparamsPanel);
            app.SamplefreqLabel.HorizontalAlignment = 'right';
            app.SamplefreqLabel.Position = [245 40 74 22];
            app.SamplefreqLabel.Text = 'Sample freq:';

            % Create spect_sample_freqEditField
            app.spect_sample_freqEditField = uieditfield(app.spect_OtherparamsPanel, 'numeric');
            app.spect_sample_freqEditField.Limits = [200 600];
            app.spect_sample_freqEditField.Position = [325 40 38 22];
            app.spect_sample_freqEditField.Value = 200;

            % Create FreqmaxEditFieldLabel
            app.FreqmaxEditFieldLabel = uilabel(app.spect_OtherparamsPanel);
            app.FreqmaxEditFieldLabel.HorizontalAlignment = 'right';
            app.FreqmaxEditFieldLabel.Position = [257 6 60 22];
            app.FreqmaxEditFieldLabel.Text = 'Freq max:';

            % Create spect_FreqmaxEditField
            app.spect_FreqmaxEditField = uieditfield(app.spect_OtherparamsPanel, 'numeric');
            app.spect_FreqmaxEditField.Limits = [0 90];
            app.spect_FreqmaxEditField.Position = [325 6 38 22];
            app.spect_FreqmaxEditField.Value = 90;

            % Create freq_gfiltvarEditFieldLabel
            app.freq_gfiltvarEditFieldLabel = uilabel(app.spect_OtherparamsPanel);
            app.freq_gfiltvarEditFieldLabel.HorizontalAlignment = 'right';
            app.freq_gfiltvarEditFieldLabel.Position = [40 7 72 22];
            app.freq_gfiltvarEditFieldLabel.Text = 'freq_gfiltvar:';

            % Create spect_freq_gfiltvarEditField
            app.spect_freq_gfiltvarEditField = uieditfield(app.spect_OtherparamsPanel, 'numeric');
            app.spect_freq_gfiltvarEditField.Limits = [0.1 3];
            app.spect_freq_gfiltvarEditField.Position = [119 7 45 22];
            app.spect_freq_gfiltvarEditField.Value = 0.5;

            % Create win_orderLabel
            app.win_orderLabel = uilabel(app.spect_OtherparamsPanel);
            app.win_orderLabel.HorizontalAlignment = 'right';
            app.win_orderLabel.Position = [439 27 62 22];
            app.win_orderLabel.Text = 'win_order:';

            % Create spect_win_orderSlider
            app.spect_win_orderSlider = uislider(app.spect_OtherparamsPanel);
            app.spect_win_orderSlider.Limits = [1 3];
            app.spect_win_orderSlider.MajorTicks = [1 2 3];
            app.spect_win_orderSlider.MinorTicks = [1 2 3];
            app.spect_win_orderSlider.Position = [514 45 47 3];
            app.spect_win_orderSlider.Value = 1;

            % Create ActivationTab
            app.ActivationTab = uitab(app.TabGroup);
            app.ActivationTab.Title = 'Activation';

            % Create activ_MethodsPanel
            app.activ_MethodsPanel = uipanel(app.ActivationTab);
            app.activ_MethodsPanel.Title = 'Methods';
            app.activ_MethodsPanel.FontWeight = 'bold';
            app.activ_MethodsPanel.Position = [35 202 568 186];

            % Create SSSBLppLabel
            app.SSSBLppLabel = uilabel(app.activ_MethodsPanel);
            app.SSSBLppLabel.FontWeight = 'bold';
            app.SSSBLppLabel.Position = [24 135 64 22];
            app.SSSBLppLabel.Text = 'SSSBLpp:';

            % Create CheckBox_sssblpp
            app.CheckBox_sssblpp = uicheckbox(app.activ_MethodsPanel);
            app.CheckBox_sssblpp.Text = '';
            app.CheckBox_sssblpp.Position = [88 135 25 22];

            % Create eLORETALabel
            app.eLORETALabel = uilabel(app.activ_MethodsPanel);
            app.eLORETALabel.FontWeight = 'bold';
            app.eLORETALabel.Position = [219 135 65 22];
            app.eLORETALabel.Text = 'eLORETA:';

            % Create CheckBox_eloreta
            app.CheckBox_eloreta = uicheckbox(app.activ_MethodsPanel);
            app.CheckBox_eloreta.Text = '';
            app.CheckBox_eloreta.Position = [283 135 25 22];

            % Create LCMVLabel
            app.LCMVLabel = uilabel(app.activ_MethodsPanel);
            app.LCMVLabel.FontWeight = 'bold';
            app.LCMVLabel.Position = [425 135 43 22];
            app.LCMVLabel.Text = 'LCMV:';

            % Create CheckBox_lcmv
            app.CheckBox_lcmv = uicheckbox(app.activ_MethodsPanel);
            app.CheckBox_lcmv.Text = '';
            app.CheckBox_lcmv.Position = [468 135 25 22];

            % Create ThresholdEditFieldLabel
            app.ThresholdEditFieldLabel = uilabel(app.activ_MethodsPanel);
            app.ThresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.ThresholdEditFieldLabel.Position = [20 106 62 22];
            app.ThresholdEditFieldLabel.Text = 'Threshold:';

            % Create sssblpp_thEditField
            app.sssblpp_thEditField = uieditfield(app.activ_MethodsPanel, 'numeric');
            app.sssblpp_thEditField.Limits = [0 1.7321];
            app.sssblpp_thEditField.Position = [87 106 54 22];
            app.sssblpp_thEditField.Value = 1;

            % Create ThresholdEditField_2Label
            app.ThresholdEditField_2Label = uilabel(app.activ_MethodsPanel);
            app.ThresholdEditField_2Label.HorizontalAlignment = 'right';
            app.ThresholdEditField_2Label.Position = [216 106 62 22];
            app.ThresholdEditField_2Label.Text = 'Threshold:';

            % Create eloreta_thEditField
            app.eloreta_thEditField = uieditfield(app.activ_MethodsPanel, 'numeric');
            app.eloreta_thEditField.Limits = [0 1.7321];
            app.eloreta_thEditField.Position = [283 106 53 22];
            app.eloreta_thEditField.Value = 1;

            % Create gamma1EditFieldLabel
            app.gamma1EditFieldLabel = uilabel(app.activ_MethodsPanel);
            app.gamma1EditFieldLabel.HorizontalAlignment = 'right';
            app.gamma1EditFieldLabel.Position = [222 75 56 22];
            app.gamma1EditFieldLabel.Text = 'gamma1:';

            % Create eloreta_gamma1EditField
            app.eloreta_gamma1EditField = uieditfield(app.activ_MethodsPanel, 'numeric');
            app.eloreta_gamma1EditField.Limits = [0 2];
            app.eloreta_gamma1EditField.Position = [283 75 53 22];

            % Create gamma2EditFieldLabel
            app.gamma2EditFieldLabel = uilabel(app.activ_MethodsPanel);
            app.gamma2EditFieldLabel.HorizontalAlignment = 'right';
            app.gamma2EditFieldLabel.Position = [222 44 56 22];
            app.gamma2EditFieldLabel.Text = 'gamma2:';

            % Create eloreta_gamma2EditField
            app.eloreta_gamma2EditField = uieditfield(app.activ_MethodsPanel, 'numeric');
            app.eloreta_gamma2EditField.Limits = [0 2];
            app.eloreta_gamma2EditField.Position = [283 44 53 22];
            app.eloreta_gamma2EditField.Value = 2;

            % Create deltagammaEditFieldLabel
            app.deltagammaEditFieldLabel = uilabel(app.activ_MethodsPanel);
            app.deltagammaEditFieldLabel.HorizontalAlignment = 'right';
            app.deltagammaEditFieldLabel.Position = [200 14 78 22];
            app.deltagammaEditFieldLabel.Text = 'delta gamma:';

            % Create eloreta_deltagammaEditField
            app.eloreta_deltagammaEditField = uieditfield(app.activ_MethodsPanel, 'numeric');
            app.eloreta_deltagammaEditField.Limits = [0.1 1];
            app.eloreta_deltagammaEditField.Position = [283 14 53 22];
            app.eloreta_deltagammaEditField.Value = 0.1;

            % Create ThresholdEditField_3Label
            app.ThresholdEditField_3Label = uilabel(app.activ_MethodsPanel);
            app.ThresholdEditField_3Label.HorizontalAlignment = 'right';
            app.ThresholdEditField_3Label.Position = [400 106 62 22];
            app.ThresholdEditField_3Label.Text = 'Threshold:';

            % Create lcmv_thEditField
            app.lcmv_thEditField = uieditfield(app.activ_MethodsPanel, 'numeric');
            app.lcmv_thEditField.Limits = [0 1.7321];
            app.lcmv_thEditField.Position = [467 106 53 22];
            app.lcmv_thEditField.Value = 1;

            % Create gamma1EditField_2Label
            app.gamma1EditField_2Label = uilabel(app.activ_MethodsPanel);
            app.gamma1EditField_2Label.HorizontalAlignment = 'right';
            app.gamma1EditField_2Label.Position = [406 75 56 22];
            app.gamma1EditField_2Label.Text = 'gamma1:';

            % Create lcmv_gamma1EditField
            app.lcmv_gamma1EditField = uieditfield(app.activ_MethodsPanel, 'numeric');
            app.lcmv_gamma1EditField.Limits = [0 2];
            app.lcmv_gamma1EditField.Position = [467 75 53 22];

            % Create gamma2EditField_2Label
            app.gamma2EditField_2Label = uilabel(app.activ_MethodsPanel);
            app.gamma2EditField_2Label.HorizontalAlignment = 'right';
            app.gamma2EditField_2Label.Position = [406 44 56 22];
            app.gamma2EditField_2Label.Text = 'gamma2:';

            % Create lcmv_gamma2EditField
            app.lcmv_gamma2EditField = uieditfield(app.activ_MethodsPanel, 'numeric');
            app.lcmv_gamma2EditField.Limits = [0 2];
            app.lcmv_gamma2EditField.Position = [467 44 53 22];
            app.lcmv_gamma2EditField.Value = 2;

            % Create deltagammaEditField_2Label
            app.deltagammaEditField_2Label = uilabel(app.activ_MethodsPanel);
            app.deltagammaEditField_2Label.HorizontalAlignment = 'right';
            app.deltagammaEditField_2Label.Position = [384 14 78 22];
            app.deltagammaEditField_2Label.Text = 'delta gamma:';

            % Create lcmv_deltagammaEditField
            app.lcmv_deltagammaEditField = uieditfield(app.activ_MethodsPanel, 'numeric');
            app.lcmv_deltagammaEditField.Limits = [0.1 1];
            app.lcmv_deltagammaEditField.Position = [467 14 53 22];
            app.lcmv_deltagammaEditField.Value = 0.1;

            % Create activ_OtherparamsPanel
            app.activ_OtherparamsPanel = uipanel(app.ActivationTab);
            app.activ_OtherparamsPanel.Title = 'Other params';
            app.activ_OtherparamsPanel.FontWeight = 'bold';
            app.activ_OtherparamsPanel.Position = [35 15 568 175];

            % Create activ_IsCurvCheckBox
            app.activ_IsCurvCheckBox = uicheckbox(app.activ_OtherparamsPanel);
            app.activ_IsCurvCheckBox.Text = '';
            app.activ_IsCurvCheckBox.Position = [109 120 25 22];

            % Create activ_IsParcelCheckBox
            app.activ_IsParcelCheckBox = uicheckbox(app.activ_OtherparamsPanel);
            app.activ_IsParcelCheckBox.Text = '';
            app.activ_IsParcelCheckBox.Position = [265 120 25 22];

            % Create activ_IsNeighCheckBox
            app.activ_IsNeighCheckBox = uicheckbox(app.activ_OtherparamsPanel);
            app.activ_IsNeighCheckBox.Text = '';
            app.activ_IsNeighCheckBox.Position = [438 120 25 22];

            % Create aGiriLabel
            app.aGiriLabel = uilabel(app.activ_OtherparamsPanel);
            app.aGiriLabel.HorizontalAlignment = 'right';
            app.aGiriLabel.Position = [61 76 34 22];
            app.aGiriLabel.Text = 'aGiri:';

            % Create activ_aGiriEditField
            app.activ_aGiriEditField = uieditfield(app.activ_OtherparamsPanel, 'numeric');
            app.activ_aGiriEditField.Limits = [1 5];
            app.activ_aGiriEditField.Position = [110 76 29 22];
            app.activ_aGiriEditField.Value = 5;

            % Create aSulcEditFieldLabel
            app.aSulcEditFieldLabel = uilabel(app.activ_OtherparamsPanel);
            app.aSulcEditFieldLabel.HorizontalAlignment = 'right';
            app.aSulcEditFieldLabel.Position = [58 25 39 22];
            app.aSulcEditFieldLabel.Text = 'aSulc:';

            % Create activ_aSulcEditField
            app.activ_aSulcEditField = uieditfield(app.activ_OtherparamsPanel, 'numeric');
            app.activ_aSulcEditField.Limits = [1 5];
            app.activ_aSulcEditField.Position = [110 25 31 22];
            app.activ_aSulcEditField.Value = 5;

            % Create bGiriEditFieldLabel
            app.bGiriEditFieldLabel = uilabel(app.activ_OtherparamsPanel);
            app.bGiriEditFieldLabel.HorizontalAlignment = 'right';
            app.bGiriEditFieldLabel.Position = [217 76 34 22];
            app.bGiriEditFieldLabel.Text = 'bGiri:';

            % Create activ_bGiriEditField
            app.activ_bGiriEditField = uieditfield(app.activ_OtherparamsPanel, 'numeric');
            app.activ_bGiriEditField.Limits = [0 5];
            app.activ_bGiriEditField.Position = [264 76 29 22];
            app.activ_bGiriEditField.Value = 3;

            % Create bSulcEditFieldLabel
            app.bSulcEditFieldLabel = uilabel(app.activ_OtherparamsPanel);
            app.bSulcEditFieldLabel.HorizontalAlignment = 'right';
            app.bSulcEditFieldLabel.Position = [214 25 39 22];
            app.bSulcEditFieldLabel.Text = 'bSulc:';

            % Create activ_bSulcEditField
            app.activ_bSulcEditField = uieditfield(app.activ_OtherparamsPanel, 'numeric');
            app.activ_bSulcEditField.Limits = [1 5];
            app.activ_bSulcEditField.Position = [264 25 31 22];
            app.activ_bSulcEditField.Value = 3;

            % Create regLaplacianEditFieldLabel
            app.regLaplacianEditFieldLabel = uilabel(app.activ_OtherparamsPanel);
            app.regLaplacianEditFieldLabel.HorizontalAlignment = 'right';
            app.regLaplacianEditFieldLabel.Position = [350 24 78 22];
            app.regLaplacianEditFieldLabel.Text = 'regLaplacian:';

            % Create activ_regLaplacianEditField
            app.activ_regLaplacianEditField = uieditfield(app.activ_OtherparamsPanel, 'numeric');
            app.activ_regLaplacianEditField.Limits = [0.1 1];
            app.activ_regLaplacianEditField.Position = [441 24 31 22];
            app.activ_regLaplacianEditField.Value = 0.1;

            % Create FieldLabel
            app.FieldLabel = uilabel(app.activ_OtherparamsPanel);
            app.FieldLabel.HorizontalAlignment = 'right';
            app.FieldLabel.Position = [392 75 35 22];
            app.FieldLabel.Text = 'Field:';

            % Create activ_fieldSlider
            app.activ_fieldSlider = uislider(app.activ_OtherparamsPanel);
            app.activ_fieldSlider.Limits = [1 3];
            app.activ_fieldSlider.MajorTicks = [1 2 3];
            app.activ_fieldSlider.MinorTicks = [1 2 3];
            app.activ_fieldSlider.Position = [440 92 47 3];
            app.activ_fieldSlider.Value = 2;

            % Create IsCurvLabel
            app.IsCurvLabel = uilabel(app.activ_OtherparamsPanel);
            app.IsCurvLabel.Position = [58 120 44 22];
            app.IsCurvLabel.Text = 'IsCurv:';

            % Create IsParcelLabel
            app.IsParcelLabel = uilabel(app.activ_OtherparamsPanel);
            app.IsParcelLabel.Position = [204 120 52 22];
            app.IsParcelLabel.Text = 'IsParcel:';

            % Create IsNeighLabel
            app.IsNeighLabel = uilabel(app.activ_OtherparamsPanel);
            app.IsNeighLabel.Position = [383 119 50 22];
            app.IsNeighLabel.Text = 'IsNeigh:';

            % Create ConnectivityTab
            app.ConnectivityTab = uitab(app.TabGroup);
            app.ConnectivityTab.Title = 'Connectivity';

            % Create conn_MethodsPanel
            app.conn_MethodsPanel = uipanel(app.ConnectivityTab);
            app.conn_MethodsPanel.Title = 'Methods';
            app.conn_MethodsPanel.FontWeight = 'bold';
            app.conn_MethodsPanel.Position = [35 298 568 90];

            % Create HIGGSLabel
            app.HIGGSLabel = uilabel(app.conn_MethodsPanel);
            app.HIGGSLabel.FontWeight = 'bold';
            app.HIGGSLabel.Position = [126 39 48 22];
            app.HIGGSLabel.Text = 'HIGGS:';

            % Create CheckBox_higgs
            app.CheckBox_higgs = uicheckbox(app.conn_MethodsPanel);
            app.CheckBox_higgs.Text = '';
            app.CheckBox_higgs.Position = [177 39 25 22];

            % Create ThresholdEditFieldLabel_2
            app.ThresholdEditFieldLabel_2 = uilabel(app.conn_MethodsPanel);
            app.ThresholdEditFieldLabel_2.HorizontalAlignment = 'right';
            app.ThresholdEditFieldLabel_2.Position = [107 12 62 22];
            app.ThresholdEditFieldLabel_2.Text = 'Threshold:';

            % Create higgs_thEditField
            app.higgs_thEditField = uieditfield(app.conn_MethodsPanel, 'numeric');
            app.higgs_thEditField.Limits = [0 1.7321];
            app.higgs_thEditField.Position = [177 12 54 22];
            app.higgs_thEditField.Value = 1;

            % Create hg_LASSOLabel
            app.hg_LASSOLabel = uilabel(app.conn_MethodsPanel);
            app.hg_LASSOLabel.FontWeight = 'bold';
            app.hg_LASSOLabel.Position = [331 39 72 22];
            app.hg_LASSOLabel.Text = 'hg_LASSO:';

            % Create CheckBox_hg_lasso
            app.CheckBox_hg_lasso = uicheckbox(app.conn_MethodsPanel);
            app.CheckBox_hg_lasso.Text = '';
            app.CheckBox_hg_lasso.Position = [406 39 25 22];

            % Create ThresholdEditField_2Label_2
            app.ThresholdEditField_2Label_2 = uilabel(app.conn_MethodsPanel);
            app.ThresholdEditField_2Label_2.HorizontalAlignment = 'right';
            app.ThresholdEditField_2Label_2.Position = [338 10 62 22];
            app.ThresholdEditField_2Label_2.Text = 'Threshold:';

            % Create hg_lasso_thEditField
            app.hg_lasso_thEditField = uieditfield(app.conn_MethodsPanel, 'numeric');
            app.hg_lasso_thEditField.Limits = [0 1.7321];
            app.hg_lasso_thEditField.Position = [405 10 53 22];
            app.hg_lasso_thEditField.Value = 1;

            % Create conn_OtherparamsPanel
            app.conn_OtherparamsPanel = uipanel(app.ConnectivityTab);
            app.conn_OtherparamsPanel.Title = 'Other params';
            app.conn_OtherparamsPanel.FontWeight = 'bold';
            app.conn_OtherparamsPanel.Position = [35 15 568 274];

            % Create conn_IsCurvCheckBox
            app.conn_IsCurvCheckBox = uicheckbox(app.conn_OtherparamsPanel);
            app.conn_IsCurvCheckBox.Text = '';
            app.conn_IsCurvCheckBox.Position = [93 219 25 22];

            % Create conn_IsNeighCheckBox
            app.conn_IsNeighCheckBox = uicheckbox(app.conn_OtherparamsPanel);
            app.conn_IsNeighCheckBox.Text = '';
            app.conn_IsNeighCheckBox.Position = [269 219 25 22];

            % Create aGiriEditField_2Label
            app.aGiriEditField_2Label = uilabel(app.conn_OtherparamsPanel);
            app.aGiriEditField_2Label.HorizontalAlignment = 'right';
            app.aGiriEditField_2Label.Position = [44 181 34 22];
            app.aGiriEditField_2Label.Text = 'aGiri:';

            % Create conn_aGiriEditField
            app.conn_aGiriEditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_aGiriEditField.Limits = [1 5];
            app.conn_aGiriEditField.Position = [93 181 29 22];
            app.conn_aGiriEditField.Value = 5;

            % Create aSulcEditField_2Label
            app.aSulcEditField_2Label = uilabel(app.conn_OtherparamsPanel);
            app.aSulcEditField_2Label.HorizontalAlignment = 'right';
            app.aSulcEditField_2Label.Position = [41 137 39 22];
            app.aSulcEditField_2Label.Text = 'aSulc:';

            % Create conn_aSulcEditField
            app.conn_aSulcEditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_aSulcEditField.Limits = [1 5];
            app.conn_aSulcEditField.Position = [93 137 31 22];
            app.conn_aSulcEditField.Value = 5;

            % Create bGiriEditField_2Label
            app.bGiriEditField_2Label = uilabel(app.conn_OtherparamsPanel);
            app.bGiriEditField_2Label.HorizontalAlignment = 'right';
            app.bGiriEditField_2Label.Position = [221 181 34 22];
            app.bGiriEditField_2Label.Text = 'bGiri:';

            % Create conn_bGiriEditField
            app.conn_bGiriEditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_bGiriEditField.Limits = [0 5];
            app.conn_bGiriEditField.Position = [270 181 29 22];
            app.conn_bGiriEditField.Value = 3;

            % Create bSulcEditField_2Label
            app.bSulcEditField_2Label = uilabel(app.conn_OtherparamsPanel);
            app.bSulcEditField_2Label.HorizontalAlignment = 'right';
            app.bSulcEditField_2Label.Position = [218 137 39 22];
            app.bSulcEditField_2Label.Text = 'bSulc:';

            % Create conn_bSulcEditField
            app.conn_bSulcEditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_bSulcEditField.Limits = [1 5];
            app.conn_bSulcEditField.Position = [270 137 31 22];
            app.conn_bSulcEditField.Value = 3;

            % Create regLaplacianEditField_2Label
            app.regLaplacianEditField_2Label = uilabel(app.conn_OtherparamsPanel);
            app.regLaplacianEditField_2Label.HorizontalAlignment = 'right';
            app.regLaplacianEditField_2Label.Position = [180 12 78 22];
            app.regLaplacianEditField_2Label.Text = 'regLaplacian:';

            % Create conn_regLaplacianEditField
            app.conn_regLaplacianEditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_regLaplacianEditField.Limits = [0.1 1];
            app.conn_regLaplacianEditField.Position = [271 12 50 22];
            app.conn_regLaplacianEditField.Value = 0.1;

            % Create MaxiterouterEditFieldLabel
            app.MaxiterouterEditFieldLabel = uilabel(app.conn_OtherparamsPanel);
            app.MaxiterouterEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxiterouterEditFieldLabel.Position = [369 181 79 22];
            app.MaxiterouterEditFieldLabel.Text = 'Maxiter outer:';

            % Create conn_MaxiterouterEditField
            app.conn_MaxiterouterEditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_MaxiterouterEditField.Limits = [20 80];
            app.conn_MaxiterouterEditField.Position = [463 181 37 22];
            app.conn_MaxiterouterEditField.Value = 60;

            % Create MaxiterinnerEditFieldLabel
            app.MaxiterinnerEditFieldLabel = uilabel(app.conn_OtherparamsPanel);
            app.MaxiterinnerEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxiterinnerEditFieldLabel.Position = [370 138 78 22];
            app.MaxiterinnerEditFieldLabel.Text = 'Maxiter inner:';

            % Create conn_MaxiterinnerEditField
            app.conn_MaxiterinnerEditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_MaxiterinnerEditField.Limits = [20 40];
            app.conn_MaxiterinnerEditField.Position = [463 138 37 22];
            app.conn_MaxiterinnerEditField.Value = 30;

            % Create ntryLabel
            app.ntryLabel = uilabel(app.conn_OtherparamsPanel);
            app.ntryLabel.HorizontalAlignment = 'right';
            app.ntryLabel.Position = [420 36 29 22];
            app.ntryLabel.Text = 'ntry:';

            % Create conn_ntrySlider
            app.conn_ntrySlider = uislider(app.conn_OtherparamsPanel);
            app.conn_ntrySlider.Limits = [0 5];
            app.conn_ntrySlider.MajorTicks = [0 1 2 3 4 5];
            app.conn_ntrySlider.MinorTicks = [0 1 2 3 4 5];
            app.conn_ntrySlider.Position = [463 53 73 3];

            % Create axiLabel
            app.axiLabel = uilabel(app.conn_OtherparamsPanel);
            app.axiLabel.HorizontalAlignment = 'right';
            app.axiLabel.Position = [55 94 25 22];
            app.axiLabel.Text = 'axi:';

            % Create conn_axiEditField
            app.conn_axiEditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_axiEditField.Limits = [0.1 1];
            app.conn_axiEditField.Position = [93 94 40 22];
            app.conn_axiEditField.Value = 0.1;

            % Create conn_prewarmingCheckBox
            app.conn_prewarmingCheckBox = uicheckbox(app.conn_OtherparamsPanel);
            app.conn_prewarmingCheckBox.Text = '';
            app.conn_prewarmingCheckBox.Position = [463 219 25 22];

            % Create penaltySliderLabel
            app.penaltySliderLabel = uilabel(app.conn_OtherparamsPanel);
            app.penaltySliderLabel.HorizontalAlignment = 'right';
            app.penaltySliderLabel.Position = [401 92 48 22];
            app.penaltySliderLabel.Text = 'penalty:';

            % Create conn_penaltySlider
            app.conn_penaltySlider = uislider(app.conn_OtherparamsPanel);
            app.conn_penaltySlider.Limits = [0 2];
            app.conn_penaltySlider.MajorTicks = [0 1 2];
            app.conn_penaltySlider.MinorTicks = [0 1 2];
            app.conn_penaltySlider.Position = [462 108 47 3];

            % Create rth1Label
            app.rth1Label = uilabel(app.conn_OtherparamsPanel);
            app.rth1Label.HorizontalAlignment = 'right';
            app.rth1Label.Position = [50 50 30 22];
            app.rth1Label.Text = 'rth1:';

            % Create conn_rth1EditField
            app.conn_rth1EditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_rth1EditField.Limits = [0.1 1];
            app.conn_rth1EditField.Position = [93 50 40 22];
            app.conn_rth1EditField.Value = 0.7;

            % Create rth2Label
            app.rth2Label = uilabel(app.conn_OtherparamsPanel);
            app.rth2Label.HorizontalAlignment = 'right';
            app.rth2Label.Position = [227 45 30 22];
            app.rth2Label.Text = 'rth2:';

            % Create conn_rth2EditField
            app.conn_rth2EditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_rth2EditField.Limits = [0.1 5];
            app.conn_rth2EditField.Position = [270 45 48 22];
            app.conn_rth2EditField.Value = 3.16;

            % Create eigregLabel
            app.eigregLabel = uilabel(app.conn_OtherparamsPanel);
            app.eigregLabel.HorizontalAlignment = 'right';
            app.eigregLabel.Position = [38 14 42 22];
            app.eigregLabel.Text = 'eigreg:';

            % Create conn_eigregEditField
            app.conn_eigregEditField = uieditfield(app.conn_OtherparamsPanel, 'numeric');
            app.conn_eigregEditField.Limits = [0.0001 0.1];
            app.conn_eigregEditField.Position = [93 14 58 22];
            app.conn_eigregEditField.Value = 0.0001;

            % Create FieldLabel_2
            app.FieldLabel_2 = uilabel(app.conn_OtherparamsPanel);
            app.FieldLabel_2.HorizontalAlignment = 'right';
            app.FieldLabel_2.Position = [222 94 35 22];
            app.FieldLabel_2.Text = 'Field:';

            % Create conn_fieldSlider
            app.conn_fieldSlider = uislider(app.conn_OtherparamsPanel);
            app.conn_fieldSlider.Limits = [1 3];
            app.conn_fieldSlider.MajorTicks = [1 2 3];
            app.conn_fieldSlider.MinorTicks = [1 2 3];
            app.conn_fieldSlider.Position = [270 111 47 3];
            app.conn_fieldSlider.Value = 2;

            % Create IsCurvLabel_2
            app.IsCurvLabel_2 = uilabel(app.conn_OtherparamsPanel);
            app.IsCurvLabel_2.Position = [41 219 44 22];
            app.IsCurvLabel_2.Text = 'IsCurv:';

            % Create IsNeighLabel_2
            app.IsNeighLabel_2 = uilabel(app.conn_OtherparamsPanel);
            app.IsNeighLabel_2.Position = [211 219 50 22];
            app.IsNeighLabel_2.Text = 'IsNeigh:';

            % Create prewarmingLabel
            app.prewarmingLabel = uilabel(app.conn_OtherparamsPanel);
            app.prewarmingLabel.Position = [381 219 72 22];
            app.prewarmingLabel.Text = 'prewarming:';

            % Create RunButton
            app.RunButton = uibutton(app.BCVARETAToolboxv10UIFigure, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.Icon = 'run.jpg';
            app.RunButton.HorizontalAlignment = 'left';
            app.RunButton.Position = [584 18 78 22];
            app.RunButton.Text = 'Run';

            % Create CancelButton
            app.CancelButton = uibutton(app.BCVARETAToolboxv10UIFigure, 'push');
            app.CancelButton.ButtonPushedFcn = createCallbackFcn(app, @CancelButtonPushed, true);
            app.CancelButton.Icon = 'cancel.jpg';
            app.CancelButton.HorizontalAlignment = 'left';
            app.CancelButton.Position = [485 18 90 22];
            app.CancelButton.Text = 'Cancel';

            % Show the figure after all components are created
            app.BCVARETAToolboxv10UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = BC_VARETA_guide

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.BCVARETAToolboxv10UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.BCVARETAToolboxv10UIFigure)
        end
    end
end