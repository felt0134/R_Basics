
#make this package
#usethis::create_package(getwd(),check_name = F) 

#create the tutorial
usethis::use_tutorial("Week_4_Functions", "Week_4_Functions",open=interactive())

#push to github
devtools::install_github("felt0134/R_Basics")

?install_github
