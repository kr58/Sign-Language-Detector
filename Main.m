close all
clc

%savetemplates();
img = imread('X4.jpg');
%[R, C] = size(img);
%img = imresize(img,[R/2 C/2]);

bin_img2 = preProcess(img, 2);
figure, imshow(bin_img2);
%out = matching(bin_img2)