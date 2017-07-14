module.exports = {
    test: /.ts$/,
    loaders: ['ts-loader', 'angular2-template-loader'],
    exclude: [/\.(spec|e2e)\.ts$/]
}