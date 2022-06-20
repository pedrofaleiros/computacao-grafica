function mat = esfera3d(i0, j0, k0, R, tam)

mat = zeros(tam, tam, tam);

for k = k0-R:k0+R
    Rc = sqrt( (R*R)-( (k-k0)*(k-k0) ));
    for di = -Rc:Rc
        L = sqrt( (R*R)-(di*di) );
        for dj = -L:L
            mat(round(i0-di), round(j0+dj), round(k)) = 1;
        end
    end
end