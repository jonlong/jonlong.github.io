var gulp = require('gulp');
var rimraf = require('gulp-rimraf');
var config = require('../../config/app.js');

gulp.task('clean', function() {
  return gulp.src(config.paths.build.base + '/**', { read: false })
    .pipe(rimraf());
});