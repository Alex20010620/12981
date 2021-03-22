function yy=lagrange(x, y, xx)
  yy = zeros(1, length(xx));
  
  for l = 1:length(xx)
    
    for i = 1:length(x)
      g = 1;
      for j = 1:length(x)
        if (j == i) continue end
        g *= (xx(l) - x(j)) / (x(i) - x(j));  
      end
      yy(l) += g*y(i);
    end
  end
  
  
end