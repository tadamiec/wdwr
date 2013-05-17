A1 =    [1, 0, 1, 0;
            0, 1, 0, 1;
            0, 0, 0, 0;
            0, 0, 1, 1
            0, 0, 0, 0
            0, 0, 0, 0];

Aeq1 = [1, 1, 1, 1];
beq1 = [70];


A2 = [1, 1, 0, 1, 0;
        0, 0, 1, 0, 1;
        1, 0, 0, 0, 0;
        0, 1, 1, 0, 0;
        0, 0, 0, 1, 1;
        0, 0, 0, 0, 0];

Aeq2 = [1, 1, 1, 1, 1];
beq2 = [50];


A3 =  [1, 1, 1, 0, 1, 0, 1, 0;
        0, 0, 0, 1, 0, 1, 0, 1;
        0, 1, 0, 0, 0, 0, 0, 0;
        0, 0, 1, 1, 0, 0, 0, 0;
        0, 0, 0, 0, 1, 1, 0, 0;
        0, 0, 0, 0, 0, 0, 1, 1;];

Aeq3 = ones(1, 8);
beq3 = 60;
        
  
A4 =  [1, 1, 1, 0, 1, 0;
        0, 0, 0, 1, 0, 1;
        0, 1, 0, 0, 0, 0;
        0, 0, 1, 1, 0, 0;
        0, 0, 0, 0, 0, 0;
        0, 0, 0, 0, 1, 1;];

Aeq4 = ones(1, 6);
beq4 = 35;
        
A = [-eye(size(A1, 2) + size(A2, 2) + size(A3, 2) + size(A4, 2)); 
        A1, A2, A3, A4];
b = [zeros(size(A1, 2) + size(A2, 2) + size(A3, 2) + size(A4, 2), 1); 150; 200; 70; 50; 100; 40];
Aeq = [Aeq1, zeros(size(Aeq1, 1), size(Aeq2, 2) + size(Aeq3, 2) + size(Aeq4, 2));
       zeros(size(Aeq2, 1), size(Aeq1, 2)), Aeq2, zeros(size(Aeq2, 1), size(Aeq3, 2) + size(Aeq4, 2));
       zeros(size(Aeq3, 1), size(Aeq1, 2) + size(Aeq2, 2)), Aeq3, zeros(size(Aeq3, 1), size(Aeq4, 2))
       zeros(size(Aeq4, 1), size(Aeq1, 2) + size(Aeq2, 2) + size(Aeq3, 2)), Aeq4];
beq = [beq1; beq2; beq3; beq4];