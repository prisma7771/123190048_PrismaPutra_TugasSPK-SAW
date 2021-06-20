clear; clc;

namaMesin = {'DariusX9-00' 'CryptoBroken87XX' 'DynastyCoin77-G2' 'LotProfit-X01' 'RollerCanCry99' 'MoneyLotz' 'HardWorkerMiner' 'EaseCoin' 'WannabeMillion' 'BitKrypton'};
namaMesinCrypto = namaMesin.';

x = [4000 1000 5 650 12 100 85;
    3000 750 3.5 450 15 75 65
    5000 1100 4.6 600 20 120 80
    1500 450 2.4 200 18 30 60
    3000 850 3.8 400 8 90 75
    2000 600 3 400 24 120 78
    500 150 0.87 175 24 50 55
    5000 1300 5.9 900 12 240 80
    1000 375 2.2 425 18 70 85
    2000 475 3.1 300 16 60 60];

cellx = num2cell(x);
datamesin = {namaMesinCrypto; cellx};
datamesin = horzcat(datamesin{:})

k = [0 1 1 0 1 0 1]

w = [0.2 0.1 0.2 0.05 0.15 0.25 0.05 ]

[m,n]=size(x);

R = zeros(m,n);
Y = zeros(m,n);

for j=1:n
    if k(j)==1,
        R(:,j)=x(:,j)./max(x(:,j));
    else
        R(:,j)=min(x(:,j))./x(:,j);
    end
end

for i=1:m
    V(i)=sum(w.*R(i,:));
end

V = V.';
Vhasil = num2cell(V);

hasil = {namaMesinCrypto; Vhasil};
hasil = horzcat(hasil{:});

hasilsort = sortrows(hasil,2,'descend')