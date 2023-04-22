<script setup>
import { ref, onMounted } from 'vue';
const mp3 = ref("");
const lrc = ref([]);
const getMusic = async () => {
    const res = await fetch("http://localhost:8000/daily-jaychou/random");
    const data = await res.json()
    mp3.value = data.mp3;
    lrc.value = data.lrc;
}
const ul = ref()
const audio = ref();
let currentTime = 0;
const getCurrentIndex = () => {
    for (const [index, item] of lrc.value.entries()) {
        if (index + 1 === lrc.value.length) {
            return index;
        }
        if (currentTime >= item.time && currentTime < lrc.value[index + 1].time) {
            return index;
        }
        if (currentTime < lrc.value[0].time) {
            return 0;
        }
    }
}
const translateDistance = () => {
    let index = getCurrentIndex()
    if (index > 5 && index < lrc.value.length - 5) {
        return (index - 5) * -7;
    }
    if (index > lrc.value.length - 11) {
        return (lrc.value.length - 10) * -7
    }
    return 0;
}

onMounted(() => {
    getMusic();
    let liList = ul.value.children;
    audio.value.addEventListener("timeupdate", (e) => {
        currentTime = e.target.currentTime;
        let index = getCurrentIndex()
        if (index == 0) {
            liList[index].classList.add("active");
        } else {
            liList[index - 1].classList.remove("active");
            liList[index].classList.add("active");
        }
        let distance = translateDistance();
        ul.value.style.transform = `translateY(${distance}vh)`
    })
})

</script>

<template>
    <div class="container">
        <div class="main">
            <div class="ul">
                <ul class="lrc" ref="ul">
                    <template v-for="item, index in lrc">
                        <li>{{ item.lineLyric }}</li>
                    </template>
                </ul>
            </div>
        </div>
        <div class="bottom">
            <div class="audio">
                <audio :src="mp3" controls ref="audio"></audio>
            </div>
        </div>
    </div>
</template>
<style scoped>
.container {
    width: 100vw;
    height: 100vh;
    background: #000;
    overflow: hidden;
}

.container .main {
    width: 100%;
    height: 77vh;
    margin-top: 10vh;
}

.container .bottom {
    width: 100%;
    height: 20vh;
    text-align: center;
    line-height: 20vh;
}

.container .main .ul {
    width: 60vw;
    height: 77vh;
    margin: auto;
    overflow: hidden;
    /* overflow: hidden; */
}

.container .main .ul ul {
    height: 70vh;
    transition: 1s;
}

.container .main .ul ul>li {
    width: 100%;
    text-align: center;
    height: 7vh;
    font-size: 30px;
    color: #666;
    transition: 1s;
}

.container .main .ul .active {
    color: #008c8c;
    transform: scale(1.5);
}
</style>