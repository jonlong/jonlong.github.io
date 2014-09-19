var gulp = require('gulp');
var flatten = require('gulp-flatten');
var config = require('../../config');
var path = require('path');

/*
  Polyfills for IE

  These get moved from Bower's default directory to a polyfills
  directory in the build dir.
 */

var files = [
  '/svg4everybody/svg4everybody.ie8.min.js',
  '/svg4everybody/svg4everybody.min.js'
];

gulp.task('ie', function(callback) {
  return gulp.src(files, {root: config.paths.src.components})
    .pipe(flatten())
    .pipe(gulp.dest(config.paths.build.js + '/polyfills'));
});