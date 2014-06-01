var Metalsmith = require('metalsmith');
var markdown = require('metalsmith-markdown');
var templates = require('metalsmith-templates');
var collections = require('metalsmith-collections');
var permalinks = require('metalsmith-permalinks');
var cleanup = require('metalsmith-cleanup');
var untemplatize = require('metalsmith-untemplatize');
var gulp = require('gulp');
var sass = require('gulp-sass');
var config = require('./config');

/**
 * Constants
 */

var NODE_ENV = process.env.NODE_ENV || 'development';
var BASE_URL = process.env.BASE_URL || config.blog.baseURL;

/**
 * Metalsmith
 */

var m = Metalsmith(__dirname);

m.destination(config.paths.build.base);

m.metadata({
  env: NODE_ENV,
  BASE_URL: BASE_URL,
  now: new Date(),
  blog: config.blog
});

m.use(markdown({
  gfm: true,
  smartypants: true
}));

m.use(collections({
  posts: {
    pattern: 'posts/*'
  }
}));

m.use(permalinks({
  pattern: ':title'
}));

m.use(untemplatize());

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
 * Build
 */

m.build(function(err) {
  if (err) {
    console.dir(err);
  }

  gulp.start('sass');
});
