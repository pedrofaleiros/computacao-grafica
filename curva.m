function curva(L, C, N)

mat = zeros(L, C); % cria uma matriz de dimensoes L, C

for t = 1:N
    x = cos(3*pi*(t/N)); % calcula a coordenada x no srn
    y = sin(2*pi*(t/N)); % calcula a coordenada y no srn

    [i, j] = srn2srd(x, y, L, C); % transforma as coordenadas (x, y) no srn
                                  % em um par (i, j) no srd

    mat(round(i) ,round(j)) = 1; % arredonda e insere os pixels na matriz
end

imshow(mat); % mostra a matriz 