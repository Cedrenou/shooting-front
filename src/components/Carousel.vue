<template>
  <div class="relative w-full h-64 md:h-96">
    <!-- Image courante -->
    <img
      :src="images[currentIndex]"
      :alt="`Image ${currentIndex + 1}`"
      class="w-full h-full object-cover rounded-lg"
    >

    <!-- Boutons de navigation -->
    <button
      class="absolute top-1/2 left-2 transform -translate-y-1/2 bg-white bg-opacity-50 rounded-full p-2 focus:outline-none hover:bg-opacity-75 transition"
      @click="prev"
    >
      <svg
        xmlns="http://www.w3.org/2000/svg"
        class="h-6 w-6"
        fill="none"
        viewBox="0 0 24 24"
        stroke="currentColor"
      >
        <path
          stroke-linecap="round"
          stroke-linejoin="round"
          stroke-width="2"
          d="M15 19l-7-7 7-7"
        />
      </svg>
    </button>
    <button
      class="absolute top-1/2 right-2 transform -translate-y-1/2 bg-white bg-opacity-50 rounded-full p-2 focus:outline-none hover:bg-opacity-75 transition"
      @click="next"
    >
      <svg
        xmlns="http://www.w3.org/2000/svg"
        class="h-6 w-6"
        fill="none"
        viewBox="0 0 24 24"
        stroke="currentColor"
      >
        <path
          stroke-linecap="round"
          stroke-linejoin="round"
          stroke-width="2"
          d="M9 5l7 7-7 7"
        />
      </svg>
    </button>

    <!-- Indicateurs -->
    <div class="absolute bottom-2 left-1/2 transform -translate-x-1/2 flex space-x-2">
      <button
        v-for="(_, index) in images"
        :key="index"
        :class="[
          'w-3 h-3 rounded-full focus:outline-none transition',
          currentIndex === index ? 'bg-white' : 'bg-white bg-opacity-50 hover:bg-opacity-75'
        ]"
        @click="currentIndex = index"
      />
    </div>
  </div>
</template>

<script setup>
import {ref, onMounted, onUnmounted} from 'vue';

const props = defineProps({
  images: {
    type: Array,
    required: true
  },
  autoplay: {
    type: Boolean,
    default: true
  },
  interval: {
    type: Number,
    default: 5000
  }
});

const currentIndex = ref(0);

const next = () => {
  currentIndex.value = (currentIndex.value + 1) % props.images.length;
};

const prev = () => {
  currentIndex.value = (currentIndex.value - 1 + props.images.length) % props.images.length;
};

let intervalId;

onMounted(() => {
  if (props.autoplay) {
    intervalId = setInterval(next, props.interval);
  }
});

onUnmounted(() => {
  if (intervalId) {
    clearInterval(intervalId);
  }
});
</script>