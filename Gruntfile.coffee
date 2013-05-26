module.exports = (grunt) ->
  grunt.initConfig
    sass:
      dist:
        files:
          "themes/css/default.css": "themes/sass/default.sass"
    regarde:
      theme:
        files: "themes/sass/*.sass"
        tasks: ["sass"]

  grunt.loadNpmTasks "grunt-contrib-sass"
  grunt.loadNpmTasks "grunt-regarde"

  grunt.registerTask "default", ["sass", "regarde"]
