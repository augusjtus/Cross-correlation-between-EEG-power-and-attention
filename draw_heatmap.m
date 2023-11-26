function [h] = draw_heatmap(sperm_all_mean,T,f_low,f_high,title_name,caxis_low,caxis_high)
%UNTITLED �˴���ʾ�йش˺�����ժҪ

% �����к��б�ǩ
Xl = zeros([2*T+1,1]);
for l=1:2*T+1
    Xl(l)=(-T-1+l);
end
Xlabel = num2cell(Xl');
Yl = zeros([f_high-f_low+1,1]);
for l=1:f_high-f_low+1
    Yl(l)=(l+1);
end
Ylabel = num2cell(Yl');

% ʹ��heatmap���������ȶ�ͼ
h = heatmap(Xlabel,Ylabel,sperm_all_mean);

% ����ͼ�ı���ͱ�ǩ
title(title_name);
xlabel('TimeLag');
ylabel('Freq');

% ��ʾ��ɫͼ��
% colorbar;
% caxis([caxis_low caxis_high]);

% �Զ�����ɫӳ�䣨��ѡ��
colormap('jet'); % ����ʹ����'jet'��ɫӳ�䣬�����Ը�����Ҫѡ��ͬ����ɫӳ�䡣
end

