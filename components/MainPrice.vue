<template>
    <section id="price_id" class="main-contact">
        <main class="main__white">
            <div class="container">
                <h1 class="contact_h1"> 
                    Стоимость моих услуг
                </h1>
                <div class="upper">
                    <p class="upper-p-big">
                        Все прозрачно! Цены не вырастут "внезапно" на консультации.
                    </p>
                    <p class="upper-p-little">
                        После консультации мы сможем договориться о гибких условиях оплаты дальнейшего сопровождения. Возможна оплата частями или работа за гонорар успеха.
                    </p>
                </div>
                <div class="card-block">
                    <div class="card">
                        <p class="title">
                            Консультация
                        </p>
                        <p class="price">
                            5000 р
                        </p>
                    </div>
                    <div class="card">
                        <p class="title">
                            Подготовка рапорта, жалобы, запроса
                        </p>
                        <p class="price">
                            от 7 000 до 15 000 р
                        </p>
                    </div>
                    <div class="card">
                        <p class="title">
                            Составление искового заявления
                        </p>
                        <p class="price">	
                            50 000 р
                        </p>
                    </div>
                    <div class="card">
                        <p class="title">
                            Представительство в суде (включая подачу иска, ознакомление с материалами дела, участие в заседаниях)
                        </p>
                        <p class="price">
                            30 000 р
                        </p>
                    </div>
                    <div class="card">
                        <p class="title">
                            Получение и предъявление исполнительного листа
                        </p>
                        <p class="price">
                            15 000 р
                        </p>
                    </div>
                </div>
            </div>
        </main>
    </section>
</template>

<style lang="css" scoped>
.main__white{
    background: rgb(228, 228, 228);
    width: 100%;
    padding: 20px;
    box-sizing: border-box;
}

.container{
    display: flex;
    max-width: 1000px;
    flex-direction: column;
    justify-content: center;
    margin: 0 auto;
    align-items: center;
    padding: 0 20px;
}

.contact_h1 {
    font-size: 2rem;
    text-align: center;
    margin: 40px 0 30px;
    color: #333;
}

.upper{
    max-width: 700px;
    margin-bottom: 40px;
}

.upper-p-big{
    font-size: 1.4rem;
    text-align: center;
    line-height: 1.4;
    color: #222;
    margin-bottom: 15px;
    font-weight: 500;
}

.upper-p-little{
    font-size: 0.9rem;
    text-align: center;
    color: #666;
    line-height: 1.5;
    font-family: 'TildaSans', Arial, sans-serif;
    font-weight: 300;
    font-style: italic;
}

.card-block{
    display: flex;
    flex-direction: column;
    width: 100%;
    max-width: 800px;
    margin: 0 auto 50px;
}

.card{
    min-height: 70px;
    border-bottom: 1px solid #c7c7c7;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 0;
    flex-wrap: wrap;
}

.title{
    width: 70%;
    font-size: 1rem;
    line-height: 1.4;
    color: #333;
    margin-right: 20px;
}

.price{
    font-weight: 700;
    font-size: 1.1rem;
    color: #333;
    white-space: nowrap;
}

/* Медиа-запросы для адаптивности */
@media (max-width: 768px) {
    .contact_h1 {
        font-size: 1.8rem;
        margin: 30px 0 20px;
    }
    
    .upper-p-big {
        font-size: 1.2rem;
    }
    
    .upper-p-little {
        font-size: 0.85rem;
    }
    .card-block{
        gap: 10px;
    }
    .card {
        /* flex-direction: column; */
        /* align-items: flex-start; */
        border: none;
        padding: 10px 10px;
        background: #e0e0e0;
        align-items: center;
        justify-content: space-between;
        border-radius: 8px;
        box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.2);
        /* flex-direction: row; */
        
    }
    
    .title {
        width: 100%;
        margin-bottom: 10px;
        font-size: 0.95rem;
        padding: 0 15px;
    }
    
    .price {
        align-self: flex-end;
        font-size: 1rem;
        padding: 0 15px;
    }
}

@media (max-width: 480px) {
    .contact_h1 {
        font-size: 1.6rem;
        margin: 25px 0 15px;
    }
    
    .upper {
        margin-bottom: 30px;
    }
    
    .upper-p-big {
        font-size: 1.1rem;
    }
    
    .card {
        padding: 15px 0;
    }
    
    .title {
        font-size: 0.9rem;
    }
    
    .price {
        font-size: 0.95rem;
    }
    
    .container {
        padding: 0 15px;
    }
}
</style>