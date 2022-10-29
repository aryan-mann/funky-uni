/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js,svelte,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: "#7C7E92",
          50: "#CACBD3",
          100: "#BFC0CA",
          200: "#A9AAB7",
          300: "#9394A5",
          400: "#7C7E92",
          500: "#616375",
          600: "#484956",
          700: "#2E2F38",
          800: "#151519",
          900: "#000000",
        },
        accent: {
          DEFAULT: "#F7BD36",
          50: "#FCC6BF",
          100: "#FCBCAC",
          200: "#FAB085",
          300: "#F8B05D",
          400: "#F7BD36",
          500: "#F0D10A",
          600: "#B9BF08",
          700: "#738E06",
          800: "#3C5D04",
          900: "#162C02",
        },
      },
    },
  },
  plugins: [],
};
