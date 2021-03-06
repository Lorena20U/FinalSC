%la razon instantanea es la segunda derivada de la funcion
%se refiere a la rapidez con que la pendiente de una curva cambia en determinado momento.

function [rs]=razonInstantanea(z,x,y,fec);
  n=length(x);
  rs(1)=(y(1)-2*y(2)+y(3))/((x(2)-x(1))^2); %Segunda derivada dif. finitas hacia adelante
  for i=2:n-1;
    rs(i)=(y(i-1)-2*y(i)+y(i+1))/((x(i)-x(i-1))^2);
  endfor
  rs(n)=(y(n-2)-2*y(n-1)+y(n))/((x(n)-x(n-1))^2); %Segunda derivada dif. finita hacia atras
  
  if z==2;
    printf('\n\tTabla de metabolizacion de glucosa\n');
    printf('Razon de\tNivel de\n');
    printf('Cambio\t\tGlucosa\t\tFecha\n');
    for k=1:n;
      printf('%4.5f  \t%4.0f\t\t%s\n',rs(k),y(k),datestr(fec(k)-1));
    endfor
  endif
  if z==3;
    printf('El minimo es: %4.5f\n', min(rs));
    printf('El maximo es: %4.5f\n',max(rs));
  endif
  
  
endfunction  