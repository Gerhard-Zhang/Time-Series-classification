% �ҳ� imf Ȼ�� ���뵽��Ӧ���ļ��С�
clc
clear all
close all

TRAIN = load('F:\Matlab_project\UCR_TS_Archive_2015\wafer\wafer_TRAIN');
TEST  = load('F:\Matlab_project\UCR_TS_Archive_2015\wafer\wafer_TEST' );

TRAIN_class_labels = TRAIN(:,1); % Pull out the class labels.
TRAIN(:,1) = [];                 % Remove class labels from training set.

x = TRAIN(1,:);
imf = eemd(x,0.1,50); % �ҳ��� ����instance�� ����IMF�Լ����Ĳв�

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��������Ҫ����д���ļ�
%%��ʽ�ֱ��� raw_data/n IMF1/n IMF2/n ,...,res/n

%%% ������һ�����⣬���� ��������֮��ÿ��instance��������֪���ǲ���һ���ġ� ��ô����ȡΪinstance���뵽 AE

x2 = TRAIN(2,:);
imf2 = eemd(x2,0.1,50);


