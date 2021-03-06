############################################################
## joAbstractFosterLinearOperator - overloaded Base functions

# eltype(jo)
eltype{DDT,RDT}(A::joAbstractFosterLinearOperator{DDT,RDT}) = promote_type(DDT,RDT)

# deltype(jo)
deltype{DDT,RDT}(A::joAbstractFosterLinearOperator{DDT,RDT}) = DDT

# reltype(jo)
reltype{DDT,RDT}(A::joAbstractFosterLinearOperator{DDT,RDT}) = RDT

# show(jo)
show(A::joAbstractFosterLinearOperator) = println((typeof(A),A.name,A.m,A.n))

# showall(jo)
showall(A::joAbstractFosterLinearOperator) = println((typeof(A),A.name,A.m,A.n))

# display(jo)
display(A::joAbstractFosterLinearOperator) = showall(A)

# size(jo)
size(A::joAbstractFosterLinearOperator) = A.m,A.n

# size(jo,1/2)
function size(A::joAbstractFosterLinearOperator,ind::Integer)
    if ind==1
		return A.m
	elseif ind==2
		return A.n
	else
		throw(joAbstractFosterLinearOperatorException("invalid index"))
	end
end

# length(jo)
length(A::joAbstractFosterLinearOperator) = A.m*A.n

# full(jo)

# norm(jo)

# vecnorm(jo)

# real(jo)

# imag(jo)

# conj(jo)

# transpose(jo)

# ctranspose(jo)

# isreal(jo)
isreal{DDT,RDT}(A :: joAbstractFosterLinearOperator{DDT,RDT}) = (DDT<:Real && RDT<:Real)

# issymmetric(jo)

# ishermitian(jo)

############################################################
## overloaded Base *(...jo...)

# *(jo,jo)

# *(jo,mvec)

# *(mvec,jo)

# *(jo,vec)

# *(vec,jo)

# *(num,jo)

# *(jo,num)

############################################################
## overloaded Base \(...jo...)

# \(jo,jo)

# \(jo,mvec)

# \(mvec,jo)

# \(jo,vec)

# \(vec,jo)

# \(num,jo)

# \(jo,num)

############################################################
## overloaded Base +(...jo...)

# +(jo)

# +(jo,jo)

# +(jo,mvec)

# +(mvec,jo)

# +(jo,vec)

# +(vec,jo)

# +(jo,num)

# +(num,jo)

############################################################
## overloaded Base -(...jo...)

# -(jo)

# -(jo,jo)

# -(jo,mvec)

# -(mvec,jo)

# -(jo,vec)

# -(vec,jo)

# -(jo,num)

# -(num,jo)

############################################################
## overloaded Base .*(...jo...)

############################################################
## overloaded Base .\(...jo...)

############################################################
## overloaded Base .+(...jo...)

############################################################
## overloaded Base .-(...jo...)

############################################################
## overloaded Base block methods

# hcat(...jo...)

# vcat(...jo...)

# hvcat(...jo...)

############################################################
## overloaded Base.LinAlg functions

# A_mul_B!(...,jo,...)

# At_mul_B!(...,jo,...)

# Ac_mul_B!(...,jo,...)

# A_ldiv_B!(...,jo,...)

# At_ldiv_B!(...,jo,...)

# Ac_ldiv_B!(...,jo,...)

