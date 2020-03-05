

R version 3.6.1 (2019-07-05) -- "Action of the Toes"
Copyright (C) 2019 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/GitHub/DataSci-participation/.RData]

> write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv"))
Error in write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv")) : 
  could not find function "write_csv"
> install.packages("here::here")
Installing package into ‘C:/Users/Sarah/Documents/R/win-library/3.6’
(as ‘lib’ is unspecified)
Warning in install.packages :
  package ‘here::here’ is not available (for R version 3.6.1)
> install.packages(here::here)
Error in install.packages : there is no package called ‘here’
> install.packages("here")
Installing package into ‘C:/Users/Sarah/Documents/R/win-library/3.6’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.6/here_0.1.zip'
Content type 'application/zip' length 20486 bytes (20 KB)
downloaded 20 KB

package ‘here’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Sarah\AppData\Local\Temp\RtmpiQQB7h\downloaded_packages
> write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv"))
Error in write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv")) : 
  could not find function "write_csv"
> library(tidyverse)
-- Attaching packages --------------------------------------- tidyverse 1.3.0 --
  v ggplot2 3.2.1     v purrr   0.3.3
v tibble  2.1.3     v dplyr   0.8.3
v tidyr   1.0.2     v stringr 1.4.0
v readr   1.3.1     v forcats 0.4.0
-- Conflicts ------------------------------------------ tidyverse_conflicts() --
  x dplyr::filter() masks stats::filter()
x dplyr::lag()    masks stats::lag()
Warning messages:
  1: package ‘tidyverse’ was built under R version 3.6.2 
2: package ‘ggplot2’ was built under R version 3.6.2 
3: package ‘tibble’ was built under R version 3.6.2 
4: package ‘tidyr’ was built under R version 3.6.2 
5: package ‘readr’ was built under R version 3.6.2 
6: package ‘purrr’ was built under R version 3.6.2 
7: package ‘dplyr’ was built under R version 3.6.2 
8: package ‘stringr’ was built under R version 3.6.2 
9: package ‘forcats’ was built under R version 3.6.2 
> 
  > write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv"))
Error in is.data.frame(x) : object 'gap_asia_2007' not found
> library(gapminder)
Warning message:
  package ‘gapminder’ was built under R version 3.6.2 
> (gap_asia_2007 <- gapminder %>% filter(year == 2007, continent == "Asia"))
# A tibble: 33 x 6
country          continent  year lifeExp        pop gdpPercap
<fct>            <fct>     <int>   <dbl>      <int>     <dbl>
  1 Afghanistan      Asia       2007    43.8   31889923      975.
2 Bahrain          Asia       2007    75.6     708573    29796.
3 Bangladesh       Asia       2007    64.1  150448339     1391.
4 Cambodia         Asia       2007    59.7   14131858     1714.
5 China            Asia       2007    73.0 1318683096     4959.
6 Hong Kong, China Asia       2007    82.2    6980412    39725.
7 India            Asia       2007    64.7 1110396331     2452.
8 Indonesia        Asia       2007    70.6  223547000     3541.
9 Iran             Asia       2007    71.0   69453570    11606.
10 Iraq             Asia       2007    59.5   27499638     4471.
# ... with 23 more rows
> write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv"))
Error in open.connection(path, "wb") : cannot open the connection
In addition: Warning message:
  In open.connection(path, "wb") :
  cannot open file 'C:/Users/Sarah/Documents/GitHub/DataSci-participation/data/s008_data/exported_file.csv': No such file or directory
> setwd("~/")
> write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv"))
Error in open.connection(path, "wb") : cannot open the connection
In addition: Warning message:
  In open.connection(path, "wb") :
  cannot open file 'C:/Users/Sarah/Documents/GitHub/DataSci-participation/data/s008_data/exported_file.csv': No such file or directory
> setwd("~/GitHub/DataSci-participation")
> write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv"))
Error in open.connection(path, "wb") : cannot open the connection
In addition: Warning message:
  In open.connection(path, "wb") :
  cannot open file 'C:/Users/Sarah/Documents/GitHub/DataSci-participation/data/s008_data/exported_file.csv': No such file or directory
