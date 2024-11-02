<!-- App.vue -->
<template>
  <div class="min-h-screen font-sans">
    <!-- Section Accueil -->
    <section
      id="accueil"
      class="h-screen relative overflow-hidden"
    >
      <!-- Image de fond avec animation -->
      <div
        class="absolute inset-0 bg-cover bg-center animate-gentle-zoom bg-image"
      />

      <!-- Overlay bleu transparent -->
      <div class="absolute inset-0 bg-primary opacity-60" />

      <!-- Logo -->
      <img
        src="./assets/stars.svg"
        alt="Logo du club"
        class="absolute top-4 left-4 h-40 z-10"
      >

      <!-- Texte du titre -->
      <div class="absolute inset-0 flex flex-col items-center justify-center z-10">
        <h1 class="text-6xl font-bold text-white text-center">
          Shooting Stars
        </h1>
        <p class="text-xl text-white mb-8 text-center">
          Vivez la passion du Hockey dans une ambiance conviviale !
        </p>
        <a
          :href="urlHelloAsso"
          target="_blank"
          class="bg-white text-blue-600 py-2 px-6 rounded-full font-semibold hover:bg-blue-100 transition duration-300"
        >
          Obtenez votre licence maintenant
        </a>
      </div>
    </section>

    <!-- Section Histoire -->
    <section
      id="histoire"
      class="py-16 px-4 md:px-0 mt-10"
    >
      <div class="container mx-auto flex flex-col md:flex-row">
        <div class="md:w-1/2 mb-8 md:mb-0">
          <h2 class="text-3xl font-bold mb-4 text-primary">
            Club de roller hockey actif et dynamique
          </h2>
          <p>
            Fondé en 1993, le Club de Roller Hockey de Tours est une
            référence incontournable pour les passionnés de roller-hockey.
            Bénéficiez de séances d'entraînement de qualité, d'événements
            hebdomadaires passionnants et d'une ambiance conviviale qui fait toute
            la différence !
          </p>
        </div>
        <div class="md:w-1/2">
          <!-- Placeholder pour le carrousel -->
          <div class="bg-gray-200 h-64 flex items-center justify-center">
            <Carousel
              :images="historyImages"
              :autoplay="true"
              :interval="3000"
            />
          </div>
        </div>
      </div>
    </section>

    <!-- Section Inscription -->
    <section
      id="inscription"
      class="container mx-auto flex flex-col items-center py-16 px-4 md:px-0 justify-center"
    >
      <h1 class="text-4xl font-bold text-primary">
        Inscription pour la saison 2024-2025
      </h1>

      <a
        :href="urlHelloAsso"
        target="_blank"
        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-4 px-6 rounded-full mt-4"
      >Inscrivez-vous</a>
    </section>

    <!-- Section Rencontrez-nous -->
    <section
      id="rencontrez-nous"
      class="py-16 bg-gray-100"
    >
      <div class="container mx-auto flex flex-col md:flex-row items-start">
        <div class="container mx-auto px-4">
          <h2 class="text-3xl font-bold mb-8 text-center text-primary">
            Venez nous rencontrer
          </h2>
          <div class="flex flex-col md:flex-row md:space-x-8">
            <div class="w-full md:w-2/3 mb-8 md:mb-0">
              <LeafletMap
                :latitude="47.381041"
                :longitude="0.705796"
                :zoom="15"
              />
            </div>
            <div class="w-full md:w-1/3">
              <h3 class="text-4xl font-semibold mb-4 text-primary">
                Contactez-nous
              </h3>
              <p class="mb-2 text-xl">
                Email: rct.shootingstars@gmail.com
              </p>
              <p class="mb-2 text-xl">
                Téléphone: 07 68 58 64 44
              </p>
              <p>Adresse: Gymnase, 54 Rue Jules Guesde, 37000 Tours (France)</p>

              <h4 class="text-2xl font-semibold my-4 text-primary">
                Suivez-nous
              </h4>
              <a
                :href="urlFacebook"
                target="_blank"
                rel="noopener noreferrer"
                class="inline-block bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded transition duration-300"
              >
                <span class="flex items-center">
                  <svg
                    class="w-5 h-5 mr-2 fill-current"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z" />
                  </svg>
                  Facebook
                </span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section
      v-if="false"
      class="py-10 bg-gray-200 "
    >
      <FacebookFeed />
    </section>
    <!-- Section Partenaires -->
    <section
      id="partenaires"
      class="py-16 bg-gray-100"
    >
      <div class="container mx-auto px-4">
        <h2 class="text-4xl font-bold mb-12 text-center text-primary">
          Nos Partenaires
        </h2>
        <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-8">
          <div
            v-for="(partner, index) in partners"
            :key="index"
            class="flex flex-col items-center"
          >
            <a
              :href="partner.url"
              target="_blank"
              class="w-full"
            >
              <div class="bg-white p-6 rounded-lg shadow-lg hover:shadow-xl transition-shadow duration-300 w-full aspect-square flex items-center justify-center">
                <img
                  :src="partner.logo"
                  :alt="partner.name"
                  class="max-w-full max-h-full object-contain"
                >
              </div>
              <p class="mt-4 text-center font-semibold text-gray-700">
                {{ partner.name }}
              </p>
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Section FAQ -->
    <section
      id="faq"
      class="py-16 bg-white"
    >
      <div class="container mx-auto px-4">
        <h2 class="text-4xl font-bold mb-12 text-center text-blue-800">
          Foire Aux Questions
        </h2>
        <div class="max-w-3xl mx-auto">
          <div
            v-for="(item, index) in faqItems"
            :key="index"
            class="mb-4"
          >
            <!--          add some accesibility to the button  -->
            <button
              :id="'faq-item-' + index"
              aria-expanded="true"
              :aria-controls="'faq-item-' + index"
              class="flex justify-between items-center w-full p-5 font-medium text-left text-gray-900 bg-gray-100 rounded-t-xl border border-b-0 border-gray-200 hover:bg-gray-200 focus:ring-4 focus:ring-gray-200"
              @click="toggleItem(index)"
            >
              <span>{{ item.question }}</span>
              <svg
                class="w-6 h-6"
                :class="{ 'rotate-180': item.isOpen }"
                fill="currentColor"
                viewBox="0 0 20 20"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"
                />
              </svg>
            </button>
            <div
              v-show="item.isOpen"
              class="p-5 border border-b-0 border-gray-200 bg-white"
            >
              <p class="mb-2 text-gray-700">
                {{ item.answer }}
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <footer class="bg-primary text-white py-8">
      <div class="container mx-auto px-4">
        <div class="flex flex-wrap justify-between items-center">
          <div class="w-full md:w-1/3 mb-4 md:mb-0">
            <h3 class="text-xl font-semibold mb-2">
              Shooting Stars
            </h3>
            <p>Club de Roller-Hockey</p>
          </div>
          <div class="w-full md:w-1/3 mb-4 md:mb-0">
            <h4 class="text-lg font-semibold mb-2">
              Contact
            </h4>
            <p>Email: rct.shootingstars@gmail.com</p>
            <p>Tél: 07 68 58 64 44</p>
          </div>
          <div class="w-full md:w-1/3 text-center md:text-right">
            <h4 class="text-lg font-semibold mb-2">
              Suivez-nous
            </h4>
            <a
              :href="urlFacebook"
              target="_blank"
              rel="noopener noreferrer"
              class="inline-block bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded transition duration-300"
            >
              <span class="flex items-center">
                <svg
                  class="w-5 h-5 mr-2 fill-current"
                  viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z" />
                </svg>
                Facebook
              </span>
            </a>
          </div>
        </div>
        <div class="mt-8 text-center">
          <p>&copy; 2024 Shooting Stars Roller-Hockey. Tous droits réservés.</p>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
