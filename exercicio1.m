function t = exercicio1(func,func_d,x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

    x_max = zeros(imax,1);
    x_max(1) = x0;

% calculo do método de Newton:
    for ii = 1:imax-1
        x_max(ii+1) = x_max(ii) - func(x_max(ii)) / func_d(x_max(ii));

% calculo do erro relativo
        e = abs((x_max(ii+1) - x_max(ii)) / x_max(ii+1));

        if e < Es
            t = x_max(ii+1);
            return
        end
    end

    t = x_max(end);
end



%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
