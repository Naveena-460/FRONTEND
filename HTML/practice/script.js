// ====== SMOOTH SCROLL FOR ENTER BUTTON ======
const enterBtn = document.getElementById('enterBtn');
enterBtn.addEventListener('click', ()=>{
    document.getElementById('map').scrollIntoView({behavior:'smooth'});
});

// ====== MAP REGION HOVER INFO ======
const regions = document.querySelectorAll('.map-region');
const regionInfo = document.getElementById('regionInfo');
regions.forEach(region=>{
    region.addEventListener('mouseenter',()=>{
        regionInfo.textContent = region.getAttribute('data-info');
    });
    region.addEventListener('mouseleave',()=>{
        regionInfo.textContent = 'Hover on a region to see info';
    });
});

// ====== ZYNITES CLICK INFO ======
const zynites = document.querySelectorAll('.zynite');
const zyniteInfo = document.getElementById('zyniteInfo');
zynites.forEach(zynite=>{
    zynite.addEventListener('click',()=>{
        const role = zynite.getAttribute('data-role');
        zyniteInfo.textContent = `${role} — special duty of Zyra civilization.`;
    });
});

// ====== OPTIONAL PLANET GLOW EFFECT ======
const planet = document.getElementById('planet');
setInterval(()=>{
    planet.style.boxShadow = `0 0 ${Math.random()*30+20}px #00ffff, 0 0 ${Math.random()*50+30}px #ff00ff`;
},1000);
