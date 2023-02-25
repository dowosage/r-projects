install.packages('tidyverse')
library(tidyverse)
library(lubridate)
library(ggplot2)
browseVignettes("ggplot2")
data("diamonds")
View(diamonds)
head(diamonds)

--------------
# create vector of people
names <- c("Dow", "Joe", "Viv", "Steph")

# create vector of ages
age <- c(52, 16, 16, 46)

# create date frame called people of names and ages
people <- data.frame(names, age)

# inspect a data fram
head(people)
str(people)
glimpse(people)
colnames(people)

# create a new variable captures age in twenty years in variable "age_in_20"
mutate(people, age_in_20 = age + 20)

--------------
# see available data sets in R
data()

# load a specific data set in the () - go to environment pane to see it
data(mtcars)

##############

Here are some examples of file types that store rectangular data:

.csv (comma separated values): a .csv file is a plain text file that contains a list of data. They mostly use commas to separate (or delimit) data, but sometimes they use other characters, like semicolons. 

.tsv (tab separated values): a .tsv file stores a data table in which the columns of data are separated by tabs. For example, a database table or spreadsheet data. 

.fwf (fixed width files): a .fwf file has a specific format that allows for the saving of textual data in an organized fashion. 

.log: a .log file is a computer-generated file that records events from operating systems and other software programs.

The goal of readr is to provide a fast and friendly way to read rectangular data. readr supports several read_ functions. Each function refers to a specific file format.

##############

read_csv(): comma-separated values (.csv) files

read_tsv(): tab-separated values files

read_delim(): general delimited files

read_fwf(): fixed-width files

read_table(): tabular files where columns are separated by white-space

read_log(): web log files

##############

Reading a .csv file with readr 
The readr package comes with some sample files from built-in datasets that you can use for example code. To list the sample files, you can run the readr_example() function with no arguments. 

readr_example()

[1] "challenge.csv"     "epa78.txt"         "example.log"      

[4] "fwf-sample.txt"    "massey-rating.txt" "mtcars.csv"       

[7] "mtcars.csv.bz2"    "mtcars.csv.zip"

The “mtcars.csv” file refers to the mtcars dataset that was mentioned earlier. Let’s use the read_csv() function to read the “mtcars.csv” file, as an example. In the parentheses, you need to supply the path to the file. In this case, it’s “readr_example(“mtcars.csv”). 

read_csv(readr_example("mtcars.csv"))

##############

The readxl package is part of the tidyverse but is not a core tidyverse package, so you need to load readxl in R by using the library() function.  

library(readxl)

Like the readr package, readxl comes with some sample files from built-in datasets that you can use for practice. You can run the code readxl_example() to see the list.  

You can use the read_excel() function to read a spreadsheet file just like you used read_csv() function to read a  .csv file. The code for reading the example file “type-me.xlsx” includes the path to the file in the parentheses of the function.  

read_excel(readxl_example("type-me.xlsx"))

You can use the excel_sheets() function to list the names of the individual sheets. 

 excel_sheets(readxl_example("type-me.xlsx"))

[1] "logical_coercion" "numeric_coercion" "date_coercion" "text_coercion"

You can also specify a sheet by name or number.  Just type “sheet =” followed by the name or number of the sheet. For example, you can use the sheet named “numeric_coercion” from the list above. 

read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")

##############


