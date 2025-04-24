<script lang="ts">
  let morning: string = "...";
  let image: string = "coq_noir.svg";
  
  function is_it_the_morning() {
    const hour: number = new Date().getHours();
    if( hour >= 6 && hour < 12) {
      morning = "Oui !!!";
      image = "coq_vert.svg";
    } else {
      if( hour < 6 ) {
        morning = "Non !!! Pas encore...";
        image = "coq_rouge.svg";
      }
      if(hour >= 12) {
        morning = "Non !!! Trop tard...";
        image = "coq_rouge.svg";
      }
    }
    return morning;
  }

</script>

<main>
  <div class="coq">
    <img src="{'/' + image}" height="300px" alt="Coq" />
    <h1>Est-ce que c'est le matin ?</h1>
    {is_it_the_morning()}
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
