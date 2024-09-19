function [m,n,A,x,b] = SystemSetup(m,n,mat_type,beta,filepath,addgaussianfactor,corruption_scale,x_scale,normalization)
    arguments
        m                   (1,1) int32
        n                   (1,1) int32
        mat_type            (1,1) string
        beta                (1,1) double
        filepath            (1,1) string    = ""
        addgaussianfactor   (1,1) double    = 0
        corruption_scale    (1,1) double    = 1
        x_scale             (1,1) double    = 1
        normalization       (1,1) logical   = true
    end

    % % Check if filepath was inputted. If not, assign temporary value
    % if ~exist('filepath', 'var')
    %     filepath = '';
    % end 
    % 
    % % Check if addition of gaussian was requested
    % if ~exist('addgaussianfactor', 'var')
    %     addgaussianfactor = 0;
    % end
    
    

    % Create A in accordance to matrix type inputted
    if mat_type == "unifrand"
        A = rand(m,n);
    elseif mat_type == "gaussian"
        A = randn(m,n);
    elseif mat_type == "custom"
        matFileName = filepath; 
        if ~exist(matFileName, 'file')
          sprintf('%s does not exist', matFileName);
        else
          s = load(matFileName);
        end
        A = s.Problem.A ;
        A = full(A);
        [m,n] = size(A);
    end

    % Add gaussian if addgaussianfactor is nonzero
    A = A + randn(m,n).*addgaussianfactor;

    % Row normalize A if requested
    if normalization
        A = normr(A);
    end

    % Set x
    x = rand(n, 1) * x_scale;

    % Set b with appropriate corruption
    b = A * x;
    if beta > 0
        b_t                         = zeros(m,1);
        num_cor                     = floor(beta*m);
        b_t(randsample(m, num_cor)) = rand(num_cor, 1) * corruption_scale;
        b                           = b + b_t;
    end
end
