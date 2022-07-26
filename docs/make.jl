using MolGN
using Documenter

DocMeta.setdocmeta!(MolGN, :DocTestSetup, :(using MolGN); recursive=true)

makedocs(;
    modules=[MolGN],
    authors="Jarvist Moore Frost <jarvist@gmail.com> and contributors",
    repo="https://github.com/Frost-group/MolGN.jl/blob/{commit}{path}#{line}",
    sitename="MolGN.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Frost-group.github.io/MolGN.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Frost-group/MolGN.jl",
    devbranch="main",
)
