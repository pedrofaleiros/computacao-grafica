function mat = reta(i0, j0, i1, j1, M, N)
% criar segmento de reta com algoritmo de bresenham
mat = zeros(M, N); 
deltai = i0 - i1; % calcula delta i
deltaj = j0 - j1; % calcula delta j

if sqrt((deltai)*(deltai)) >= sqrt((deltaj)*(deltaj)) % transforma o delta i e delta j 
                                                      % em numeros positivos caso sejam negativos
    m = (j1-j0)/(i1-i0);
    passo = 1;
    if i0 > i1
        passo = -1;
    end
    for i = i0:passo:i1 % faz a iteracao de i0 ate i1, calcula o j e adiciona na matriz
        j = j0 + m*(i - i0);
        mat(round(i) ,round(j)) = 1;
    end
    
else
    m = (i1-i0)/(j1-j0);
    passo = 1;
    if j0 > j1
        passo = -1;
    end
    for j = j0:passo:j1 % faz a iteracao de j0 ate j1, calcula o i e adiciona na matriz
        i = i0 + m*(j - j0);
        mat(round(i) ,round(j)) = 1;
    end
end