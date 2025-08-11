<template>
  <div>
    <MainMenu />
    <NuxtPage /> 
  </div>
  
</template>

<style>
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap');

* {
margin: 0;
padding: 0;
font-family: 'Playfair Display', serif !important;
}
html, body {
  width: 100%;
  overflow-x: hidden;
  position: relative;
}

* {
  max-width: 100%;
  @media (max-width: 500px){
    box-sizing: border-box;
  }
}
h1,h2,h3{
  color: white !important;
}
</style>
