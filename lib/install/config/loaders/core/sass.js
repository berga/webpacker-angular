const { env } = require('../configuration.js')

module.exports = {
  test: /\.(scss|sass|css)$/i,
  loaders: [
      'to-string-loader',
      { loader: 'css-loader', options: { minimize: env.NODE_ENV === 'production' } },
      'sass-loader'
    ]
}
