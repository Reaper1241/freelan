<template>
  <div class="main-header">
    <header class="header">
      <div class="left__block">
        <div class="burger-menu" @click="toggleMenu">
          <div class="burger-line"></div>
          <div class="burger-line"></div>
          <div class="burger-line"></div>
        </div>
        <ul class="header__links" :class="{ 'active': isMenuOpen }">
          <NuxtLink to="#help" class="nav-link"><li class="header__link">Услуги</li></NuxtLink>
          <NuxtLink to="#price_id" class="nav-link"><li class="header__link">Цены</li></NuxtLink>
          <NuxtLink to="#about" class="nav-link"><li class="header__link">Обо мне</li></NuxtLink>
        </ul>
      </div>    
      <div class="right__block">
        <a class="left__link">Бесплатная консультация</a>
        <NuxtLink to="#contacts" class="header__button">Записаться</NuxtLink>
      </div>
    </header>
  </div>  
</template>

<script>
export default {
  data() {
    return {
      isMenuOpen: false
    }
  },
  methods: {
    toggleMenu() {
      this.isMenuOpen = !this.isMenuOpen;
    }
  }
}
</script>

<style lang="css" scoped>
.main-header{
  display: flex;
  width: 100%;
  align-items: center;
  height: 80px;
  background-color: white;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  position: sticky;
  top: 0;
  z-index: 100;
}

.header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  max-width: 1150px;
  margin: 0 auto;
  height: 80px;
  padding: 0 20px;
  width: 100%;
  position: relative;
}

.left__block {
  display: flex;
  align-items: center;
  gap: 40px;
}

.header__links {
  display: flex;
  gap: 20px;
  list-style-type: none;
  padding-left: 0;
  margin: 0;
  transition: all 0.3s ease;
}

.nav-link {
  color: black !important;
  text-decoration: none !important;
}

.nav-link:hover {
  text-decoration: none !important;
}

.header__link {
  text-decoration: none !important;
  color: inherit;
  font-size: 16px;
  font-weight: 500;
  transition: color 0.2s ease;
  cursor: pointer;
}

.header__link:hover {
  color: rgb(41, 41, 255);
}

.right__block {
  display: flex;
  gap: 20px;
  align-items: center;
}

.left__link {
  color: #333;
  text-decoration: none;
  font-size: 16px;
  cursor: pointer;
}

.header__button {
  padding: 10px 40px;
  border-radius: 6px;
  border: 2px solid rgb(41, 41, 255);
  color: rgb(41, 41, 255);
  font-size: 16px;
  text-decoration: none;
  cursor: pointer;
  transition: all 0.3s ease;
  transform: scale(1);
  box-shadow: none;
  font-weight: 500;
  background: transparent;
}

.header__button:hover {
  transform: scale(1.05);
  box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.15);
  background-color: rgb(41, 41, 255);
  color: white;
}

/* Бургер-меню */
.burger-menu {
  display: none;
  flex-direction: column;
  justify-content: space-around;
  width: 30px;
  height: 25px;
  cursor: pointer;
  z-index: 10;
}

.burger-line {
  width: 100%;
  height: 3px;
  background-color: #000;
  transition: all 0.3s ease;
}

/* Мобильная версия */
@media (max-width: 767px) {
  .burger-menu {
    display: flex;
  }
  
  .header__links {
    position: absolute;
    top: 80px;
    left: 0;
    width: 100%;
    background-color: white;
    flex-direction: column;
    align-items: center;
    gap: 0;
    padding: 20px 0;
    box-shadow: 0 5px 10px rgba(0,0,0,0.1);
    transform: translateY(-150%);
    opacity: 0;
    z-index: 9;
  }
  
  .header__links.active {
    transform: translateY(0);
    opacity: 1;
  }
  
  .header__link {
    width: 100%;
    text-align: center;
    padding: 15px 0;
    border-bottom: 1px solid #f0f0f0;
  }
  
  .left__link {
    display: none;
  }
  
  .header__button {
    padding: 8px 20px;
    font-size: 14px;
  }
  
  .header__button:hover {
    transform: scale(1.03);
    box-shadow: 3px 3px 6px rgba(0, 0, 0, 0.1);
  }
}

@media (max-width: 410px) {
  .header__button {
    padding: 8px 15px;
    font-size: 13px;
  }
  
  .header__button:hover {
    transform: scale(1.02);
    box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
  }
  
  .left__block {
    gap: 20px;
  }
}
</style>