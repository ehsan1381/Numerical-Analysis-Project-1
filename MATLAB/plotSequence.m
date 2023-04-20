function [Arr] = plotSequence(X_End)
    Arr = zeros(X_End + 1, 3);
    for i = 1:X_End
        Arr(i, 1) = i;
        Arr(i, 2) = Sequence(i);
        if i > 2
            Arr(i , 3) = Arr(i-1, 2) - Arr(i-2, 2);
        end
    end
    plot(Arr(:,1), Arr(:,2));