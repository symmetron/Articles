x=-1.920:0.001:2.080;
pa=x.^9-18*x.^8+144*x.^7-672*x.^6+2016*x.^5-4032*x.^4+5376*x.^3-4608*x.^2+2304*x-512;
pb=(x-2).^9;
figure(1);plot(x,pa);
figure(2);plot(x,pb);
figure(3);plot(x,pa-pb);