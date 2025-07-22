<template>
    <main class="main__white">
        <div class="container">
            <h1 class="contact_h1"> 
                Практика
            </h1>
            <div class="practice__upper">
                <p class="upper-p">
                    Я оказываю квалифицированную юридическую помощь военнослужащим с учётом специфики военного права, применяемого в условиях проведения специальной военной операции. Мои знания актуальны и соответствуют реальной практике. Консультирую дистанционно по всей России и выезжаю на судебные заседания преимущественно в Москве, а также в другие регионы по предварительной договоренности.
                </p>
                <p class="upper-p">
                    Я не беру «всё подряд» — только то, в чём действительно разбираюсь и могу быть полезна. Каждое дело веду лично, внимательно и с полной отдачей.
                </p>
            </div>
            <div class="content-wrapper">
                <h2 class="h2">
                    Мои успешные дела:
                </h2>
                <div class="affairs">
                    <p class="affairs-p">
                        ⭐️Ситуация: Боец получил ранение, начал проходить ВВК, но командир, не дав ему закончить обследование, отправил подчиненного на передовую. К тому же военному не предоставляли необходимый отпуск. Все осложнилось тем, что у его супруги не было доверенности. <br>Исход: С помощью госуслуг подали иск в суд. Обязали командование обеспечить бойцу прохождение ВВК. В настоящий момент военнослужащий уволен.
                    </p>
                    <p class="affairs-p">
                        ⭐️Ситуация: Мобилизованный получил ранение глаза, прошел ВВК, где ему поставили категорию "В" - ограниченно годен. Однако после выписки, его отправили на передовую.
                        <br>Исход: Обратились в суд, где добились сначала возвращения бойца с фронта в тыл в Россию, а после - увольнения.
                    </p>
                    <p class="affairs-p">
                        ⭐️Ситуация: Участник СВО получил травму ноги, подвернув ногу, спасаясь от артобстрела. Однако положенную президентскую выплату ему не произвели. Спустя год он обратился за юридической помощью.
                        <br>Исход: В досудебном порядке добились проведения надлежащего расследования, получения бойцом справки о ранении и загрузки ее в систему для получения им выплаты.
                    </p>
                </div>
                <div class="approach">
                    <h2 class="h2">
                        Какой у меня подход:
                    </h2>
                    <p class="approach-p"> 
                        Не навязываю услуг, если считаю, что их можно избежать
                    </p>
                    <p class="approach-p"> 
                        Объясняю юридически сложное простыми словами
                    </p>
                    <p class="approach-p"> 
                        Работаю с делами, где реально могу помочь
                    </p>
                </div>
                <div class="not_work">
                    <h2 class="h2">
                        С чем я НЕ работаю:
                    </h2>
                    <p class="not_work-p"> 
                        1. Консультирую, но НЕ СОПРОВОЖДАЮ уголовные дела. По вопросам, связанным с самовольным оставлением части и иным преступлениям - рекомендую обратиться к адвокату.
                    </p>
                    <p class="not_work-p"> 
                        2. Там, где юристы на сегодня бессильны. Например, уволиться в связи с окончанием контракта.
                    </p>
                    <p class="not_work-p"> 
                        3. С запросами "решить вопрос" в обход права.
                    </p>
                </div>
                <div class="myself">
                    <h2 class="h2">
                        Как я могу помочь:
                    </h2>
                    <p class="myself-p"> 
                        Объясню, как не допустить ошибок с самого начала, проконсультирую на предмет возможных рисков;
                    </p>
                    <p class="myself-p"> 
                        Помогу отправить рапорт так, чтобы его не "порвали";
                    </p>
                    <p class="myself-p"> 
                        Расскажу эффективный алгоритм взаимодействия с государственными органами так, чтобы вопрос начал решаться, а не просто "написать жалобу президенту", которая осядет в канцелярии;
                    </p>
                    <p class="myself-p"> 
                        Составлю юридические документы: рапорты, жалобы, запросы, исковые заявления так, чтобы после в суде не было вопросов;
                    </p>
                    <p class="myself-p"> 
                        Участвую как представитель в гражданском и административном судопроизводстве.
                    </p>
                </div>
            </div>
        </div>
    </main>
</template>

<style lang="css" scoped>
.main__white{
    background: white;
    width: 100%;
    padding: 20px;
    box-sizing: border-box;
}

.container{
    display: flex;
    margin: 0 auto;
    max-width: 700px;
    flex-direction: column;
    justify-content: center;
}

.content-wrapper {
    width: 100%;
    padding: 0 10px;
    box-sizing: border-box;
}

.contact_h1{
    display: flex;
    justify-content: center;
    margin-top: 60px;
    font-size: 40px;
    text-align: center;
    padding: 0 20px;
}

.practice__upper {
    margin-bottom: 30px;
}

.upper-p{
    font-size: 20px;
    color: rgb(70, 70, 70);
    line-height: 1.5;
    margin-bottom: 20px;
    text-align: justify;
}

.h2{
    display: flex;
    justify-content: center;
    font-size: 26px;
    margin: 30px 0;
    text-align: center;
}

.affairs{
    display: flex;
    flex-direction: column;
    gap: 30px;
    margin-bottom: 40px;
}

.affairs-p{
    color: rgb(70, 70, 70);
    font-size: 18px;
    line-height: 1.5;
    text-align: justify;
}

.approach{
    display: flex;
    flex-direction: column;
    gap: 15px;
    margin-bottom: 40px;
}

.approach-p{
    color: rgb(70, 70, 70);
    font-size: 18px;
    line-height: 1.5;
}

.not_work{
    display: flex;
    flex-direction: column;
    gap: 15px;
    margin-bottom: 40px;
}

.not_work-p{
    color: rgb(70, 70, 70);
    font-size: 18px;
    line-height: 1.5;
}

.myself{
    display: flex;
    flex-direction: column;
    gap: 15px;
    margin-bottom: 40px;
}

.myself-p{
    color: rgb(70, 70, 70);
    font-size: 18px;
    line-height: 1.5;
}

/* Медиа-запросы для адаптивности */
@media (max-width: 768px) {
    .contact_h1 {
        font-size: 32px;
        margin-top: 40px;
    }
    
    .upper-p {
        font-size: 18px;
    }
    
    .h2 {
        font-size: 22px;
        margin: 25px 0;
    }
    
    .affairs-p,
    .approach-p,
    .not_work-p,
    .myself-p {
        font-size: 16px;
    }
    
    .affairs {
        gap: 25px;
    }
}

@media (max-width: 480px) {
    .contact_h1 {
        font-size: 28px;
        margin-top: 30px;
    }
    
    .upper-p {
        font-size: 16px;
    }
    
    .h2 {
        font-size: 20px;
        margin: 20px 0;
    }
    
    .affairs-p,
    .approach-p,
    .not_work-p,
    .myself-p {
        font-size: 15px;
    }
    
    .affairs {
        gap: 20px;
    }
    
    .container {
        padding: 0 15px;
    }
}
</style>