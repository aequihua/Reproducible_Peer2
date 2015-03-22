# reformats time data
BGN_TIME=sub("([[:digit:]]{2,2})$", ":\\1",BGN_TIME))
stormdata <- mutate(stormdata,
                    BeginDateTime=paste(BGN_DATE,BGN_TIME))
stormdata <- mutate(stormdata,BeginDateTime=paste(BeginDateTime,":00",sep=""))


# Technique to produce ggplot bar
Top8=melt(head(sumed,8),id=c("EVTYPE"),measure.vars=c("AffectedPeople"))
colnames(Top8) = c("EvType","Impact","AffectedPeople")
ggplot(Top8, aes(x = EvType, y = AffectedPeople,fill=Impact)) +
  geom_bar(stat='identity') +
  ggtitle("People Highest-impact Types of Weather Events") + 
  ylab("Number of Affected People") +
  xlab("Type of Event")

ggplot(data=head(sumed,8), aes(x=EVTYPE, y=AffectedPeople)) +
      geom_bar(colour="black", fill="#DD8888", width=.8,stat="identity")+
      ggtitle("People Highest-impact Types of Weather Events") +
      ylab("Affected People(Fatality + Injured)") +
      xlab("Type of Event")

par(bg="darkgreen",col="yellow",lwd=1)
barplot(head(sumed$AffectedPeople,8),
        names=head(sumed$EVTYPE,8),
        xlab="Type of Event",ylab="Number of People Affected",
        main="Highest-Impact Weather Events - Population Health")
grid(col="white") 




# Ligas buenas
http://zevross.com/blog/2014/08/04/beautiful-plotting-in-r-a-ggplot2-cheatsheet-3/#working-with-the-legend
  
  http://lattice.r-forge.r-project.org/Vignettes/src/lattice-intro/lattice-intro.pdf

http://www.jstatsoft.org/v40/i03/paper

http://gastonsanchez.com/Handling_and_Processing_Strings_in_R.pdf

http://www.cookbook-r.com/
  
  http://rstudio-pubs-static.s3.amazonaws.com/11068_8bc42d6df61341b2bed45e9a9a3bf9f4.html

