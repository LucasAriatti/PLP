        
    data Cliente = OrgGov String 
                  | Empresa String Integer String String
                  | Individuo Pessoa Bool
                  deriving Show

    data Pessoa = Pessoa String String Genero 
                deriving Show

    data Genero = Masculino | Feminino | Otro 
                deriving Show

    --Funcao para obter o nome do cliente 
    nomeCliente ::Cliente -> String
    nomeCliente  c = case c of 
                    OrgGov nome                         -> nome 
                    Empresa nome id resp cargo          -> nome 
                    Individuo (Pessoa pn sn g) ads      -> pn ++ " " ++ sn

    nomeEmpresa :: Cliente -> Maybe String 
    nomeEmpresa c = case c of 
        Empresa nome _ _ _                          -> Just nome  
        _                                               -> Nothing

    nomeCliente' ::Cliente -> String
    nomeCliente'  c = case c of 
                    OrgGov nome                         -> nome 
                    Empresa nome id resp cargo          -> nome 
                    Individuo p ads ->
                        case p of
                          Pessoa pn sn g                   -> pn ++ " " ++ sn