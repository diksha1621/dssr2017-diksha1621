library(CoverageView)
install.packages("Bioconductor")
source("https://bioconductor.org/biocLite.R")
biocLite()
library(readr)
mxl1genome <- read_delim("C:/Users/dsha762/Desktop/mxl1genome.txt",
" ", escape_double = FALSE, col_types = cols(`GenomeID        Start End depth` = col_character()),
trim_ws = TRUE)
View(mxl1genome)
View(mxl1genome)
library(readr)
mxl1WGcovpb_tsv <- read_delim("C:/Users/dsha762/Desktop/mxl1WGcovpb.tsv.csv",
" ", escape_double = FALSE, col_types = cols(Base = col_integer(),
NUMBER = col_integer(), `Position,COPY` = col_integer()),
trim_ws = TRUE)
View(mxl1WGcovpb_tsv)
library(readr)
mxl1WGcovpb_tsv <- read_csv("C:/Users/dsha762/Desktop/mxl1WGcovpb.tsv.csv")
View(mxl1WGcovpb_tsv)
library(readr)
mxl1WGcovpb <- read_delim("C:/Users/dsha762/Desktop/mxl1WGcovpb.txt",
" ", escape_double = FALSE, trim_ws = TRUE)
View(mxl1WGcovpb)
library(readr)
mxl1genome <- read_delim("C:/Users/dsha762/Desktop/mxl1genome.txt",
"\t", escape_double = FALSE, trim_ws = TRUE)
View(mxl1genome)
View(mxl1genome)
View(mxl1WGcovpb_tsv)
View(mxl1WGcovpb_tsv)
library(readxl)
mxl1genome <- read_table("C:/Users/dsha762/Desktop/mxl1genome.txt")
View(mxl1genome)
library(readr)
mxl1genome <- read_delim("C:/Users/dsha762/Desktop/mxl1genome.txt",
" ", escape_double = FALSE)
View(mxl1genome)
library(readr)
mxl1genome <- read_delim("C:/Users/dsha762/Desktop/mxl1genome.txt",
"\t", escape_double = FALSE, trim_ws = TRUE)
View(mxl1genome)
View(mxl1genome)
library(readr)
Desktop <- read_delim("~/Desktop", "\t",
escape_double = FALSE, trim_ws = TRUE)
View(Desktop)
names(Desktop)
names(Desktop)[1] <- "GEnome.ID"
names(Desktop)
names(Desktop)[1] <- "Genome.ID"
names(Desktop)[2] <- "Start Pos"
Names(Desktop)[3] <- "End Pos"
names(Desktop)[1] <- "Genome.ID"
names(Desktop)[2] <- "Start Pos"
names(Desktop)[3] <- "End Pos"
names(Desktop)
library(readr)
MXL1 <- read_delim("~/Desktop", "\t", escape_double = FALSE,
col_names = FALSE, trim_ws = TRUE)
View(MXL1)
names(MXL1)
names(MXL1)[1] <- "Genome.ID"
names(MXL1)[2] <- "Start Pos"
names(MXL1)[3] <- "End Pos"
names(MXL1)
names(MXL1)[1] <- "Genome.ID"
names(MXL1)[2] <- "Start Pos"
names(MXL1)[3] <- "End Pos"
names(MXL1)[4] <- "Depth"
names(MXL1)
plot(MXL1$Start Pos, MXL1$Depth)
names(MXL1)[1] <- "Genome.ID"
names(MXL1)[2] <- "StartPos"
names(MXL1)[3] <- "EndPos"
names(MXL1)[4] <- "Depth"
plot(MXL1$StartPos, MXL1$Depth)
library(ggplot2)
names(MXL1)
savehistory("~/mxl wg r scripts.R")
