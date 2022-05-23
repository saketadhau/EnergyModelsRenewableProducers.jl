push!(LOAD_PATH,"../src/")

try
    using Documenter
catch
    import Pkg
    Pkg.activate(@__DIR__)
    Pkg.instantiate()
    
    using Documenter
end

using RenewableProducers

makedocs(
    sitename = "RenewableProducers",
    format = Documenter.HTML(),
    modules = [RenewableProducers],
    pages = [
        "Home" => "index.md",
        "Library" => Any[
            "Public" => "library/public.md",
            "Internals" => "library/internals.md"
        ]
    ]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
