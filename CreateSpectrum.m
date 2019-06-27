function CreateSpectrum(filename, center)
%ae 304 ah 254 aw 291 eh 226 ei 224 er 274 ih 216 iy 218 oa 283 oo 258     
%uh 231 uw 228

[s_org,fs_org]=audioread(filename); fs=8000;
s = resample(s_org,fs,fs_org);

s=diff(s); % Pre-Emphasis

start = center-10; % start time in ms
stop = center+10; % stop time in ms

seg = s(start*fs/1000:stop*fs/1000);

ak=lpc(seg,10); % order10
[spec,F]=freqz(1,ak,512,fs);

%figure;
plot(F,log(abs(spec)));xlim([0 3000]);grid; 
xlabel('F1 (Hz)'); ylabel('Log Magnitude'); 