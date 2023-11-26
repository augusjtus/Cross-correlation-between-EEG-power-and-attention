function [P_target] = get_power(eeg_target,Fs,L,f_low,f_high)
% 计算各个频段的功率
%   此处显示详细说明
f = Fs*(0:(L/2))/L;
index = find(f>=f_low & f<=f_high);

F = fft(eeg_target(1,:));
P2 = abs(F/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
P_target = P1(index);

end

