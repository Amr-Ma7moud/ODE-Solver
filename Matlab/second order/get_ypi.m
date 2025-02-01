function ypi = get_ypi(y1, y2, f)

    if ~isa(y1, 'sym')
        y1 = sym(y1);
    end
    if ~isa(y2, 'sym')
        y2 = sym(y2);   
    end
    if ~isa(f, 'sym')
        f = sym(f);
    end


    syms x; 

    W = simplify(y1 * diff(y2, x) - y2 * diff(y1, x));

    v1 = simplify(int(-y2 * f / W, x));
    v2 = simplify(int(y1 * f / W, x));

    ypi = simplify( v1*y1 + v2*y2 );
end
