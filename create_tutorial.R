#setup tutorials

# To create a new tutorial, use:
  
usethis::use_tutorial(
    "Week_6_Exam_Review", 
    "R Basics Review", 
    open = interactive())

#if setup as an answer key, use tutorialize to turn into tutorial:
tutorialize::tutorialize_setup("Week_6_Exam_Review")
tutorialize::tutorialize()
