% THIS CODE RUNS PERFECTLY WITH NO ERRORS AND WARNINGS IN MATLAB R2016B
index = 1;
Arr = zeros(10, 3);
tic;
SeqArr = zeros(50000,1);
parfor i = 1:50000
    SeqArr(i) = Sequence(i);
end
parfor i =1:5000
    alpha = rand * 10;
    an = Divergence(index, alpha, SeqArr);
    Arr(i,:) = [alpha, an(1)  ,an(2)];
end
toc;