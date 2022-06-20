function mat = projecao(obj)

tam = size(obj);
tam = tam(1);

mat = zeros(tam, tam);

dc = 1/(tam*1.2);

for x=1:tam
    for y=1:tam
        var = 0;
        for z = 1:tam
            if obj(x, y, z) == 1
                var = 1 - (dc * (z-1));
                break
            end
        end
        mat(x, y) = var;
    end
end

