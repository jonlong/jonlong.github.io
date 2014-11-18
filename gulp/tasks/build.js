/**
 * Removed `browserify` and `modernizr`, as neither is used yet
 */

var gulp = require('gulp');
var runSequence = require('run-sequence');

gulp.task('build', ['clean'], function(cb) {
  runSequence('copy', 'svg', 'sass', 'metalsmith', cb);
});