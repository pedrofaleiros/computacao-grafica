function mat = soma2d(obj1, obj2)

tam = size(obj1);
tam = tam(1);

mat = zeros(tam, tam);

for i=1:100
    for j=1:100
        if obj1(i, j) > 0 || obj2(i, j) > 0
            mat(i, j) = max([obj1(i, j) obj2(i, j)]);
        end
    end
end