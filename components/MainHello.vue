<template>
    <main class="main">
        <div class="right__block">
            <img src="/public/main.jpg" class="main__img" alt="">
        </div>
        <div class="right__block-main">
            <div class="right__block-main-inner">
                <h1 class="main_h1">
                    Приветствую!
                </h1>
                <p class="main_p">
                    Вы мобилизованный, военнослужащий по контракту, призывник или доброволец, столкнувшийся с проблемами при прохождении военной службы? Или возможно только думаете о заключении контракта и хотите оценить риски? Своевременная консультация юриста по военному праву может помочь решить Ваши вопросы и избежать многих проблем в будущем.
                    Крайне важно найти не только грамотного специалиста, но и того, кому можно доверять, кто точно будет действовать исключительно в Ваших интересах и соблюдать конфиденциальность.
                </p>
                <p class="main_p">
                    На личной консультации мы подробно разберём Вашу ситуацию и найдём именно те решения, которые максимально защитят ваши права и интересы. Я оказываю поддержку как на этапе досудебного урегулирования, так и сопровождаю в судебных процессах. Моя задача — обеспечить Вам надёжную юридическую защиту и спокойствие в сложных обстоятельствах.
                </p>
                <p class="main_p">
                    Юрист по военному праву Мария Семенова
                    Москва, +7 (916)-537-54-13
                    simoxa96@gmail.com
                </p>
            </div> 
        </div>
        
    </main>
    <div class="main2">
        <NuxtLink to="#contacts" class="header__button"><div class="help__button">
            <a class="button" href="/">Записаться на консультацию</a>
        </div></NuxtLink>   
    </div>
</template>

<style lang="css" scoped>
.main2{
    width: 100%;
    padding: 10px 0;
    background: #293834;
}
/* Подключаем шрифт Playfair Display */
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap');
.help__button{
    display: flex;
    height: 40px;
    justify-content: center;
    align-items: center;
    margin: 0px auto;
    border: 1px solid #8b7b4e;
    padding: 10px 20px;
    width: 290px;
    border-radius: 8px;
    background: #8b7b4e;
    transition: transform 0.3s ease;
}
.button{
    color: white;
    /* text-decoration: none; */
    font-size: 20px;
}
.main{
    display: flex;
    box-sizing: border-box;
    background: #293834;
    gap: 35px;
    padding: 20px 0px;
    justify-content: center;
    width: 100%;
    overflow-x: hidden; /* Защита от горизонтального скролла */
}

.main__img{
    width: 580px;
    height: auto;
    object-fit: cover;
}

.right__block-main{
    display: flex;
    flex-direction: column;
    width: 550px;
    background: #8b7b4e;
    border-radius: 30px;
}

.right__block-main-inner{
    padding: 40px;
}

.main_h1{
    color: white;
    font-family: 'Playfair Display', serif;
    font-weight: 400;
    font-size: 32px;
    margin: 0 0 20px 0;
}

.main_p{
    color: white;
    font-family: 'Playfair Display', serif;
    font-size: 20px;
    line-height: 30px;
    margin: 0 0 20px 0;
}

.main_p:last-child {
    margin-bottom: 0;
}

@media (max-width: 767px) {
    .main {
        flex-direction: column;
        align-items: center;
        gap: 20px;
        padding: 10px;
    }
    
    .main__img {
        width: 100%;
        max-width: 100%;
        height: auto;
    }
    
    .right__block-main {
        width: 100%;
        max-width: 100%;
        border-radius: 20px;
    }
    
    .right__block-main-inner {
        padding: 20px;
    }
    
    .main_h1 {
        font-size: 1.5rem;
    }
    
    .main_p {
        font-size: 0.9rem;
    }
}
</style>