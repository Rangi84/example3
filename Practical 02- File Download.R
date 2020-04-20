#  
# downloading the data.
download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/mydata.tsv",
 destfile = "mydata.tsv")

# Read into R making sure the 1st columns set as the row names and headers are recognised.
x <- read.table("mydata.tsv") # to read the file downloaded.

# Let's check if the data has imported properly.
head(x) # to get the first 6 raws of the data set.
str(x)
x <- read.table("mydata.tsv", header = TRUE)
head(x) 
str(x)
x <- read.table("mydata.tsv", header = TRUE , stringsAsFactors = FALSE )
head(x)
str(x)
x <- read.table("mydata.tsv", header = TRUE , stringsAsFactors = FALSE , row.names = 1)
head(x)
str(x)


x <- read.csv("mydata.tsv", sep="\t" ,stringsAsFactors = FALSE, row.names = 1 )
head(x)
str(x)

save.image("mydata.RData")
load("mydata.RData")



