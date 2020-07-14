function [d,sstbbpkc,W ] = LMS( X,Y,mu,L )
W(1)= 0.5;
for k = 1:length(Y)
    tg=X(1,k);
    yhat(1,k)=tg*W(k);
    d(1,k)=Y(1,k) - yhat(1,k) ;
    W(k+1) = W(k) + 2*mu*d(1,k)*tg;
end;
for k=1:(length(Y)-L)
    for m=1:L
        y1(1,m)=Y(1,k+m);
        ymu(1,m)=yhat(1,k+m);
    end;
    [sstbbpkc(k)]=rmse( y1,ymu);
end;
end

