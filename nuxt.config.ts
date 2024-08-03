// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-07-29',
  devtools: { enabled: true },
  modules: [
    [
      '@nuxtjs/google-fonts',
      {
        display: 'swap',
        families: {
          Poppins: [400, 500, 600, 700, 800],
          'Josefin Sans': [400, 500, 600, 700, 800],
          Inter: [400, 500, 600, 700, 800],
        },
      },
    ],
  ],
});
