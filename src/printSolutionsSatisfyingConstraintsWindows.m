function printSolutionsSatisfyingConstraintsWindows(population)

% Open the output file
outputFile = fopen('output.txt', 'a');

% Select the colorRange that should be used
colorRange = hsv(Constants.NumberOfIndividuals);

for i = 1 : Constants.NumberOfIndividuals
    % If the peak is high enough
    if population(i, Constants.NumberOfSpecies + 1) > Constants.ThresholdPeakHeight
        % AND if the peak is late enough
        if population(i, Constants.NumberOfSpecies + 2) > Constants.ThresholdPeakTime
            printIndividualWindows(population(i, :), i, outputFile, colorRange(i,:));
        end
    end
end

% Close the output file
fclose(outputFile);

end