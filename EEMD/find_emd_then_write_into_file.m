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
imf = imf'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��������Ҫ����д���ļ�
%%��ʽ�ֱ��� raw_data/n IMF1/n IMF2/n ,...,res/n

%%% ������һ�����⣬���� ��������֮��ÿ��instance��������֪���ǲ���һ���ġ����ῴ����֪����
%%% �����ҵ�ѧϰ��⣬����� m = fix(log2 N)-1,�����ǹ̶����ˡ� fix() ȡ������
%%% fix(log2(152))-1   ans = 6  ��ʾ 6��IMF������ ���� 1 res�� 1 raw data ��8���� ûë����

% ��������д�ļ�

csvwrite('output',imf);





