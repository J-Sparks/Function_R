
glimpse(DWFCRSNAMEre)
DWFCRSNAMEre$DWF <- factor(DWFCRSNAMEre$DWF)

# FAIL RATE by Total Freq
ggDFDWF <- DWFCRSNAMEre %>%
  filter(DWF =="PASS") %>% 
  arrange(-TotalFreq) ;ggDFDWF 


gg1DWF <- ggDFDWF[1:10,];gg1DWF  # choose top total freq 20

library(ggplot2)
ggplot(gg1DWF, aes(x=COURSE_NAME, y=Rate, col= COURSE_NAME))+geom_point(size=6)+ labs(
  x = "Top20 1st fall Term courses ",
  y = "PASS Rate %",
  title = 
    "UWF PASS Rate by Top 20 1st Term Courses", 
  subtitle= "Cohort 2015-2020 " 
)+theme_classic() 



