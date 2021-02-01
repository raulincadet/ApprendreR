library("rvest")
library(tidyverse)
url<-"https://www.timeshighereducation.com/world-university-rankings/2021/world-ranking#!/page/0/length/-1/sort_by/rank/sort_order/asc/cols/scores"
url1<-"https://www.baseball-reference.com/draft/?year_ID=2017&draft_round=1&draft_type=junreg&query_type=year_round&from_type_jc=0&from_type_hs=0&from_type_4y=0&from_type_unk=0"
univ <- url %>%
  read_html() %>%
  html_nodes("#datatable-1") %>%
  html_table()

str(univ)
data.frame(univ)
#####

url%>%
  read_html()%>%
  html_nodes('table')%>%
  html_table()

unv<-read.csv("C:/Users/Diaraye/Documents/GitHub/ApprendreR/inst/extdata/TopUniversites_2021.csv")


top<-unv%>%
  filter(Name!="Courses")%>%
  filter(Name!="Enquire")%>%
  filter(Name!="EnquireCourses")%>%
  filter(Name!="ExploreCourses")%>%
  filter(Name!="Explore")%>%
  filter(Name!="Verify Documents")%>%
  filter(Name!="ExploreVerify Documents")%>%
  filter(Name!="ExploreEnquire")%>%
  filter(Name!="ExploreEnquireCourses")%>%
  filter(Name!="EnquireAdmissions Support")%>%
  filter(Name!="ExploreEnquireAdmissions Support")%>%
  filter(Name!="Country/Region")%>%
  slice(1:3052)



countries<-top%>%
  filter(is.na(Teaching)==TRUE)%>%
  select(Name)

#Countries<-c(countries$Name)

topUniv<-top%>%
  filter(is.na(Teaching)==FALSE)%>%
  mutate(Region=Countries)%>%
  relocate(Region,.after=Name)

write.csv(topUniv,"C:/Users/Diaraye/Documents/GitHub/ApprendreR/inst/extdata/TopUniversites2021.csv",fileEncoding ='UTF-8')
