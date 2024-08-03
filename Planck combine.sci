// Comparison between Planck’s law, Rayleigh-Jean’s law and Wien’s law at different temperatures
clc;
clear;
clf;
// defining constants
h = 6.626e-34 // planck constant
c = 3e8 // speed of light
kb = 1.38e-23 // Boltzmann constant
T = [1200,1400] //Temp. values
N = 1000;
W = linspace(0.1e-6, 30e-6, N)
W1 = linspace(5e-6, 15e-6, N)
// Calculating Values
for j = 1:N
for i=1:length(T)
up(i,j)= (8*%pi*h*c)/((W(j))^5*(exp(h*c/(W(j)*kb*T(i)))-1))
ur(i,j)= (8*%pi*kb*T(i))/(W1(j))^4
uw(i,j)= (8*%pi*h*c)/(W(j))^5*(exp(-h*c/(W(j)*kb*T(i))))
end
end
// Comparison of Planck's Radiation law with Rayleigh-Jeans law and Wien's law
for i=1:length(T)
subplot(length(T),1,i);
plot(W,up(i,:),'r','linewidth', 2);
plot(W, uw(i,:), 'b','linewidth', 2);
plot(W1, ur(i,:), 'g','linewidth', 2);
legend(['Planck''s Radiation law','Rayleigh-Jeans law','Wein''s law'])
xlabel('$Wavelength \quad(\lambda)\quad -->$' , 'fontsize', 4);
ylabel('$Energy \quad (E) -->$', 'fontsize', 4);
title('Comparison between Radiation laws at T =' +string(T(i))+'K', 'fontsize', 5);
end
