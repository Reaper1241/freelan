<script setup>
const formData = reactive({
  name: '',
  email: '',
  phone: '',
  text: '',
  consent: false
});

const isLoading = ref(false);
const errorMessage = ref('');

const validateForm = () => {
  if (!formData.name.trim()) {
    errorMessage.value = 'Пожалуйста, введите ваше имя';
    return false;
  }
  
  if (!formData.email.trim()) {
    errorMessage.value = 'Пожалуйста, введите email';
    return false;
  } else if (!/^\S+@\S+\.\S+$/.test(formData.email)) {
    errorMessage.value = 'Пожалуйста, введите корректный email';
    return false;
  }
  
  if (!formData.text.trim()) {
    errorMessage.value = 'Пожалуйста, введите текст сообщения';
    return false;
  }
  
  if (!formData.consent) {
    errorMessage.value = 'Необходимо дать согласие на обработку персональных данных';
    return false;
  }
  
  errorMessage.value = '';
  return true;
};

const submitForm = async () => {
  if (!validateForm()) return;
  
  isLoading.value = true;
  
  try {
    const form = new FormData();
    form.append('name', formData.name);
    form.append('email', formData.email);
    form.append('phone', formData.phone);
    form.append('text', formData.text);
    form.append('consent', formData.consent);
    
    const response = await $fetch('http://81.19.136.16:8080/create', {
      method: 'POST',
      body: form
    });
    
    alert('Ваша заявка успешно отправлена! ID: ' + response.id);
    // Сброс формы
    formData.name = '';
    formData.email = '';
    formData.phone = '';
    formData.text = '';
    formData.consent = false;
  } catch (error) {
    console.error('Ошибка при отправке:', error);
    errorMessage.value = 'Произошла ошибка при отправке. Пожалуйста, попробуйте позже.';
  } finally {
    isLoading.value = false;
  }
};
</script>

<template>
  <section id="contacts" class="main-contact">
    <main class="main__white">
      <div class="container">
        <h1 class="contact_h1">Контакты</h1>
        <div class="main_block">
          <div class="left">
            <h2 class="phone">+456 344 267 15 24</h2>
            <h2 class="email">antonovoleg@service.com</h2>
            <p class="address">Москва, регистрационный номер 0/123/45</p>
          </div>
          <div class="right">
            <form class="form" @submit.prevent="submitForm">
              <input v-model="formData.name" class="input" type="text" placeholder="Имя" required>
              <input v-model="formData.email" class="input" type="email" placeholder="Email" required>
              <input v-model="formData.phone" class="input" type="tel" placeholder="Телефон">
              <textarea v-model="formData.text" class="input textarea" placeholder="Ваше сообщение" required></textarea>
              
              <div class="consent-checkbox">
                <input 
                  type="checkbox" 
                  id="consent" 
                  v-model="formData.consent"
                  class="checkbox-input"
                >
                <label for="consent" class="consent-label">
                  Даю согласие на обработку персональных данных в соответствии с 
                  <NuxtLink to="/politics" class="policy-link">Политикой конфиденциальности</NuxtLink>
                </label>
              </div>
              
              <div v-if="errorMessage" class="error-message">{{ errorMessage }}</div>
              
              <button type="submit" class="button" :disabled="isLoading">
                {{ isLoading ? 'Отправка...' : 'Отправить сообщение' }}
              </button>
            </form>
          </div>
        </div>    
      </div>
    </main>
  </section>
</template>

<style lang="css" scoped>
.main__white {
    background: white;
    width: 100%;
    padding: 20px;
    box-sizing: border-box;
}

.error-message {
  color: #ff3333;
  margin: 10px 0;
  font-size: 0.9rem;
  text-align: center;
}

.container {
    display: flex;
    margin: 0 auto;
    max-width: 1200px;
    flex-direction: column;
    justify-content: center;
    padding: 0 20px;
}

.contact_h1 {
    color: black;
    font-size: 2.5rem;
    text-align: center;
    margin: 60px 0 40px;
}

.main_block {
    display: flex;
    justify-content: space-between;
    width: 100%;
    max-width: 900px;
    margin: 0 auto;
    flex-wrap: wrap;
    gap: 40px;
}

.left {
    display: flex;
    flex-direction: column;
    flex: 1;
    min-width: 300px;
}

.right {
    display: flex;
    flex-direction: column;
    gap: 15px;
    flex: 1;
    min-width: 300px;
}

.phone, .email {
    font-size: 1.3rem;
    margin-bottom: 15px;
    color: #333;
}

.address {
    font-size: 1rem;
    color: #666;
    line-height: 1.5;
}

.input {
    width: 100%;
    height: 50px;
    border: 1px solid #ddd;
    border-radius: 6px;
    padding: 0 15px;
    box-sizing: border-box;
    font-size: 1rem;
    transition: border-color 0.3s ease;
}

.input:focus {
    border-color: #4567ff;
    outline: none;
}

.textarea {
    height: 120px;
    padding: 15px;
    resize: vertical;
    min-height: 100px;
}

.input::placeholder {
    color: #999;
    font-size: 0.95rem;
}

.button {
    display: flex;
    justify-content: center;
    width: 100%;
    background-color: rgb(69, 69, 255);
    color: white;
    height: 50px;
    align-items: center;
    border: none;
    border-radius: 6px;
    margin: 20px 0 50px;
    cursor: pointer;
    font-size: 1rem;
    transition: all 0.3s ease;
}
.form{
  gap: 10px;
}
.button:hover {
    background-color: rgb(50, 50, 220);
    transform: translateY(-2px);
}
    .input{
      margin-bottom: 10px;
    }
.button:disabled {
    background-color: #aaa;
    cursor: not-allowed;
    transform: none;
}

.consent-checkbox {
  display: flex;
  align-items: center;
  margin: 10px 0;
}

.checkbox-input {
  width: 18px;
  height: 18px;
  margin-right: 10px;
  cursor: pointer;
}

.consent-label {
  font-size: 0.9rem;
  color: #555;
  cursor: pointer;
}

/* Медиа-запросы для адаптивности */
@media (max-width: 768px) {
    .contact_h1 {
        font-size: 2rem;
        margin: 40px 0 30px;
    }
    
    .main_block {
        flex-direction: column;
        gap: 30px;
    }
    .input{
      margin-bottom: 10px;
    }
    .left, .right {
        min-width: 100%;
    }
    .form{
      gap: 10px;
    }
    .phone, .email {
        font-size: 1.2rem;
    }
}

@media (max-width: 480px) {
    .contact_h1 {
        font-size: 1.8rem;
        margin: 30px 0 25px;
    }
    .form{
      gap: 10px;
    }
    .container {
        padding: 0 15px;
    }
    
    .phone, .email {
        font-size: 1.1rem;
    }
    
    .input {
        height: 45px;
        font-size: 0.95rem;
    }
    
    .button {
        height: 45px;
        font-size: 0.95rem;
    }
    
    .consent-label {
      font-size: 0.85rem;
    }
}
</style>
