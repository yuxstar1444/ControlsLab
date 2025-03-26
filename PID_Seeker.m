function poles = calculateClosedLoopPoles(zeta, wn)
    % Function to calculate desired closed-loop poles based on damping ratio (zeta) and natural frequency (wn)
    % Inputs:
    %   zeta - Damping ratio
    %   wn - Natural frequency
    % Output:
    %   poles - Array of closed-loop poles
    
    if zeta >= 0 && zeta < 1
        % Underdamped system
        sigma = zeta * wn; % Real part of poles
        wd = wn * sqrt(1 - zeta^2); % Imaginary part of poles
        poles = [-sigma + 1j*wd, -sigma - 1j*wd];
        fprintf('Underdamped system poles: %.2f + %.2fj, %.2f - %.2fj\n', real(poles(1)), imag(poles(1)), real(poles(2)), imag(poles(2)));
    elseif zeta == 1
        % Critically damped system
        poles = [-wn, -wn];
        fprintf('Critically damped system poles: %.2f, %.2f\n', poles(1), poles(2));
    elseif zeta > 1
        % Overdamped system
        sigma = zeta * wn; % Real part of first pole
        omega_d = wn * sqrt(zeta^2 - 1); % Real part of second pole
        poles = [-sigma + omega_d, -sigma - omega_d];
        fprintf('Overdamped system poles: %.2f, %.2f\n', poles(1), poles(2));
    else
        error('Invalid damping ratio. Please enter a value >= 0.');
    end
end

