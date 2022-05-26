function [B,elapse] = IsoH_compress(A, model)
%   This is a wrapper function of Isotropic Hashing testing.
%
%	Usage:
%	[B,elapse] = IsoH_compress(A, model)
%
%	      A: Rows of vectors of data points. Each row is sample point
%     model: The model generated by IsoH_learn.
%
%	      B: The binary code of the input data A. Each row is sample point
%    elapse: The coding time (testing time).
%
%
%
%   version 2.0 --Nov/2016 
%   version 1.0 --Jan/2013 
%
%   Written by  Bin Xu (binxu986 AT gmail.com)
%               Deng Cai (dengcai AT gmail DOT com) 
%                                             

tmp_T = tic;

B = A * model.pc *model.R;
B = (B > 0);


elapse = toc(tmp_T);
end
