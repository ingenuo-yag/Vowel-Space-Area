function plotResSpec( filename, center )

[s_org,fs_org]=audioread(filename); fs=8000;
s = resample(s_org,fs,fs_org);

% s=diff(s); % Pre-Emphasis

start = (center-10); % start time in ms
stop = (center+10); % stop time in ms

% seg = zeros(length(s),1);
% seg(start*fs/1000:stop*fs/1000)=0.5;

% plot(s); hold on; plot(seg,'r');

seg = s(start*fs/1000:stop*fs/1000);



ak=lpc(seg,10); % order10
[spec,F]=freqz(1,ak,512,fs);
res = filter(ak,1,seg);

[pks, locs] = findpeaks(log(abs(spec)),F);

figure; time = [1:length(seg)]*1000/fs;
subplot(311); plot(time,seg); xlabel('time'); ylabel('Amplitude'); grid; xlim([0 50]);
subplot(312); plot(time, real(res)); xlabel('time'); ylabel('Amplitude'); grid; xlim([0 50]);
subplot(313); plot(F,log(abs(spec))); hold on; plot(locs,pks,'*'); xlim([0 3000]); xlabel('F1 (Hz)'); ylabel('Log Magnitude'); grid;

end

