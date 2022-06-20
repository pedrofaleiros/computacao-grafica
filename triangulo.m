function mat = triangulo(x1, y1, x2, y2, x3, y3, M, N)

mat = zeros(M, N);

mat = mat + reta(x1, y1, x2, y2, M, N);
mat = mat + reta(x2, y2, x3, y3, M, N);
mat = mat + reta(x3, y3, x1, y1, M, N);