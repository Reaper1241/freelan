<template>
    <footer class="footer">
        <div class="footer__content">
            <div class="left__block">
                <ul class="footer__links">
                    <NuxtLink to="#help" class="nav-link"><li class="footer__link">Услуги</li></NuxtLink>
                    <NuxtLink to="#price_id" class="nav-link"><li class="footer__link">Цены</li></NuxtLink>
                    <NuxtLink to="#about" class="nav-link"><li class="footer__link">Обо мне</li></NuxtLink>
                </ul>
                
            </div>    
            <div class="right__block">
                
                <a class="footer__consult">Консультация</a>
                <a href="https://wa.me/79165375413"><img src="/public/icons8-whatsapp-48.png" width="28" alt=""></a>
              <a href="https://t.me/marsyme"><img src="/public/icons8-телеграм-48.png" width="24" alt=""></a>
                <NuxtLink to="#contacts" class="footer__button">Записаться на консультацию</NuxtLink>
            </div>
        </div>    
    </footer>
</template>

<style lang="css" scoped>
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap');
.footer {
    width: 100%;
    min-height: 200px;
    background: #202b28;
    padding: 20px 0;
}

.footer__content {
    max-width: 1200px;
    display: flex;
    margin: 0 auto;
    align-items: center;
    padding: 30px 20px;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 30px;
}

.left__block {
    display: flex;
    align-items: center;
    gap: 40px;
}

.footer__links {
    display: flex;
    gap: 30px;
    list-style-type: none;
    padding-left: 0;
    margin: 0;
}

.nav-link {
    color: white !important;
    text-decoration: none !important;
}

.footer__link {
    color: white;
    font-size: 20px;
    font-weight: 500;
    transition: color 0.2s ease;
    cursor: pointer;
    white-space: nowrap;
}

.footer__link:hover {
    color: white;
}

.right__block {
    display: flex;
    gap: 20px;
    align-items: center;
    flex-wrap: wrap;
}

.footer__consult {
    color: white;
    text-decoration: none;
    font-size: 20px;
    cursor: pointer;
    white-space: nowrap;
}

.footer__consult:hover {
    color: white;
}

.footer__button {
    padding: 10px 40px;
    border-radius: 6px;
    border: 2px solid #574d31;
    color: rgb(255, 255, 255);
    font-size: 20px;
    text-decoration: none;
    cursor: pointer;
    transition: all 0.3s ease;
    font-weight: 500;
    background: #8b7b4e;
    white-space: nowrap;
}

.footer__button:hover {
    transform: scale(1.05);
    box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.15);
    background-color: #574d31;
}

/* Адаптивность */
@media (max-width: 900px) {
    .footer__content {
        flex-direction: column;
        align-items: center;
        text-align: center;
        gap: 30px;
    }
    
    .left__block, .right__block {
        justify-content: center;
        width: 100%;
    }
    
    .footer__links {
        justify-content: center;
        flex-wrap: wrap;
    }
}

@media (max-width: 600px) {
    .footer__links {
        gap: 15px 30px;
    }
    
    .footer__button {
        padding: 8px 25px;
        font-size: 15px;
    }
    
    .footer__consult {
        font-size: 15px;
    }
    
    .footer__link {
        font-size: 15px;
    }
}

@media (max-width: 350px) {
    .footer__content {
        gap: 20px;
    }
    
    .right__block {
        flex-direction: column;
        gap: 15px;
    }
    
    .footer__button {
        width: 100%;
        text-align: center;
    }
    
    .footer__links {
        gap: 10px 20px;
    }
    
    .footer__link {
        font-size: 14px;
    }
}
</style>