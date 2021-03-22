clear;
clc;
interval = -4:0.001:4;

func = @(x) acos(x/4) .* sin(x*(pi/2)); 

h1 = -3:1:1;
f1 = func(h1);

points_D5 = -4:0.01:2;

L_5 = lagrange(h1, f1, points_D5);

N_5 = newton(h1, f1, points_D5);

w_5 = 1;

for i=1:5
  w_5 = w_5 *(3 - h1(i));  
end


theor_error =  w_5 * 40/factorial(6)
error_lagrange_5 = abs(func(0.75) - lagrange(h1, f1, 0.75))



fig1 = figure('Name', 'Poly_5', 'Color','w')
fig2 = figure('Name', 'Poly_12', 'Color','w')


figure(fig1);



x_plot = -4:0.01:4;
y_plot = func(x_plot);


plot(x_plot, y_plot, 'LineWidth', 1);
hold on


plot(points_D5, N_5, 'r', 'LineWidth', 2)
plot(points_D5, L_5, 'g', 'LineWidth', 1)

y_zero = zeros(1, length(x_plot));
plot(x_plot, y_zero, '--')


legend('arccos(x/4)*sin(x*pi/2)','{\itN_5}', '{\itL_5}','oX')


hold off


h2 = -4:8/11:4;
f2 = func(h2);

points_D12 = -4:0.01:4;

L_12 = lagrange(h2, f2, points_D12);

N_12 = newton(h2, f2, points_D12);

w_12 = 1;
% в точке x=3 наибольшее значение исходной функции => максимум от wn
for i=1:12
w_12 = w_12 * (3 - h2(i));
end

theor_error =  w_12 * 0/factorial(12)
error_lagrange_12 = abs(func(0.75) - lagrange(h2, f2, 0.75))



figure(fig2);


x_plot = -4:0.01:4;
y_plot = func(x_plot);

plot(x_plot, y_plot, 'LineWidth', 1);

hold on


plot(points_D12, N_12, 'r', 'LineWidth', 2)
plot(points_D12, L_12, 'g', 'LineWidth', 1) 



y_zero = zeros(1, length(x_plot));
plot(x_plot, y_zero, '--')


hold off


legend('arccos(x/4)*sin(x*pi/2)','{\itN_(12)}', '{\itL_(12)}','oX')






