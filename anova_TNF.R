rm(list=ls(all=TRUE))
sink(paste(c('THnf.txt'), collapse=''))
setwd("E:\\back up\\PHD\\Thumb exp\\4 exp\\one way ANOVA Thumb nf") 


# read the input files
CT_anova_data<-read.csv(paste(c('disp_anova_TNF_data.csv'), collapse=''),header = TRUE)
CT_anova_idata<-read.csv('disp_anova_TNF_idata.csv',header = TRUE)
CT_t<-read.csv(paste(c('disp_anova_TNF_tukey.csv'), collapse=''),header = TRUE)

# bind the columns

CT_bind<-cbind(CT_anova_data$SI,CT_anova_data$WE)
Y<- lm(CT_bind ~ 1)

#load the car package
library(car)
analysis<-Anova(Y,idata=CT_anova_idata,idesign = ~con)
analysis_t <- aov(v ~ con, CT_t)
analysis2<-aov(v ~con   + (1 | sub), CT_t)


#use summary(object) to visualize the results of the repeated measures ANOVA
#summary(analysis)
summary(analysis, multivariate=FALSE)

pairwise.t.test(CT_t$v,CT_t$con)


TukeyHSD(analysis2)

TukeyHSD(analysis_t)

cat("\n")
cat("Mean values")
cat("\n")

cat("Thumb Nf during Strong grasp")
mean(CT_anova_data$SI)

cat("Thumb Nf during Weak grasp")
mean(CT_anova_data$WE)






sink()