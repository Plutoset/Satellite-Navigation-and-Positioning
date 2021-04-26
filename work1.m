%1、请编写一段Matlab程序，完成以下功能：
%（1）找出200到400之间的所有质数，将这些质数存放在一个行数组里；
stopIndex = sqrt(400);
primes=[];
for i = 200 : 400  %外层循环，i的初值为2，终值为100
    for j = 2:stopIndex  %内层循环，j的初值为2，终值为100
        if(~mod(i,j))  % i除以j取余后再取反
            break; % 跳出循环
        end
    end
    if(j > (i/j)) %检查是否有其他除数
        primes=[primes,i];
    end
end
fprintf('质数数组：%d\n',primes)
%（2）求出这些质数的和；
primeSum=sum(primes);
fprintf('200到400之间的所有质数的和：%d\n',primeSum)
%（3）求出200到400之间的所有非质数的和（包括200和400）
NprimeSum=sum(200:1:400)-primeSum;
fprintf('200到400之间的所有非质数的和：%d\n\n',NprimeSum)
clear;        
%2、请编写一段Matlab程序，完成以下功能：
%（1）生成一个200行， 150列的二维随机数组A；
A=rand(200,150);
%（2）找出数组A中所有大于0.45且小于0.55的元素的下标；
indexs=[];
for i=1:200
    for j = 1:150
        if ((A(i,j)>0.45) && (A(i,j)<0.55))
            indexs=[indexs;i,j];
        end
    end
end
%（3）求出数组A满足（2）中的条件的元素个数；
numbers=size(indexs);
numbers=numbers(1);

%（4）求出数组A中满足（2）条件的所有元素和，并求出这些元素的平均值；
sorted=[];
for i=1:numbers
    item=A(indexs(i,1),indexs(i,2));
    sorted=[sorted,item];
end
sumall=sum(sorted);
meanall=mean(sorted);
%（5）将（4）求出的平均值赋值给数组A中满足（2）中条件的每个元素。
for i=1:numbers
    A(indexs(i,1),indexs(i,2))=meanall;
end
clear

K=0;
for i=0:32
    K=K+2^i;
    %fprintf('now is %d \n',i);
end
fprintf('K calculated in for-loop is %d\n',K)
clear

K=0;
i=0;
while i <=32
    K=K+2^i;
    i=i+1;
end
fprintf('K calculated in while-loop is %d\n',K)
clear

indexs=[0:1:32];

Keach=arrayfun(@(x) sum(2^x),indexs);
K=sum(Keach);
fprintf('K calculated not in a loop is %d\n',K)
clear

%4、请编写Matlab程序，利用rand产生10个随机数，对其进行从大到小排序。
A=rand(10,1);
A = sort(A,'descend');
clear
