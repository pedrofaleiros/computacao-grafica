function mat = reta3d(x1, y1, z1, x2, y2, z2, tam)

dx = x1-x2;
dy = y1-y2;
dz = z1-z2;
dx = sqrt((dx)*(dx));
dy = sqrt((dy)*(dy));
dz = sqrt((dz)*(dz));

N = max([dx dy dz]);

dt = 1/N;

t = [];

for i=0:N
    t(i+1) = i*dt;
end

mat = zeros(tam, tam, tam);

for k=1:(N+1)
    px = (1-t(k))*x1 + t(k)*x2;
    py = (1-t(k))*y1 + t(k)*y2;
    pz = (1-t(k))*z1 + t(k)*z2;

    mat(round(px), round(py), round(pz)) = 1;
end
