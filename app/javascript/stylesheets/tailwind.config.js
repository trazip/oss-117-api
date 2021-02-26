module.exports = {
  purge: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        'oss-orange': '#FE5C10',
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
