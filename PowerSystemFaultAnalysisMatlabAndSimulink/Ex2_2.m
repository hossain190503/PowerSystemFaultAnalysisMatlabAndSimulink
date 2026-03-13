clc;
clear all;
close all;
R = 0.25; % ohms/km
X = 0.8; % ohms/km
B = 14e-6; % siemens/km
L = 100; % km
Vr = 66000; % V
P = 15000; % kW
pf = 0.8; % lagging
Y = j*B*L; % total line admittance
Yc = j*2*B*L; % end capacitance admittance
Z = R + j*X; % line impedance
Ir = conj(P/(Vr*pf)); % current at receiving end
Sr = Vr*Ir; % apparent power at receiving end
Vs = Vr + Z*Ir + Yc*Vr; % sending end voltage
Is = (Vs-Vr)/Z; % current at sending end
Ss = Vs*conj(Is); % apparent power at sending end
regulation = (abs(Vs)-abs(Vr))*100/abs(Vr); % voltage regulation
pf_s = real(Ss)/abs(Ss); % supply power factor
fprintf('Sending end current: %.2f A\n', abs(Is));
fprintf('Sending end voltage: %.2f V\n', abs(Vs));
fprintf('Voltage regulation: %.2f%%\n', regulation);
fprintf('Supply power factor: %.2f\n', pf_s);

