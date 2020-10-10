

#############################################################
####################  Html table ############################
###########################################################
#https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html#Installation
install.packages("kableExtra")
#devtools::install_github("haozhu233/kableExtra") for diff verson

library(kableExtra)
mytable <- rowresultsV3 # results table from tier abalysis

#basic
kbl(mytable)

#Boostrap theme
mytable %>% 
  kbl() %>% 
  kable_styling() # nicer than basic


#save html directly

kbl(mytable) %>% 
  kable_paper() %>% 
  save_kable(file="mytable.html", self_contained = T)
