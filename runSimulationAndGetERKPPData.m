function [time, erkPPConcentrations] = runSimulationAndGetERKPPData(individual)

% Get the initial concentrations and the time points
initialConcentrations = getConcentrationsForIndividual(individual);
timeInterval = [Constants.SimulationTimeStart Constants.SimulationTimeEnd];

% Set the options for solving the system of ODEs
options = odeset('jacobian', 'on'); 

% Solve the system of ODEs using the given initial concentrations
[time, yOut] = ode15s('systemOfODEsO2', timeInterval, initialConcentrations, options);

% Get the concentrations for ERKPP
erkPPConcentrations = transpose(yOut(:, 59) + yOut(:, 83));

end