% ih oo aw ae

% Men
X = [416.5 459.5 628.3 577.4 416.5];
Y = [2017 1380.1 1219.6 1913.5 2017];

subplot(1,2,1); plot(X,Y,'r','LineWidth',1); xlabel('F1(Hz)'); ylabel('F2(Hz)'); hold on;
% Women
X = [464 487.6 704.9 607.3 464];
Y = [2362 1849.9 1527.2 1978.4 2362];

plot(X,Y,'g','LineWidth',1); hold on; 

% Boys
X = [494.2 525.3 728.3 611.4 494.2];
Y = [2469.3 1839.4 1649.3 1938.9 2469.3];

subplot(122); plot(X,Y,'b','LineWidth',1); hold on; 

% Girls
X = [488.5 507.4 661.2 583.1 488.5];
Y = [2644.7 1475.2 1555.9 1794 2644.7];

plot(X,Y,'m','LineWidth',1); 

