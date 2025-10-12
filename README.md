# Reverse-Quantile-RK-and-its-Application-to-Quantile-RK

Code requires installation of [Matlab2Tikz](https://www.mathworks.com/matlabcentral/fileexchange/22022-matlab2tikz-matlab2tikz) to generate Tikz code for figures produced[^1].

**`ash958.mat`** in the Matrix folder was supplied by the SparseSuite collection[^2].

**Associated paper:** [Numerical Linear Algebra with Applications](https://onlinelibrary.wiley.com/doi/full/10.1002/nla.70024)

**Abstract:** When solving linear systems $Ax=b$, $A$ and $b$ are given, but the measurements $b$ often contain corruptions. Inspired by recent work on the quantile-randomized Kaczmarz method, we propose an acceleration of the randomized Kaczmarz method in the uncorrupted setting using quantile information. We show that the proposed acceleration converges faster than the randomized Kaczmarz algorithm. In addition, we show that our proposed approach can be used in conjunction with the quantile-randomized Kaczamrz algorithm, without adding additional computational complexity, to produce both a fast and robust iterative method for solving large, sparsely corrupted linear systems that are sufficiently well-conditioned. Our extensive experimental results support the use of the revised algorithm.

**Figures Generated from Code (converted to png):**
[rqRK_varying_quantiles](/Images/rqRK_varying_quantiles.png)

[^1]:Nico Schlömer (2024). matlab2tikz/matlab2tikz (https://github.com/matlab2tikz/matlab2tikz), GitHub. Retrieved September 21, 2024. 

[^2]:Timothy A. Davis and Yifan Hu. 2011. The University of Florida Sparse Matrix Collection. ACM Transactions on Mathematical Software 38, 1, Article 1 (December 2011), 25 pages. DOI: https://doi.org/10.1145/2049662.2049663
