function [i, j] = srn2srd(x, y, L, C)

j = ( ((x+1)/2) *(C-1) + 1);
i = -( ((y+1)/2)*(L-1) - L);