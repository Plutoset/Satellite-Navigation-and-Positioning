function [outPutLocation] = Rotation(location,angle)
%Rotation 此处显示有关此函数的摘要
%   此处显示详细说明
X = [1,0,0;0,cos(angle(1)),sin(angle(1));0,-sin(angle(1)),cos(angle(1))];
Y = [cos(angle(2)),0,-sin(angle(2));0,1,0;sin(angle(2)),0,cos(angle(2))];
Z = [cos(angle(3)),sin(angle(3)),0;-sin(angle(3)),cos(angle(3)),0;0,0,1];
%outPutLocation = (((Z * Y) * X) * (location'));
outPutLocation = (Z * (Y * (X * (location'))));
end

