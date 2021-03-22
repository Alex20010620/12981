function yy = newton(x, y, xx)
  yy = ones(1, length(xx)); 
  yy = yy .* y(1);          
  for xx_i = 1:length(xx)   
    for i = 2:length(x)       
      w = 1;                
      for j = 1:(i-1)
        w = w*(xx(xx_i) - x(j)); 
      end
      yy(xx_i) = yy(xx_i)+ w * newton_difference(x(1:i), y(1:i));  % w*f(x0,...,x_n-1);
    end
  end  
end