res = zeros(121, 2);

n = 1;
global cAsp;
global rAsp;
global e;
for rAsp = 0:40:400
    for cAsp = 0:40:400
        e = 0.1;
        y = fminimax(@f, x, A, b, Aeq, beq);
        rAsp = 0;
        cAsp = 0;
        e = 0;
        res(n, :) = f(y);
        n = n + 1;
    end
end

hold on
plot(res(:, 1), res(:, 2))
[~, cInd] = min(res(:, 1));
[~, rInd] = min(res(:, 2));
plot(res(cInd, 1), res(cInd, 2), 'ro');
plot(res(rInd, 1), res(rInd, 2), 'go');

xlabel('Koszt');
ylabel('Ryzyko');
title('Obraz zbioru rozwi¹zañ efektywnych w przestrzeni ryzyko-koszt');
legend('Rozwi¹zania efektywne', 'Minimalny koszt', 'Minimalne ryzyko');
hold off