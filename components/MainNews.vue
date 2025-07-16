<template>
    <main class="main__white">
        <div class="container">
            <h1 class="contact_h1"> 
                Правовые новости и полезные материалы
            </h1>
            <div class="news_block">
                <div class="news_card">
                    <img src="public/news1.jpg" class="news_img" alt="">
                    <h2 class="news_h2">О защите персональных данных</h2>
                    <p class="news_p">Парижская конвенция по охране промышленной собственности в 1883 года.</p>
                </div>
                <div class="news_card">
                    <img src="public/news2.jpg" class="news_img" alt="">
                    <h2 class="news_h2">Интеллектуальная собственность</h2>
                    <p class="news_p">Часто причисляют законы о недобросовестной конкуренции</p>
                </div>
                <div class="news_card">
                    <img src="public/news3.jpg" class="news_img" alt="">
                    <h2 class="news_h2">Оформление недвижимости</h2>
                    <p class="news_p">Законодательством предусмотрены вычеты на сумму доходов.</p>
                </div>
            </div>
            <div class="bottom">
                <a class="bottom-a">Читать все статьи</a>
            </div>
        </div>
    </main>
</template>

<style  lang="css" scoped>
.main__white{
    background: rgb(255, 255, 255);
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
    margin: 100px 0;
}

.news_block{
    display: flex;
    flex-direction: row;
    gap: 30px;
    justify-content: center;
    margin: 0 auto;
}

.news_card{
    display: flex;
    flex-direction: column;
    /* gap: 10px; */
    width: 350px;
}

.news_img{
    width: 350px;
    height: 200px;
}
.news_h2{
    font-size: 22px;
    height: 10px;
    color: wh;
}
.bottom{
    display: flex;
    justify-content: center;
    margin: 0 auto;
    margin-top: 50px;
    margin-bottom: 50px;
}
.bottom-a{
    padding: 20px;
    width: 200px;
    background: black;
    color: white;
    display: flex;
    justify-content: center;
}
</style>