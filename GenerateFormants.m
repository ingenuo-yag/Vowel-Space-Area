function GenerateFormants(PathToTimeData, PathToWavFiles, PathToSavingFormants)

TimeDat = dir(PathToTimeData);

for i=27:38 % select index of Time Data files
    
    % loading data file of time centers
    load([TimeDat(i).folder '/' TimeDat(i).name]);
    
    % processing each wav file inside B
    F1F2=[];
    for j = 1:length(B{1,1})
        
        WavName = [PathToWavFiles '/' cell2mat(B{1}(j)) '.wav']; disp(WavName);
        TimeCenter = B{2}(j);
        
        [F1F2_temp] = GetF1F2( WavName, TimeCenter );
        F1F2 = horzcat(F1F2,F1F2_temp);
        
    end
    clc;
   save([PathToSavingFormants '/' TimeDat(i).name], 'F1F2');
   disp(['saved ' PathToSavingFormants '/' TimeDat(i).name])
    pause(3);
    
end