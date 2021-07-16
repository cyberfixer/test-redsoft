<template>
  <div id="app">
    <Header />
    <router-view />
    <Footer />
  </div>
</template>

<script>
import Header from "@/components/Part/Header";
import Footer from "@/components/Part/Footer";
export default {
  name: "App",
  components: {
    Header,
    Footer,
  },
};
</script>

<style lang="scss">
$background: #f6f3f3;
$text: #343030;
$border: #e1e1e1;
$btn-normal: #403432;
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  &::before,
  &::after {
    box-sizing: border-box;
  }
}

body {
  font-family: "Merriweather", serif;
  font-size: 14px;
  background-color: $background;
  color: $text;
}

#app {
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

h1 {
  font-weight: 700;
  font-size: 24px;
  line-height: 36px;
}
h2 {
  font-weight: 400;
  font-size: 18px;
  line-height: 27px;
}
h3 {
  font-weight: 700;
  font-size: 16px;
  line-height: 24px;
}
h4 {
  font-weight: 700;
  font-size: 14px;
  line-height: 21px;
}
h5 {
  font-weight: 400;
  font-size: 14px;
  line-height: 21px;
}
h6 {
  font-weight: 300;
  font-size: 14px;
  line-height: 21px;
}

a {
  text-decoration: none;
  color: $text;
}

button {
  width: 122px;
  height: inherit;
  font-family: "Merriweather", serif;
  font-size: 14px;
  background-color: $btn-normal;
  color: white;
  border: none;
  cursor: pointer;
}

.container {
  width: 1216px;
  margin: 0 auto;
  padding: 0 8px;
}
</style>
