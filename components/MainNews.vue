<template>
    <main class="main__white">
        <div class="container">
            <h1 class="contact_h1">Правовые новости и полезные материалы</h1>
            <div class="news_block">
                <div 
                    class="news_card" 
                    v-for="(news, index) in visibleNews" 
                    :key="news.id"
                    @click="$router.push(`/news/${news.id}`)"
                >
                    <img :src="news.image" class="news_img" :alt="news.title">
                    <h2 class="news_h2">{{ news.title }}</h2>
                    <p class="news_p">{{ news.shortText }}</p>
                </div>
            </div>
            <div class="bottom">
                <a 
                    href="#" 
                    class="bottom-a" 
                    @click.prevent="showAllNews = !showAllNews"
                >
                    {{ showAllNews ? 'Скрыть статьи' : 'Читать все статьи' }}
                </a>
            </div>
        </div>
    </main>
</template>

<script>
export default {
    name: "MainNews",
    data() {
        return {
            showAllNews: false,
            newsList: [
                {
                    id: 1,
                    image: '/news1.jpg',
                    title: 'Что вам положено при ранении в ходе СВО',
                    shortText: 'Военнослужащий, получивший в бою ранение, может претендовать на страховые и президентские выплаты.',
                    date: '2025-05-15'
                },
                {
                    id: 2,
                    image: '/news2.jpg',
                    title: 'Установление инвалидности. Выплаты при увольнении',
                    shortText: 'При увольнении вследствие военной травмы положены дополнительные компенсации и выплаты по инвалидности.',
                    date: '2025-06-20'
                },
                {
                    id: 3,
                    image: '/news3.jpg',
                    title: 'Как уволиться военнослужащему в условиях мобилизации?',
                    shortText: 'В период мобилизации увольнение возможно только по определенным основаниям.',
                    date: '2025-07-10'
                },
                {
                    id: 4,
                    image: '/news4.jpg',
                    title: 'Обжалование заключений ВВК',
                    shortText: 'Как оспорить завышенную категорию годности через вышестоящую комиссию или суд.',
                    date: '2025-08-05'
                },
                {
                    id: 5,
                    image: '/news5.jpg',
                    title: 'Выплаты семьям погибших участников СВО – 2025',
                    shortText: 'Какие компенсации положены семьям погибших и как их получить.',
                    date: '2025-08-25'
                }
            ]
        }
    },
    computed: {
        visibleNews() {
            return this.showAllNews ? this.newsList : this.newsList.slice(0, 3);
        }
    }
}
</script>

<style lang="css" scoped>
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap');
.main__white{
    background: #293834;
    width: 100%;
    padding: 20px 0px;
    box-sizing: border-box;
}

.container{
    display: flex;
    margin: 0 auto;
    max-width: 1400px;
    flex-direction: column;
    justify-content: center;
    padding: 0 20px;
    position: relative;
}

.contact_h1{
    color: white;
    font-size: 2.5rem;
    text-align: center;
    margin: 80px 0 60px;
    line-height: 30px;
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
    cursor: pointer;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
}

.news_card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0,0,0,0.15);
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
    color: white;
    line-height: 30px;
    padding: 0 15px;
}

.news_p{
    font-size: 1rem;
    color: white;
    line-height: 30px;
    margin-bottom: 15px;
    padding: 0 15px 15px;
}

.bottom{
    display: flex;
    justify-content: center;
    margin: 60px auto;
}

.bottom-a{
    padding: 18px 36px;
    width: auto;
    background: #8b7b4e;
    color: white;
    display: inline-flex;
    justify-content: center;
    text-decoration: none;
    font-size: 1.1rem;
    border-radius: 4px;
    transition: all 0.3s ease;
    border: none;
    cursor: pointer;
}

.bottom-a:hover {
    background: #6d603d;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

/* Стили для модального окна */
.news-modal {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.7);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 1000;
    padding: 20px;
    overflow-y: auto;
}

.news-modal__content {
    background: white;
    max-width: 800px;
    width: 100%;
    border-radius: 8px;
    padding: 30px;
    position: relative;
    max-height: 90vh;
    overflow-y: auto;
}

.news-modal__close {
    position: absolute;
    top: 15px;
    right: 15px;
    font-size: 24px;
    background: none;
    border: none;
    cursor: pointer;
    color: white;
    padding: 5px;
}

.news-modal__close:hover {
    color: white;
}

.news-modal__image {
    width: 100%;
    max-height: 400px;
    object-fit: cover;
    border-radius: 4px;
    margin-bottom: 20px;
}

.news-modal__title {
    font-size: 2rem;
    margin-bottom: 20px;
    color: white;
}

.news-modal__text {
    font-size: 1.1rem;
    line-height:30px;
    color: white;
    margin-bottom: 20px;
}

.news-modal__text p {
    margin-bottom: 15px;
}

.news-modal__date {
    font-size: 0.9rem;
    color: white;
    font-style: italic;
}

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

    .news-modal__content {
        max-width: 1000px;
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
        margin: 20px auto;
    }

    .news-modal__content {
        padding: 20px;
    }

    .news-modal__title {
        font-size: 1.8rem;
    }
}

@media (max-width: 480px) {
    .contact_h1 {
        font-size: 1.8rem;
        margin: 0px 0 30px;
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

    .news-modal__content {
        padding: 15px;
    }

    .news-modal__title {
        font-size: 1.5rem;
    }

    .news-modal__text {
        font-size: 1rem;
    }
}
</style>
