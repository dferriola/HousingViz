#Visualizing bivariate relationships
#scatterplot for 2 numerical variables
#response on y axis, explanatory on x
ggplot(df, aes(x=df$age,y=df$capital.gain))+geom_point()

ggplot(df1, aes(x=df1$family_income_mean,y=df1$gross_rent_mean))+geom_point()

ggplot(df2, aes(x=df2$family_income_mean,y=df2$gross_rent_mean))+geom_point()

rent_income=subset(df1,df1$family_income_mean >1000 & df1$gross_rent_mean>0)
ggplot(rent_income, aes(x=rent_income$family_income_mean,y=rent_income$gross_rent_mean))+geom_point(alpha=0.75, size=.5, color='steelblue', fill='white')+ggtitle('Family Income Mean and Gross Rent Mean')

ggplot(df2, aes(x=df2$morgages_ocsts_mean,y=df2$household_income_mean))+geom_point()
plot3d(rent_income$family_income_mean, rent_income$gross_rent_mean, type="s", size=0.25, lit=FALSE)