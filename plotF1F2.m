load /Users/yashagrawal/Desktop/Speech-Processing/VSA_codes/Data/VowelFormants/5ms/mih.mat
plot(F1F2(1,:),F1F2(2,:),'r*'); hold on;

load /Users/yashagrawal/Desktop/Speech-Processing/VSA_codes/Data/VowelFormants/5ms/mae.mat
plot(F1F2(1,:),F1F2(2,:),'g*'); 

load /Users/yashagrawal/Desktop/Speech-Processing/VSA_codes/Data/VowelFormants/5ms/maw.mat
plot(F1F2(1,:),F1F2(2,:),'b*'); 

load /Users/yashagrawal/Desktop/Speech-Processing/VSA_codes/Data/VowelFormants/5ms/moo.mat
plot(F1F2(1,:),F1F2(2,:),'k*'); 



xlabel('F1(Hz)'); ylabel('F2(Hz)'); title('Men');