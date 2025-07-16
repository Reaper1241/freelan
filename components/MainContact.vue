<template>
    <main class="main__white">
        <div class="container">
            <h1 class="contact_h1"> 
                Контакты
            </h1>
            <div class="main_block">
                <div class="left">
                    <h2 class="phone">+456 344 267 15 24</h2>
                    <h2 class="email">antonovoleg@service.com</h2>
                    <p class="address">Москва, регистрационный номер 0/123/45</p>
                    <div class="links">
                        <a></a>
                        <a></a>
                        <a></a>
                    </div>
                </div>
                <div class="right">
                    <input class="input" type="text" placeholder="Имя" name="name">
                    <input class="input" type="email" placeholder="Email" name="email">
                    <input class="input" type="tel" placeholder="Телефон" name="phone">
                    <button class="button">
                        Записаться на консультацию
                    </button>
                </div>
            </div>    
        </div>
    </main>
</template>

<style lang="css" scoped>
.main__white{
    background: white;
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
    margin-top: 100px;
    margin-bottom: 100px;
}
.main_block{
    display: flex;
    justify-content: space-between;
    width: 800px;
    margin: 0 auto;
}

.left{
    display: flex;
    flex-direction: column;
}

.right{
    display: flex;
    flex-direction: column;
    gap: 15px;
}
.input{
    width: 350px;
    height: 55px;
    border: 1px solid #ccc;
    border-radius: 4px;
    padding-left: 15px;
    box-sizing: border-box;
}
.input::placeholder {
    padding-left: 5px;
    color: #999;
}
.button{
    display: flex;
    justify-content: center;
    width: 350px;
    background-color: rgb(69, 69, 255);
    color: white;
    height: 55px;
    align-items: center;
    border: none;
    border-radius: 6px;
}
</style>