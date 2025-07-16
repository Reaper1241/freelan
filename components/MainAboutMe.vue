<script>
export default {
    data() {
        return {
            images: [
                { 
                    src: "/bot1.jpg",  // Изменил путь
                    alt: "Выступление на конгрессе",
                    caption: "Выступление на конгрессе Ассоциации комитетов солдатских матерей" 
                },
                { 
                    src: "/bot2.png",  // Изменил путь
                    alt: "Рабочая группа",
                    caption: "Участие в рабочей группе" 
                },
                { 
                    src: "/bot3.jpg",  // Изменил путь
                    alt: "Подкаст Мобилизация и Люди",
                    caption: "Запись подкаста 'Мобилизация и Люди'" 
                }
            ],
            lightboxVisible: false,
            currentImageIndex: 0
        }
    },
    methods: {
        openLightbox(index) {
            this.currentImageIndex = index;
            this.lightboxVisible = true;
            document.body.style.overflow = 'hidden';
        },
        closeLightbox() {
            this.lightboxVisible = false;
            document.body.style.overflow = 'auto';
        },
        nextImage() {
            this.currentImageIndex = (this.currentImageIndex + 1) % this.images.length;
        },
        prevImage() {
            this.currentImageIndex = (this.currentImageIndex - 1 + this.images.length) % this.images.length;
        },
        handleKeydown(e) {
            if (this.lightboxVisible) {
                if (e.key === 'Escape') this.closeLightbox();
                if (e.key === 'ArrowRight') this.nextImage();
                if (e.key === 'ArrowLeft') this.prevImage();
            }
        }
    },
    mounted() {
        window.addEventListener('keydown', this.handleKeydown);
    },
    beforeDestroy() {
        window.removeEventListener('keydown', this.handleKeydown);
    }
}
</script>
<template>
    <main class="main__white">
        <div class="container">
            <h1 class="contact_h1"> 
                Обо мне
            </h1>
            <div class="practice__upper">
                <p class="upper-p">
                    Военное право — очень специфичная и непростая отрасль. Особенно в условиях боевых действий: законы меняются, бюрократия перегружена, а сами военнослужащие и их семьи часто не знают, куда обращаться и кому доверять.
                </p>
                <p class="upper-p">
                    Многие юристы боятся браться за такие дела или дают формальные, «отписочные» рекомендации. Что же заставило меня сменить теплое место штатного юриста компании на правозащитника?
                    В 2022 году мой близкий человек был мобилизован. Я увидела, с какими трудностями сталкиваются военнослужащие буквально каждый день, и начала искать решения. Сначала для себя, потом — для знакомых, и в итоге пришла к профессиональной работе в адвокатском кабинете. В настоящий момент, я поняла, что готова самостоятельно заниматься защитой прав мобилизованных и их семей.
                </p>
                <p class="upper-p">
                    Эта работа стала для меня делом принципа — и способом переработать свой личный травматичный опыт в пользу тех, кто оказался беспомощным в условиях прохождения военной службы.  
                </p>
            </div>
            <div class="middle">
                <h2>
                    Общественная деятельность 📌 Помимо практики, я участвую в работе на системном уровне:
                </h2>
                <p class="middle-p">
                    Выступала на конгрессе Ассоциации комитетов солдатских матерей (фото слева);
                </p>
                <p class="middle-p">
                    Входила в рабочую группу при Государственной Думе;
                </p>
                <p class="middle-p">
                    Участвовала в обсуждении вопросов демобилизации и поддержки мобилизованных в Министерстве Обороны;
                </p>
                <p class="middle-p">
                    Провожу юридические встречи, участвую в диалогах с депутатами и общественными организациями;
                </p>
                <p class="middle-p">
                    Запустила подкаст "Мобилизация и Люди" в целях освещения проблем мобилизованных
                </p>
                <div class="bottom">
                    <p class="bottom-p">
                        Специально для Вас мы отсняли выпуск "топ вопросов военному адвокату", где разбираем самые насущные вопросы, с которыми сталкиваются военнослужащие:
                    </p>
                </div>
                    <div class="bottom__photos">
                        <img 
                            v-for="(img, index) in images" 
                            :key="index"
                            :src="img.src" 
                            :class="['photo', { 'photo-3': index === 2 }]" 
                            :alt="img.alt"
                            @click="openLightbox(index)"
                            
                        >
                    </div>
            </div>
        </div>

        <!-- Лайтбокс для просмотра фотографий -->
        <div v-if="lightboxVisible" class="lightbox" @click.self="closeLightbox">
            <button class="lightbox-close" @click="closeLightbox">&times;</button>
            <button class="lightbox-nav lightbox-prev" @click.stop="prevImage">&#10094;</button>
            <div class="lightbox-content">
                <img :src="images[currentImageIndex].src" :alt="images[currentImageIndex].alt" class="lightbox-image">
                <div class="lightbox-caption">{{ images[currentImageIndex].caption }}</div>
            </div>
            <button class="lightbox-nav lightbox-next" @click.stop="nextImage">&#10095;</button>
        </div>
    </main>
