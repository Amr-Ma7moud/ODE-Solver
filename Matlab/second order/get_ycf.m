function [Ycf ,y1 ,y2] = get_ycf(a ,b ,c ,eqtype)

d = sqrt( b^2 - (4*a*c)); % to whick kind of roots 
if eqtype == 1
    if d > 0                                % diffrenet real roots
        root1 = (-b + d) / (2*a) ;
        root2 = (-b - d) / (2*a) ;
        Ycf = sprintf('Ycf = c1*exp(%s*x) + c2*exp(%s*x)' ,root1 ,root2);
        y1 = sprintf('exp(%d*x)' ,root1) ;
        y2 = sprintf('exp(%d*x)' ,root2) ; 
    
    elseif d == 0                           % equal real roots
        root1 = -b/(2*a);
        root2 = root1 ;
        Ycf = sprintf('Ycf = c1*exp(%s*x) + c2*x*exp(%s*x)' ,root1 ,root2);
        y1 = sprintf('exp(%d*x)' ,root1) ;
        y2 = sprintf('x*exp(%d*x)' ,root2) ; 
    
    else                                    % complex roots
        alpha = -b / (2*a) ;
        beta  = sqrt( b^2 - (4*a*c) ) / (2*a);
        Ycf = sprintf('Ycf = exp(%s)*(c1*cos(%s*x)+c2*sin(%s*x))' ,alpha ,beta);
        y1 = sprintf('exp(%d*x)*cos(%d *x)' ,alpha ,beta) ;
        y2 = sprintf('exp(%d*x)*sin(%d *x)' ,alpha ,beta) ; 
    
    end
else

    if d > 0                                % diffrenet real roots
        root1 = (-b + d) / (2*a) ;
        root2 = (-b - d) / (2*a) ;
        Ycf = sprintf('Ycf = c1*x^%d + c2*x^%d' ,root1 ,root2);
        y1 = sprintf('x^%d)' ,root1) ;
        y2 = sprintf('x^%d)' ,root2) ; 
    
    elseif d == 0                           % equal real roots
        root1 = -b/(2*a);
        root2 = root1 ;
        Ycf = sprintf('Ycf = c1*x^(%d) + c2*x^(%d)*ln(x)' ,root1 ,root2);
        y1 = sprintf('x^%d' ,root1) ;
        y2 = sprintf('x^%d *ln(x)' ,root2) ; 
    
    else                                    % complex roots
        alpha = -b / (2*a) ;
        beta  = sqrt( b^2 - (4*a*c) ) / (2*a);
        Ycf = sprintf('Ycf = x^(%d)*(c1*cos(%d *ln(x)+C2 *sin(%d *ln(x))' ,alpha ,beta);
        y1 = sprintf('x^(%d)*cos(%d*ln(x))' ,alpha ,beta) ;
        y2 = sprintf('x^(%d)*sin(%d*ln(x))' ,alpha ,beta) ; 
    
    end
end
% 
% y1 = str2sym(y1);
% y2 = str2sym(y2);