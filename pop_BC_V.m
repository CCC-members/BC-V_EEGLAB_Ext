function pop_BC_V(varargin)
%% BC-VARETA toolbox v1.0
%%%%%%%%%%%%%%%%%%%%

% Includes the routines of the Brain Connectivity Variable Resolution
% Tomographic Analysis (BC-VARETA), an example for real EEG analysis.
% BC-VARETA toolbox extracts the Source Activity and Connectivity given
% a single frequency component in the Fourier Transform Domain of an
% Individual MEEG Data. See the pdf file "Brief of Theory and Results"
% for an insight to this methodology.

% Authors:
% - Ariosky Areces Gonzalez
% - Deirel Paz Linares
% - Eduardo Gonzalez Moreira
% - Pedro A. Valdes Sosa

% Updated: May 5, 2019


%% Preparing WorkSpace

disp('-->> Starting process');
disp("=====================================================================");
%restoredefaultpath;
tic
f_path          = mfilename('fullpath');
[ref_path,~,~]  = fileparts(f_path);

addpath(fullfile(ref_path,'app'));
addpath(fullfile(ref_path,'guide'));
addpath(fullfile(ref_path,'bcv_predefinition'));
addpath(fullfile(ref_path,'bcv_properties'));
addpath(fullfile(ref_path,'tools'));

%% Printing data information
if(isfile('bcv_predefinition/properties.json'))
    app_properties = jsondecode(fileread(strcat('bcv_predefinition/properties.json')));
else
    app_properties = jsondecode(fileread(strcat('app/properties.json')));
end
disp(strcat("-->> Name:",app_properties.generals.name));
disp(strcat("-->> Version:",app_properties.generals.version));
disp(strcat("-->> Version date:",app_properties.generals.version_date));
disp("=====================================================================");

%% ------------ Checking MatLab compatibility ----------------
if(app_properties.check_matlab_version)
    disp('-->> Checking installed matlab version');
    if(~check_matlab_version())
        return;
    end
end

%% ------------  Checking updates --------------------------
if(app_properties.check_app_update)
    disp('-->> Checking last project version');
    if(isequal(check_version,'updated'))
        return;
    end
end
%%               Upload the actived processes

BC_VARETA_guide;

if(isfile('bcv_predefinition/properties.json'))
    delete('bcv_predefinition/properties.json');
end

end


