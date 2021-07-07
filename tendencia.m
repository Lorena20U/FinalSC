%r2= coeficiente de determinacion
%pend=pendiente
%inter=intercepto en y

function pf=tendencia(t,g);
  n=length(t); %largo del vector
  t=t(:); g=g(:); %convierte cada vector a columna
  st=sum(t); sg=sum(g); %suma las columnas de x y de y
  st2=sum(t.*t); stg=sum(t.*g); sg2=sum(g.*g); %sumatorias cuadraticas
  pend=(n*stg-st*sg)/(n*st2-st^2); %se encuentra la pendiente
  inter=sg/n-pend*st/n; %se encuentra el intercepto
  r2=((n*stg-st*sg)/sqrt(n*st2-st^2)/sqrt(n*sg2-sg^2))^2; %se encuentra el coeficiente de determinacion
  
  printf('\n\tInciso D: Ajuste de regresion lineal simple. \n');
  printf('Pendiente: %4.5f \n',pend);
  printf('Intercepto: %4.5f \n',inter);
  printf('Coeficiente de determinacion: %4.5f \n',r2);
  printf('Ecuacion ajustada: y = %4.5f x + %4.5f\n',pend,inter);
  
  %Grafica de los puntos observados y la ecuacion de minimos cuadrados
  xp=linspace(min(t),max(t),2); %ancho de la ventana
  yp=pend*xp+inter;
  plot(t,g,'*',xp,yp);
  grid on;
  title('Modelo de tendencia mas puntos observados:');
  xlabel('Tiempo (horas)');
  ylabel('Nivel de glucosa (mg/dL)');
  
endfunction  