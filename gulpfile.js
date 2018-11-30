//任务概念

//引入gulp

/*
 task（） 布置任务

    三个参数：

    第一个参数：任务名称  默认任务 default

    第二个参数：该任务依赖的其他任务，是一个数组（可选）

    第三个参数：任务回调函数（任务执行）
 */

var gulp=require('gulp');

gulp.task('default',function(){
    console.log('默认任务');
});

/*
src() 源文件路径 参数可以是一个数组
dest（）目标文件路径 dest参数中的文件夹名称可以自动创建
pipe（）管道 ，表示输送，就是下一步 
 
 */



//实用的任务：

// 1.编译sass
var sass = require('gulp-sass');
gulp.task('sass',function(){
  return gulp.src('aa/css.scss')
             .pipe(sass())
             .pipe(gulp.dest('bb'));
});


//2.布置任务：压缩css文件
var cssmin=require('gulp-cssmin');
gulp.task('cssmin',function(){
  return gulp.src('src/css/*.css')
             .pipe(cssmin())
             .pipe(gulp.dest('dist/css'));
});


//3.重命名
var rename=require('gulp-rename');
gulp.task('rename',function(){
  return gulp.src('bb/css.css')
             .pipe(cssmin())
             .pipe(rename('css.min.css'))
             .pipe(gulp.dest('bb/css'));
});

//4.压缩js并重命名
var uglify=require('gulp-uglify');

gulp.task('uglify',function(){
  return gulp.src('dist/jst/es5/*.js')
             .pipe(uglify())
             .pipe(gulp.dest('dist/js'));
});


//5.合并文件
var concat=require('gulp-concat');
gulp.task('concat',function(){
  return gulp.src(['dist/css/aa.css','dist/css/bb.css'])
             .pipe(concat('all.css'))
             .pipe(gulp.dest('dist/css'));
});

//6.压缩图片

var imagemin=require('gulp-imagemin');

gulp.task('imgmin',function(){
  return gulp.src('src/img/*')
             .pipe(imagemin())
             .pipe(gulp.dest('dist/img'));
});


// es6-->es5
let babel = require('gulp-babel');

gulp.task('es6',function(){
    gulp.src('src/js/*.js')
    .pipe(babel({
        'presets':['es2015']
    }))
    .pipe(gulp.dest('dist/jst/es5'))
});