#Install the package
devtools::install_github("SimonLiles/protein8k", build_vignettes = TRUE)

#Load protein8k package
library(protein8k)

#Reading a PDB file
fileName <- "1aieH"

my_Protein <- read.pdb(fileName)

#Inspecting a Protein object
summary(my_Protein)

#Plotting the Protein Structure
plot3D(my_Protein, groups = residue_name, screen = list(z = -30, x = -60))

#Modeling the Atomic Record
plotModels(my_Protein)
