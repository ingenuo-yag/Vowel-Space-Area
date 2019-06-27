function [F1F2] = GetF1F2( filename, timecenter )

[s_org,fs_org]=audioread(filename); fs=8000;
s = resample(s_org,fs,fs_org);

% s=diff(s); % Pre-Emphasis

start = (timecenter-2.5); % start time in ms
stop = (timecenter+2.5); % stop time in ms

% seg = zeros(length(s),1);
% seg(start*fs/1000:stop*fs/1000)=0.5;

% plot(s); hold on; plot(seg,'r');

seg = s(start*fs/1000:stop*fs/1000);

ak=lpc(seg,10); % order10
[spec,F]=freqz(1,ak,512,fs);

[~, locs] = findpeaks(log(abs(spec)),F);    
    
if length(locs)>1
    F1F2 = locs(1:2);
else
    F1F2=[];
end

end

