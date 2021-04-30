function EEGs = import_eeg_format(subID, properties, base_path)

data_type    = properties.format;
if(~isequal(properties.labels_file,"none") && ~isempty(properties.labels_file))
    user_labels = jsondecode(fileread(properties.labels_file));
end
max_freq        = properties.clean_data.max_freq.value;
select_events   = properties.clean_data.select_events;
clean_data      = properties.clean_data.run;
good_segments   = properties.clean_data.good_segments;
%         save_path    = fullfile(selected_data_set.report_output_path,'Reports',selected_data_set.protocol_name,subject_info.name,'EEGLab_preproc');
if(exist('user_labels','var'))
    EEGs      = eeglab_preproc(subID, base_path, data_type, 'verbosity', true, 'max_freq', max_freq, 'clean_data', clean_data,...
        'good_segments', good_segments, 'labels', user_labels, 'select_events', select_events);
else
    EEGs      = eeglab_preproc(subID, base_path, data_type, 'verbosity', true, 'max_freq', max_freq, 'clean_data', clean_data,...
        'good_segments', good_segments, 'select_events', select_events);
end
for i=1:length(EEGs)
    EEGs(i).labels   = {EEGs(i).chanlocs(:).labels};
end

end