############################################################
## joAbstractFosterLinearOperator - extra functions

# elements(jo)

# hasinverse(jo)
hasinverse{DDT,RDT}(A::joAbstractFosterLinearOperator{DDT,RDT}) = !isnull(A.iop)

# issquare(jo)
issquare{DDT,RDT}(A::joAbstractFosterLinearOperator{DDT,RDT}) = (A.m == A.n)

# istall(jo)
istall{DDT,RDT}(A::joAbstractFosterLinearOperator{DDT,RDT}) = (A.m > A.n)

# iswide(jo)
iswide{DDT,RDT}(A::joAbstractFosterLinearOperator{DDT,RDT}) = (A.m < A.n)

# iscomplex(jo)
iscomplex{DDT,RDT}(A::joAbstractFosterLinearOperator{DDT,RDT}) = !(DDT<:Real && RDT<:Real)

# islinear(jo)

# isadjoint(jo)

