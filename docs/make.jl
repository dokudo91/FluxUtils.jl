using Documenter
using FluxUtils
DocMeta.setdocmeta!(FluxUtils, :DocTestSetup, :(using FluxUtils, Flux); recursive=true)
makedocs(
    sitename = "FluxUtils",
    format = Documenter.HTML(),
    modules = [FluxUtils]
)
deploydocs(
    repo="github.com/dokudo91/FluxUtils.jl.git",
)