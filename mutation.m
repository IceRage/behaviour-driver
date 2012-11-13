function [result] = mutation(population)

result = population;

% Check which individuals should be mutated
for j = 1 : Constants.NumberOfIndividuals
    
    if (rand(1) < Constants.ProbabilityMutation)
        % Get the index of the gene which will be mutated
        geneIndex = randi(Constants.NumberOfSpecies, 1, 1);

        % Compute how much the gene will be mutated
        amount = (0.01 + (rand(1) * 0.04)) * Constants.SpeciesThresholds(geneIndex);

        if rand(1) < 0.5

            % Add the amount to the gene without exceeding the threshold
            if (result(j, geneIndex) + amount) > Constants.SpeciesThresholds(geneIndex)
                result(j, geneIndex) = Constants.SpeciesThresholds(geneIndex);
            else
                result(j, geneIndex) = result(j, geneIndex) + amount;
            end

        else

            % Subtract the amount from the gene without going below 0
            if (result(j, geneIndex) - amount) < 0
                result(j, geneIndex) = 0;
            else
                result(j, geneIndex) = result(j, geneIndex) - amount;
            end

        end
        
    end
    
end

end