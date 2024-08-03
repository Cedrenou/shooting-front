<template>
  <div class="info-contact">
    <div
      :class="{ active: activeButton === 'phone' }"
      class="item"
      @click="handleActiveButton('phone')"
    >
      <img alt="telephone" src="/icons/phone.svg" />
      <span v-if="activeButton === 'phone'">07.68.58.64.44</span>
    </div>
    <div
      :class="{ active: activeButton === 'mail' }"
      class="item"
      @click="handleActiveButton('mail')"
    >
      <img alt="mail" src="/icons/mail.svg" />
      <span v-if="activeButton === 'mail'">mail</span>
    </div>
    <div
      :class="{ active: activeButton === 'messenger' }"
      class="item"
      @click="handleActiveButton('messenger')"
    >
      <img alt="messenger" src="/icons/messenger.svg" />
      <span v-if="activeButton === 'messenger'">messenger</span>
    </div>
    <div
      :class="{ active: activeButton === 'whatsapp' }"
      class="item"
      @click="handleActiveButton('whatsapp')"
    >
      <img alt="whatsapp" src="/icons/whatsapp.svg" />
      <span v-if="activeButton === 'whatsapp'">whatsapp</span>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const activeButton = ref('');

const handleActiveButton = (button) => {
  activeButton.value = activeButton.value === button ? '' : button;
};
</script>

<style scoped>
.info-contact {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 1rem;
}

.item {
  cursor: pointer;
  background-color: #fff;
  color: #1c3052;
  padding: 0.5rem;
  border-radius: 500px;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 1.5rem;
  font-weight: 400;
  margin: 0 0.5rem;
}

.item span {
  margin-left: 0.5rem;
}
</style>
