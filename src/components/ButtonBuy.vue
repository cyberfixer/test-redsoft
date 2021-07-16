<template>
  <button class="app-button-buy" :class="{ 'app-button-buy-incart': inCart }">
    <template v-if="!isLoading && !inCart">Купить</template>
    <template v-if="!isLoading && inCart"> В корзине </template>
    <template v-if="isLoading">
      <svg>
        <circle cx="61" cy="24" r="12"></circle>
      </svg>
    </template>
  </button>
</template>

<script>
export default {
  name: "ButtonBuy",
  props: {
    isLoading: {
      type: Boolean,
      default: false,
    },
    inCart: {
      type: Boolean,
      default: false,
    },
  },
};
</script>

<style lang="scss">
$btn-normal: #403432;
$btn-incart: #5b3a32;

.app-button-buy {
  svg {
    width: inherit;
    height: inherit;
    animation: rotate 2s linear infinite;
    @keyframes rotate {
      0% {
        transform: rotate(0deg);
      }
      100% {
        transform: rotate(360deg);
      }
    }
    circle {
      $offset: 100;
      width: 100%;
      height: 100%;
      fill: none;
      stroke-width: 4;
      stroke: white;
      stroke-linecap: round;
      stroke-dasharray: $offset;
      stroke-dashoffset: $offset;
      animation: animate 4s linear infinite;
      @keyframes animate {
        0% {
          stroke-dashoffset: $offset;
        }
        100% {
          stroke-dashoffset: 0;
        }
      }
    }
  }
  &-incart {
    background-color: $btn-incart;
    position: relative;
    padding-left: 17px;
    &::before {
      position: absolute;
      left: 11px;
      top: 16px;
      content: "";
      width: 16px;
      height: 13px;
      background-image: url("~@/assets/img/svg/i-incart.svg");
      background-repeat: no-repeat;
      background-position: center;
      background-size: contain;
    }
  }
}
</style>