import Carousel from './components/Carousel.vue';
import photo1 from './assets/photo1.jpg';
import photo2 from './assets/photo2.jpg';
import photo3 from './assets/photo3.jpg';
import photo4 from './assets/photo4.jpg';
import photo5 from './assets/photo5.jpg';
import photo6 from './assets/photo6.jpeg';
import LeafletMap from '@/components/LeafletMap.vue';
import partner1 from './assets/picto-georges.svg';
import partner2 from './assets/Tours_logo_2015.svg';
import partner3 from './assets/La-Maison-des-Halles-logo.jpg';
import partner4 from './assets/Fédération_française_Roller_Sports_logo_2011.png';
import FacebookFeed from './components/FacebookFeed.vue';
import {ref} from 'vue';

const urlHelloAsso = "https://www.helloasso.com/associations/roller-club-de-touraine/adhesions/adhesion-saison-2024-2025-roller-club-de-touraine-shooting-stars-2";
const urlFacebook = "https://www.facebook.com/shootingstarsroller/";

const historyImages = [
    photo1,
    photo2,
    photo3,
    photo4,
    photo5,
    photo6
];

const partners = [
  { name: "Ville de Tours", logo: partner2, url: "https://www.tours.fr/", alt: "Ville de Tours partenaires" },
  { name: "Les Georges", logo: partner1, url: "https://www.lesgeorges.com/" , alt: "Les Georges partenaires"},
  { name: "La Maison des Halles", logo: partner3, url: "https://lamaisondeshalles.eatbu.com/?lang=fr#", alt: "La Maison des Halles partenaires" },
  { name: "Fédération Française de Roller & Skateboard ", logo: partner4, url: "https://ffroller-skateboard.fr/" , alt: "Fédération Française de Roller & Skateboard partenaires"},
];

const faqItems = ref([
  {
    question: "Combien coûte l'adhésion ?",
    answer: "L'adhésion annuelle au club coûte 180€.",
    isOpen: false
  },
  {
    question: "Puis-je m'inscrire en cours d'année ?",
    answer: "Oui, il est possible de s'inscrire à tout moment de l'année.",
    isOpen: false
  },
  {
    question: "Est-il possible de venir faire un essai ?",
    answer: "Absolument ! Nous proposons deux séances d'essai gratuites. Contactez-nous pour en savoir plus.",
    isOpen: false
  },
  {
    question: "Quels équipements dois-je apporter ?",
    answer: "Pour les séances d'entraînement, il est nécessaire de venir avec des rollers, pour le reste il est possible de vous prêter du matériel si vous nous prévenez à l'avance.",
    isOpen: false
  },
]);

const toggleItem = (index) => {
  faqItems.value[index].isOpen = !faqItems.value[index].isOpen;
};
</script>

<style>
.bg-image {
  background-image: url("./assets/home.jpg");
}

@keyframes gentle-zoom {
  0%, 100% { transform: scale(1); }
  50% { transform: scale(1.05); }
}

.animate-gentle-zoom {
  animation: gentle-zoom 20s infinite ease-in-out;
}
</style>
