function data = Rocket_1()

% Set up an array of reactants using the CEA.Reactant class.
reactants =   [                                         ...
       CEA.Reactant('C3H8',                             ...
                    'Type','Fuel',                      ...
                    'E',DimVar(-10000,'J/mol'),         ...
                    'T',DimVar(298,'K'),                ...         
                    'Q',DimVar(1,'kg'))                 ...
       CEA.Reactant('H2O2(L)',                          ...
                    'Type','ox',                        ...
                    'T',DimVar(298,'K'),                ...         
                    'Q',DimVar(0.9,'kg'))               ...
       CEA.Reactant('H2O(L)',                           ...
                    'Type','ox',                        ...
                    'T',DimVar(298,'K'),                ...         
                    'Q',DimVar(0.1,'kg'))               ...
            ];     
        

% Specify the problem options and run CEA with the CEA.Run function
data =  CEA.Run(reactants,                              ...
        'ProblemType','Rocket',                         ...
        'Flow','eq',                                    ...
        'Pc',DimVar([500 600 700],'psi'),               ...
        'O/F',1,                                        ...
        'Outputs',{'isp','t'});