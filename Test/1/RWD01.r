# 載入 jsonlite 套件
library(jsonlite)

# 讀入資料 read.json
df <- fromJSON("read.json")

# 指定要選擇四個欄位的內容
cols <- c(title, showUnit, startDate, endDate)

# 選擇欄位
df <- df[, cols]

# 使用 write.table 輸出 write.csv
write.table(df, file = "write.csv", col.names = FALSE, row.names = FALSE, sep = ",", fileEncoding = 'UTF-8')
