# Citation: Writing an R package from scratch
# https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/

# Christine Chai's Practice
# My first R package ever!

# Step 1: Install the R packages for development
install.packages("devtools")
library("devtools")
# roxygen: need to install the "digest" package first
devtools::install_github("klutometis/roxygen")
library(roxygen2)

# Step 2: Create the R package directory structure
# Set the working directory to source file location
dir = getwd()
setwd(dir)
devtools::create("myfirstpackage")

# Step 3: Write the R function(s),
# then put the file in the directory "myfirstpackage/R"
# In this case, my function is in "even_or_odd.R".

# Step 4: Create the documentation
setwd("./myfirstpackage")
devtools::document()

# Step 5: Install the package
setwd("..") # go back to parent directory "myfirstpackage"
devtools::install("myfirstpackage")

# Step 6: Test the package
library(myfirstpackage)
?even_or_odd
even_or_odd(20)
even_or_odd(25)
even_or_odd(13.5)
even_or_odd("square")

# Step 7: Upload the package to GitHub directory: my-first-R-package

# Step 8: Test the package!
remove.packages("myfirstpackage") # uninstall it to start again
devtools::install_github("star1327p/my-first-R-package/myfirstpackage")
library(myfirstpackage)
even_or_odd(21)
