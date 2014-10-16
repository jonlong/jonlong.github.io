var gulp = require('gulp');
var shell = require('gulp-shell');
var config = require('../../config');

gulp.task('travis', function() {
  return gulp.src(config.paths.src.base, {read: false})
    .pipe(
      shell([
        'rm -rf out || exit 0',
        'mkdir out',
        'gulp build',
        'cd out',
        'git config user.name "Travis-CI"',
        'git config user.email "travis@linesandwaves.com"',
        'git init .',
        'git add .',
        'git commit -m "Deploy"',
        'git push "https://${GH_TOKEN}@${GH_REF}" master:master --force'
      ],
      {
        cwd: config.paths.build.base
      }
    )
  );
});
