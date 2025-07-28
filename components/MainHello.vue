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
    Москва, +456 344 267 15 24
    antonovoleg@service.com
                </p>
            </div>    
        </div>
    </main>
</template>

<style  lang="css" scoped>
.main{
    max-width: 1400px;
    display: flex;

    gap: 35px;
    justify-content: center;
    margin: 20px auto;
}
.main__img{
    width: 550px;
}
.right__block-main{
    display: flex;
    flex-direction: column;
    width: 550px;
    background: rgb(75, 0, 75);
    border-radius: 30px;

}
.right__block-main-inner{
    padding: 40px;
}

.main_h1{
    color: white;
    font-family: 'Georgia';
    font-weight: 400;
}
.main_p{
    color: white;
    font-family: 'Georgia';
    font-size: 14px;
    line-height: 1.45;
}
@media (max-width: 767px) {
    .main {
        flex-direction: column;
        align-items: center;
        gap: 20px;
        padding: 10px;
        width: 100%;
    }
    
    .main__img {
        width: 100%;
        max-width: 350px;
    }
    
    .right__block-main {
        width: 100%;
        max-width: 350px;
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