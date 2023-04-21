% take inputs to check convergence
%alpha = input('enter alpha: ');
%index= input('enter index: ');
index = 1;
Arr = zeros(10, 3);
tic;
parfor i =1:100
    alpha = rand * 10;
    an = Divergence(index, alpha);
    Arr(i,:) = [alpha, an(1)  ,an(2)];
end
toc;