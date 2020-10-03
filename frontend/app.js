const app = new Vue({
  el: '#app',
  data () {
    return {
      users: null,
      properties: null
    };
  },
  methods: {
    index () {
      axios
        .get('http://localhost:3000/api/v1/users')
        .then(response => (this.users = response.data.users));
    },
    del (event) {
      axios
        .delete('http://localhost:3000/api/v1/users/' + event.target.id)
        .then(response => (console.log(response.status)));
      this.index();
    },
    prop () {},
    index_properties () {
      axios
        .get('http://localhost:3000/api/v1/properties')
        .then(response => (this.properties = response.data.properties));
    }
  },
  computed: {},
  mounted () {
    this.index();
    this.index_properties();
  }
});
