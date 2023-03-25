<template>
    123
    <div class="search-box">
        <input class="search-input" type="text" v-model="query" placeholder="请输入歌名" @keydown.enter="search" />
        <button class="search-btn" @click="search">搜索</button>
    </div>
</template>

<script setup>
import { ref } from 'vue';

const query = ref("")
const search = async (name) => {
    try {
        const response = await fetch(`http://localhost:8000/daily-jaychou/search?name=${name}`);
        const data = await response.json();
        console.log(data);
        return data;
    } catch (error) {
        console.error(error);
    }
}

</script>

<style>
.search-box {
    display: flex;
    align-items: center;
    justify-content: center;
}

.search-input {
    width: 300px;
    height: 40px;
    padding: 0 10px;
    border: 2px solid #ccc;
    border-radius: 5px;
    font-size: 18px;
    outline: none;
}

.search-btn {
    height: 40px;
    padding: 0 10px;
    margin-left: 10px;
    background-color: #409eff;
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
    outline: none;
}

.search-btn:hover {
    background-color: #66b1ff;
}
</style>
