var config = {
  blog: {
    title: 'Jon Long',
    baseURL: '//writing.linesandwaves.com/'
  },
  port: 3000,
  paths: {
    src: {
      base: './src',
      content: './posts',
      assets: './assets',
      templates: './templates',
      sass: './assets/sass'
    },
    build: {
      base: './build',
      css: './build/assets/css'
    }
  }
};

module.exports = config;
