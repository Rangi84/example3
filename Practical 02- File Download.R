------
Tittle: "example Rnd report"
Author: "Rangi"
Output: "html_document"
theme: Cosmo
-----
  
# Heading number 1 - download file and read into R.
  
Here we are using the 'download.file()' command to obtain the daaset, then we are readng it in to R. It is important to set 'header=TRUE' and 'row.names=1'. so that the data is formatted properly. 
```{r.chunk1,echo = TRUE}
# downloading the data.
download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/mydata.tsv",
 destfile = "mydata.tsv")

# Read into R making sure the 1st columns set as the row names and headers are recognised.
x <- read.table("mydata.tsv") # to read the file downloaded.

# Let's check if the data has imported properly.
head(x) # to get the first 6 raws of the data set.

# check data structure
str(x)
x <- read.table("mydata.tsv", header = TRUE)
head(x) 
str(x)
x <- read.table("mydata.tsv", header = TRUE , stringsAsFactors = FALSE )
head(x)
str(x)
x <- read.table("mydata.tsv", header = TRUE , stringsAsFactors = FALSE , row.names = 1)
```
## Heading 2 - checking data intergrity
Here we use the 'head()' command to look at the first 6 lines of the data frame, then 'str()' to make sure the contents are recgnised as numeric. 

head(x)
str(x)


x <- read.csv("mydata.tsv", sep="\t" ,stringsAsFactors = FALSE, row.names = 1 )
head(x)
str(x)

save.image("mydata.RData")
load("mydata.RData")



