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
    return gulp.src('./demo*/*.tag')
        .pipe(riot())
        .pipe(gulp.dest('./'));
});
gulp.task('watch',function(){
    return gulp.watch('./demo*/*.tag',function(info){

        return gulp.src('./demo*/*.tag')
            .pipe(riot())
            .pipe(gulp.dest('./'));
    })
})
