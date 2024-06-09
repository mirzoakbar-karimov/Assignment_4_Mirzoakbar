# Assignment_4_Mirzoakbar



# Data Table Manipulation in R

This project demonstrates basic data table manipulation in R, including creating data tables, introducing `NA` values, joining tables, and cleaning `NA` values. The script performs the following tasks:

## Tasks

1. **Create data_table_1**:
   - Contains 4 variables and 10 rows.
   - Variables: `var1`, `var2`, `var3`, `var4`.

2. **Create data_table_2**:
   - Contains 3 variables and 10 rows.
   - Variables: `var5`, `var6`, `var7`.

3. **Introduce `NA` values**:
   - Randomly introduce `NA` values in `data_table_1` and `data_table_2`.

4. **Join both data tables**:
   - Combine `data_table_1` and `data_table_2` into a new table named `data_table_3`.

5. **Remove `NA` values**:
   - Remove rows with `NA` values from `data_table_3` and store the result in `data_table_3_clean`.

## Prerequisites

Make sure you have R installed on your system. Additionally, you'll need the `data.table` package. You can install it using the following command:

```R
install.packages("data.table")
```

## Running the Script

1. Save the script in a file named `data_table_manipulation.R`.
2. Open R or RStudio and set your working directory to the location of the script file.
3. Run the script using the command:

```R
source("data_table_manipulation.R")
```

## Explanation of the Script

The script is structured as follows:

### 1. Load necessary library

```R
library(data.table)
```

### 2. Create data_table_1 with 4 variables and 10 rows

```R
data_table_1 <- data.table(
  var1 = 1:10,
  var2 = letters[1:10],
  var3 = runif(10, min = 0, max = 100),
  var4 = sample(LETTERS, 10)
)
```

### 3. Create data_table_2 with 3 variables and 10 rows

```R
data_table_2 <- data.table(
  var5 = 11:20,
  var6 = sample(letters, 10),
  var7 = rnorm(10)
)
```

### 4. Introduce some NA values for both tables

```R
set.seed(123)  # for reproducibility

data_table_1[sample(1:10, 2), var3 := NA]
data_table_1[sample(1:10, 2), var4 := NA]

data_table_2[sample(1:10, 2), var6 := NA]
data_table_2[sample(1:10, 2), var7 := NA]
```

### 5. Join both data tables and name it "data_table_3"

```R
data_table_3 <- cbind(data_table_1, data_table_2)
```

### 6. Remove the NA values from the data_table_3

```R
data_table_3_clean <- na.omit(data_table_3)
```

### 7. Print the resulting tables

```R
print("data_table_1:")
print(data_table_1)
print("data_table_2:")
print(data_table_2)
print("data_table_3:")
print(data_table_3)
print("data_table_3_clean:")
print(data_table_3_clean)
```

## Output

The script prints the following data tables:

1. `data_table_1` - The first data table with some `NA` values.
2. `data_table_2` - The second data table with some `NA` values.
3. `data_table_3` - The combined data table.
4. `data_table_3_clean` - The combined data table with `NA` values removed.

