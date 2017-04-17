clear all

T=[1,5,2,9]; % Denominaciones de las Monedas
T=burbuja(T)
% T=sort(T,'descend')
L=11; % Valor que espero me devuelvan en monedas
% Cambio(T,L)
n=length(T); % longitud de las denominaciones
solucion=zeros(1,n);    
for i=n:-1:1
    while T(i)<=L        
                 solucion(i)=1+solucion(i);
                 L=L-T(i);  
    end
end
 solucion
 %%%maldito liciado



               
