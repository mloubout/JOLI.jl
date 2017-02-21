############################################################
## joLinearFunction - overloaded Base functions

# conj(jo)
conj{EDT,DDT,RDT}(A::joLinearFunction{EDT,DDT,RDT}) =
    joLinearFunction{EDT,DDT,RDT}("conj("*A.name*")",A.m,A.n,
        get(A.fop_C),
        A.fop_CT,
        A.fop_T,
        A.fop,
        A.iop_C,
        A.iop_CT,
        A.iop_T,
        A.iop
        )

# transpose(jo)
transpose{EDT,DDT,RDT}(A::joLinearFunction{EDT,DDT,RDT}) =
    joLinearFunction{EDT,RDT,DDT}(""*A.name*".'",A.n,A.m,
        get(A.fop_T),
        A.fop,
        A.fop_C,
        A.fop_CT,
        A.iop_T,
        A.iop,
        A.iop_C,
        A.iop_CT
        )

# ctranspose(jo)
ctranspose{EDT,DDT,RDT}(A::joLinearFunction{EDT,DDT,RDT}) =
    joLinearFunction{EDT,RDT,DDT}(""*A.name*"'",A.n,A.m,
        get(A.fop_CT),
        A.fop_C,
        A.fop,
        A.fop_T,
        A.iop_CT,
        A.iop_C,
        A.iop,
        A.iop_T
        )

############################################################
## overloaded Base *(...jo...)

# *(jo,jo)
function *{AEDT,ARDT,BEDT,BDDT,CDT}(A::joLinearFunction{AEDT,CDT,ARDT},B::joLinearFunction{BEDT,BDDT,CDT})
    A.n == B.m || throw(joLinearFunctionException("shape mismatch"))
    nEDT=promote_type(AEDT,BEDT)
    return joLinearFunction{nEDT,BDDT,ARDT}("("*A.name*"*"*B.name*")",A.m,B.n,
        v1->A.fop(B.fop(v1)),
        v2->get(B.fop_T)(get(A.fop_T)(v2)),
        v3->get(B.fop_CT)(get(A.fop_CT)(v3)),
        v4->get(A.fop_C)(get(B.fop_C)(v4)),
        @NF, @NF, @NF, @NF
        )
end

# *(jo,mvec)

# *(jo,vec)
function *{AEDT,ADDT,ARDT,vDT<:Number}(A::joLinearFunction{AEDT,ADDT,ARDT},v::AbstractVector{vDT})
    A.n == size(v,1) || throw(joLinearFunctionException("shape mismatch"))
    jo_check_type_match(ADDT,vDT,join(["DDT for *(jo,vec):",A.name,typeof(A),vDT]," / "))
    V=A.fop(v)
    jo_check_type_match(ARDT,eltype(V),join(["RDT from *(jo,vec):",A.name,typeof(A),eltype(V)]," / "))
    return V
end

# *(num,jo)
function *{AEDT,ADDT,ARDT}(a::AEDT,A::joLinearFunction{AEDT,ADDT,ARDT})
    return joLinearFunction{AEDT,ADDT,ARDT}("(N*"*A.name*")",A.m,A.n,
        v1->a*A.fop(v1),
        v2->a*A.fop_T(v2),
        v3->conj(a)*A.fop_CT(v3),
        v4->conj(a)*A.fop_C(v4),
        @NF, @NF, @NF, @NF
        )
end

# *(jo,num)
*{AEDT,ADDT,ARDT}(A::joLinearFunction{AEDT,ADDT,ARDT},a::AEDT) = a*A

############################################################
## overloaded Base \(...jo...)

# \(jo,mvec)

# \(jo,vec)
function \{AEDT,ADDT,ARDT,vDT<:Number}(A::joLinearFunction{AEDT,ADDT,ARDT},v::AbstractVector{vDT})
    isinvertible(A) || throw(joLinearFunctionException("\(jo,Vector) not supplied"))
    A.m == size(v,1) || throw(joLinearFunctionException("shape mismatch"))
    return get(A.iop)(v)
end

############################################################
## overloaded Base +(...jo...)

# +(jo,jo)
function +{EDT,DDT,RDT}(A::joLinearFunction{EDT,DDT,RDT},B::joLinearFunction{EDT,DDT,RDT})
    size(A) == size(B) || throw(joLinearFunctionException("shape mismatch"))
    return joLinearFunction{EDT,DDT,RDT}("("*A.name*"+"*B.name*")",A.m,B.n,
        v1->A.fop(v1)+B.fop(v1),
        v2->A.fop_T(v2)+B.fop_T(v2),
        v3->A.fop_CT(v3)+B.fop_CT(v3),
        v4->A.fop_C(v4)+B.fop_C(v4),
        @NF, @NF, @NF, @NF
        )
end

# +(jo,num)
function +{AEDT,ADDT,ARDT}(A::joLinearFunction{AEDT,ADDT,ARDT},b::AEDT)
    return joLinearFunction{AEDT,ADDT,ARDT}("("*A.name*"+N)",A.m,A.n,
        v1->A.fop(v1)+b*joOnes(A.m,A.n,AEDT,ADDT)*v1,
        v2->get(A.fop_T)(v2)+b*joOnes(A.n,A.m,AEDT,ARDT)*v2,
        v3->get(A.fop_CT)(v3)+conj(b)*joOnes(A.n,A.m,AEDT,ARDT)*v3,
        v4->get(A.fop_C)(v4)+conj(b)*joOnes(A.m,A.n,AEDT,ADDT)*v4,
        @NF, @NF, @NF, @NF
        )
end

# +(num,jo)
+{AEDT,ADDT,ARDT}(b::AEDT,A::joLinearFunction{AEDT,ADDT,ARDT}) = A+b

############################################################
## overloaded Base -(...jo...)

# -(jo)
-{EDT,DDT,RDT}(A::joLinearFunction{EDT,DDT,RDT}) =
    joLinearFunction{EDT,DDT,RDT}("(-"*A.name*")",A.m,A.n,
        v1->-A.fop(v1),
        v2->-get(A.fop_T)(v2),
        v3->-get(A.fop_CT)(v3),
        v4->-get(A.fop_C)(v4),
        v5->-get(A.iop)(v5),
        v6->-get(A.iop_T)(v6),
        v7->-get(A.iop_CT)(v7),
        v8->-get(A.iop_C)(v8)
        )

############################################################
## overloaded Base .*(...jo...)

############################################################
## overloaded Base .\(...jo...)

############################################################
## overloaded Base .+(...jo...)

############################################################
## overloaded Base .-(...jo...)

############################################################
## overloaded Base hcat(...jo...)

############################################################
## overloaded Base vcat(...jo...)

