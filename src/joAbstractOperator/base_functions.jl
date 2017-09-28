############################################################
## joAbstractOperator - overloaded Base functions

# eltype(jo)
eltype(A::joAbstractOperator) = throw(joAbstractOperatorException("eltype(jo) not implemented"))

# deltype(jo)
deltype(A::joAbstractOperator) = throw(joAbstractOperatorException("deltype(jo) not implemented"))

# reltype(jo)
reltype(A::joAbstractOperator) = throw(joAbstractOperatorException("reltype(jo) not implemented"))

# show(jo)
show(A::joAbstractOperator) = throw(joAbstractOperatorException("show(jo) not implemented"))

# showall(jo)
showall(A::joAbstractOperator) = throw(joAbstractOperatorException("showall(jo) not implemented"))

# display(jo)
display(A::joAbstractOperator) = throw(joAbstractOperatorException("display(jo) not implemented"))

# size(jo)
size(A::joAbstractOperator) = throw(joAbstractOperatorException("size(jo) not implemented"))

# size(jo,1/2)
size(A::joAbstractOperator,ind) = throw(joAbstractOperatorException("size(jo,1/2) not implemented"))

# length(jo)
length(A::joAbstractOperator) = throw(joAbstractOperatorException("length(jo) not implemented"))

# full(jo)
full(A::joAbstractOperator) = throw(joAbstractOperatorException("full(jo) not implemented"))

# norm(jo)
norm(A::joAbstractOperator,p) = throw(joAbstractOperatorException("norm(jo) not implemented"))

# vecnorm(jo)
vecnorm(A::joAbstractOperator,p) = throw(joAbstractOperatorException("vecnorm(jo) not implemented"))

# real(jo)
real(A::joAbstractOperator) = throw(joAbstractOperatorException("real(jo) not implemented"))

# imag(jo)
imag(A::joAbstractOperator) = throw(joAbstractOperatorException("imag(jo) not implemented"))

# conj(jo)
conj(A::joAbstractOperator) = throw(joAbstractOperatorException("conj(jo) not implemented"))

# transpose(jo)
transpose(A::joAbstractOperator) = throw(joAbstractOperatorException("jo.' not implemented"))

# ctranspose(jo)
ctranspose(A::joAbstractOperator) = throw(joAbstractOperatorException("jo' not implemented"))

# isreal(jo)
isreal(A :: joAbstractOperator) = throw(joAbstractOperatorException("isreal(jo) not implemented"))

# issymmetric(jo)
issymmetric(A :: joAbstractOperator) = throw(joAbstractOperatorException("issymmetric(jo) not implemented"))

# ishermitian(jo)
ishermitian(A :: joAbstractOperator) = throw(joAbstractOperatorException("ishermitian(jo) not implemented"))

############################################################
## overloaded Base *(...jo...)

# *(jo,jo)
*(A::joAbstractOperator,B::joAbstractOperator) = throw(joAbstractOperatorException("*(jo,jo) not implemented or type mismatch"))

# *(jo,mvec)
*(A::joAbstractOperator,mv::AbstractMatrix) = throw(joAbstractOperatorException("*(jo,mvec) not implemented or type mismatch"))

# *(mvec,jo)
*(mv::AbstractMatrix,A::joAbstractOperator) = throw(joAbstractOperatorException("*(mvec,jo) not implemented or type mismatch"))

# *(jo,vec)
*(A::joAbstractOperator,v::AbstractVector) = throw(joAbstractOperatorException("*(jo,vec) not implemented or type mismatch"))

# *(vec,jo)
*(v::AbstractVector,A::joAbstractOperator) = throw(joAbstractOperatorException("*(vec,jo) not implemented or type mismatch"))

# *(num,jo)
*(a,A::joAbstractOperator) = throw(joAbstractOperatorException("*(any,jo) not implemented or type mismatch"))

# *(jo,num)
*(A::joAbstractOperator,a) = throw(joAbstractOperatorException("*(jo,any) not implemented or type mismatch"))

############################################################
## overloaded Base \(...jo...)

