<template>
  <div class="home container">
    <h1>Картины эпохи Возрождения</h1>
    <main class="app-cards">
      <Card
        v-for="card in cards"
        :key="card.id"
        :item="card"
        @toCart="toCart"
        :inCart="cart[`${card.id}`]"
      />
    </main>
  </div>
</template>

<script>
import Card from "@/components/Card";
export default {
  name: "Home",
  components: {
    Card,
  },
  data() {
    return {
      cards: [
        {
          id: 1,
          img: "img/img-id1.jpg",
          name: "«Рождение Венеры»",
          author: "Сандро Боттичелли",
          price: {
            prev: "2 000 000 $",
            curr: "1 000 000 $",
          },
        },
        {
          id: 2,
          img: "img/img-id2.jpg",
          name: "«Тайная вечеря»",
          author: "Леонардо да Винчи",
          price: {
            prev: null,
            curr: "3 000 000 $",
          },
        },
        {
          id: 3,
          img: "img/img-id3.jpg",
          name: "«Сотворение Адама»",
          author: "Микеланджело",
          price: {
            prev: "6 000 000 $",
            curr: "5 000 000 $",
          },
        },
        {
          id: 4,
          img: "img/img-id4.jpg",
          name: "«Урок анатомии»",
          author: "Рембрандт",
          price: {
            prev: null,
            curr: null,
          },
        },
      ],
      cart: {},
    };
  },
  methods: {
    toCart(id) {
      if (!this.cart) this.cart = { [id]: true };
      else {
        this.cart = {
          ...this.cart,
          [id]: true,
        };
      }
      localStorage.cart = JSON.stringify(this.cart);
    },
  },
  mounted() {
    if (localStorage?.cart) this.cart = JSON.parse(localStorage.cart);
    console.log(this.$router.options.base);
  },
};
</script>

<style lang="scss">
.home {
  height: 100%;
  h1 {
    margin: 45px 0 39px;
  }
}
.app-cards {
  display: grid;
  grid-template-columns: repeat(4, 280px);
  grid-auto-rows: 328px;
  column-gap: 28px;
}
</style>
