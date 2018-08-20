module MATLABPlots

using MATLAB

export MATLAB, figure, plot, plot!, clf

function figure()
    mxcall(:figure, 0)
end

function figure(i::Int)
    mxcall(:figure, 0, i)
end

function clf()
    mxcall(:clf, 0)
end

function clf(i::Int)
    mxcall(:clf, 0, i)
end

function plot(i::Int, x::AbstractArray, y::AbstractArray, style="-")
    mxcall(:hold, 0, i, "off")
    mxcall(:plot, 0, i, x, y, style)
end

function plot(i::Int, x::AbstractArray, y::AbstractArray, z::AbstractArray, style="-")
    mxcall(:hold, 0, i, "off")
    mxcall(:plot3, 0, i, x, y, z, style)
end

function plot(x::AbstractArray, y::AbstractArray, style="-")
    mxcall(:hold, 0, "off")
    mxcall(:plot, 0, x, y, style)
end

function plot(x::AbstractArray, y::AbstractArray, z::AbstractArray, style="-")
    mxcall(:hold, 0, "off")
    mxcall(:plot3, 0, x, y, z, style)
end

function plot!(i::Int, x::AbstractArray, y::AbstractArray, style="-")
    mxcall(:hold, 0, i, "on")
    mxcall(:plot, 0, i, x, y, style)
end

function plot!(i::Int, x::AbstractArray, y::AbstractArray, z::AbstractArray, style="-")
    mxcall(:hold, 0, i, "on")
    mxcall(:plot3, 0, i, x, y, z, style)
end

function plot!(x::AbstractArray, y::AbstractArray, style="-")
    mxcall(:hold, 0, "on")
    mxcall(:plot, 0, x, y, style)
end

function plot!(x::AbstractArray, y::AbstractArray, z::AbstractArray, style="-")
    mxcall(:hold, 0, "on")
    mxcall(:plot3, 0, x, y, z, style)
end

end # module
