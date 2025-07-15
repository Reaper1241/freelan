<template>
  <div class="main-header">
    <header class="header">
      <div class="left__block">
        <ul class="header__links">
          <li class="header__link">Услуги</li>
          <li class="header__link">Цены</li>
          <li class="header__link">Обо мне</li>
        </ul>
      </div>    
      <div class="right__block">
        <a class="left__link">Бесплатная консультация</a>
        <a class="header__button">Записаться</a>
      </div>
    </header>
  </div>  
</template>

<style  lang="css" scoped>
.main-header{
  display: flex;
  width: 100%;
  align-items: center;
  height: 80px;
}
.header {
  display: flex;
  align-items: center;
  justify-content: space-between; /* Растягивает блоки по краям */
  max-width: 1150px;
  margin: 0 auto;
  height: 80px;
  padding: 0 20px; /* Добавляем отступы от краёв */
  width: 100%;
}

.left__block {
  display: flex;
  /* justify-content: start; — уже не нужно, т.к. блок прижат влево */
}

.header__links {
  display: flex;
  gap: 20px;
  list-style-type: none;
  padding-left: 0;
  margin: 0; /* Убираем лишние отступы */
}

.header__link {
  text-decoration: none !important;
}

.right__block {
  display: flex;
  gap: 20px; /* Расстояние между кнопками */
  align-items: center;
}
.header__button{
  padding: 10px 40px;
  border-radius: 6px;
  border: 2px solid rgb(41, 41, 255);
  color: rgb(41, 41, 255);
  font-size: 18px;
}
</style>