function pf=grafica(caract,X,y);
  n=length(X)-1;
  mat=zeros(n+1);
  mat(:,1)=y;
  for w=2:n+1 %encontrando valores de las diferencias divididas
    for j=w:n+1;
      mat(j,w)=[mat(j,w-1)-mat(j-1,w-1)]/[X(j)-X(j-w+1)];
    endfor
  endfor
  %para fines de visualizacion de la matriz de las diferencias divididas
  %display('La matriz es:');
  %display(mat);
  
  pkg load symbolic; %se carga symbolic
  syms x;
  pol=mat(1,1);
  p=1;
  for i=1:n; %Generando el polinomio con los valores encontrados en la matriz de las diferencias divididas
    p=p*(x-X(i));
    pol=pol+p*mat(i+1,i+1);
  endfor
  
  %GENERANDO GRAFICA CON LA INFORMACION SOLICITADA
  if caract==1;
    plot(X,y,'r*'); %generando puntos de observacion
    title('Puntos de observacion:');
  endif
  if caract==2;
    ezplot(pol,[X(1) X(n+1)]); %generando grafica del polinomio interpolante
    title('Polinomio interpolante (curva):');
  endif
  if caract==3;
    hold on; %Para mantener todas las configuraciones en una misma grafica
    ezplot(pol,[X(1) X(n+1)]); %generando grafica del polinomio interpolante
    plot(X,y,'r*'); %generando puntos de observacion
    title('Polinomio interpolante mas los puntos observados:');
  endif
  grid on; %gradilla
  xlabel('Tiempo (horas)');
  ylabel('Nivel de glucosa (mg/dL)');
endfunction