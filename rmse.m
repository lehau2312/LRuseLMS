function [ kq ] = rmse( y1,yhat )
% y=[1 2 3]
% yhat=[4 5 6]
% (y1 - yhat) 
% (y1 - yhat).^2
%mean((y1 - yhat).^2)
% kq=0;
% kq = sqrt(mean((y1 - yhat).^2));
tong=0;
dodai=length(y1);
for k=1:dodai
    tong=tong+(y1(k)-yhat(k))^2;
end;
can=sqrt(tong);
kq=can/dodai;
    
end

