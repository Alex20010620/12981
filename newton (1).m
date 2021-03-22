function yy = newton(x, y, xx)
  yy = ones(1, length(xx)); % массив длинной xx
  yy = yy .* y(1);          % добавим f0 для всех ответов
  for xx_i = 1:length(xx)   % индекс для yy
    for i = 2:length(x)     % индекс для основного выражения sum(f_i * w_i);  
      w = 1;                % w = (x - x0)(x - x1)...(x - x_n-1)
      for j = 1:(i-1)
        w *= (xx(xx_i) - x(j)); 
      end
      yy(xx_i) += w * newton_difference(x(1:i), y(1:i));  % w*f(x0,...,x_n-1);
    end
  end  
end