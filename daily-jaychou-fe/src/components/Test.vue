<template>
    kkk
    <div class="music-player">
        <div class="title">{{ currentSong.title }}</div>
        <div class="artist">{{ currentSong.artist }}</div>
        <div class="controls">
            <button @click="prev">Prev</button>
            <button @click="toggle">Play/Pause</button>
            <button @click="next">Next</button>
        </div>
        <div class="progress">
            <div class="bar" :style="{ width: progress + '%' }"></div>
        </div>
        <div class="lyrics">{{ currentLyrics }}</div>
    </div>
</template>

<script>
import { ref, watch, onMounted, onUnmounted } from 'vue'

export default {
    props: {
        songs: {
            type: Array,
            default: () => []
        }
    },
    setup(props) {
        const audio = new Audio()
        const currentSong = ref(null)
        const currentLyrics = ref('')
        const progress = ref(0)
        const index = ref(0)
        const playing = ref(false)

        // 播放/暂停
        const toggle = () => {
            if (audio.paused) {
                audio.play()
            } else {
                audio.pause()
            }
            playing.value = !audio.paused
        }

        // 上一曲
        const prev = () => {
            index.value = (index.value - 1 + props.songs.length) % props.songs.length
            play()
        }

        // 下一曲
        const next = () => {
            index.value = (index.value + 1) % props.songs.length
            play()
        }

        // 播放
        const play = () => {
            const song = props.songs[index.value]
            currentSong.value = song
            currentLyrics.value = song.lyrics
            audio.src = song.url
            audio.load()
            audio.play()
            playing.value = true
        }

        // 监听播放进度
        const updateProgress = () => {
            progress.value = (audio.currentTime / audio.duration) * 100
        }
        audio.addEventListener('timeupdate', updateProgress)

        // 监听歌曲结束
        const onEnded = () => {
            next()
        }
        audio.addEventListener('ended', onEnded)

        // 监听歌曲索引的变化
        watch(index, (newIndex) => {
            play()
        })

        // 初始化
        onMounted(() => {
            play()
        })

        // 销毁
        onUnmounted(() => {
            audio.removeEventListener('timeupdate', updateProgress)
            audio.removeEventListener('ended', onEnded)
        })

        return {
            currentSong,
            currentLyrics,
            progress,
            playing,
            toggle,
            prev,
            next
        }
    }
}
</script>

<style>
.music-player {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    background-color: #f5f5f5;
    font-family: Arial, sans-serif;
    font-size: 18px;
    color: #333;
}

.title {
    font-size: 28px;
    font-weight: bold;
    margin-bottom: 20px;
}

.artist {
    font-size: 20px;
    margin-bottom: 10
}
</style>