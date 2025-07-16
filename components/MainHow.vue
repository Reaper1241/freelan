<template>
    <main class="main__white">
        <div class="container">
            <h1 class="contact_h1"> 
                Как записаться на консультацию?
            </h1>
            <div class="middle_block">
                <p class="middle-p">Our classes provide a gateway into the world of dance, connecting young people and communities to artistic practice. We also engage in a range of inspirational and high-quality participatory activities, both nationally and internationally.</p>
            </div>
            <div class="bottom">
                <a class="bottom-a">Learn more</a>
            </div>
        </div>
    </main>
</template>

<style  lang="css" scoped>
.main__white{
    background: rgb(231, 231, 231);
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
}
.middle_block{
    display: flex;
    justify-content: center;
    margin: 0 auto;
    max-width: 850px;
}
.middle-p{
    display: flex;
    justify-content: center;
    font-size: 28px;
    text-align: center;
}

.bottom{
    display: flex;
    justify-content: center;
    margin: 0 auto;
    margin-top: 60px;
}
.bottom-a{
    padding: 20px;
    background: rgb(57, 57, 255);
    color: white;
    width: 140px;
    display: flex;
    justify-content: center;
    border-radius: 50px;
}
</style>