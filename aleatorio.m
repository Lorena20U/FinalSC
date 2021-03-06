%a = numero minimo
%b = numero maximo
%r = vector de salida, almacena los numeros aleatorios

%Condicion: que no se repita ningun valor encontrado
function [r]=aleatorio(a,b);
  max=10; %total de numeros aleatorios a encontrar
  s=a+3; %semilla
  
  p=(s*13)/31;
  u(1)=p-fix(p);
  v(1)=u(1)*31; %se encuentra el primer numero aleatorio
  i=2;
  m=1;
  r=[]; 
  
  while m!=max+1;
    if v(i-1)>=a;
      if v(i-1)<=b;
        if m==1;
          r(m)=fix(v(i-1)); %almacena el numero aleatorio dentro del rango
          m=m+1;
        else
          dif=0; %dif es para encontrar dentro de los numeros generados si es igual a los ya existentes en el vector de salida
          for q=1:length(r); %dentro del for se verifica si hay algun numero ya existente
            if r(q)==fix(v(i-1));
              dif=1;
            endif
          endfor
          if dif==0;
            r(m)=fix(v(i-1)); %almacena el numero aleatorio dentro del rango si este aun no existe ya
            m=m+1;
          endif
        endif
      endif
    endif
    
    s=v(i-1);
    p=(s*13)/31;
    u(i)=p-fix(p); %para dejar los decimales
    v(i)=u(i)*31;    
    
    i=i+1;
  endwhile

endfunction  