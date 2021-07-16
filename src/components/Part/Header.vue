<template>
  <header class="app-header">
    <div class="app-header__content container">
      <Navbar />

      <div class="app-header__search">
        <input type="text" placeholder="Поиск по названию картины" />
        <button>Найти</button>
      </div>
    </div>
  </header>
</template>

<script>
import Navbar from "@/components/Navbar";
export default {
  name: "Header",
  components: {
    Navbar,
  },
};
</script>

<style lang="scss">
$border: #e1e1e1;

.app-header {
  width: 100%;
  min-height: 96px;
  border-bottom: 2px solid $border;
  &__content {
    height: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  &__search {
    width: 416px;
    height: 48px;
    input {
      width: 294px;
      height: inherit;
      font-family: "Merriweather", serif;
      font-size: 14px;
      border: 1px solid $border;
      background: transparent;
      outline: none;
      padding-left: 16px;
    }
  }
}
</style>
