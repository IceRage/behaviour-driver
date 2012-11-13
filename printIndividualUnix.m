function printIndividualUnix(individual, outputFile)

% Print the data of the individual
fprintf(outputFile, '%d %d %d %d %d %d\n', individual(Constants.IndexEGF), individual(Constants.IndexERK), individual(Constants.IndexMEK), individual(Constants.IndexRAF), individual(Constants.NumberOfSpecies + 1), individual(Constants.NumberOfSpecies + 2));

end