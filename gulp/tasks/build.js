var gulp = require('gulp');
var runSequence = require('run-sequence');

gulp.task('build', function(callback) {
  runSequence('clean', 'svg', 'sass', ['metalsmith', 'ie'], callback);
});