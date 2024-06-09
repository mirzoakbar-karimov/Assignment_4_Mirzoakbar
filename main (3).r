# Load necessary library
library(data.table)

# 4.1: Create data_table_1 with 4 variables and 10 rows
data_table_1 <- data.table(
  var1 = 1:10,
  var2 = letters[1:10],
  var3 = runif(10, min = 0, max = 100),
  var4 = sample(LETTERS, 10)
)

# 4.2: Create data_table_2 with 3 variables and 10 rows
data_table_2 <- data.table(
  var5 = 11:20,
  var6 = sample(letters, 10),
  var7 = rnorm(10)
)

# 4.3: Create some NA values for both tables
set.seed(123)  # for reproducibility

# Introduce NAs in data_table_1
data_table_1[sample(1:10, 2), var3 := NA]
data_table_1[sample(1:10, 2), var4 := NA]

# Introduce NAs in data_table_2
data_table_2[sample(1:10, 2), var6 := NA]
data_table_2[sample(1:10, 2), var7 := NA]

# 4.4: Join both data tables and name it "data_table_3"
data_table_3 <- cbind(data_table_1, data_table_2)

# 4.5: Remove the NA values from data_table_3
data_table_3_clean <- na.omit(data_table_3)

# Print the resulting tables
print("data_table_1:")
print(data_table_1)
print("data_table_2:")
print(data_table_2)
print("data_table_3:")
print(data_table_3)
print("data_table_3_clean:")
print(data_table_3_clean)
