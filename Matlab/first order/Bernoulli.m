function y = Bernoulli(px, qx, n)
    syms z y;
    px = px*(1-n);
    qx = qx*(1-n);
    b = Linear(px, qx)== z;
    y_eq = subs(b, z, y^(1-n));
    simplify(y_eq) ;
    y = solve (y_eq ,y);
    
end