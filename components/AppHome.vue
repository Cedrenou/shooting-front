<template>
  <section class="home-section container">
    <div class="overlay">
      <img alt="logo club" src="/img/stars.svg" />

      <h1>Roller Club de Touraine</h1>
      <h2>
        DES SENSATIONS FORTES <br />
        TOUTES LES SEMAINES
      </h2>
      <p>
        Venez jouer avec nous <br />
        au sein de notre club à Tours
      </p>

      <AppContactInfo />
    </div>
  </section>
</template>

<script lang="ts" setup></script>

<style scoped>
@keyframes zoomBackground {
  0% {
    transform: scale(1);
  }
  50% {
    transform: scale(1.1);
  }
  100% {
    transform: scale(1);
  }
}

.home-section {
  position: relative;
  width: 100%;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  color: white;
}

.home-section::before {
  content: '';
  position: absolute;
  background-image: url('/img/home.jpg');
  background-size: cover;
  background-position: center;
  animation: zoomBackground 20s infinite;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
  overflow: hidden;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(14, 48, 116, 0.8);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  font-size: 2rem;
  font-weight: bold;
}

h1 {
  font-weight: 500;
  font-size: 3rem;
}

h2 {
  font-weight: 700;
  font-size: 4rem;
}

p {
  font-weight: 500;
  font-size: 2rem;
}
</style>
