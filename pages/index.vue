<template>
  <v-layout
    column
    justify-center
    align-center
  >
    <v-flex
      xs12
      sm8
      md8
    >
      <v-row>
        <v-col>
          <v-row align="center" justify="center">
            <v-img :src="image" height="300px" contain />
          </v-row>
          <v-row align="center" justify="center">
            <div class="text-center">
              <h1>Est-ce que c'est le matin ?</h1>
            </div>
            
          </v-row>
          <v-row>
            &nbsp;
          </v-row>
          <v-row align="center" justify="center">
            <big>{{morning}}</big>
          </v-row>
        </v-col>
      </v-row>
    </v-flex>
  </v-layout>
</template>

<script>

export default {
  components: {
  },
  data() {
    return {
      morning: "...",
      image: "coq_rouge.svg"
    }
  },
  mounted() {
    let hour = new Date().getHours()
    if( hour > 6 && hour < 12) {
      this.morning = "oui !!!"
      this.image = "coq_vert.svg"
    } else {
      if( hour < 6 ) {
        this.morning = "non !!! pas encore..."
        this.image = "coq_rouge.svg"
      }
      if(hour >= 12) {
        this.morning = "non !!! trop tard..."
        this.image = "coq_rouge.svg"
      }
    }
  }
}
</script>
