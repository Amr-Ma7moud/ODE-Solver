
clc; clearvars;
syms x;
% Hello World
% Type 1 ('ay'''' + by'' + cy = f(x)')              non homo or homo second order
% Type 2 ('a*x^2*y'''' + b*x*y'' + c*y = f(x)\n')   Cushey Euler

f_str = strrep(f_str, 'ln', 'log'); % Replace ln with log for MATLAB compatibility
f = str2sym(f_str);

if eqType == 2
    f = f / x^2;
end

[Ycf, y1, y2] = get_ycf(a, b, c, eqType);
Ypi = get_ypi(y1, y2, f)
final_solution = simplify(Ycf + Ypi);