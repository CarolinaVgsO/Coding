clc;
clear all;
close all;
Fs=8000;
r=2^(1/12);%son 12 notas contando sostenidos,2 por la suma de 4 semitonos
% frecuencia para afinar
LAR=440;
% Notas y tiempo menor en la canción.
LAR=r^-9*LAR;
Do=r^0*LAR*[1 2 4 1/2];
Dos=r^1*LAR*[1 2 4 1/2];
Re=r^2*LAR*[1 2 4 1/2];
Res=r^3*LAR*[1 2 4 1/2];
Mi=r^4*LAR*[1 2 4 1/2];
Fa=r^5*LAR*[1 2 4 1/2];
Fas=r^6*LAR*[1 2 4 1/2];
Sol=r^7*LAR*[1 2 4 1/2];
Sols=r^8*LAR*[1 2 4 1/2];
La=r^9*LAR*[1 2 4 1/2];
Las=r^10*LAR*[1 2 4 1/2];
Si=r^11*LAR*[1 2 4 1/2];
mute=0;
n=0.5;
% Canción  y tiempo
fprintf('Que inicio de cancion quieres tocar:\n1)Si veo a tu mamá\n2)Bohemian Rapsody\n3)Kids\n4)See you again\n')
op=input('Elige el número de canción:\n');
switch(op)
  
    case 1
        cancion=[La(1),Fas(1),Fas(1),Mi(1),La(1),Fas(1),Fas(1),Fas(1),Mi(1),La(1),Fas(1),Fas(1),Mi(1),La(1),Fas(1),Fas(1),Fas(1),Sol(1),La(1),Fas(1),Fas(1),Mi(1),La(1),Fas(1),Fas(1),Fas(1),Mi(1),La(1),Fas(1),Fas(1),Mi(1),La(1)];
        tiempo=[n,n/2,n/2,n,n/2,n,n/2,n,n,n,n/2,n/2,n,n/2,n,n/2,n,n,n,n/2,n/2,n,n,n,n/2,n,n,n,n/2,n/2,n,n/2]; 
    case 2
        cancion=[Las(1),Fa(1),Las(1),Re(2),Sol(2),Fa(2),mute,Las(1),Fa(1),Las(1),Re(2),Sol(2),Fa(2),mute,Las(1),Fa(1),Las(1),Re(2),Sol(2),Fa(2),mute];
        tiempo=[n n n n 2*n n n/4 n n n n 2*n n n/4 n n n n 2*n n n/4];
    case 3
        cancion=[La(1),Si(1),Dos(2),Mi(2),Fas(2),Sols(2) Fas(2), Mi(2),Dos(2),mute, Si(1), La(1) Si(1) Dos(2) Si(1) La(1) Si(1) La(1), Fas(1) La(1)];
        tiempo=[n n n n n n/2 n n 2*n n/4 2*n n n n n n n/2 n/2 n 2*n ];
    case 4
        cancion=[Fa(2) Do(3) Las(2) Re(2) La(2) Do(3) Re(3) Do(3) La(2) Do(3) Fa(2) Do(3) Las(2) Re(2) La(2) Do(3) Re(3) Do(3) La(2) Do(3)];
        tiempo=[n n n n n/2 n/2 n/2 n/2 n/2 n/2 n n/2 n/2 n n/2 n/2 n/2 n/2 n/2 n/2];
    otherwise
        fprintf('Opción no válida');
end 
        Vect=[cancion',tiempo']; %%transformar a vector
        p=[];
        for i=1:length(Vect)
        LAR=Vect(i,1);
        t=Vect(i,2);
        x=(0:(1/Fs):t);
        p=[p sin(LAR*2*pi.*x)];
        end
        sound(p)

