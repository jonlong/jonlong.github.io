var Metalsmith = require('metalsmith');
var markdown = require('metalsmith-markdown');
var templates = require('metalsmith-templates');
var collections = require('metalsmith-collections');
var permalinks = require('metalsmith-permalinks');
var cleanup = require('metalsmith-cleanup');
var gulp = require('gulp');
var sass = require('gulp-sass');
var config = require('./config');

/**
 * Expose `build`.
 */

module.exports = build;

/**
 * Build with Metalsmith and Guip.
 *
 * @param {Function} fn(err)
 */

function build(fn) {

  /**
   * Metalsmith
   */

  var m = Metalsmith(__dirname);

  m.source(config.paths.src.content);

  m.destination(config.paths.build.base);

  m.use(markdown());

  m.use(collections({
    posts: {
      pattern: 'posts/*'
    }
  }));

  m.use(permalinks({
    pattern: ':title'
  }));

  m.use(templates({
    engine: 'swig',
    directory: config.paths.src.templates
  }));

  /**
   * Gulp
   */

  gulp.task('sass', function() {
    gulp.src(config.paths.src.sass + '/*.scss')
      .pipe(sass())
      .pipe(gulp.dest(config.paths.build.css));
  });

  /**
   * Build.
   */

  m.build(function(err) {
    if (err) {
      return fn(err);
    }

    gulp.start('sass');
  });
}
