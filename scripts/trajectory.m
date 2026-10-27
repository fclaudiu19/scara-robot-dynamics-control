function coeffs = trajectory(qf, T)

    syms a0 a1 a2 a3 a4 a5 t

    q = a0 + a1*t + a2*t^2 + a3*t^3 + a4*t^4 + a5*t^5;
    dq = diff(q, t);
    ddq = diff(dq, t);

    % Condiții la t=0
    eq1 = subs(q, t, 0) == 0;
    eq2 = subs(dq, t, 0) == 0;
    eq3 = subs(ddq, t, 0) == 0;

    % Condiții la t=T
    eq4 = subs(q, t, T) == qf;
    eq5 = subs(dq, t, T) == 0
    eq6 = subs(ddq, t, T) == 0

    % Rezolvă sistemul
    sol = solve([eq1, eq2, eq3, eq4, eq5, eq6], [a0, a1, a2, a3, a4, a5]);

    % Extrage coeficienții
    coeffs = double([sol.a5, sol.a4, sol.a3, sol.a2, sol.a1, sol.a0]);
end

