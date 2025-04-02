% Define symbolic variables
syms Ki s


% Define the equation
eq = 1 + ((s + Ki)/s) * (24.99 / (s^2 + 4.934*s - 68.84)) * 651.9 == 0;

% Expand the equation
expanded_eq = expand(eq);

% Display the expanded equation
disp('Expanded Equation:');
disp(expanded_eq);
