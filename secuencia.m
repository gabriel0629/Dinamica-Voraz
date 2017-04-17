x=['s','p','r','i','n','t','i','m','e'];
y=['p','r','i','n','t','i','n','g'];
n=length(x);
m=length(y);
for i=1:n
    pos(1,i)=0;
end
   
for i=1:n+1
    L(i,1)=0;
end
for j=1:m+1
    L(1,j)=0;
end
for i=1:n
    for j=1:m
        if x(i)==y(j)
            L(i+1,j+1)=L(i,j)+1;
            pos(1,i)=1;
        else
            if(L(i,j+1)>=L(i+1,j))
                L(i+1,j+1)=L(i,j+1);
            else
                L(i+1,j+1)=L(i+1,j);
            end
        end
    end
end
%% Solucion
for i=1:length(pos)
    if pos(i)==1
        sol(i)=x(i);
    end
end
sol