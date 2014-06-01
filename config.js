var config = {
  port: 3000,
  paths: {
    src: {
      content: './content',
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
