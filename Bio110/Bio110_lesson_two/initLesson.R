# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.
swirl_options(swirl_logging = TRUE)
      .get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

data <- read.csv(file.path(.get_course_path(), "Bio110", "Bio110_lesson_two", "physiology_data.csv"))
