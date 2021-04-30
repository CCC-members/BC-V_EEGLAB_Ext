function EEGs = get_marks_and_segments(EEG,varargin)
% GET_MARKS_AND_SEGMENTS Summary of this function goes here
%   Detailed explanation goes here
if(isequal(nargin,1))
    EEGs = EEG;
end

for i=1:2:length(varargin)
    eval([varargin{i} '=  varargin{(i+1)};'])
end

events      = select_events;
if(isempty(events))
    if(good_segments)
        if( isfield(EEG,'TW') && ~isempty(EEG.TW))
            EEGs    = rejtime_by_segments(EEG);
        else
            EEGs    = [];
        end
    else
        EEGs        = EEG;
    end   
else
    countEEG = 1;
    for j=1:length(events)
        event               = events(j);
        newEEG              = EEG;   
        events_translate    = get_envents_translate();
        [row, col]          = find( strcmp(events_translate,event)==1);
        sufix               = events_translate{row,end};
        newEEG.setname      = strcat(EEG.setname,'_',sufix);
        newEEG.subID        = EEG.setname;
        if(good_segments)
            if(~isempty(newEEG.TW))
                newEEG              = rejtime_by_segments(newEEG,'event',event);
                if(~isempty(newEEG))
                    EEGs(countEEG)  = newEEG;
                    countEEG        = countEEG + 1;
                end
            end
        else
            newEEG              = rejtime_by_marks(newEEG,'event',event);
            if(~isempty(newEEG))
                EEGs(countEEG)  = newEEG;
                countEEG        = countEEG + 1;
            end
        end        
    end
    if(~exist('EEGs','var'))
        EEGs = [];
    end
end
end

