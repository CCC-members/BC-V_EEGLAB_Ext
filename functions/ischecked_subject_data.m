function [subjects,checked,error_msg_array] = ischecked_subject_data(subID, template_file, data_file, properties)
checked = true;
subjects = struct;
subject_info = load(fullfile(template_file));
root_dir = properties.general_params.bcv_workspace.BCV_work_dir;
[templ_dir,name,ext] = fileparts(template_file);
error_msg_array = [];

if(~isfield(subject_info,'name')...
        || ~isfield(subject_info,'modality')...
        || ~isfield(subject_info,'leadfield_dir')...
        || ~isfield(subject_info,'surf_dir')...
        || ~isfield(subject_info,'scalp_dir')...
        || ~isfield(subject_info,'innerskull_dir')...
        || ~isfield(subject_info,'outerskull_dir'))
    checked = false;
    return;
else
    subject_info.surf_dir = replace(subject_info.surf_dir,'\','/');
    subject_info.scalp_dir = replace(subject_info.scalp_dir,'\','/');
    subject_info.innerskull_dir = replace(subject_info.innerskull_dir,'\','/');
    subject_info.outerskull_dir = replace(subject_info.outerskull_dir,'\','/');
end
disp('=================================================================');
disp(strcat('BC-V-->>Processing subject:',subject_info.name));
disp('-----------------------------------------------------------------');

for i=1:length(subject_info.leadfield_dir)
    subject_info.leadfield_dir(i).path =replace(subject_info.leadfield_dir(i).path,'\','/');
    if(~isfile(fullfile(templ_dir,subject_info.leadfield_dir(i).path)))
        error_msg = strcat("The leadfield file do not exist");
        error_msg_array = [error_msg_array; error_msg];
    end
end
surf                = load(fullfile(templ_dir,subject_info.surf_dir));
scalp               = load(fullfile(templ_dir,subject_info.scalp_dir));
innerskull          = load(fullfile(templ_dir,subject_info.innerskull_dir));
outerskull          = load(fullfile(templ_dir,subject_info.outerskull_dir));
leadfield           = load(fullfile(templ_dir,subject_info.leadfield_dir(i).path));
if(~isstruct(subject_info.leadfield_dir))
    checked = false;
    error_msg = strcat("The leadfield file do not have a correct format. It have to be a structure.");
    error_msg_array = [error_msg_array; error_msg];
    return;
end
if(~isfile(fullfile(data_file)))
    error_msg = strcat("The meeg file do not exist");
    error_msg_array = [error_msg_array; error_msg];
    checked = false;
    return;
else
    properties.data_params.clean_data.max_freq = properties.spectral_params.max_freq;
    [leadfield, Cdata, MEEGs] = load_preprocessed_data(subject_info.modality,subID,properties.data_params,data_file,leadfield,scalp.Cdata);
    scalp.Cdata = Cdata;
end
for i=1:length(MEEGs)
    MEEG                        = MEEGs(i);
    subjects(i).name            = MEEG.subID;
    subjects(i).modality        = subject_info.modality;
    subjects(i).Ke              = leadfield.Ke;
    subjects(i).GridOrient      = leadfield.GridOrient;
    subjects(i).GridAtlas       = leadfield.GridAtlas;
    subjects(i).sub_to_FSAve    = surf.sub_to_FSAve;
    subjects(i).Shead           = scalp.Shead;
    subjects(i).Cdata           = scalp.Cdata;
    subjects(i).Sout            = outerskull;
    subjects(i).Sinn            = innerskull;
    subjects(i).Scortex         = surf.Sc(surf.iCortex);
    subjects(i).MEEG            = MEEG;
    if(~properties.general_params.run_by_trial.value)
        if(iscell(MEEG.data))
            subjects(i).MEEG.data = cell2mat(MEEG.data(1,1:end));
        end
    end    
end

end