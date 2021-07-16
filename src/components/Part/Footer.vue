<template>
  <footer class="app-footer">
    <div class="app-footer__content container">
      <Navbar />
      <div class="app-footer__contacts">
        <a href="tel:+7 (495) 555-55-55" class="app-footer__phone"
          >+7 (495) 555-55-55</a
        >
        <a
          href="https://yandex.ru/maps/213/moscow/house/ulitsa_raspletina_24/Z04Ycg9kS00HQFtvfXt4dXhmYw==/?ll=37.484280%2C55.794457&z=17.11"
          target="_blank"
          class="app-footer__address"
          >г. Москва, ул. Расплетина, 24</a
        >
      </div>
    </div>
  </footer>
</template>

<script>
import Navbar from "@/components/Navbar";
export default {
  name: "Footer",
  components: {
    Navbar,
  },
};
</script>

<style lang="scss">
.app-footer {
  width: 100%;
  height: 96px;

  background-color: var(--footer-back);
  &__content {
    height: inherit;
    display: flex;
    justify-content: space-between;
    align-items: center;
    a {
      color: var(--footer-text);
    }
  }
  &__contacts {
    width: 449px;
    display: flex;
    justify-content: space-between;
  }
  &__phone {
    position: relative;
    margin-left: 23px;
    &::before {
      position: absolute;
      top: 4px;
      left: -23px;
      content: "";
      width: 14px;
      height: 14px;
      background-image: url("~@/assets/img/svg/i-phone.svg");
      background-repeat: no-repeat;
      background-size: contain;
      background-position: center;
    }
  }
  &__address {
    position: relative;
    &::before {
      position: absolute;
      top: 4px;
      left: -23px;
      content: "";
      width: 11px;
      height: 14px;
      background-image: url("~@/assets/img/svg/i-address.svg");
      background-repeat: no-repeat;
      background-size: contain;
      background-position: center;
    }
  }
}
</style>
