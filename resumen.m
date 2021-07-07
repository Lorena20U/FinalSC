function pf=resumen(f,t,g);
  printf('\n\tRESUMEN ESTADISTICO\n');
  printf('\t\tFecha\t\tmg/dL\tHora\n');
  printf('Media: \t\t%s\t%4.0f\t%s\n',datestr(fix(mean(f)-1)),mean(g),datestr(mean(t)));
  printf('Mediana: \t%s\t%4.0f\t%s\n',datestr(fix(median(f)-1)),median(g),datestr(median(t)));
  printf('Moda: \t\t%s\t%4.0f\t%s\n',datestr(fix(mode(f)-1)),mode(g),mode(max(t)));
  printf('V. Maximo: \t%s\t%4.0f\t%s\n',datestr(max(f)-1),max(g),datestr(max(t)));
  printf('V. Minimo: \t%s\t%4.0f\t%s\n',datestr(min(f)-1),min(g),datestr(min(t)));
  printf('Desv. Estd: \t%s\t%4.0f\t%s\n',datestr(fix(std(f)-1)),std(g),datestr(std(t)));
  
  plot(t,g,'r*'); %generando puntos de observacion
  title('Histograma del rango de datos: ');
  grid on; %gradilla
  xlabel('Tiempo (horas)');
  ylabel('Nivel de glucosa (mg/dL)');
endfunction