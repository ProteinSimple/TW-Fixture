// Based on
// https://gist.github.com/mikaelbr/54b02412fc651d4e5c9a

var browserify = require('browserify');
var gulp = require('gulp');
var gutil = require('gulp-util');
var notify = require('gulp-notify');
var reactify = require('reactify');
var rename = require('gulp-rename');
var source = require('vinyl-source-stream');
var watchify = require('watchify');

var src_dir = './';
var build_dir = './static/js';


// Based on: http://blog.avisi.nl/2014/04/25/how-to-keep-a-fast-build-with-browserify-and-reactjs/
function buildScript(file, watch) {
    var props = watchify.args;
    props.entries = [src_dir + '/' + file];
    props.debug = true;

    var bundler = watch ? watchify(browserify(props)) : browserify(props);

    bundler.transform(reactify);
    function rebundle() {
        var stream = bundler.bundle();
        return stream.on('error', notify.onError({
            title: "Compile Error",
            message: "<%= error.message %>"
        }))
        .pipe(source(file))
        .pipe(rename('bundle.js'))
        .pipe(gulp.dest(build_dir + '/'));
    }
    bundler.on('update', function() {
        rebundle();
        gutil.log('Rebundle...');
    });
    return rebundle();
}


gulp.task('build', function() {
    return buildScript('main.jsx', false);
});


gulp.task('default', ['build'], function() {
    return buildScript('main.jsx', true);
});
