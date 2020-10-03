Vue.component('user', {
  template: /*html*/`
  <div class="mt-5">
    <span>Email</span>
    <input type="text" v-model="email">
    <span>Password</span>
    <input type="password" v-model="password">
    <button type="button" class="btn btn-primary" @click.prevent="add">Create</button>
    <div class="mt-3"><small>Token: {{token}}</small></div>
  </div>
  `,
  data () {
    return {
      email: '',
      password: '',
      token: ''
    };
  },
  methods: {
    add () {
      axios
        .post('http://localhost:3000/api/v1/users', { email: this.email, password: this.password })
        .then(response => (this.token = response.data.token));
      this.$root.index();
      this.email = '';
      this.password = '';
    }
  }

});
