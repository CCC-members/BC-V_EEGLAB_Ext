function Main(varargin)
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
clc;
close all;
clearvars -except varargin;
disp('-->> Starting process');
disp("=====================================================================");
%restoredefaultpath;
tic

if(isequal(nargin,2))
    idnode = varargin{1};
    count_node = varargin{2};
    if(~isnumeric(idnode) || ~isnumeric(count_node))
        fprintf(2,"\n ->> Error: The selected node and count of nodes have to be numbers \n");
        return;
    end
else
    idnode = 1;
    count_node = 1;
end

addpath('app')
addpath('guide');
addpath('bcv_properties');
addpath('tools');

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

%----- Finding proccess for run ---------
processes = jsondecode(fileread(strcat('processes.json')));
for i = 1: length(processes)
    process = processes(i);
    if(process.active)
        disp("=================================================================");
        disp(strcat('=============== Running process: ' , process.name, ' ===============' ))
        addpath(process.root_folder);
        eval(process.function);
    end
end

if(isfile('bcv_predefinition/properties.json'))
    delete('bcv_predefinition/properties.json');
end
%%
% delete(process_waitbar);
disp('=====================================================================');
disp(strcat("BC-V-->> Process completed on instance: ",num2str(idnode),"."));
hours = fix(toc/3600);
minutes = fix(mod(toc,3600)/60);
disp(strcat("Elapsed time: ", num2str(hours) , " hours with ", num2str(minutes) , " minutes." ));
disp('=====================================================================');
disp(app_properties.generals.name);
disp('=====================================================================');

