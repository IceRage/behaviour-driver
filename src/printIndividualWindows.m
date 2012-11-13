function printIndividualWindows(individual, index, outputFile, color)

% Print the data of the individual
fprintf(outputFile, '\nNew individual matching constraints (%i)\n\n', index);
fprintf(outputFile, '--- Concentrations ---\n');
fprintf(outputFile, 'EGF: %d\n', individual(Constants.IndexEGF));
fprintf(outputFile, 'ERK: %d\n', individual(Constants.IndexERK));
fprintf(outputFile, 'MEK: %d\n', individual(Constants.IndexMEK));
fprintf(outputFile, 'RAF: %d\n', individual(Constants.IndexRAF));
fprintf(outputFile, '--- Peak data ---\n');
fprintf(outputFile, 'Height: %d\n', individual(Constants.NumberOfSpecies + 1));
fprintf(outputFile, 'Time: %d\n', individual(Constants.NumberOfSpecies + 2));

% Get the data of the individuals
[time, erkPPConcentrations] = runSimulationAndGetERKPPData(individual);

% Plot the data of the individual
hold on;
plot(time, erkPPConcentrations, 'color', color);
text(individual(Constants.NumberOfSpecies + 2), individual(Constants.NumberOfSpecies + 1), sprintf('Individual %i', index));

end