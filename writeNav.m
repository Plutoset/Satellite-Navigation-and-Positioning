function [Nave] = writeNav(temp)
satprn=convertStringsToChars(temp(1));
satType=satprn(1);
if satType == 'G'
    %satid: "G12"
    Nave.satid = temp(1);
    %satprn: 12
    Nave.satprn = str2double(satprn(2:end));
    time=temp(2);
    timearray=strsplit(time);
    time=datetime(str2double(timearray(1)),str2double(timearray(2)),str2double(timearray(3)),str2double(timearray(4)),str2double(timearray(5)),str2double(timearray(6)));
    %卫星钟参考时间-TOC 
    Nave.Toc = time;
    %钟差-a0 
    Nave.a0 = str2double(temp(3));
    %钟速-a1 
    Nave.a1 = str2double(temp(4));
    %钟加速度的一半-a2
    Nave.a2 = str2double(temp(5));
    %AODE数据、星历发布时间
    Nave.aode = str2double(temp(6));
    %摄动参数-Crs 
    Nave.Crs = str2double(temp(7));
    %平均角速度改正值−∆𝒏
    Nave.deltaN = str2double(temp(8));
    %toe时的平近点角-M0
    Nave.M0 = str2double(temp(9));
    %摄动参数-Cuc
    Nave.Cuc = str2double(temp(10));
    %e轨道偏心率
    Nave.e = str2double(temp(11));
    %摄动参数-Cus
    Nave.Cus = str2double(temp(12));
    %sqrt(A)卫星轨道场半轴的平方根
    Nave.sqrtA = str2double(temp(13));
    %星历参考时间-TOE（周内秒）
    Nave.TOE = str2double(temp(14));
    %摄动参数-Cic
    Nave.Cic = str2double(temp(15));
    %Ω（OMEGA）：参考时刻升交点赤经
    Nave.omegaForRA = str2double(temp(16));
    %摄动参数-Cis
    Nave.Cis = str2double(temp(17));
    %Toe时的轨道倾角：I0
    Nave.l0 = str2double(temp(18));
    %摄动参数-Crc
    Nave.Crc = str2double(temp(19));
    %近地点角距𝝎
    Nave.omega = str2double(temp(20));
    %𝛀 ̇（OMEGA DOT）轨道升交点赤经对时间的变化率
    Nave.omegaDot = str2double(temp(21));
    %i ̇（IDOT）轨道倾角对时间的变化率
    Nave.i = str2double(temp(22));
    %L2上的码
    Nave.L2 = str2double(temp(23));
    %GPS周数-WN
    Nave.WN = str2double(temp(24));
    %L2P码数据标记
    Nave.L2P = str2double(temp(25));
    %卫星精度
    Nave.precision = str2double(temp(26));
    %卫星健康状态
    Nave.healthy = str2double(temp(27));
    %TGD：信号延迟
    Nave.TGD = str2double(temp(28));
    %AODC钟的数据期龄
    Nave.AODC = str2double(temp(29));
    %电文发送时刻
    Nave.sentTime = str2double(temp(30));
    %拟合区间
    Nave.fitting = str2double(temp(31));
    tempSize=size(str2double(temp));
    if (tempSize(2) > 31)
        %备用
        Nave.alternative1 = str2double(temp(32));
        %备用
        Nave.alternative2 = str2double(temp(33));
    end
end