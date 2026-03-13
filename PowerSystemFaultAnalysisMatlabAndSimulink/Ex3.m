clc
clear all
close all
ch = menu('Which form you went to input?','a+ib','exponantial');
if( ch ==1 )
    Va = input('Va = ');
    Vb = input('Vb = ');
    Vc = input('Vc = ');
   
    V =[Va;Vb;Vc];
   
    a = -.5 + (3^.5)*1i/2
    a2 = a*a;
    
    Va0=(Va+Vb+Vc)/3; %Zero sequence%
    Va1=(Va+a*Vb+a2*Vc)/3; %positive sequence%
    Va2=(Va+a2*Vb+a*Vc)/3; %negative Sequence%
    %--Relation between  'a' phase  to  other phase component---%
    Vb0 = Va0;
    Vc0 = Va0;
    Vb1 = a2*Va1;
    Vc1 = a*Va1;  
    Vb2 = a*Va2;
    Vc2 = a2*Va2;
    
    V0 = [Va0; Vb0; Vc0];   %zero symmetrical components%
    V1 = [Va1; Vb1; Vc1];   %positive symmetrical components%
    V2 = [Va2; Vb2; Vc2];   %negative symmetrical components%
    
    subplot(2,2,1);
    compass(V, '-');
    xlabel('Actual value');
    
    subplot(2,2,2);
    compass(V0, '-');
    xlabel('Zero sequence');
    
    subplot(2,2,3);
    compass(V1, '-');
    xlabel('Positive sequnce');
    
    subplot(2,2,4);
    compass(V2, '-');
    xlabel('Negative sequnce');
    
    
end
 
