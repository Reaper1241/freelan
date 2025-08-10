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

// Функция для форматирования телефона
const formatPhone = (phone) => {
  // Удаляем все нецифровые символы
  let cleaned = phone.replace(/\D/g, '');
  
  // Если номер начинается с 7 или 8, заменяем на +7
  if (cleaned.startsWith('7') || cleaned.startsWith('8')) {
    cleaned = '7' + cleaned.substring(1);
  } else if (!cleaned.startsWith('7') && cleaned.length > 0) {
    cleaned = '7' + cleaned;
  }
  
  // Ограничиваем длину номера (11 цифр с учетом +7)
  cleaned = cleaned.substring(0, 11);
  
  // Форматируем номер
  let formatted = '';
  if (cleaned.length > 0) {
    formatted = '+' + cleaned.substring(0, 1);
    if (cleaned.length > 1) {
      formatted += ' (' + cleaned.substring(1, 4);
    }
    if (cleaned.length > 4) {
      formatted += ') ' + cleaned.substring(4, 7);
    }
    if (cleaned.length > 7) {
      formatted += ' ' + cleaned.substring(7, 9);
    }
    if (cleaned.length > 9) {
      formatted += ' ' + cleaned.substring(9, 11);
    }
  }
  
  return formatted;
};

// Обработчик ввода телефона
const handlePhoneInput = (e) => {
  const input = e.target;
  const position = input.selectionStart;
  const oldValue = input.value;
  const oldLength = oldValue.length;
  
  // Получаем введенный символ
  const key = e.data || '';
  
  // Форматируем номер
  input.value = formatPhone(input.value);
  
  // Корректируем позицию курсора
  let newPosition = position;
  
  // Если добавляем символ
  if (key && /\d/.test(key)) {
    // Определяем позицию курсора после форматирования
    if (position <= 4) newPosition = 4;
    else if (position <= 8) newPosition = 8;
    else if (position <= 11) newPosition = 11;
    else if (position <= 14) newPosition = 14;
    else newPosition = input.value.length;
    
    // Если вводим в конец, просто ставим курсор в конец
    if (position >= oldLength) {
      newPosition = input.value.length;
    }
  }
  // Если удаляем символ
  else if (position < oldValue.length) {
    // При удалении символа оставляем курсор на том же месте
    newPosition = position;
  }
  
  // Устанавливаем новую позицию курсора
  input.selectionStart = newPosition;
  input.selectionEnd = newPosition;
  
  formData.phone = input.value;
};

// Обработчик вставки (чтобы предотвратить вставку некорректных данных)
const handlePhonePaste = (e) => {
  e.preventDefault();
  const pastedData = e.clipboardData.getData('text/plain');
  const cleaned = pastedData.replace(/\D/g, '');
  let formatted = formatPhone(cleaned);
  document.execCommand('insertText', false, formatted);
};

// Остальной код остается без изменений...
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
    // Отправляем телефон без форматирования (только цифры)
    form.append('phone', formData.phone.replace(/\D/g, ''));
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
              <input 
                v-model="formData.phone" 
                class="input" 
                type="tel" 
                placeholder="+7 (___) ___ __ __"
                @input="handlePhoneInput"
                @paste="handlePhonePaste"
              >
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
    background: #293834;
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
    color: white;
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
    color: white;
}

.address {
    font-size: 1rem;
    color: white;
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
    border-color: #8b7b4e;
    outline: none;
}

.textarea {
    height: 120px;
    padding: 15px;
    resize: vertical;
    min-height: 100px;
}

.input::placeholder {
    color: #8b7b4e;
    font-size: 0.95rem;
}

.button {
    display: flex;
    justify-content: center;
    width: 100%;
    background-color: #8b7b4e;
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
    background-color: #796a44;
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
  color: white;
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
