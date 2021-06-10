for i=1:10
    n = 2000;%input('Enter the number of points'); %%% Asking user for number of points to be generated
    xmax = 5; % Maximum value of x_{1}
    xmin = -5; % Minimum value of x_{1}
    ymax = 4; % Maximum value of x_{2}
    ymin = -4; % Minimum value of x_{2}
    s(:,1) = xmin+(xmax-xmin)*rand(n,1); % Generating the set s containing points that are distributed according to
    s(:,2) = ymin+(ymax-ymin)*rand(n,1); % uniform probability distribution
    [s_i_c_sorted,n,row_uni_c,s_added] = fun_s_i_c_s(s,n); % This function takes the input as the given set of points
    % and outputs the sets S^{c,sorted}_{i}
    [s_d2_time,N] = fun_s_i_s(s_i_c_sorted,n,row_uni_c,s_added); % This function takes the input as the 
    % sets S^{c,sorted}_{i} and output sets s_{i}
    s_final = func_s_fin(s_d2_time,N); % This function takes the input as the sets s_{i} and output a tour 
    % sequence that connects all the given set of points
    final_o_p(i) = func_total_time(s_final); % This function takes the input as a tour 
    % sequence that connects all the given set of points and output the time
    % taken for visting the given set of points
end