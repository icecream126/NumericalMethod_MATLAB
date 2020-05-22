function root = bisection(func, x1, x2, threshold)
%(방정식, 구간1, 구간2, 상대오차 허용범위)
if feval(func,x1)*feval(func,x2)>0
    %0보다 크면 해당 구간은 사용할 수 없음.
    disp('no')
    return
end

rel_error=100.0;x3=x1;
while(1)
    xold=x3;x3=(x1+x2)/2;
    if x3~=0
        %x3가 0이 아니면
        rel_error=abs(x3-xold)/x3*100;
        %상대오차 계산
    end
    %x1~x3 구간 또는 x2~x3 구간 선택
    if feval(func,x1)*feval(func,x3)<0
        %x1~x3구간 선택 시 x2는 x3
        x2=x3;
    else
        x1=x3;
    end
    
    if rel_error<=threshold
        %상대 오차가가 threshold보다 작으면 종료
        break;
    end
    disp(x3); disp(rel_error);
end
root=x3;
