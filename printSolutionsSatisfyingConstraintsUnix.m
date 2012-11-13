function printSolutionsSatisfyingConstraintsUnix(population)

% Open the output file
outputFile = fopen('output.txt', 'a');

% Print a line separator between different runs
fprintf(outputFile, '=====================================\n');

for i = 1 : Constants.NumberOfIndividuals
    % If the peak is high enough
    if population(i, Constants.NumberOfSpecies + 1) > Constants.ThresholdPeakHeight
        % AND if the peak is late enough
        if population(i, Constants.NumberOfSpecies + 2) > Constants.ThresholdPeakTime
            printIndividualUnix(population(i, :), outputFile);
        end
    end
end

% Close the output file
fclose(outputFile);

end