#setup tutorials

# To create a new tutorial, use:
  
usethis::use_tutorial(
    "bug_tester", 
    "bug_tester", 
    open = interactive())

#if setup as an answer key, use tutorialize to turn into tutorial:
tutorialize::tutorialize_setup("bug_tester")
tutorialize::tutorialize()

