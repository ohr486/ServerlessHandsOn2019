<template>
  <div id="task">
    <table>
      <tbody>
        <tr>
          <td>ID</td>
          <td>Title</td>
          <td>Desc</td>
          <td>Status</td>
        </tr>
        <tr v-for="t in tasks" :key="t.id">
          <td>{{ t.id }}</td>
          <td>{{ t.title }}</td>
          <td>{{ t.desc }}</td>
          <td>{{ t.status }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  data () {
    return {
      tasks: []
    }
  },
  created () {
    this.$axios
      .get('http://localhost:3000/tasks.json', {headers: {'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'}})
      .then(response => {
        this.tasks = response.data
      })
  }
}
</script>

<style>
.task {
  color: red;
}
</style>
