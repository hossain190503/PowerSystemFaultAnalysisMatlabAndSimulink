clc;
clear all;
ch = menu('Which phase','single phase','three phase');  
if( ch == 1)
      disp('You select single phase');
      Pr=input('Reciving end powe in W = ');
      Vr=input('inter the value of resiving end voltage in v= ');
      Pfr=input('inpu the value of powe factor = ');
      length = input('Length of conductor in km = ');
      R1=input('Resistance per km in ohm =');
      XL1=input('Inductance per km in mili Henry = ');
      f = input('friquency = ');
      R=length*R1;
      XL=2*3.14*f*length*XL1;  
      I = Pr/(Vr*Pfr);  %lign current%
      v1=(Vr*Pfr+I*R)^2;
      v2=(Vr*sin(acos(Pfr))+ I*XL)^2;
      Vs = ( v1 + v2 )^.5;  %sending end voltage%
      VolReg = (Vs - Vr)*100/Vr;    %Voltage regulation% 
      
      Losses = I*I*R;
      
      Ps = Pr + Losses;
      Efficiency = Pr*100/Ps ;
      
      fprintf('\nLine current:%.2f A \n',I);
      fprintf('Sending end Voltage:%.2f kv \n',Vs);
      fprintf('Voltage Regulation:%.2f present\n',VolReg);
      fprintf('Transmission efficiency:%.2f present\n',Efficiency);
end   
 
if(ch == 2)
    disp('You select three phase');
    Pr3=input('Reciving end powe in W = ');
      Vr3=input('inter the value of resiving end voltage in v= ');
      Pfr=input('inpu the value of powe factor = ');
      length = input('Length of conductor in km = ');
      R1=input('Resistance per km in ohm =');
      XL1=input('Inductance per km in mili Henry = ');
      f = input('friquency = ');
      
      if isempty(f)
          f=50;
      end   
      R=length*R1;
      XL=2*3.14*f*length*XL1; 
      Vr = Vr3/3^.5;    %per-phase voltage%
      Pr = Pr3/3;      %per-phase power%
      I = Pr/(Vr*Pfr); %lign current%
      v1=(Vr*Pfr+I*R)^2;
      v2=(Vr*sin(acos(Pfr))+ I*XL)^2;
      Vs = ( v1 + v2 )^.5; %sending end voltage%
      VolReg = (Vs - Vr)*100/Vr; %Voltage regulation% 
      Losses = I*I*R;
      Ps = Pr + Losses;
      Efficiency = Pr*100/Ps ;
     
      fprintf('\n Line current:%.2f A \n',I);
      fprintf('Sending end Voltage:%.2f kv \n',Vs);
      fprintf('Voltage Regulation:%.2f present\n',VolReg);
      fprintf('Transmission efficiency:%.2f present\n',Efficiency);
end
