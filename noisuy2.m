clear all; close all;

x=[1	5	8	12	19	22	26	33];
y=[1.5	2.3	3	4	5.75	6.75	7.5	8.75];
X= 1:0.1:33;
Y = interp1(x,y,X);
mu=0.001;
L=3;
[d,sstbbpkc,W] = LMS( X,Y,mu,L );

% Hau copy cac rmse trong truong h?p dung HQTT vao dong duoi day nhe
rmse_hqtt1=[0.046518667	0.034546667	0.02698	0.118968	0.18684	0.187384	0.111272	0.120652];
rmse_hqtt2=[0.118598667	0.131958667	0.106998667	0.120438667	0.180806667	0.241410667	0.198124	0.097922667
]
subplot(1,2,1); plot(rmse_hqtt1); title('RMSE truong hop dung HQTT.'); axis([1 8 0 1]);
subplot(1,2,2); plot(sstbbpkc); title('RMSE truong hop dung LMS'); axis([1 158 0 1]);

for k=1:length(rmse_hqtt1)
    rutgon(k)=sstbbpkc(40*k - 39)
end;
figure,
subplot(1,2,1); plot(1:8,rmse_hqtt1); title('RMSE truong hop dung HQTT.'); axis([1 9 0 0.5]);
subplot(1,2,2); plot(1:8,rutgon); title('RMSE truong hop dung LMS'); axis([1 9 0 0.5]);
% 
% subplot(1,2,1); plot(rmse_hqtt2); title('RMSE truong hop dung HQTT..'); axis([1 8 0 1]);
% subplot(1,2,2); plot(sstbbpkc); title('RMSE truong hop dung LMS'); axis([1 158 0 1]);
% 
% for k=1:length(rmse_hqtt2)
%     rutgon(k)=sstbbpkc(40*k - 39)
% end;
% figure,
% subplot(1,2,1); plot(1:8,rmse_hqtt2); title('RMSE truong hop dung HQTT..'); axis([1 9 0 0.5]);
% subplot(1,2,2); plot(1:8,rutgon); title('RMSE truong hop dung LMS'); axis([1 9 0 0.5]);
