<template>
  <v-app>
    <v-content>
      <v-container fill-height fluid>
        <nuxt />
      </v-container>
    </v-content>
    <v-footer
      :fixed="fixed"
      app
    >
      <v-spacer></v-spacer>
      <span>
        <small>version 123043.34.3 rev b &copy; {{ new Date().getFullYear() }}</small>
      </span>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  data () {
    return {
      fixed: true
    }
  }
}
</script>
