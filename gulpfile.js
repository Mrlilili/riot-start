//import gulp from 'gulp';
//import riot from 'gulp-riot';
//
//gulp.task('riot', ()=> {
//    gulp.src('ex.tag')
//        .pipe(riot())
//        .pipe(gulp.dest('dest'));
//});


var gulp = require('gulp');

var riot = require('gulp-riot');

gulp.task('riot', function () {
    return gulp.src('ex.tag')
        .pipe(riot({
            compact: true // <- this
        }))
        .pipe(gulp.dest('dest'));
});