# \(jo,jo)
\(A::joAbstractOperator,B::joAbstractOperator) = throw(joAbstractOperatorException("\(jo,jo) not implemented or type mismatch"))

# \(jo,mvec)
\(A::joAbstractOperator,mv::AbstractMatrix) = throw(joAbstractOperatorException("\(jo,mvec) not implemented or type mismatch"))

# \(mvec,jo)
\(mv::AbstractMatrix,A::joAbstractOperator) = throw(joAbstractOperatorException("\(mvec,jo) not implemented or type mismatch"))

# \(jo,vec)
\(A::joAbstractOperator,v::AbstractVector) = throw(joAbstractOperatorException("\(jo,vec) not implemented or type mismatch"))

# \(vec,jo)
\(v::AbstractVector,A::joAbstractOperator) = throw(joAbstractOperatorException("\(vec,jo) not implemented or type mismatch"))

# \(num,jo)
\(a,A::joAbstractOperator) = throw(joAbstractOperatorException("\(any,jo) not implemented or type mismatch"))

# \(jo,num)
\(A::joAbstractOperator,a) = throw(joAbstractOperatorException("\(jo,any) not implemented or type mismatch"))

############################################################
## overloaded Base +(...jo...)

# +(jo)
+(A::joAbstractOperator) = throw(joAbstractOperatorException("+(jo) not implemented"))

# +(jo,jo)
+(A::joAbstractOperator,B::joAbstractOperator) = throw(joAbstractOperatorException("+(jo,jo) not implemented or type mismatch"))

# +(jo,mvec)
+(A::joAbstractOperator,mv::AbstractMatrix) = throw(joAbstractOperatorException("+(jo,mvec) not implemented or type mismatch"))

# +(mvec,jo)
+(mv::AbstractMatrix,A::joAbstractOperator) = throw(joAbstractOperatorException("+(mvec,jo) not implemented or type mismatch"))

# +(jo,vec)
+(A::joAbstractOperator,v::AbstractVector) = throw(joAbstractOperatorException("+(jo,vec) not implemented or type mismatch"))

# +(vec,jo)
+(v::AbstractVector,A::joAbstractOperator) = throw(joAbstractOperatorException("+(vec,jo) not implemented or type mismatch"))

# +(jo,num)
+(A::joAbstractOperator,b) = throw(joAbstractOperatorException("+(jo,any) not implemented or type mismatch"))

# +(num,jo)
+(b,A::joAbstractOperator) = throw(joAbstractOperatorException("+(any,jo) not implemented or type mismatch"))

############################################################
## overloaded Base -(...jo...)

# -(jo)
-(A::joAbstractOperator) = throw(joAbstractOperatorException("-(jo) not implemented"))

# -(jo,jo)
-(A::joAbstractOperator,B::joAbstractOperator) = throw(joAbstractOperatorException("-(jo,jo) not implemented or type mismatch"))

# -(jo,mvec)
-(A::joAbstractOperator,mv::AbstractMatrix) = throw(joAbstractOperatorException("-(jo,mvec) not implemented or type mismatch"))

# -(mvec,jo)
-(mv::AbstractMatrix,A::joAbstractOperator) = throw(joAbstractOperatorException("-(mvec,jo) not implemented or type mismatch"))

# -(jo,vec)
-(A::joAbstractOperator,v::AbstractVector) = throw(joAbstractOperatorException("-(jo,vec) not implemented or type mismatch"))

# -(vec,jo)
-(v::AbstractVector,A::joAbstractOperator) = throw(joAbstractOperatorException("-(vec,jo) not implemented or type mismatch"))

# -(jo,num)
-(A::joAbstractOperator,b) = throw(joAbstractOperatorException("-(jo,any) not implemented or type mismatch"))

# -(num,jo)
-(b,A::joAbstractOperator) = throw(joAbstractOperatorException("-(any,jo).' not implemented or type mismatch"))

############################################################
## overloaded Base .*(...jo...)
## function Base.broadcast(::typeof(*), ...)

# .*(jo,jo)
##.*(A::joAbstractOperator,B::joAbstractOperator) = throw(joAbstractOperatorException(".*(jo,jo) not implemented"))

