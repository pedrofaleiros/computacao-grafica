function pendulo(i0, j0, o0, g, l, vet, M, N)

Raio = 50;

for indice = 1:length(vet)
    angulo = o0*cos(sqrt(g/l)*(vet(indice)));
    ifinal = i0 + (l*cosd(angulo));
    jfinal = j0 + (l*sind(angulo));
    imshow(reta(i0, j0, round(ifinal), round(jfinal), M, N) + circulo(round(ifinal), round(jfinal), Raio, M, N));
    pause(0.3);
    close();
end


    