<template>
  <div class="app-card" :class="{ 'app-card-disabled': !item.price.curr }">
    <header class="app-card__img">
      <img
        :src="`${$router.options.base}${item.img}`"
        :alt="`${item.author} ${item.name}`"
      />
    </header>
    <div class="app-card__content">
      <h2>{{ item.name }}<br />{{ item.author }}</h2>
      <footer class="app-card__footer">
        <div class="app-card__price">
          <template v-if="item.price.curr">
            <template v-if="!item.price.prev">
              <h3>{{ item.price.curr }}</h3>
              <ButtonBuy
                @click.native="buyHandler(item.id)"
                :isLoading="isLoading"
                :inCart="$attrs.inCart"
              />
            </template>
            <template v-else>
              <div>
                <h5>{{ item.price.prev }}</h5>
                <h3>{{ item.price.curr }}</h3>
              </div>
              <ButtonBuy
                @click.native="buyHandler(item.id)"
                :isLoading="isLoading"
                :inCart="$attrs.inCart"
              />
            </template>
          </template>
          <template v-else>
            <h3>Продана на аукционе</h3>
          </template>
        </div>
      </footer>
    </div>
  </div>
</template>

<script>
import ButtonBuy from "@/components/ButtonBuy";
export default {
  name: "Card",
  props: {
    item: {
      type: Object,
      required: true,
    },
  },
  components: {
    ButtonBuy,
  },
  data() {
    return {
      isLoading: false,
    };
  },
  methods: {
    async buyHandler(id) {
      this.isLoading = true;
      console.log(this.axios);
      const response = await this.axios(
        "https://jsonplaceholder.typicode.com/posts/1"
      );
      this.isLoading = false;
      console.log(response);
      if (response.status === 200) {
        this.$emit("toCart", id);
      }
    },
  },
};
</script>

<style lang="scss">
$border: #e1e1e1;
$price-prev: #a0a0a0;

.app-card {
  border: 1px solid $border;
  &__img {
    width: 100%;
    height: 160px;
    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
  }
  &__content {
    height: 168px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 20px 24px 24px 24px;
  }
  &__price {
    height: 48px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    h5 {
      width: 100%;
      text-decoration: line-through;
      color: $price-prev;
    }
  }
  &.app-card-disabled {
    opacity: 0.5;
  }
}
</style>
