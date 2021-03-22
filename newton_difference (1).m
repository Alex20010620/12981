function f = newton_difference(x, y)
  % получим разделённую разность степени length(x)
  
  % f(x0,x1) = (f1-f0) / (x1 - x0); 
  % Выходим из рекурсивной функции
  if length(x) == 2
    f = (y(2) - y(1)) / (x(2) - x(1));
    return;
  end
  
  % синтаксис x(n:len) обрезает массив x от n до конца
  high_part = (newton_difference(x(2:length(x)), y(2:length(y))) - newton_difference(x(1:length(x)-1), y(1:length(y)-1)));
  f =  high_part / (x(length(x)) - x(1));
  
end