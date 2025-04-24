<script lang="ts">
  const morning: string = $state("...")
  const hour: number = new Date().getHours()
  if(hour > 6 && hour <12) {
    morning = "oui !!!"
  else {
    morning = "non !!!"
  }
</script>

<div>
  {morning}
</div>
