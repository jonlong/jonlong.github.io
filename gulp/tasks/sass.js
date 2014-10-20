var gulp = require('gulp');
var sass = require('gulp-sass');
var pixrem = require('gulp-pixrem');
var config = require('../../config');

gulp.task('sass', function() {
  return gulp.src(config.paths.src.sass + '/**')
    .pipe(sass({
      errLogToConsole: true
    }))
    .pipe(pixrem())
    .pipe(gulp.dest(config.paths.build.css));
});