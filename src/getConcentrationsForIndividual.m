function [result] = getConcentrationsForIndividual(individual)

% Initial concentration of species which have concentration != 0
concentrations = [5e4, 8.1e4, 1.2e4, 7.2e4, 1.01e5, 4e4, 4e4, 2.1e7, 4e4, 2.21e7, 1e7, 1.1e4, 2.63e4, 4e4];

% Array contains initial concentrations of all species
result = zeros(1,103);

result(:,1)  = individual(Constants.IndexEGF);  % EGF
result(:,2)  = concentrations(:,1);             % EGFR
result(:,12) = concentrations(:,2);             % Prot (CPP)
result(:,14) = concentrations(:,3);             % GAP
result(:,26) = concentrations(:,4);             % RasGDP
result(:,31) = concentrations(:,5);             % Shc
result(:,41) = individual(Constants.IndexRAF);  % Raf
result(:,44) = concentrations(:,7);             % Raf-Phosphatase
result(:,47) = individual(Constants.IndexMEK);  % MEK
result(:,53) = concentrations(:,9);             % MEK-Phosphatase
result(:,55) = individual(Constants.IndexERK);  % ERK
result(:,60) = concentrations(:,11);            % ERK-Phosphatase
result(:,22) = concentrations(:,12);            % Grb2
result(:,24) = concentrations(:,13);            % SOS
result(:,30) = concentrations(:,14);            % Grb2-SOS (naviely knockdown with SOS or Grb2)

end