clc;
clf;
//Bose-Einestein statistics
student_info='Name of the student: Suparno Roy Choudhury        Reg. no: 039143'
e=1.6e-19;K=1.38e-23; //values of constants e & K
U=0; //Chemical potential
E=0.005:0.00025:0.2; //Range of enregy values E
T= 100:200:700; //Range of temperature T
a=-1;

for j=1:length(T)
    for i=1:length(E)
        f(j,i)=1/(exp(((E(i)-U)*e)/(K*T(j)))+a);
    end
end

plot(E,f,'linewidth',3);
ylabel('f(E)','fontsize',5);
xlabel('Energy(eV)','fontsize',5);
legends(["T1=100k","T2=300k","T3=500k","T5=700k"],[2,3,5,4],opt=1,);
title('Bose-Einestein Distribution for U=0'+"     "+string(student_info),'fontsize',5);
