<template>
    <main class="main__white">
        <div class="container">
            <h1 class="contact_h1"> 
                Правовые новости и полезные материалы
            </h1>
            <div class="news_block">
                <div class="news_card">
                    <img src="public/news1.jpg" class="news_img" alt="Новость 1">
                    <h2 class="news_h2">О защите персональных данных</h2>
                    <p class="news_p">Парижская конвенция по охране промышленной собственности в 1883 года.</p>
                </div>
                <div class="news_card">
                    <img src="public/news2.jpg" class="news_img" alt="Новость 2">
                    <h2 class="news_h2">Интеллектуальная собственность</h2>
                    <p class="news_p">Часто причисляют законы о недобросовестной конкуренции</p>
                </div>
                <div class="news_card">
                    <img src="public/news3.jpg" class="news_img" alt="Новость 3">
                    <h2 class="news_h2">Оформление недвижимости</h2>
                    <p class="news_p">Законодательством предусмотрены вычеты на сумму доходов.</p>
                </div>
            </div>
            <div class="bottom">
                <a href="#" class="bottom-a">Читать все статьи</a>
            </div>
        </div>
    </main>
</template>

<style lang="css" scoped>
.main__white{
    background: rgb(255, 255, 255);
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
    color: black;
    font-size: 2.5rem;
    text-align: center;
    margin: 80px 0 60px;
    line-height: 1.3;
}

.news_block{
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    justify-content: center;
    margin: 0 auto;
    max-width: 1200px;
}

.news_card{
    display: flex;
    flex-direction: column;
    width: 100%;
    max-width: 350px;
    transition: transform 0.3s ease;
}

.news_card:hover {
    transform: translateY(-5px);
}

.news_img{
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 8px 8px 0 0;
}

.news_h2{
    font-size: 1.4rem;
    margin: 15px 0 10px;
    color: #333;
    line-height: 1.4;
}

.news_p{
    font-size: 1rem;
    color: #666;
    line-height: 1.5;
    margin-bottom: 15px;
}

.bottom{
    display: flex;
    justify-content: center;
    margin: 60px auto;
}

.bottom-a{
    padding: 18px 36px;
    width: auto;
    background: black;
    color: white;
    display: inline-flex;
    justify-content: center;
    text-decoration: none;
    font-size: 1.1rem;
    border-radius: 4px;
    transition: all 0.3s ease;
}

.bottom-a:hover {
    background: #333;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

/* Медиа-запросы для адаптивности */
@media (max-width: 1024px) {
    .contact_h1 {
        font-size: 2.2rem;
        margin: 60px 0 50px;
    }
    
    .news_block {
        gap: 25px;
    }
    
    .news_card {
        max-width: 300px;
    }
}

@media (max-width: 768px) {
    .contact_h1 {
        font-size: 2rem;
        margin: 50px 0 40px;
    }
    
    .news_block {
        gap: 20px;
    }
    
    .news_card {
        max-width: 100%;
        width: calc(50% - 15px);
    }
    
    .news_h2 {
        font-size: 1.3rem;
    }
    
    .bottom {
        margin: 50px auto;
    }
}

@media (max-width: 480px) {
    .contact_h1 {
        font-size: 1.8rem;
        margin: 40px 0 30px;
    }
    
    .news_block {
        flex-direction: column;
        gap: 30px;
    }
    
    .news_card {
        width: 100%;
        max-width: 100%;
    }
    
    .news_img {
        height: 180px;
    }
    
    .news_h2 {
        font-size: 1.2rem;
    }
    
    .bottom-a {
        padding: 16px 32px;
        font-size: 1rem;
        width: 100%;
        max-width: 280px;
    }
    
    .container {
        padding: 0 15px;
    }
}
</style>