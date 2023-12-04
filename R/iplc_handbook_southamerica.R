library(tesseract)
library(tidyverse)
eng <- tesseract("eng")
index1 <- tesseract::ocr("handbook_south_america/1.pdf", engine = eng) %>% 
 as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index2 <- tesseract::ocr("handbook_south_america/2.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index3 <- tesseract::ocr("handbook_south_america/3.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index4 <- tesseract::ocr("handbook_south_america/4.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index5 <- tesseract::ocr("handbook_south_america/5.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index6 <- tesseract::ocr("handbook_south_america/6.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index7 <- tesseract::ocr("handbook_south_america/7.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index8 <- tesseract::ocr("handbook_south_america/8.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index9 <- tesseract::ocr("handbook_south_america/9.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index10 <- tesseract::ocr("handbook_south_america/10.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))
index11 <- tesseract::ocr("handbook_south_america/11.pdf", engine = eng) %>% 
  as_tibble() %>% mutate(value = str_remove_all(value, "[[:digit:]]"))

sa_index <- bind_rows(index1, index2, index3, index4, index5, index6, index7, index8, index9, index10, index11) %>% 
  separate_rows(value, sep = ",") %>% 
  mutate(value = na_if(value, "")) %>% 
  mutate(value = na_if(value, " ")) %>% 
  mutate(value = na_if(value, " -")) %>% 
  drop_na(value) %>% 
  mutate(value = str_trim(value, side = "both"))

write_csv(sa_index, "sa_index.csv")
# remove \n, # remove 




