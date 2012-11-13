% This function creates the system of ODEs corresponding to the Hornberg
% 2005 signaling pathway model having as input:
%
%   t - The time points for the continuous simulation
%   y - The concentrations of the species
%   flag - Flag which specifies which method to use

function [dydt] = systemOfODEsO2(t, y, flag)

switch flag
    case ''
        dydt = systemOfODEsO1(t, y);
    case 'jacobian'
        dydt = jacobianMatrix(t, y);
    case 'jpattern'
        dydt = jacobianSparseMatrix;
    otherwise
        error(['Unknown flag ''' flag '''.']);
end
   
end
   
