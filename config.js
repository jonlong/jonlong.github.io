var config = {
  blog: {
    title: 'Jon Long',
    baseURL: '//linesandwaves.com/'
  },
  repo: 'jonlong/jonlong.github.io',
  deployBranch: 'master',
  port: 3000,
  paths: {
    src: {
      base: './src',
      content: './posts',
      assets: './assets',
      templates: './templates',
      sass: './assets/sass',
      images: './assets/images',
      components: './assets/components',
      sassIncludePaths: [
        './assets/components'
      ]
    },
    build: {
      base: './build',
      css: './build/assets/css',
      html: './build/**/*.html',
      images: './build/assets/images',
      js: './build/assets/js'
    }
  }
};

module.exports = config;
