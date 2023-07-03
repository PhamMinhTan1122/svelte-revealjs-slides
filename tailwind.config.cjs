// const production = !process.env.ROLLUP_WATCH;
// module.exports = {
//   future: {
//     purgeLayersByDefault: true,
//     removeDeprecatedGapUtilities: true,
//   },
//   plugins: [
//   ],
//   purge: {
//     content: [
//      "./src/App.svelte",
//     ],
//     enabled: production // disable purge in dev
//   },
// };

module.exports = {
  content: ['./src/**/*.{html,js,svelte,ts}'],
  theme: {
    extend: {}
  },
  plugins: []
};