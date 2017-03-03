
freq_SD <- function(infile,colname,window_size = 1000,includerange=FALSE,br_start=0,br_end=1000,br_by=0.02,outfile=NA, write_to_file=FALSE)
  {
  chr <- read.table(infile, sep = " ", header = FALSE)
  names(chr) <- c("GenomeID", "BasePos", "Depth")
  library(zoo) 
  swm <- rollmean(chr$Depth,window_size)
  swmdf <- data.frame(y = swm)
  colnames(swmdf) <- c(colname)
  br = seq(br_start,br_end,by=br_by)
  br[length(br)+1]= ceiling(max(swmdf[[colname]]))
  ranges = paste(head(br,-1), br[-1], sep =" - ")
  freq = hist(swmdf[[colname]], breaks = br, include.lowest= TRUE, plot=FALSE)
  if(includerange)
    {
    sample.freq = data.frame(range = ranges, y = freq$counts)
    colnames(sample.freq) <- c("range", colname)
  }
  else
    {
    sample.freq = data.frame( y = freq$counts)
    colnames(sample.freq) <- c(colname)    #chromosome name to be given to column#
    }
  if(write_to_file)
    write.table(sample.freq,file = outfile, sep = " ", row.names = FALSE)
  
  return(sample.freq)
}

freq_SD_all <- function(directory, fpattern = "chr.*\\.txt" ){
  files=list.files(directory,pattern = fpattern)
  
  first_run = TRUE
  
  for(file in files){
    filename = paste0(directory,"/",file)
    chr = substr(file, start = 1,stop=5)
    if(first_run)
    {
      sfreq <- freq_SD(filename, colname = chr, includerange = TRUE)
      first_run=FALSE
    }
    else{
      sfreq2 <- freq_SD(filename, colname = chr)
      sfreq <-cbind(sfreq,sfreq2)
    }
    
  }
  return(sfreq)
  
}