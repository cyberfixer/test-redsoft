<template>
  <nav class="app-navbar">
    <router-link to="/" class="app-logo"> </router-link>
    <router-link to="#" v-for="navbarItem in navbarList" :key="navbarItem">{{
      navbarItem
    }}</router-link>
  </nav>
</template>

<script>
export default {
  name: "Navbar",
  data() {
    return {
      navbarList: ["Каталог", "Доставка", "Оплата", "Контакты", "О галерее"],
    };
  },
};
</script>

<style lang="scss">
.app-navbar {
  width: 615px;
  height: inherit;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.app-logo {
  width: 48px;
  height: 48px;
  position: relative;
  margin-right: 48px;
  &::after {
    position: absolute;
    content: "";
    width: inherit;
    height: inherit;
    background-image: url("~@/assets/img/svg/logo.svg");
  }
}
</style>
