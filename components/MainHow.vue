<template>
    <main class="main__white">
        <div class="container">
            <h1 class="contact_h1"> 
                Как записаться на консультацию?
            </h1>
            <div class="middle_block">
                <p class="middle-p">Напишите мне в Telegram или WhatsApp, и мы согласуем удобное время для консультации. Консультации проводятся онлайн через Zoom или лично в Москве.</p>
            </div>
            <NuxtLink to="#contacts" class="button"><div class="bottom">
                <a href="#" class="bottom-a">Написать</a>
            </div></NuxtLink>
        </div>
    </main>
</template>

<style lang="css" scoped>
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap');
.main__white{
    background: #293834;
    width: 100%;
    padding: 20px;
    box-sizing: border-box;
}

.container{
    display: flex;
    margin: 0 auto;
    max-width: 1400px;
    flex-direction: column;
    justify-content: center;
    padding: 0 20px;
}

.contact_h1{
    color: white;
    font-size: 2.5rem;    
    text-align: center;
    margin: 60px 0 40px;
    line-height: 30px;
}

.middle_block{
    display: flex;
    justify-content: center;
    margin: 0 auto;
    max-width: 850px;
    padding: 0 20px;
}

.middle-p{
    font-size: 1.4rem;
    text-align: left;
    line-height: 30px;
    color: white;
    margin-bottom: 40px;
}

.bottom{
    display: flex;
    justify-content: center;
    margin: 40px auto 80px;
}

.bottom-a{
    padding: 20px 40px;
    background: rgb(57, 57, 255);
    color: white;
    width: auto;
    display: inline-flex;
    justify-content: center;
    border-radius: 50px;
    text-decoration: none;
    font-size: 1.1rem;
    font-weight: 500;
    transition: all 0.3s ease;
    border: none;
    cursor: pointer;
}

.bottom-a:hover {
    background: rgb(40, 40, 220);
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

/* Медиа-запросы для адаптивности */
@media (max-width: 1024px) {
    .contact_h1 {
        font-size: 2.2rem;
        margin: 50px 0 30px;
    }
    
    .middle-p {
        font-size: 1.2rem;
    }
}

@media (max-width: 768px) {
    .contact_h1 {
        font-size: 2rem;
        margin: 40px 0 25px;
    }
    
    .middle-p {
        font-size: 1.1rem;
        margin-bottom: 30px;
    }
    
    .bottom {
        margin: 30px auto 60px;
    }
    
    .bottom-a {
        padding: 18px 35px;
        font-size: 1rem;
    }
}

@media (max-width: 480px) {
    .contact_h1 {
        font-size: 1.7rem;
        margin: 30px 0 20px;
    }
    
    .middle_block {
        padding: 0 15px;
    }
    
    .middle-p {
        font-size: 1rem;
        text-align: left;
        line-height: 30px;
    }
    
    .bottom-a {
        padding: 16px 30px;
        font-size: 0.95rem;
        width: 100%;
        max-width: 200px;
    }
    
    .container {
        padding: 0 15px;
    }
}
</style>