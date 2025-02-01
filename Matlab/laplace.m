% Test
a;
b;
c;
y0; 
yp0;
f(t);

% Compute Laplace transform of f(t)
F_s = laplace(f(t),t,s);

% Apply Laplace transform to the differential equation 
L_Eq = a*(((s^2)*Y(s)) - (s*y0) - yp0) + b*((s*Y(s)) - y0) + c*Y(s) - F_s;

% Simplify the equation 
L = collect(L_Eq, Y(s));

% coefficient of Y(s)
coeff_Y = coeffs(L, Y(s));

% Solve for Y(s)
Y_s = (-coeff_Y(1,1)/coeff_Y(1,2));

% Compute inverse Laplace transform 
y_t = ilaplace(Y_s, s, t);

% Simplify inverse Laplace equation 
y_t = simplify(y_t);

disp('Solution y(t):');
disp(y_t);




