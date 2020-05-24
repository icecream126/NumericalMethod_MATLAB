function root = newton(func1, func2, x0, threshold)
%func1 입력함수
%func2 입력에 대한 미분 함수

while(1)
    x = x0-feval(func1,x0)/feval(func2,x0);
    rel_error=abs((x-x0)/x)*100;
    disp(rel_error);
    if(rel_error<threshold)
        break;
    end
end
root=x0;
