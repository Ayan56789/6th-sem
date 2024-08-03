clc;
clf;

//Planck's Law for Blackbody radiation in different temperature

c = 3e8                     // speed of light
k = 1.38e-23                //Boltzmann constant
T = 200                     //Temperature in Kelvin
h = 6.625e-34               //Plank's constant
lambda = [10e-7:10e-8:1.5e-5] //Wavelength of the radiation

for j=1:1:3
    T=1000+200*j              //Temperature varies between 1000 K and 1400 K
    for i=1:1:length(lambda)
        u(i,j) = (8*%pi*h*c)/((lambda(i)^5)*(exp(h*c/(lambda(i)*k*T))-1))
    end
end

plot(lambda,u)
title ("Plank''s radiation Law plotted at different temperatures",'font_size',4,'font_style',3)
xlabel ('$Wavelength(\lambda)$','font_size',4)
ylabel ('$u(\lambda)$','font_size',4)
h1=legend('T1 = 1000 K','T2 = 1200 K','T3 = 1400 K',)