# .*(jo,mvec)
##.*(A::joAbstractOperator,mv::AbstractMatrix) = throw(joAbstractOperatorException(".*(jo,mvec) not implemented"))

# .*(mvec,jo)
##.*(mv::AbstractMatrix,A::joAbstractOperator) = throw(joAbstractOperatorException(".*(mvec,jo) not implemented"))

# .*(jo,vec)
##.*(A::joAbstractOperator,v::AbstractVector) = throw(joAbstractOperatorException(".*(jo,vec) not implemented"))

# .*(vec,jo)
##.*(v::AbstractVector,A::joAbstractOperator) = throw(joAbstractOperatorException(".*(vec,jo) not implemented"))

# .*(num,jo)
##.*(a,A::joAbstractOperator) = throw(joAbstractOperatorException(".*(any,jo) not implemented"))

# .*(jo,num)
##.*(A::joAbstractOperator,a) = throw(joAbstractOperatorException(".*(jo,any) not implemented"))

############################################################
## overloaded Base .\(...jo...)
## function Base.broadcast(::typeof(\), ...)

# .\(jo,jo)
##.\(A::joAbstractOperator,B::joAbstractOperator) = throw(joAbstractOperatorException(".\(jo,jo) not implemented"))

# .\(jo,mvec)
##.\(A::joAbstractOperator,mv::AbstractMatrix) = throw(joAbstractOperatorException(".\(jo,mvec) not implemented"))

# .\(mvec,jo)
##.\(mv::AbstractMatrix,A::joAbstractOperator) = throw(joAbstractOperatorException(".\(mvec,jo) not implemented"))

# .\(jo,vec)
##.\(A::joAbstractOperator,v::AbstractVector) = throw(joAbstractOperatorException(".\(jo,vec) not implemented"))

# .\(vec,jo)
##.\(v::AbstractVector,A::joAbstractOperator) = throw(joAbstractOperatorException(".\(vec,jo) not implemented"))

# .\(num,jo)
##.\(a,A::joAbstractOperator) = throw(joAbstractOperatorException(".\(any,jo) not implemented"))

# .\(jo,num)
##.\(A::joAbstractOperator,a) = throw(joAbstractOperatorException(".\(jo,any) not implemented"))

############################################################
## overloaded Base .+(...jo...)
## function Base.broadcast(::typeof(+), ...)

# .+(jo,jo)
##.+(A::joAbstractOperator,B::joAbstractOperator) = throw(joAbstractOperatorException(".+(jo,jo) not implemented"))

# .+(jo,mvec)
##.+(A::joAbstractOperator,mv::AbstractMatrix) = throw(joAbstractOperatorException(".+(jo,mvec) not implemented"))

# .+(mvec,jo)
##.+(mv::AbstractMatrix,A::joAbstractOperator) = throw(joAbstractOperatorException(".+(mvec,jo) not implemented"))

# .+(jo,vec)
##.+(A::joAbstractOperator,v::AbstractVector) = throw(joAbstractOperatorException(".+(jo,vec) not implemented"))

# .+(vec,jo)
##.+(v::AbstractVector,A::joAbstractOperator) = throw(joAbstractOperatorException(".+(vec,jo) not implemented"))

# .+(jo,num)
##.+(A::joAbstractOperator,b) = throw(joAbstractOperatorException(".+(jo,any) not implemented"))

# .+(num,jo)
##.+(b,A::joAbstractOperator) = throw(joAbstractOperatorException(".+(any,jo) not implemented"))

############################################################
## overloaded Base .-(...jo...)
## function Base.broadcast(::typeof(-), ...)

# .-(jo,jo)
##.-(A::joAbstractOperator,B::joAbstractOperator) = throw(joAbstractOperatorException(".-(jo,jo) not implemented"))

# .-(jo,mvec)
##.-(A::joAbstractOperator,mv::AbstractMatrix) = throw(joAbstractOperatorException(".-(jo,mvec) not implemented"))

# .-(mvec,jo)
##.-(mv::AbstractMatrix,A::joAbstractOperator) = throw(joAbstractOperatorException(".-(mvec,jo) not implemented"))

