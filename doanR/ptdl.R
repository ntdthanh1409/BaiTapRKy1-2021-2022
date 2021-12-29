# import library
library('ggplot2')
library('data.table')
library('tibble')
library('tidyr')
library('dplyr')
library('readr')
library('tidyverse')
library('lubridate')
library('ggrepel')
library('forcats')
library('stringr')


# import csv file
data <- read.csv('1.csv', header = TRUE, encoding = 'UTF-8')


## Task 1: Mo ta du lieu lay ve

# a. So luong dong du lieu

nrow(data)

#b. Danh sach cac truong du lieu

# Xem 20 dong dau tien
head(data, 20)
# Ten cac truong du lieu
names(data)
# danh sach cac truong cua du lieu
str(data)              
View(data)

## Task 2: Thong ke mo ta

# a. Tinh cac chi so thong ke co ban

# ham tinh mode (yeu vi)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Tinh mean, mode, median cua heart (luot theo doi)

df_heart <-data$heart

mean(df_heart)
median(df_heart)
getmode(df_heart)


# tinh mean, mode, median cua star (danh gia)

df_star <- data$star

mean(df_star)
getmode(df_star)
median(df_star)


# tinh mean, mode, median cua view (so luot xem)

df_view <- data$view

mean(df_view)
getmode(df_view)
median(df_view)


# tinh mean, mode, median cua words (so luong tu)

df_words <- data$words

mean(df_words)
getmode(df_words)
median(df_words)


# tong quan ve du lieu
summary(data)

# b. Ve bieu do

# hàm dem so luong cua moi the loai

number_gerne <- function(y){
  count = 0
  df_1 <- data$gernes
  for (i in df_1){
    A = FALSE
    t = strsplit(i, ',') # tach thanh cac chuoi
    for (x in t){
      x <- str_trim(x)  # xoa khoang trang dau cuoi
      if (y %in% x){
        A = TRUE
      }    
    }
    if (A == TRUE){
      count = count + 1
    }
  }
  return (count)
}

number_gerne('Romance')

# ham lay ra cac the loai 
#gerne <- character()
#df_2 <- data$gernes[1:2]
#for (i in df_2){
  #t = strsplit(i, ',')
  #for (x in t){
    #x <- str_trim(x)
      #a <- c(x)
      #b <- c(gerne, a)
  #}
#}
gernes <- c('Action', 'Adapted to Anime', 'Adapted to Drama CD', 
'Adapted to Manga', 'Adult', 'Adventure', 'Chinese Novel', 'Comedy', 
'Cooking', 'Drama', 'Ecchi', 'English Novel', 'Fantasy', 'Game', 'Gender Bender', 'Harem', 'Historical', 
'Horror', 'Incest', 'Isekai', 'Josei', 'Korean Novel', 'Magic', 'Martial Arts', 'Mature', 'Mecha', 'Military', 
'Mystery', 'Netorare', 'One shot', 'Otome Game', 'Psychological', 'Reverse Harem', 'Romance', 'School Life', 
'Science Fiction', 'Seinen', 'Shoujo', 'Shoujo ai', 'Shounen', 'Shounen ai', 'Slice of Life', 'Sports', 
'Super Power', 'Supernatural', 'Suspense', 'Tragedy', 'Web Novel', 'Yuri')

gernes_count <- c(939, 64, 17, 203, 105, 831, 53, 1022, 22, 621, 327, 2, 1187, 
                  58, 86, 615, 43, 87, 17, 332, 45, 131, 213, 64, 182, 44, 43, 200, 
                  6, 74, 31, 210, 6, 1182, 508, 117, 211, 144, 75, 271, 8, 526, 3, 156, 335, 18, 209, 564, 53)


data_1 <- data.frame(gernes, gernes_count)

# Plot 1: Bieu do ve the loai va so luong truyen cua the loai do
ggplot(data_1, aes(x = gernes, y= gernes_count)) + 
  geom_bar(stat = "identity") +
  labs( title = 'BIEU DO VE THE LOAI VA SO LUONG TRUYEN CUA THE LOAI DO',
        x = 'THE LOAI', y = 'SO LUONG') +
  coord_flip()





