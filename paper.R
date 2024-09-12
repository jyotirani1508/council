file_path <- "C:\\Users\\Administrator\\Documents\\Programs\\CS1_September 2024_Sales data.RData"

# Load the RData file
load(file_path)
ls()

View(file_path)
# Display the structure of the object
str(file_path)

file.exists("C:\\Users\\Administrator\\Documents\\Programs\\CS1_September 2024_Sales data.RData")
load(file_path)

file_path <- file.choose()
print(file_path)