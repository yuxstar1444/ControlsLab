% Define the numerator and denominator of the transfer function
numerator = [1]; % Coefficients of the numerator
denominator = [1, 4.934, 16222.141, 0]; % Coefficients of the denominator

% Create the transfer function
sys = tf(numerator, denominator);

% Plot the root locus
figure;
rlocus(sys);

% Add labels and grid for better visualization
title('Root Locus with Desired Poles');
xlabel('Real Axis');
ylabel('Imaginary Axis');
grid on;

% Define desired poles
desired_poles = [-23.0014 + 24.1211i, -23.0014 - 24.1211i];

% Hold the plot to overlay desired poles
hold on;

% Plot desired poles as small red circles
plot(real(desired_poles), imag(desired_poles), 'ro', 'MarkerSize', 4, 'LineWidth', 1.5);

% Add legend for clarity
legend('Root Locus', 'Desired Poles');
hold off;
