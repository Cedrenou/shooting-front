<!-- LeafletMap.vue -->
<template>
  <div
    ref="mapContainer"
    class="w-full h-64 md:h-96 rounded-lg shadow-lg"
  />
</template>

<script setup>
import { ref, onMounted } from 'vue';
import 'leaflet/dist/leaflet.css';
import L from 'leaflet';

const props = defineProps({
  latitude: {
    type: Number,
    required: true
  },
  longitude: {
    type: Number,
    required: true
  },
  zoom: {
    type: Number,
    default: 15
  }
});

const mapContainer = ref(null);

onMounted(() => {
  const map = L.map(mapContainer.value).setView([props.latitude, props.longitude], props.zoom);

  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  L.marker([props.latitude, props.longitude])
      .addTo(map)
      .bindPopup('Club de hockey, les Shooting Stars')
      .openPopup();
});
</script>