</template>


<style lang="css" scoped>
.main__white {
    background: rgb(236, 236, 236);
    width: 100%;
}
.container {
    display: flex;
    margin: 0 auto;
    max-width: 1400px;
    flex-direction: column;
    justify-content: center;
}
.contact_h1 {
    display: flex;
    justify-content: center;
    margin-top: 200px;
    font-size: 40px;
}
.practice__upper {
    max-width: 700px;
    display: flex;
    justify-content: center;
    flex-direction: column;
    margin: 0 auto;
    text-align: center;
}
.upper-p {
    font-size: 28px;
    color: rgb(70, 70, 70);
    margin-bottom: 20px;
}
.middle {
    max-width: 700px;
    display: flex;
    justify-content: center;
    flex-direction: column;
    margin: 0 auto;
    text-align: center;
}
.middle-p {
    text-align: center !important;
    font-size: 24px;
    margin-bottom: 15px;
}
.bottom-p {
    font-size: 24px;
    margin-bottom: 30px;
}
.bottom__photos {
    display: flex;
    justify-content: center;
    gap: 30px;
    margin: 200px auto 100px 0;
    width: 100%;
    max-width: 1200px;
    padding: 0 20px;
    box-sizing: border-box;
    flex-wrap: nowrap; /* Запрещаем перенос на новую строку */
    overflow-x: auto; /* Добавляем горизонтальный скролл если не помещаются */
    scrollbar-width: none; /* Скрываем скроллбар для Firefox */
}

/* Скрываем скроллбар для Chrome/Safari */
.bottom__photos::-webkit-scrollbar {
    display: none;
}

.photo, .photo-3 {
    flex: 0 0 auto; /* Запрещаем сжатие/растяжение */
    width: 200px;
    height: 200px;
    object-fit: cover;
    display: block;
    cursor: pointer;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    border-radius: 5px;
}

@media (max-width: 767px) {
    .bottom__photos {
        flex-direction: column;
        align-items: center;
        overflow-x: visible; /* Возвращаем стандартное поведение */
        gap: 20px; /* Уменьшаем промежуток между фото */
        margin: 100px auto 50px; /* Уменьшаем отступы */
    }
    
    .photo, .photo-3 {
        width: 100%;
        max-width: 350px;
        height: auto;
        aspect-ratio: 1/1; /* Сохраняем квадратные пропорции */
    }
}
.photo:hover, .photo-3:hover {
    transform: scale(1.03);
    box-shadow: 0 10px 20px rgba(0,0,0,0.2);
}

/* Стили для лайтбокса */
.lightbox {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.9);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1000;
    cursor: pointer;
}
.lightbox-content {
    position: relative;
    max-width: 90%;
    max-height: 90%;
    display: flex;
    flex-direction: column;
    align-items: center;
}
.lightbox-image {
    max-width: 100%;
    max-height: 80vh;
    object-fit: contain;
    border-radius: 5px;
}
.lightbox-caption {
    color: white;
    margin-top: 15px;
    font-size: 18px;
    text-align: center;
    max-width: 80%;
}
.lightbox-close {
    position: absolute;
    top: 20px;
    right: 30px;
    color: white;
    font-size: 40px;
    background: none;
    border: none;
    cursor: pointer;
    padding: 10px;
    z-index: 1001;
}
.lightbox-nav {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    color: white;
    font-size: 50px;
    background: rgba(0,0,0,0.3);
    border: none;
    cursor: pointer;
    padding: 15px;
    z-index: 1001;
    border-radius: 50%;
    width: 60px;
    height: 60px;
    display: flex;
    align-items: center;
    justify-content: center;
}
.lightbox-prev {
    left: 30px;
}
.lightbox-next {
    right: 30px;
}
.lightbox-nav:hover {
    background: rgba(0,0,0,0.6);
}

@media (max-width: 768px) {
    .bottom__photos {
        flex-direction: column;
        align-items: center;
    }
    .photo, .photo-3 {
        width: 100%;
        max-width: 350px;
        margin-bottom: 20px;
    }
    .lightbox-nav {
        width: 40px;
        height: 40px;
        font-size: 30px;
    }
    .lightbox-caption {
        font-size: 16px;
    }
}
</style>