############################################################
# JOLI module ##############################################
############################################################

module JOLI

# what's being used

# what's imported
import Base.show
import Base.showall
import Base.display
import Base.eltype
import Base.size
import Base.length
import Base.full
import Base.norm
import Base.vecnorm
import Base.transpose
import Base.ctranspose
import Base.conj
import Base.*
import Base.\
import Base.+
import Base.-

# exported methods
export double

# constants
export joTol
joTol = 10e-12

# package for each operator code goes here
include("Utils.jl")
include("joAbstractOperator.jl")
include("joLinearOperator.jl")
include("joMatrix.jl")
include("joLinearFunction.jl")
include("joKron.jl")

end # module
