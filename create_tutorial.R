#setup tutorials

# To create a new tutorial, use:
  
usethis::use_tutorial(
    "Week_5_Extraction", 
    "Extraction", 
    open = interactive())

#if setup as an answer key, use tutorialize to turn into tutorial:
tutorialize::tutorialize_setup("Week_5_Extraction")
tutorialize::tutorialize()
