function mat = circulo(i0, j0, R, M, N)

mat = zeros(M, N);

for deltai = -R:R
    i = i0 + deltai;
    L = (sqrt((R*R) - (deltai*deltai)));
    for j = j0 - L: j0 + L
        if i >= 1 && i <= M && j >= 1 && j <= N
            mat(round(i), round(j)) = 1;
        end
    end
end