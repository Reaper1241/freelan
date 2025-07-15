<template>
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
</template>

<style  lang="css" scoped>
.main__white{
    background: white;
    width: 100%;
}
h1{
    font-size: 40px;
}
.container{
    display: flex;
    /* max-width: 700px; */
    flex-direction: column;
    justify-content: center;
    margin: 0 auto;
    align-items: center;
}
.upper{
    max-width: 700px;
}
.upper-p-big{
    font-size: 28px;
    text-align: center;
}
.upper-p-little{
    font-size: 14px;
    text-align: center;
    color: grey;
}
.card-block{
    display: flex;
    flex-direction: column;
}
.card{
    height: 70px;
    border-bottom: 1px solid grey;
    display: flex;
    align-items: center;
    justify-content: space-between;
}
.title{
    width: 600px;
}
.price{
    font-weight: 700;
}
</style>