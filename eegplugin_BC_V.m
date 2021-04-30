function vers = eegplugin_BC_V(fig, try_strings, catch_strings)
%%
% BC-VARETA toolbox EEGLAB extension
% Tool for MEEG data processing based on Brain Connectivity Variable Resolution Tomographic Analysis (BC-VARETA) Model. 
% See description of BC-VARETA and example in simulations at the link https://github.com/dpazlinares/BC-VARETA.
%
% Authors:
% - Deirel Paz Linares
% - Eduardo Gonzalez Moreira
% - Pedro A. Valdes Sosa
%
% Date: March 18, 2019
%
% Updates:
% - Ariosky Areces Gonzalez
% - Riaz Khan
%
% Date: April 30, 2021
%
% version
vers = 'BC-VARETA.1';

% input check
if nargin < 3
    error('eegplugin_iclabel requires 3 arguments');
end

f_path          = mfilename('fullpath');
[ref_path,~,~]  = fileparts(f_path);
addpath(fullfile(ref_path,'app'));
addpath(genpath(fullfile(ref_path,'guide')));
addpath(genpath(fullfile(ref_path,'functions')));
addpath(fullfile(ref_path,'bcv_properties'));
addpath(fullfile(ref_path,'tools'));
cmd             = ['pop_BC_V();'];
finalcmd        = [try_strings.no_check cmd catch_strings.store_and_hist];
impmenu         = findobj(fig, 'tag', 'import data'); 
uimenu( impmenu, 'label', 'BC-V analysis', 'userdata', 'startup:on;epoch:off;study:off', 'callback', finalcmd);

end
