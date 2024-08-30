<!-- FacebookFeed.vue -->
<template>
  <div class="facebook-feed">
    <h3 class="text-2xl font-bold mb-4">
      Notre dernière actualité
    </h3>
    <div
      v-if="loading"
      class="text-center"
    >
      <p>Chargement du dernier post...</p>
    </div>
    <div
      v-else-if="error"
      class="text-red-500"
    >
      <p>Erreur lors du chargement du post : {{ error }}</p>
    </div>
    <div
      v-else-if="lastPost"
      class="bg-white shadow-md rounded-lg p-4"
    >
      <p class="mb-2 text-gray-600">
        {{ formatDate(lastPost.created_time) }}
      </p>
      <p class="mb-4">
        {{ lastPost.message }}
      </p>
      <a
        :href="lastPost.permalink_url"
        target="_blank"
        rel="noopener noreferrer"
        class="text-blue-600 hover:underline"
      >
        Voir sur Facebook
      </a>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';

const FB_APP_ID = '1016175703319947';
const FB_PAGE_ID = 'shootingstarsroller';
const ACCESS_TOKEN = '572e074ebd0fc2a3dffc5452e872b87d';

const lastPost = ref(null);
const loading = ref(true);
const error = ref(null);

function loadFacebookSDK(d, s, id) {
  const fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  const js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/fr_FR/sdk.js';
  fjs.parentNode.insertBefore(js, fjs);
}

function initFacebookSDK() {
  return new Promise((resolve) => {
    window.fbAsyncInit = function() {
      FB.init({
        appId: FB_APP_ID,
        xfbml: true,
        version: 'v18.0'
      });
      resolve();
    };
  });
}

async function getLastPost() {
  try {
    const response = await FB.api(
        `/${FB_PAGE_ID}/posts`,
        'GET',
        { access_token: ACCESS_TOKEN, limit: 1 }
    );
    if (response && response.data && response.data.length > 0) {
      lastPost.value = response.data[0];
    }
  } catch (e) {
    error.value = e.message;
  } finally {
    loading.value = false;
  }
}

function formatDate(dateString) {
  const date = new Date(dateString);
  return date.toLocaleDateString('fr-FR', {
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  });
}

onMounted(async () => {
  loadFacebookSDK(document, 'script', 'facebook-jssdk');
  await initFacebookSDK();
  await getLastPost();
});
</script>