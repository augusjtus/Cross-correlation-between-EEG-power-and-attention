function [h] = draw_heatmap(sperm_all_mean,T,f_low,f_high,title_name,caxis_low,caxis_high)
%UNTITLED 此处显示有关此函数的摘要

% 创建行和列标签
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

% 使用heatmap函数创建热度图
h = heatmap(Xlabel,Ylabel,sperm_all_mean);

% 设置图的标题和标签
title(title_name);
xlabel('TimeLag');
ylabel('Freq');

% 显示颜色图例
% colorbar;
% caxis([caxis_low caxis_high]);

% 自定义颜色映射（可选）
colormap('jet'); % 这里使用了'jet'颜色映射，您可以根据需要选择不同的颜色映射。
end

