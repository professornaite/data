
df1 <- data.frame(ID = c(1, 2, 3, 4, 5),
                  var1 = c('a', 'b', 'c', 'd', 'e'),
                  var2 = c(1, 1, 0, 0, 1))

df2 <- data.frame("Record Entry" = seq(1,20,by=2), 
                  b = LETTERS[1:8], 
                  x= month.abb[1:8], 
                  z=letters[1:8])

df3 = data.frame(X = sample(1:3, 15, replace = TRUE))

View(df1)
View(df2)
View(df3)


satisfaction = c("highly satisfied", "satisfied", "disatisfied", "highly disatisfied")
region_c = c("southeast", "northeast", "west", "east","downtown","other")
district = rep(LETTERS[1:4], each = 12)
center_code = runif(n = 48, min = 1001, max = 5005)
capacity = rpois(n = 48, lambda = 130)
capacity_2022nov8 = rnorm(n = 48, mean = 87, sd = 23.5)
capacity_2022nov9 = rnorm(n = 48, mean = 87, sd = 22)
capacity_2022nov10 = rnorm(n = 48, mean = 87, sd = 21)
capacity_2022nov11 = rnorm(n = 48, mean = 90, sd = 22)
capacity_2022nov12 = rnorm(n = 96, mean = 110, sd = 23.5) # cold temperatures in atlanta
capacity_2022nov13 = rnorm(n = 48, mean = 93, sd = 17) # cold temperatures in atlanta
capacity_2022nov14 = rnorm(n = 48, mean = 86, sd = 23.5) # cold temperatures in atlanta
rating2016 = rep(LETTERS[1:3], times = 4) # city shuts them down when they're at a C
newdirector2016 = rpois(n=48, lambda = 1)
rating2019 = rep(LETTERS[1:4], times = 3) # city shuts them down when they're at a C
newdirector2019 = rpois(n = 48, lambda = 1)
rating2021 = rep(LETTERS[1:4], times = 3) # city shuts them down when they're at a C
grant_attempts = rpois(n = 48, lambda = 2)
debt2016 = runif(n = 48, min = -200, max = 4)
debt2019 = runif(n = 48, min = -150, max = 7)
debt2021 = runif(n = 48, min = -175, max = -2)
attendance = rpois(n = 48, lambda = 14)
full_time_employees = rpois(n = 48, lambda = 7)
part_time_employees = rpois(n = 48, lambda = 32)
regular_volunteers = rpois(n = 48, lambda = 7)
employee_rating = rep(satisfaction, each = 12)
region = rep(region_c, each = 8)
total_directors = rep()
income = sample(0:1, 48, replace = TRUE)
df1 <- data.frame(district,
                  region,
                  center_code,
                  capacity,
           capacity_2022nov8,
           capacity_2022nov9,
           capacity_2022nov10,
           capacity_2022nov11,
           capacity_2022nov12,
           capacity_2022nov13,
           capacity_2022nov14,
           rating2016,
           newdirector2016,
           rating2019,
           newdirector2019,
           rating2021,
           income,
           debt2016,
           debt2019,
           debt2021,
           grant_attempts,
           attendance,
           full_time_employees,
           part_time_employees,
           regular_volunteers,
           employee_rating)
View(df1)

write.csv(df1,"/Users/nathanalexander/Dropbox/Projects/Morehouse Community Data Fellows/Fall 2022/shelter_data.csv", row.names = FALSE)
