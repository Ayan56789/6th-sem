//Plot for Specific heat Cv of solids with temperature using 1) Dulong-Petits Law 2) Einstein Law 3) Debye’s Law
//Name of the Student: Suparno Roy Choudhury
//Reg. No: 039143
clc 
clf 
n=1000 
function f=f(x) 
 f=(exp(x)*(x)^4)/(exp(x)-1)^2 
endfunction 
h=6.626e-34//Planck's constant in Js
k=1.38e-23//Boltzmann's constant in J.K-1
R=8.314//Rydberg's constant
TD1=345//Debye temp for copper in K 
TD2=2100//Debye temp for Diamond in K
R1=linspace(1,3000,n) 
R2=linspace(1,500,n) 
for i=1:n 
E1(i)=(3*R*((TD1/R1(i))^2)*exp(TD1/R1(i)))/((exp(TD1/R1(i))-1)^2)//Einstein Law 
DP(i)=3*R//Dulong Petit Law
DE1(i)=9*R*(R1(i)/TD1)^3*intg(0,TD1/R1(i),f) //Debye Law for general temperature
E2(i)=(3*R*((TD2/R2(i))^2)*exp(TD2/R2(i)))/((exp(TD2/R2(i))-1)^2)//Einstein Law
DE2(i)=12/5*((%pi)^4)*((R2(i)/TD2)^3)*R 
//Debye Law for low temperature
end 
subplot(2,1,1) 
plot(R1,E1,'b','linewidth',3)//Einstein Law plotting
plot(R1,DP,'g','linewidth',3)//Dulong Petit Law plotting
plot(R1,DE1,'r','linewidth',3)//Debye Law plotting
legends(["Dulong-Petits Law","Einestein Law","Debye Law"], [3,2,5],opt=5) 
xlabel('Temperature(K)---->','fontsize',4) 
ylabel('Specific heat Cv(J/(mol-k))---->','fontsize',4)
st=["Name: Suparno Roy Choudhury, Reg. no: 039143";"Specific heat vs T at high Temp for solid Copper"] 
xtitle(st) 
xgrid(2) 
subplot(2,1,2) 
plot(R2,E2,'b','linewidth',3)//Einstein Law plotting
plot(R2,DP,'g','linewidth',3)//Dulong Petit Law plotting
plot(R2,DE2,'r','linewidth',3)//Debye Law plotting 
legends(["Dulong-Petits Law", "Einestein Law", "Debye Law"], [3,2,5],opt=5) 
xlabel('Temperature(K)---->','fontsize',4) 
ylabel('Specific heat Cv(J/(mol-k))---->','fontsize',4) 
title('Specific heat vs T at low Temp for solid Diamond','fontsize',4) 
xgrid(2)
