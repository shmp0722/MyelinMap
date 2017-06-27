function MakeHcpDirectory

%%
[path,subj] = fileparts(pwd);

mkdir unprocessed/3T/T1w_MPR1
mkdir unprocessed/3T/T2w_SPC1

%% Take T1 and T2 into precize loacation with correct name

cmd =sprintf('!cp T1w/t1_mpr*.nii.gz %s', sprintf('unprocessed/3T/T1w_MPR1/%s_3T_T1w_MPR1.nii.gz'...
    ,subj));

eval(cmd)

cmd = sprintf('!cp T2w/t2_spc*.nii.gz %s', sprintf('unprocessed/3T/T2w_SPC1/%s_3T_T2w_SPC1.nii.gz'...
    ,subj));
eval(cmd)
%%
% subs = {'CSdAVF-CH-2017-05-21' 'Ctl-TT-2017-03-05' 'Glc3-HT-55M-2017-06-04' 'Ctl-ME-2017-04-30'...
%     'Ctl-YO-2017-04-30' 'Glc2-SM-58F-2017-06-04' 'Glc1-TK-2017-05-21' 'Ctl-HT-45F-2017-06-04'...
%  'Ctl-YT-44F-2017-06-04' 'Ctl-OK-2017-03-05' 'Ctl-AE-2017-04-30'};

