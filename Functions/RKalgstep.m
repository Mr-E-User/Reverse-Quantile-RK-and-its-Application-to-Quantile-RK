function [xk] = RKalgstep(A,xk,b)

    % Gather matrix data
    [m,n] = size(A);

    % Select random index
    i = randi(m);

    % x_k+1 = x_k + ((b_i - <a_i,x_k>)/||a_i||^2) a_i
    a_i = A(i,1:n)';
    xk  = xk + a_i.*((b(i)-dot(a_i,xk))/norm(a_i)^2);
end