/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './pages/**/*.{js,ts,jsx,tsx,mdx}',
    './components/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        'preto': '#101214',
        'verde': '#32FF7A',
        'branco': '#FFFFFF',
      },
    },
  },
  plugins: [],
}
