<script lang="ts">
  import { onMount } from 'svelte';

  let audio_coq;
  let audio_vache;
  let click_count: number = 0;
  const hour: number = new Date().getHours();
  const morning_start = 6;
  const morning_end = 12;
  
  function is_it_the_morning() {
    if( hour >= morning_start && hour < morning_end ) {
      return true;
    } else {
      return false;
    }
  }

  function is_it_too_late() {
    if( hour < morning_start ) {
      return false;
    } else {
      return true;
    }
  }

  function handleClick() {
    click_count++;
    if( click_count >= 10 ){
      audio_vache.play();
      click_count = 0;
    }
  }

  onMount(() => {
    if(is_it_the_morning()) {
      setTimeout(() => {
        audio_coq.play()
      },1000);
    }
  });

</script>

<main>
  <div class="coq">
    {#if is_it_the_morning() }
      <img src="/coq_vert.svg" height="300px" alt="Coq" on:click={handleClick} />
      <h1>Est-ce que c'est le matin ?</h1>
      Oui !!!
    {:else if is_it_too_late() }
      <img src="/coq_rouge.svg" height="300px" alt="Coq" on:click={handleClick} />
      <h1>Est-ce que c'est le matin ?</h1>
      Non !!! Trop tard...
    {:else}
      <img src="/coq_rouge.svg" height="300px" alt="Coq" on:click={handleClick} />
      <h1>Est-ce que c'est le matin ?</h1>
      Non !!! Pas encore...
    {/if}
    <audio src="/coq.mp3" bind:this={audio_coq}></audio>
    <audio src="/vache.mp3" bind:this={audio_vache}></audio>
  </div>
  <div class="footer">
  <footer class="footer">
    <small>version 123043.34.3 rev b &copy; { new Date().getFullYear() }</small>
  </footer>
  </div>
</main>

<style>
  body {
    text-align: center;
    padding: 50px;
    min-height: 100%;
    position: relative;
 }
 div.coq {
    padding: 10px;
 }
 div.footer {
    padding: 10px;
    text-align: right;
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
 }
</style>
