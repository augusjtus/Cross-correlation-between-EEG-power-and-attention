function [P_tar_lag] = expand_lag(p_corr,T,num_trail)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
P_tar_lag=zeros([num_trail,2*T+1]);
for t_lag=1:T
    zero_pad = zeros([1,T-t_lag+1]);
    P_tar_lag(:,t_lag) = cat(2,p_corr(T-t_lag+2:num_trail),zero_pad)';
end
for t_lag=1:T
    zero_pad = zeros([1,t_lag]);
    P_tar_lag(:,T+t_lag+1) = cat(2,zero_pad,p_corr(1:num_trail-t_lag))';
end
P_tar_lag(:,T+1)=p_corr;
end

