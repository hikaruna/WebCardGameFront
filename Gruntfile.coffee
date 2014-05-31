module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    dir:
      src: 'src'
      dist: 'dist'

    watch:
      files: ['<%= dir.src %>/**/*.coffee']
      tasks: ['coffeelint', 'coffee']

    coffee:
      compile:
        expand: true,
        cwd: '<%= dir.src %>'
        src: '*.coffee'
        dest: '<%= dir.dist %>/'
        ext: '.js'

    coffeelint:
      all: '<%= dir.src %>/**/*.coffee'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-coffeelint'
