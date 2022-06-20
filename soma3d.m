function mat = soma3d(obj1, obj2)

tam = size(obj1);
tam = tam(1);

mat = zeros(tam, tam, tam);

for i=1:100
    for j=1:100
        for k=1:100
            if obj1(i, j, k) > 0 || obj2(i, j, k) > 0
                mat(i, j, k) = max([obj1(i, j, k) obj2(i, j, k)]);
            end
        end
    end
end
