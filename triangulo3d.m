function imagem = triangulo3d(x1, y1, z1, x2, y2, z2, x3, y3, z3, tam)

mat = zeros(tam, tam, tam);

dx = x1-x2;
dy = y1-y2;
dz = z1-z2;
dx = sqrt((dx)*(dx));
dy = sqrt((dy)*(dy));
dz = sqrt((dz)*(dz));

N = max([dx dy dz]);

dt = 1/N;

t = [];

for i=1:N
    t(i+1) = i*dt;
end

for k=1:(N+1)
    px = (1-t(k))*x1 + t(k)*x2;
    py = (1-t(k))*y1 + t(k)*y2;
    pz = (1-t(k))*z1 + t(k)*z2;

    ret = reta3d(round(px), round(py), round(pz), x3, y3, z3, tam);
    mat = soma3d(mat, ret);
end
%
dx = x3-x2;
dy = y3-y2;
dz = z3-z2;
dx = sqrt((dx)*(dx));
dy = sqrt((dy)*(dy));
dz = sqrt((dz)*(dz));

N = max([dx dy dz]);

dt = 1/N;

t = [];

for i=1:N
    t(i+1) = i*dt;
end

for k=1:(N+1)
    px = (1-t(k))*x3 + t(k)*x2;
    py = (1-t(k))*y3 + t(k)*y2;
    pz = (1-t(k))*z3 + t(k)*z2;
    ret = reta3d(round(px), round(py), round(pz), x1, y1, z1, tam);
    mat = soma3d(mat, ret);
end
%
dx = x3-x1;
dy = y3-y1;
dz = z3-z1;
dx = sqrt((dx)*(dx));
dy = sqrt((dy)*(dy));
dz = sqrt((dz)*(dz));

N = max([dx dy dz]);

dt = 1/N;

t = [];

for i=1:N
    t(i+1) = i*dt;
end

for k=1:(N+1)
    px = (1-t(k))*x3 + t(k)*x1;
    py = (1-t(k))*y3 + t(k)*y1;
    pz = (1-t(k))*z3 + t(k)*z1;
    ret = reta3d(round(px), round(py), round(pz), x2, y2, z2, tam);
    mat = soma3d(mat, ret);
end

imagem = projecao(mat);