% Define the given variables
zeta = 0.69011; % Damping ratio
omega_n = 33.33; % Natural frequency in rad/s

% Calculate the real and imaginary parts of the poles
sigma = zeta * omega_n; % Real part
omega_d = omega_n * sqrt(1 - zeta^2); % Imaginary part

% Calculate the poles
s_d1 = -sigma + 1j * omega_d; % First pole
s_d2 = -sigma - 1j * omega_d; % Second pole

% Display the results
disp(['First pole: ', num2str(s_d1)]);
disp(['Second pole: ', num2str(s_d2)]);
