function root = exNewton(func1, func2, x0, threshold)
%func1 입력함수
%func2 입력에 대한 미분 함수

while(1)
    x = x0-feval(func1,x0)/feval(func2,x0);
    %disp(x0);disp(x);
    rel_error=abs((x-x0)/x)*100;
    %disp('다음 x는');
    %disp(x);
    %disp(abs((x-x0)/x));
    %disp(abs(x-x0)/x*10);
    %disp('상대오차는');
    disp(rel_error);
    x0=x;%xold 값을 다시 갱신
    
    if(rel_error<threshold)
        break;
    end
end
root=x0;
