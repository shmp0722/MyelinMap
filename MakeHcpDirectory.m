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
