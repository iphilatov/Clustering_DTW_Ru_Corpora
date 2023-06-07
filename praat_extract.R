library(tidyverse)
library(phonfieldwork)
df <- read_from_folder("my/path/to/a/directory", "textgrid")

df %>% 
  arrange(source, time_start, , -tier, content) %>% 
  mutate(filename = ifelse(tier == 2, content, NA)) %>% 
  fill(filename) %>% 
  filter(tier != 2,
         content != "")  %>% 
  mutate(content = str_c(filename, "-", content)) %>% 
  select(time_start, time_end, content) %>% 
  phonfieldwork::df_to_tier("my/path/to/a/file",
                            tier_name = "1")

name = "file_name"

path_from = "my/path/to/a/directory"
wav_ext = ".wav"
tg_ext = ".Textgrid"

file_name = paste(path_from, name, wav_ext, sep = '')
textgrid = paste(path_from, name, tg_ext, sep = '')

extract_intervals(file_name = file_name,
                  textgrid = textgrid, 
                  path = "my/path/to/a/directory/for/ouput", 
                  tier = 1)