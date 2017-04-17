function vector=burbuja(vector)      
            for i=2:length(vector)                             
                                for  j=1 : length(vector)-1                                       
                                        if (vector(j) > vector(j+1))
                                            key= vector(j);
                                            vector(j) = vector(j+1);
                                            vector(j+1) = key;
                                        end
                                end
            end
end