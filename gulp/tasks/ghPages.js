var gulp = require('gulp');
var shell = require('gulp-shell');

gulp.task('ghPages', function(callback) {
  shell.task([
    'cd ./build',
    'git init .',
    'git add .',
    'git commit -m "Deploy"',
    'git push "git@github.com:jonlong/writing.git" master:gh-pages --force',
    'rm -rf .git'
  ]);
});
