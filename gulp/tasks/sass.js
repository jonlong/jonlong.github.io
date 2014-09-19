var gulp = require('gulp');
var sass = require('gulp-sass');
var config = require('../../config');

gulp.task('sass', function() {
  return gulp.src(config.paths.src.sass + '/**')
    .pipe(sass({
      errLogToConsole: true
    }))
    .pipe(gulp.dest(config.paths.build.css));
});