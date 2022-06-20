function mat = projecao(obj)

tam = size(obj);
tam = tam(1);

mat = zeros(tam, tam);

aux_color = tam * (25/100);

for x=1:tam
    for y=1:tam
        var = 0;
        for z = 1:tam
            if obj(x, y, z) == 1
                var = aux_color/z;
                break
            end
        end
        mat(x, y) = var;
    end
end

%imshow(mat);

