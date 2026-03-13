clc;
clear all;
close all;
a=0:.1:.6;
Ip=5;
TSD=1;
IL=0:1:100;
for m=1: max(size(a))
    for k=1: max(size(IL))
        if(IL(k)<=Ip)
            Top(k)=100;
        else
            Top(k)=TSD/(((IL(k)/Ip)^a(m))-1);
        end
    end
    semilogy(IL,Top);
    R(1,m)={['alpha = ',num2str(a(m))]};
    hold on;
end
legend(R);
ylabel('Top = Operation Time(Second)');
xlabel('IL = Load Current (Amp)');  