# .-(jo,vec)
##.-(A::joAbstractOperator,v::AbstractVector) = throw(joAbstractOperatorException(".-(jo,vec) not implemented"))

# .-(vec,jo)
##.-(v::AbstractVector,A::joAbstractOperator) = throw(joAbstractOperatorException(".-(vec,jo) not implemented"))

# .-(jo,num)
##.-(A::joAbstractOperator,b) = throw(joAbstractOperatorException(".-(jo,any) not implemented"))

# .-(num,jo)
##.-(b,A::joAbstractOperator) = throw(joAbstractOperatorException(".-(any,jo).' not implemented"))

############################################################
## overloaded Base block methods

# hcat(...jo...)
hcat(ops::joAbstractOperator...) = throw(joAbstractOperatorException("hcat(jo...).' not implemented"))


# vcat(...jo...)
vcat(ops::joAbstractOperator...) = throw(joAbstractOperatorException("vcat(jo...).' not implemented"))

# hvcat(...jo...)
hvcat(rows::Tuple{Vararg{Int}}, ops::joAbstractOperator...) = throw(joAbstractOperatorException("hvcat(jo...).' not implemented"))

############################################################
## overloaded Base.LinAlg functions

# A_mul_B!(...,jo,...)
A_mul_B!(y::AbstractVector,A::joAbstractOperator,x::AbstractVector)=throw(joAbstractOperatorException("A_mul_B!(vec,jo,vec) not implemented or type mismatch"))
A_mul_B!(y::AbstractMatrix,A::joAbstractOperator,x::AbstractMatrix)=throw(joAbstractOperatorException("A_mul_B!(mat,jo,mat) not implemented or type mismatch"))

# At_mul_B!(...,jo,...)
At_mul_B!(y::AbstractVector,A::joAbstractOperator,x::AbstractVector)=throw(joAbstractOperatorException("At_mul_B!(vec,jo,vec) not implemented or type mismatch"))
At_mul_B!(y::AbstractMatrix,A::joAbstractOperator,x::AbstractMatrix)=throw(joAbstractOperatorException("At_mul_B!(mat,jo,mat) not implemented or type mismatch"))

# Ac_mul_B!(...,jo,...)
Ac_mul_B!(y::AbstractVector,A::joAbstractOperator,x::AbstractVector)=throw(joAbstractOperatorException("Ac_mul_B!(vec,jo,vec) not implemented or type mismatch"))
Ac_mul_B!(y::AbstractMatrix,A::joAbstractOperator,x::AbstractMatrix)=throw(joAbstractOperatorException("Ac_mul_B!(mat,jo,mat) not implemented or type mismatch"))

# A_ldiv_B!(...,jo,...)
A_ldiv_B!(y::AbstractVector,A::joAbstractOperator,x::AbstractVector)=throw(joAbstractOperatorException("A_ldiv_B!(vec,jo,vec) not implemented or type mismatch"))
A_ldiv_B!(y::AbstractMatrix,A::joAbstractOperator,x::AbstractMatrix)=throw(joAbstractOperatorException("A_ldiv_B!(mat,jo,mat) not implemented or type mismatch"))

# At_ldiv_B!(...,jo,...)
At_ldiv_B!(y::AbstractVector,A::joAbstractOperator,x::AbstractVector)=throw(joAbstractOperatorException("At_ldiv_B!(vec,jo,vec) not implemented or type mismatch"))
At_ldiv_B!(y::AbstractMatrix,A::joAbstractOperator,x::AbstractMatrix)=throw(joAbstractOperatorException("At_ldiv_B!(mat,jo,mat) not implemented or type mismatch"))

# Ac_ldiv_B!(...,jo,...)
Ac_ldiv_B!(y::AbstractVector,A::joAbstractOperator,x::AbstractVector)=throw(joAbstractOperatorException("Ac_ldiv_B!(vec,jo,vec) not implemented or type mismatch"))
Ac_ldiv_B!(y::AbstractMatrix,A::joAbstractOperator,x::AbstractMatrix)=throw(joAbstractOperatorException("Ac_ldiv_B!(mat,jo,mat) not implemented or type mismatch"))

