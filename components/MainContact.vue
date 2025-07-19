<script>
export default {
  data() {
    return {
      formData: {
        name: '',
        email: '',
        phone: ''
      },
      isLoading: false,
      error: null
    }
  },
  methods: {
    async submitForm() {
      // Валидация на клиенте
      if (!this.formData.name || !this.formData.email || !this.formData.phone) {
        this.error = 'Все поля обязательны для заполнения';
        return;
      }

      // Проверка email
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(this.formData.email)) {
        this.error = 'Пожалуйста, введите корректный email';
        return;
      }

      this.isLoading = true;
      this.error = null;

      try {
        const response = await fetch('http://localhost:5000/api/consultations', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            name: this.formData.name.trim(),
            email: this.formData.email.trim(),
            phone: this.formData.phone.trim()
          })
        });

        const data = await response.json();

        if (!response.ok) {
          throw new Error(data.error || 'Ошибка при отправке данных');
        }

        // Успешная отправка
        this.$emit('form-submitted', data.data); // Можно использовать для родительского компонента
        
        // Показываем уведомление
        this.showNotification('Ваша заявка успешно отправлена!', 'success');
        
        // Очищаем форму
        this.resetForm();

      } catch (error) {
        console.error('Ошибка:', error);
        this.error = error.message || 'Произошла ошибка при отправке формы. Пожалуйста, попробуйте позже.';
        this.showNotification(this.error, 'error');
      } finally {
        this.isLoading = false;
      }
    },
    resetForm() {
      this.formData = {
        name: '',
        email: '',
        phone: ''
      };
    },
    showNotification(message, type = 'success') {
      // Здесь можно интегрировать с библиотекой уведомлений (Toast, Notify и т.д.)
      // Или просто использовать alert для простоты
      alert(`${type === 'success' ? '✓' : '⚠'} ${message}`);
    }
  }
}
</script>
<template>
    <main class="main__white">
        <div class="container">
            <h1 class="contact_h1"> 
                Контакты
            </h1>
            <div class="main_block">
                <div class="left">
                    <h2 class="phone">+456 344 267 15 24</h2>
                    <h2 class="email">antonovoleg@service.com</h2>
                    <p class="address">Москва, регистрационный номер 0/123/45</p>
                    <div class="links">
                        <a></a>
                        <a></a>
                        <a></a>
                    </div>
                </div>
                <div class="right">
                    <form @submit.prevent="submitForm">
                        <input v-model="formData.name" class="input" type="text" placeholder="Имя" name="name" required>
                        <input v-model="formData.email" class="input" type="email" placeholder="Email" name="email" required>
                        <input v-model="formData.phone" class="input" type="tel" placeholder="Телефон" name="phone" required>
                        <button type="submit" class="button">
                            Записаться на консультацию
                        </button>
                    </form>
                </div>
            </div>    
        </div>
    </main>
</template>


<style lang="css" scoped>
/* Ваши существующие стили остаются без изменений */
.main__white{
    background: white;
    width: 100%;
}
.container{
    display: flex;
    margin: 0 auto;
    max-width: 1400px;
    flex-direction: column;
    justify-content: center;
}
.contact_h1{
    color: black;
    font-size: 40px;    
    display: flex;
    justify-content: center;
    margin-top: 100px;
    margin-bottom: 100px;
}
.main_block{
    display: flex;
    justify-content: space-between;
    width: 800px;
    margin: 0 auto;
}

.left{
    display: flex;
    flex-direction: column;
}

.right{
    display: flex;
    flex-direction: column;
    gap: 15px;
}
.input{
    width: 350px;
    height: 55px;
    border: 1px solid #ccc;
    border-radius: 4px;
    padding-left: 15px;
    box-sizing: border-box;
}
.input::placeholder {
    padding-left: 5px;
    color: #999;
}
.button{
    display: flex;
    justify-content: center;
    width: 350px;
    background-color: rgb(69, 69, 255);
    color: white;
    height: 55px;
    align-items: center;
    border: none;
    border-radius: 6px;
    margin-bottom: 50px;
    cursor: pointer;
}
.button:hover {
    background-color: rgb(50, 50, 220);
}
</style>