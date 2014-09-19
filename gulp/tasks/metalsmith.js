var gulp = require('gulp');
var filter = require('gulp-filter');
var gulpsmith = require('gulpsmith');
var frontMatter = require('gulp-front-matter');
var plumber = require('gulp-plumber');
var markdown = require('metalsmith-markdown');
var templates = require('metalsmith-templates');
var collections = require('metalsmith-collections');
var permalinks = require('metalsmith-permalinks');
var untemplatize = require('metalsmith-untemplatize');
var _ = require('lodash');
var path = require('path');
var swig = require('swig');
var config = require('../../config');

var NODE_ENV = process.env.NODE_ENV || 'development';
var BASE_URL = process.env.BASE_URL || config.blog.baseURL;

/**
 * Swig Extensions
 */
swig.setDefaults({ cache: false });

gulp.task('metalsmith', function() {
  var frontMatterFilter = filter('**/*.{html,md}'); // filter out files with front matter

  return gulp.src(config.paths.src.base + '/**/*')
    .pipe(plumber({
      errorHandler: function(err) {
        console.log(err);
      }
    }))
    .pipe(frontMatterFilter)
    // grab files with front matter and assign them as a property so metalsmith will find it
    .pipe(frontMatter({
      property: 'frontMatter'
    })).on('data', function(file) {
      console.log(file)
        _.assign(file, file.frontMatter);
        delete file.frontMatter;
    })
    // remove the filter (back to everything in /src) and let metalsmith do its thing
    .pipe(frontMatterFilter.restore())
    .pipe(
      gulpsmith()
        .metadata({
          env: NODE_ENV,
          BASE_URL: BASE_URL,
          now: new Date(),
          blog: config.blog
        })
        .use(markdown({
          gfm: true,
          smartypants: true
        }))
        .use(collections({
          posts: {
            pattern: 'posts/*'
          }
        }))
        .use(permalinks({
          pattern: ':title'
        }))
        .use(untemplatize())
        .use(templates({
          engine: 'swig',
          directory: config.paths.src.templates
        }))
    )
    .pipe(gulp.dest(config.paths.build.base));
});