clear;

fid = fopen('./MichiganVowelDataset/timedata.dat');
C = textscan(fid,'%s%*f%*f%f%*f','HeaderLines',6);
fclose(fid);

start = 1442-6;
stop = 1489-6;
B{1} = C{1}(start:stop) ;
B{2} = C{2}(start:stop);

save('./Data/wuh.mat','B');

disp('Done');