function root=secant(func,x1,x2,threshold)
%할선법, 미분을 못구할 때 구간을 정하고 기울기를 구함
while(1)
    xn=x2-feval(func,x2)*(x2-x1)/(feval(func,x2)-feval(func,x1));
    %*이후는 기울기의 역수임
    if xn~=0
        rel_error=abs((xn-x1)/xn)*100;
    end
    x1=x2;
    x2=xn;
    
    if(rel_error<threshold)
        break;
    end
    disp(rel_error);
end
root=x2;
