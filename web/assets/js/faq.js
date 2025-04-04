function openMenu(element) {
    element.querySelector('svg').classList.toggle('transform');
    element.querySelector('svg').classList.toggle('rotate-180');
    element.nextElementSibling.classList.toggle('hidden');
}