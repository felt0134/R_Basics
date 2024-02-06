
recorder <- function(tutorial_id, tutorial_version, user_id, event, data) {
  tut_dir <- tut_directory()
  if(!file.exists(tut_dir)) dir.create(tut_dir)
  tut_file <- tut_filename(tutorial_id, user_id)
  if(!grepl("^section", event)) {
    recordFile <- file.path(tut_dir, tut_file)
    new_data <-
      structure(
        list(
          list(
            timestamp = Sys.time(),
            tutorial = tutorial_id,
            versiong = tutorial_version,
            user = user_id,
            event = event,
            data = data)),
        names = event)
    
    if(file.exists(recordFile)) {
      load(recordFile)
      tutorial_data <- c(tutorial_data, new_data)
    } else
      tutorial_data <- new_data
    save(tutorial_data, file = recordFile)
  }
}

submit_ENSC311 <- function(tutorial_index = NULL) {
  tut_files <- dir(tut_directory())
  if(is.null(tutorial_index)) return(tut_files)
  tutorial_index <- as.integer(tutorial_index)
  if(tutorial_index < 1 || tutorial_index > length(tut_files)) stop("tutorial_index is out of range")
  source_name <- file.path(tut_directory(), tut_files[tutorial_index])
  dest_name <- file.path(getwd(), paste0("submit_", tut_files[tutorial_index]))
  file.copy(source_name, dest_name, overwrite = T)
}

tut_directory <- function() {
  file.path("~", "_311_Tutorial_")
}

tut_filename <- function(tutorial, user) {
  paste0(basename(tutorial), "_311_", user)
}

