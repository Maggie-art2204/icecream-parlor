  let slideIndex = 0;
const slidesWrapper = document.querySelector('.slides-wrapper');
const totalSlides = document.querySelectorAll('.slides img').length;

function showSlide(index) {
    if (index >= totalSlides) slideIndex = 0; 
    if (index < 0) slideIndex = totalSlides - 1; 
    slidesWrapper.style.transform = `translateX(${-slideIndex * 100}%)`;
}

function nextSlide() {
    slideIndex++;
    showSlide(slideIndex);
}

function prevSlide() {
    slideIndex--;
    showSlide(slideIndex);
}


setInterval(nextSlide, 2000);