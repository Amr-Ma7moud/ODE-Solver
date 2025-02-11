function y = Linear(px, qx)
    syms x c ;
    m(x) = exp(int(px, 'x'));
    y = (1/m(x)) * (int(m(x) * qx, 'x') + c);
    simplify(y);
end