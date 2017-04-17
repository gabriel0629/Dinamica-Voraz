clear all
T=[1,2,5,10]; % Denominaciones de las Monedas
L=11; % Valor que espero me devuelvan en monedas
% Cambio(T,L)
n=length(T); % longitud de las denominaciones
% Inicializar C y P
P=zeros(n,L+1);
C=zeros(n,L+1);
for i=1:n  % Esto for no se necesita
    P(i,1)=0;
    C(i,1)=0; %%% CASO I
end
%%%%%%%%%%%%%%% LLenado de tablas
for i=1:n
    for j=1:L
        if ((i==1)&&(j<T(i)))    %%% CASO II         
            C(i,j+1)=inf;
            P(i,j+1)=0;
        else
            if((i==1)&&(j>= T(i)))               
                    C(i,j+1)=1+ C(i,j-T(i)+1);  %%% CASO III --- Porque  C(i,j+1)--> en matlab se empieza desde 1 no de 0 como en c++
                    P(i,j+1)=1;
            else
                    if ((i>1)&&(j<T(i)))                      
                            C(i,j+1)=C(i-1,j+1);  %%% CASO IV
                             P(i,j+1)=0;
                    else
                             C(i,j+1)=min(C(i-1,j+1),1+C(i,j-T(i)+1));  %%% CASO V                                                         
                             P(i,j+1)= C(i,j+1) ~= C(i-1,j+1);                                                 
                    end                  
            end
        end
    end
end

%%%%%%%%%%% SOLUCION
%%
i=n;
j=L+1;
solucion=zeros(1,n); % vector de soluciones
while (i~=0)&&(j~=0)
    if P(i,j)==0
        i=i-1;
    else
        solucion(i)=solucion(i)+1;
        j=j-T(i);
    end
    %%%%%%%%
%     if i==0
%           solucion(1)=solucion(1)+C(i+1,j+1);
%     end    
end

 solucion


