<template>
    <section id="help" class="main-contact">
        <main class="main__purple">
            <div class="help__container">
                <h1 class="help_h1"> 
                    Чем я могу Вам помочь?
                </h1>
                <div class="content__wrapper">
                    <h2 class="h2">
                        Военнослужащим: самые частые вопросы
                    </h2>
                    <ul class="ul">
                        <li class="li">Мне не проводят военно-врачебную комиссию (ВВК) после ранения/не дали пройти ВВК до конца и отправили на боевые задачи;</li>
                        <li class="li">Хочу оспорить ВВК;</li>
                        <li class="li">Меня не отпускают в положенный отпуск;</li>
                        <li class="li">Меня не списывают, хотя я не годен/ограниченно годен (есть нюансы);</li>
                        <li class="li">Я получил ранение в бою, но никаких выплат нет;</li>
                        <li class="li">Гражданский муж погиб на СВО, есть ребенок, какие выплаты положены;</li>
                        <li class="li">Мне не платят денежное довольствие;</li>
                        <li class="li">И иные вопросы, связанные с прохождением военной службы.</li>
                    </ul>
                </div>
                <NuxtLink to="#contacts" class="header__button"><div class="help__button">
                    <a class="button" href="/">Записаться</a>
                </div></NuxtLink>
            </div>
        </main>
    </section>
</template>

<style lang="css" scoped>
.main__purple{
    background: rgb(75, 0, 75);
    width: 100%;
    padding: 20px;
    box-sizing: border-box;
}

.help__container{
    display: flex;
    margin: 0 auto;
    max-width: 1400px;
    flex-direction: column;
    justify-content: center;
}

.content__wrapper {
    width: 100%;
    max-width: 100%;
    box-sizing: border-box;
    padding: 0 20px;
}

.help_h1{
    color: white;
    font-size: 50px;    
    display: flex;
    justify-content: center;
    margin-top: 100px;
    text-align: center;
    padding: 0 20px;
}

.h2{
    color: white;
    justify-content: center;
    display: flex;
    align-items: center;
    font-size: 26px;
    margin-top: 30px;
    text-align: center;
}

.ul{
    display: flex;
    justify-content: center;
    width: 100%;
    max-width: 700px;
    flex-direction: column;
    margin: 0 auto;
    gap: 20px;
    padding: 0;
    list-style-position: inside;
}

.li{
    color: white;
    font-size: 20px;
    text-align: left;
    font-weight: 400;
    font-family: 'Georgia';
    line-height: 48px;
    font-style: italic;
}

.help__button{
    display: flex;
    height: 40px;
    justify-content: center;
    align-items: center;
    margin: 100px auto;
    border: 1px solid rgb(74, 0, 104);
    padding: 10px 20px;
    width: 290px;
    border-radius: 8px;
    background: rgb(74, 0, 104);
    transition: transform 0.3s ease;
}

.help__button:hover {
    transform: scale(1.05);
}

.button{
    color: white;
    text-decoration: none;
    font-size: 18px;
    white-space: nowrap;
}

/* Медиа-запросы для адаптивности */
@media (max-width: 768px) {
    .help_h1 {
        font-size: 36px;
        margin-top: 60px;
    }
    
    .h2 {
        font-size: 22px;
    }
    
    .li {
        font-size: 18px;
        line-height: 28px;
    }
    
    .ul {
        max-width: 90%;
        gap: 15px;
    }
    
    .help__button {
        margin: 60px auto;
        width: 250px;
    }
}

@media (max-width: 480px) {
    .help_h1 {
        font-size: 28px;
        margin-top: 40px;
    }
    
    .h2 {
        font-size: 20px;
    }
    
    .li {
        font-size: 16px;
    }
    
    .ul {
        max-width: 95%;
        gap: 12px;
    }
    
    .help__button {
        margin: 40px auto;
        width: 100%;
        max-width: 250px;
    }
    
    .button {
        font-size: 16px;
    }
}
</style>