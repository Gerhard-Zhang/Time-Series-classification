% �ҳ� imf Ȼ�� ���뵽��Ӧ���ļ��С�
clc
clear all
close all

TRAIN = load('E:\MATLAB-project\TimeSeries\data\UCR_TS_Archive_2015\wafer\wafer_TRAIN');
TEST  = load('E:\MATLAB-project\TimeSeries\data\UCR_TS_Archive_2015\wafer\wafer_TEST' );

TRAIN_class_labels = TRAIN(:,1); % Pull out the class labels.
TRAIN(:,1) = [];                 % Remove class labels from training set.

x = TRAIN(1,:);
imf = emd(x); % �ҳ��� ����instance�� ����IMF�Լ����Ĳв�

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��������Ҫ����д���ļ�
%%��ʽ�ֱ��� raw_data/n IMF1/n IMF/2/n ,...,res

%%% ������һ�����⣬���� ��������֮��ÿ��instance��������һ���� ��ô����ȡΪinstance���뵽 AE



