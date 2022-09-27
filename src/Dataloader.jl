# Dataloader.jl

"""
LoadSMILES(file)

Load a file of SMILES strings.
"""
function LoadSMILES(file)
    d=CSV.read(file, DataFrames.DataFrame)

    mols=[MolecularGraph.smilestomol(SMILES) for SMILES in d[:,"smiles"] ]

    return mols
end

