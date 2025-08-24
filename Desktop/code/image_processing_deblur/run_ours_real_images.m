%%  reference from  https://sites.google.com/site/jspanhomepage/ %%

clc;
clear;
close all;
addpath(genpath('cho_final_deconv'));
addpath(genpath('utils'));
%% ==Required input parameters for each example== %%
% maximum number of I/k alternations at each level (4 by defalut); 
opts.Ik_iter = 4;
% display the intermdiate results at each iteration (1/0)
opts.display = 1;

%% parameter setting

opts.kernel_size = 85;
opts.lambda_grad = 0.008; 
opts.k_reg_wt = 0.1;
opts.gamma_correct = 1.0;
opts.sigma = 5/255;


%% input1.bmp

img1 = imread('input1.bmp');
img1 = im2double(img1);

[kernel1, latent,weight_k,weight_x] = blind_deconv_main_ours(img1, opts);

% cho_final_deconv: handling outliers
sigma = 5/255;%
reg_str = 0.003;%
Latent = deconv_outlier(img1, kernel1, sigma, reg_str);

imwrite(Latent,'output1.bmp')

%% input2.bmp


img2 = imread('input2.bmp');
img2 = im2double(img2);

[kernel2, latent,weight_k,weight_x] = blind_deconv_main_ours(img2, opts);

% cho_final_deconv: handling outliers
sigma = 5/255;%
reg_str = 0.003;%
Latent = deconv_outlier(img2, kernel2, sigma, reg_str);

imwrite(Latent,'output2.bmp')


%% input3.bmp

img3 = imread('input3.bmp');
img3 = im2double(img3);

[kernel3, latent,weight_k,weight_x] = blind_deconv_main_ours(img3, opts);

% cho_final_deconv: handling outliers
sigma = 5/255;%
reg_str = 0.003;%
Latent = deconv_outlier(img3, kernel3, sigma, reg_str);

imwrite(Latent,'output3.bmp')

%% other method
%addpath(genpath('hu_final_deconv'));
% hu_final_deconv: 
% Latent1 = deconv_RL_sat(y,kernel,0.01);
% img_outname1=['output3' '_deblur_hu.bmp'];
%%%%%%%%%%%%%%%%%%%
% whyte_final_deconv
%addpath(genpath('whyte_final_deconv'));
% Latent2 = whyte_deconv(y, kernel);
% img_outname2=['output3' '_deblur_whyte.bmp'];
% 
% ker_outname=['output3' '_kernel_ours.bmp'];



