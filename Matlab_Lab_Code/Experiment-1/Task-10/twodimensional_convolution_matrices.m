% 10. Computes the two-dimensional convolution of matrices
%    | 1 -2  0  |
% A =| 3  4 -11 |
%    | 6 -5  2  |

%    |-3  2  -8 |
% B =| 2 -7   0 |
%    |-1  4  -1 |

A = [ 1 -2 0; 3 4 -11; 6 -5 2]

B = [-3 2 -8; 2 -7 0; -1 4 -1]

Y = conv2(A,B) % for two dimentional we used conv2 , for 1 dimention used conv

mesh(Y)


% It is used to generate 3D surface plot of which x, y co-ordinates 
% are decided by column and row indices of the input matrix ‘Z’.