> write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv"))
Error in open.connection(path, "wb") : cannot open the connection
In addition: Warning message:
  In open.connection(path, "wb") :
  cannot open file 'C:/Users/Sarah/Documents/GitHub/DataSci-participation/data/s008_data/exported_file.csv': No such file or directory
> library(readr)
> exported_file <- read_csv("exported_file.csv")
Parsed with column specification:
  cols(
    country = col_character(),
    continent = col_character(),
    year = col_double(),
    lifeExp = col_double(),
    pop = col_double(),
    gdpPercap = col_double()
  )
> View(exported_file)
> ?read.csv
> xls_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
> download.file(xls_url, here::here("data", "s008_data", "some_file.xls"), mode = "wb")
Error in download.file(xls_url, here::here("data", "s008_data", "some_file.xls"),  : 
                         cannot open destfile 'C:/Users/Sarah/Documents/GitHub/DataSci-participation/data/s008_data/some_file.xls', reason 'No such file or directory'
                       > 
                         > 
                         > 
                         > 
                         > 
                         > dir.create(here::here("data", "s008_data"), recursive = TRUE)
                       > 
                         > xls_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
                       > download.file(xls_url, here::here("data", "s008_data", "some_file.xls"), mode = "wb")
                       trying URL 'http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls'
                       Content type 'application/vnd.ms-excel' length 24576 bytes (24 KB)
                       downloaded 24 KB
                       
                       > write_csv(gap_asia_2007, here::here("data", "s008_data", "exported_file.csv"))
                       > (clevel <- haven::read_spss(here::here("data", "s008_data", "clevel.sav")))
                       # A tibble: 200 x 9
                       id    language  gender isClevel Extraversion EX_Leading EX_Communion
                       <chr> <dbl+lb> <dbl+l>    <dbl>        <dbl>      <dbl>        <dbl>
                         1 34787   3 [NL] 2 [Fem~        0            8          8            7
                                             2 2715    2 [FR] 1 [Mal~        0            4          5            4
                                                                 3 33503   3 [NL] 1 [Mal~        0            5          6            3
                                                                                     4 23258   3 [NL] 1 [Mal~        0            5          6            3
                                                                                                         5 27671   3 [NL] 1 [Mal~        0            4          5            4
                                                                                                                             6 4185    2 [FR] 1 [Mal~        0            9          9            9
                                                                                                                                                 7 33041   3 [NL] 1 [Mal~        0            3          3            3
                                                                                                                                                                     8 43431   3 [NL] 2 [Fem~        0            4          3            6
                                                                                                                                                                                         9 7766    3 [NL] 1 [Mal~        0            5          7            1
                                                                                                                                                                                                             10 22899   3 [NL] 1 [Mal~        0            4          3            6
                                                                                                                                                                                                                                  # ... with 190 more rows, and 2 more variables: EX_Persuasive <dbl>,
                                                                                                                                                                                                                                  #   EX_Motivating <dbl>
                                                                                                                                                                                                                                  > 
                                                                                                                                                                                                                                    > clevel_cleaned <-
                                                                                                                                                                                                                                    +     clevel %>% 
                                                                                                                                                                                                                                    +     mutate(language = as_factor(language),
                                                                                                                                                                                                                                                 +            gender = as_factor(gender),
                                                                                                                                                                                                                                                 +            isClevel = factor(isClevel, 
                                                                                                                                                                                                                                                                                +                              levels = c(0, 1), 
                                                                                                                                                                                                                                                                                +                              labels = c("No", "Yes"))
                                                                                                                                                                                                                                                 +     ) %>% 
                                                                                                                                                                                                                                    +     print()
                                                                                                                                                                                                                                  # A tibble: 200 x 9
                                                                                                                                                                                                                                  id    language gender isClevel Extraversion EX_Leading EX_Communion
                                                                                                                                                                                                                                  <chr> <fct>    <fct>  <fct>           <dbl>      <dbl>        <dbl>
                                                                                                                                                                                                                                    1 34787 NL       Female No                  8          8            7
                                                                                                                                                                                                                                  2 2715  FR       Male   No                  4          5            4
                                                                                                                                                                                                                                  3 33503 NL       Male   No                  5          6            3
                                                                                                                                                                                                                                  4 23258 NL       Male   No                  5          6            3
                                                                                                                                                                                                                                  5 27671 NL       Male   No                  4          5            4
                                                                                                                                                                                                                                  6 4185  FR       Male   No                  9          9            9
                                                                                                                                                                                                                                  7 33041 NL       Male   No                  3          3            3
                                                                                                                                                                                                                                  8 43431 NL       Female No                  4          3            6
                                                                                                                                                                                                                                  9 7766  NL       Male   No                  5          7            1
                                                                                                                                                                                                                                  10 22899 NL       Male   No                  4          3            6
                                                                                                                                                                                                                                  # ... with 190 more rows, and 2 more variables: EX_Persuasive <dbl>,
                                                                                                                                                                                                                                  #   EX_Motivating <dbl>
                                                                                                                                                                                                                                  > write_csv(clevel_cleaned, here::here("data", "s008_data", "clevel_cleaned.csv"))
                                                                                                                                                                                                                                  > clevel_plot <-
                                                                                                                                                                                                                                    +     clevel_cleaned %>% 
                                                                                                                                                                                                                                    +     mutate(isClevel = recode(isClevel, 
                                                                                                                                                                                                                                                                   +                              No = "Below C-level", 
                                                                                                                                                                                                                                                                   +                              Yes = "C-level"),
                                                                                                                                                                                                                                                 +            gender = recode(gender,
                                                                                                                                                                                                                                                                              +                            Female = "Women",
                                                                                                                                                                                                                                                                              +                            Male = "Men")) %>% 
                                                                                                                                                                                                                                    +     ggplot(aes(paste(isClevel, gender, sep = "\n"), Extraversion, color = gender)) +
                                                                                                                                                                                                                                    +     geom_boxplot() +
                                                                                                                                                                                                                                    +     geom_jitter(height = .2) +
                                                                                                                                                                                                                                    +     scale_color_manual(values = c("#1b9e77", "#7570b3")) +
                                                                                                                                                                                                                                    +     ggtitle("Extraversion Stan Scores") +
                                                                                                                                                                                                                                    +     scale_y_continuous(breaks = 1:9) +
                                                                                                                                                                                                                                    +     ggthemes::theme_fivethirtyeight() %>% 
                                                                                                                                                                                                                                    +     print()
                                                                                                                                                                                                                                  Error in loadNamespace(name) : there is no package called ‘ggthemes’
                                                                                                                                                                                                                                  > clevel_plot <-
                                                                                                                                                                                                                                    +     clevel_cleaned %>% 
                                                                                                                                                                                                                                    +     mutate(isClevel = recode(isClevel, 
                                                                                                                                                                                                                                                                   +                              No = "Below C-level", 
                                                                                                                                                                                                                                                                   +                              Yes = "C-level"),
                                                                                                                                                                                                                                                 +            gender = recode(gender,
                                                                                                                                                                                                                                                                              +                            Female = "Women",
                                                                                                                                                                                                                                                                              +                            Male = "Men")) %>% 
                                                                                                                                                                                                                                    +     ggplot(aes(paste(isClevel, gender, sep = "\n"), Extraversion, color = gender)) +
                                                                                                                                                                                                                                    +     geom_boxplot() +
                                                                                                                                                                                                                                    +     geom_jitter(height = .2) +
                                                                                                                                                                                                                                    +     scale_color_manual(values = c("#1b9e77", "#7570b3")) +
                                                                                                                                                                                                                                    +     ggtitle("Extraversion Stan Scores") +
                                                                                                                                                                                                                                    +     scale_y_continuous(breaks = 1:9)  %>% 
                                                                                                                                                                                                                                    +     print()
                                                                                                                                                                                                                                  <ScaleContinuousPosition>
                                                                                                                                                                                                                                    Range:  
                                                                                                                                                                                                                                    Limits:    0 --    1
                                                                                                                                                                                                                                  > clevel_plot
                                                                                                                                                                                                                                  > dir.create(here::here("output", "figures"))
                                                                                                                                                                                                                                  Warning message:
                                                                                                                                                                                                                                    In dir.create(here::here("output", "figures")) :
                                                                                                                                                                                                                                    cannot create dir 'C:\Users\Sarah\Documents\GitHub\DataSci-participation\output\figures', reason 'No such file or directory'
                                                                                                                                                                                                                                  > ggsave(here::here("output", "figures", "clevel_extraversion.svg"), clevel_plot)
                                                                                                                                                                                                                                  Saving 3.54 x 2.48 in image
                                                                                                                                                                                                                                  Error in loadNamespace(name) : there is no package called ‘svglite’
                                                                                                                                                                                                                                  > install.packages("svglite")
                                                                                                                                                                                                                                  Installing package into ‘C:/Users/Sarah/Documents/R/win-library/3.6’
                                                                                                                                                                                                                                  (as ‘lib’ is unspecified)
                                                                                                                                                                                                                                  also installing the dependencies ‘systemfonts’, ‘gdtools’
                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                  trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.6/systemfonts_0.1.1.zip'
                                                                                                                                                                                                                                  Content type 'application/zip' length 2035674 bytes (1.9 MB)
                                                                                                                                                                                                                                  downloaded 1.9 MB
                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                  trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.6/gdtools_0.2.1.zip'
                                                                                                                                                                                                                                  Content type 'application/zip' length 3533974 bytes (3.4 MB)
                                                                                                                                                                                                                                  downloaded 3.4 MB
                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                  trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.6/svglite_1.2.3.zip'
                                                                                                                                                                                                                                  Content type 'application/zip' length 654427 bytes (639 KB)
                                                                                                                                                                                                                                  downloaded 639 KB
                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                  package ‘systemfonts’ successfully unpacked and MD5 sums checked
                                                                                                                                                                                                                                  package ‘gdtools’ successfully unpacked and MD5 sums checked
                                                                                                                                                                                                                                  package ‘svglite’ successfully unpacked and MD5 sums checked
                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                  The downloaded binary packages are in
                                                                                                                                                                                                                                  C:\Users\Sarah\AppData\Local\Temp\RtmpiQQB7h\downloaded_packages
                                                                                                                                                                                                                                  > ggsave(here::here("output", "figures", "clevel_extraversion.svg"), clevel_plot)
                                                                                                                                                                                                                                  Saving 3.54 x 2.48 in image
                                                                                                                                                                                                                                  Error in svglite_(file, bg, width, height, pointsize, standalone, aliases) : 
                                                                                                                                                                                                                                    cannot open stream C:/Users/Sarah/Documents/GitHub/DataSci-participation/output/figures/clevel_extraversion.svg
                                                                                                                                                                                                                                  > 
                                                                                                                                                                                                                                    > 
                                                                                                                                                                                                                                    > clevel_plot
                                                                                                                                                                                                                                  > ggsave(here::here("output", "figures", "clevel_extraversion.svg"), clevel_plot)
                                                                                                                                                                                                                                  Saving 3.77 x 2.48 in image
                                                                                                                                                                                                                                  Error in svglite_(file, bg, width, height, pointsize, standalone, aliases) : 
                                                                                                                                                                                                                                    cannot open stream C:/Users/Sarah/Documents/GitHub/DataSci-participation/output/figures/clevel_extraversion.svg
                                                                                                                                                                                                                                  > dir.create(here::here("output", "figures"), recursive = TRUE)
                                                                                                                                                                                                                                  > ggsave(here::here("output", "figures", "clevel_extraversion.svg"), clevel_plot)