T=6
tsname="joLinearOperator - Sum"
@testset "$tsname" begin
for t=1:T # start test loop

if t<=2
    (m,n)=(5,5)
else
    (m,n)=(rand(3:7),rand(3:7))
end

if t%2==1
    tname="loop $t for real($m,$n)"
    a=rand(m,n)
    b=rand(m,n)
    vn=rand(n)
    mvn=rand(n,2)
    vm=rand(m)
    mvm=rand(m,2)
    A=joMatrix(a)
    B=joLinearFunctionAll(m,n,v->b*v,v->b.'*v,v->b'*v,v->conj(b)*v,v->b\v,v->b.'\v,v->b'\v,v->conj(b)\v,eltype(vn),eltype(vm);fMVok=true,iMVok=true)
else
    tname="loop $t for complex($m,$n)"
    a=rand(Complex{Float64},m,n)
    b=rand(Complex{Float64},m,n)
    vn=rand(Complex{Float64},n)
    mvn=rand(Complex{Float64},n,2)
    vm=rand(Complex{Float64},m)
    mvm=rand(Complex{Float64},m,2)
    # needed to be reversed in 0.5.1 (see below) / OK again in 0.6
    A=joLinearFunctionAll(m,n,v->a*v,v->a.'*v,v->a'*v,v->conj(a)*v,v->a\v,v->a.'\v,v->a'\v,v->conj(a)\v,eltype(vn),eltype(vm);fMVok=true,iMVok=true)
    B=joMatrix(b)
    #A=joLinearFunctionAll(m,n,v->b*v,v->b.'*v,v->b'*v,v->conj(b)*v,v->b\v,v->b.'\v,v->b'\v,v->conj(b)\v,eltype(vn),eltype(vm);fMVok=true,iMVok=true)
    #B=joMatrix(a)
end
# needed to be reversed in 0.5.1 / OK again in 0.6
c=a+b
#c=b+a
C=A+B

verbose && println("$tsname $tname")
    @testset "$tname A*B" begin
        @test size(C)==size(c)
        @test length(C)==length(c)
        @test norm(full(C)-c)<joTol
        @test norm(elements(C)-c)<joTol
        @test norm(C)-norm(c)<joTol
        for i=1:2
            @test norm(C,i)-norm(c,i)<joTol
        end
        @test norm(C,Inf)-norm(c,Inf)<joTol
        @test vecnorm(C)-vecnorm(c)<joTol
        for i=1:2
            @test vecnorm(C,i)-vecnorm(c,i)<joTol
        end
        @test vecnorm(C,Inf)-vecnorm(c,Inf)<joTol
        @test norm(elements(C')-c')<joTol
        @test norm(elements(C.')-c.')<joTol
        @test norm(elements(+C)-(+c))<joTol
        @test norm(elements(-C)-(-c))<joTol
        @test norm(C*vn-c*vn)<joTol
        @test norm(C*mvn-c*mvn)<joTol
        @test norm(C'*vm-c'*vm)<joTol
        @test norm(C'*mvm-c'*mvm)<joTol
        @test norm(C.'*vm-c.'*vm)<joTol
        @test norm(C.'*mvm-c.'*mvm)<joTol
        @test norm((C.')'*vn-(c.')'*vn)<joTol
        @test norm((C.')'*mvn-(c.')'*mvn)<joTol
        @test norm((C').'*vn-(c').'*vn)<joTol
        @test norm((C').'*mvn-(c').'*mvn)<joTol
        @test norm(elements(C.'*C)-(c.'*c))<joTol
        @test norm(elements(C*C.')-(c*c.'))<joTol
        @test norm(elements(C'*C)-(c'*c))<joTol
        @test norm(elements(C*C')-(c*c'))<joTol
        if issquare(C)
            @test norm(C\vn-c\vn)<joTol
            @test norm(C\mvn-c\mvn)<joTol
            @test norm(C'\vm-c'\vm)<joTol
            @test norm(C'\mvm-c'\mvm)<joTol
            @test norm(C.'\vm-c.'\vm)<joTol
            @test norm(C.'\mvm-c.'\mvm)<joTol
        end
    end

end # end test loop
end
