%Mediante el polinomio de Lagrange

function [meta]=glucosaMeta(x,y,nivel);
  sum=0;
  n=length(y);
  for i=1:n;
    producto=x(i);
    for j=1:n;
      if i~=j;
        producto=producto*(nivel-y(j))/(y(i)-y(j));
      endif
    endfor
    sum=sum+producto;
  endfor
  meta=sum;
  
endfunction  