<script>
export default {
  data() {
    return {
      images: [
        { src: "/bot1.jpg", alt: "Фото 1", caption: "" },
        { src: "/bot2.png", alt: "Фото 2", caption: "" },
        { src: "/bot3.jpg", alt: "Фото 3", caption: "" }
      ],
      lightboxVisible: false,
      currentImageIndex: 0,
      carousel: {
        currentIndex: 0,
        touchStartX: 0
      }
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
    },
    nextCarousel() {
      this.carousel.currentIndex = (this.carousel.currentIndex + 1) % this.images.length;
    },
    prevCarousel() {
      this.carousel.currentIndex = (this.carousel.currentIndex - 1 + this.images.length) % this.images.length;
    },
    handleTouchStart(e) {
      this.carousel.touchStartX = e.touches[0].clientX;
    },
    handleTouchEnd(e) {
      const touchEndX = e.changedTouches[0].clientX;
      const diff = this.carousel.touchStartX - touchEndX;
      
      if (diff > 50) {
        this.nextCarousel(); // Свайп влево
      } else if (diff < -50) {
        this.prevCarousel(); // Свайп вправо
      }
    },
    goToSlide(index) {
      this.carousel.currentIndex = index;
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
<section id="about" class="main-contact">
  <main class="main__white">
    <div class="container">
      <h1 class="contact_h1">Обо мне</h1>

      <div class="practice__upper">
        <p class="upper-p">
          В условиях ведения боевых действий законы меняются, бюрократия перегружена, а сами военнослужащие и их семьи часто не знают, куда обращаться и кому доверять. Применяемое право весьма специфическое.
        </p>
        <p class="upper-p">
          Многие юристы не хотят браться за такие дела или дают формальные, «отписочные» рекомендации. Что же заставило меня сменить теплое место штатного юриста компании на правозащитника?
        </p>
        <p class="upper-p">
          В 2022 году мой близкий человек был мобилизован. Я увидела, с какими трудностями сталкиваются военнослужащие буквально каждый день, и начала искать решения. Сначала для себя, потом — для знакомых, и в итоге пришла к профессиональной работе в адвокатском кабинете. Сейчас я поняла, что готова самостоятельно заниматься защитой прав мобилизованных и их семей.
        </p>
        <p class="upper-p">
          Эта работа стала для меня делом принципа — и способом переработать свой личный травматичный опыт в пользу тех, кто оказался беспомощным в условиях прохождения военной службы.
            <br>Права военнослужащих тоже необходимо защищать!
        </p>
      </div>

      <div class="middle">
        <h2 class="middle-h2">
          Общественная деятельность 📌 Помимо практики, я участвую в работе на системном уровне:
        </h2>
        <div class="middle-text">
          <p class="middle-p">• Выступала на конгрессе Ассоциации комитетов солдатских матерей;</p>
          <p class="middle-p">• Участвовала в рабочей группе при Государственной Думе по вопросу возвращения мобилизованных;</p>
          <p class="middle-p">• Инициировала с активистами совещание по вопросу демобилизации и поддержки мобилизованных в Министерстве Обороны;</p>
          <p class="middle-p">• Принимаю участие в диалогах с депутатами и общественными организациями;</p>
          <p class="middle-p">• Совместно с супругой мобилизованного запустила подкаст "Мобилизация и Люди" в целях освещения проблем мобилизованных</p>
        </div>

        <div class="bottom">
          <p class="bottom-p">
            Специально для Вас мы отсняли выпуск "топ вопросов военному адвокату", где разбираем самые насущные вопросы, с которыми сталкиваются военнослужащие: <a class="link" href="https://www.youtube.com/@lifemobilization">ссылка</a> 
          </p>
        </div>

        <div class="carousel-container">
          <div 
            class="carousel"
            @touchstart="handleTouchStart"
            @touchend="handleTouchEnd"
          >
            <div 
              class="carousel-inner"
              :style="{ transform: `translateX(-${carousel.currentIndex * 100}%)` }"
            >
              <div 
                v-for="(img, index) in images" 
                :key="index"
                class="carousel-item"
                @click="openLightbox(index)"
              >
                <img 
                  :src="img.src" 
                  :alt="img.alt" 
                  class="carousel-image"
                >
              </div>
            </div>
          </div>
          <div class="carousel-dots">
            <button
              v-for="(img, index) in images"
              :key="index"
              class="carousel-dot"
              :class="{ 'active': carousel.currentIndex === index }"
              @click="goToSlide(index)"
            ></button>
          </div>
        </div>
      </div>
    </div>

    <!-- Лайтбокс -->
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
</section>
</template>

<style lang="css" scoped>
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&display=swap');

.main__white {
  background: #293834;
  width: 100%;
  padding: 0px;
  box-sizing: border-box;
}

.middle-text {
  background: #8b7b4e;
  padding: 10px;
  border-radius: 15px;
  width: 100% !important;
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
  margin-top: 80px;
  font-size: 2.5rem;
  text-align: center;
  padding: 0 20px;
  color: white;
}
.link{
    color: #8b7b4e;;
}
.practice__upper {
  max-width: 1000px;
  display: flex;
  justify-content: center;
  flex-direction: column;
  margin: 0 auto;
  padding: 0 10px;
}

.upper-p {
  font-size: 20px;
  color: white;
  margin-bottom: 20px;
  line-height: 30px;
  text-align: justify;
  margin-top: 20px;
}

.middle {
  max-width: 1000px;
  display: flex;
  justify-content: center;
  flex-direction: column;
  margin: 40px auto;
  padding: 0 10px;
}

.middle-h2 {
  font-size: 22px;
  margin-bottom: 20px;
  text-align: center;
  line-height: 30px;
  padding: 0 10px;
  color: white;
}

.middle-p {
  font-size: 20px;
  margin-bottom: 15px;
  line-height: 30px;
  text-align: left;
  color: white;
  padding: 0 10px;
}

.bottom{
    max-width: 100%;
}
.bottom-p {
  font-size: 20px !important;
  margin: 30px 10px;
  line-height: 30px;
  text-align: left;
  color: white;
}

/* Карусель */
.carousel-container {
  width: 100%;
  max-width: 1000px;
  margin: 60px auto;
  position: relative;
  overflow: hidden;
}

.carousel {
  width: 100%;
  overflow: hidden;
  position: relative;
}

.carousel-inner {
  display: flex;
  transition: transform 0.5s ease;
  width: 100%;
}

.carousel-item {
  min-width: 100%;
  box-sizing: border-box;
  padding: 0 10px;
  display: flex;
  justify-content: center;
}

.carousel-image {
  width: 100%;
  max-width: 700px;
  height: auto;
  object-fit: cover;
  border-radius: 8px;
  cursor: pointer;
  transition: transform 0.3s ease;
}

.carousel-image:hover {
  transform: scale(1.03);
}

.carousel-dots {
  display: flex;
  justify-content: center;
  margin-top: 20px;
}

.carousel-dot {
  width: 12px;
  height: 12px;
  border-radius: 50%;
  background: #ccc;
  margin: 0 5px;
  border: none;
  cursor: pointer;
  transition: background 0.3s ease;
}

.carousel-dot.active {
  background: #8b7b4e;
}

/* Лайтбокс */
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
  max-width: 100%;
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
  font-size: 1rem;
  text-align: center;
  max-width: 80%;
}

.lightbox-close {
  position: absolute;
  top: 20px;
  right: 30px;
  color: white;
  font-size: 2.5rem;
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
  font-size: 2.5rem;
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

.lightbox-prev { left: 30px; }
.lightbox-next { right: 30px; }

.lightbox-nav:hover {
  background: rgba(0,0,0,0.6);
}

/* Адаптив */
@media (max-width: 1024px) {
  .contact_h1 { font-size: 2.2rem; margin-top: 60px; }
  .upper-p { font-size: 1rem; }
  .middle-h2 { font-size: 1.3rem; }
  .middle-p, .bottom-p { font-size: 20px; }
  .container { margin: 0 !important; }
}

@media (max-width: 768px) {
  .contact_h1 { font-size: 2rem; margin-top: 50px; }
  .middle { margin: 40px 0px; max-width: 100%; }
  .practice__upper { max-width: 100%; margin: 0 10px; }
  .upper-p { font-size: 0.95rem; }
  .middle-h2 { font-size: 1.2rem; }
  .middle-p, .bottom-p { font-size: 0.9rem; }
  
  .carousel-container { margin: 40px auto; }
  .carousel-image { max-width: 450px; }
  
  .lightbox-nav { width: 50px; height: 50px; font-size: 2rem; }
  .lightbox-close { font-size: 2rem; }
}

@media (max-width: 480px) {
  .contact_h1 { font-size: 1.7rem; margin-top: 40px; }
  .upper-p { font-size: 0.9rem; text-align: left; }
  .middle-h2 { font-size: 1.1rem; text-align: left; }
  .middle-p, .bottom-p { font-size: 0.85rem; text-align: left; padding: 0; max-width: 100%;}
  .bottom-p { text-align: left; padding: 0; max-width: 100%;}
  .bottom{
    max-width: 350px;
  }
  .carousel-image { max-width: 370px; }
  
  .lightbox-nav { width: 40px; height: 40px; font-size: 1.5rem; }
  .lightbox-close { font-size: 1.8rem; top: 15px; right: 15px; }
  .lightbox-caption { font-size: 0.9rem; }
}
</style>