/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */
require('./bootstrap');
window.Vue = require('vue');
import App from './App.vue';
import axios from 'axios';
import VueRouter from 'vue-router';
import Navbar from '../js/components/navbar'
import Contact from '../js/components/Contact.vue'
import Home from '../js/components/home.vue'
Vue.use( axios);
Vue,use(VueRouter)
const routes=[
  {
  name:'/',
  path:'/',
  component: Home
},
{
  name:'/contact',
  path:'/contact',
  component: Contact
},
{
  name:'/navbar',
  path:'/navbar',
  component: Navbar
}
]
const router=new VueRouter({mode:'history',routes:routes})
export default router
//const app =new Vue(Vue.util.extend({router},App)).$mount('#app');

Vue.component('Home', require('./components/home.vue').default);
const app=new Vue({
  el:"#app"
})

/*

const router=new VueRouter({mode:'history',routes:routes})
import App from './App.vue'
import VueRouter from 'vue-router';
import axios from 'axios'
import Navbar from '../js/components/navbar'
import Contact from '../js/components/Contact.vue'
import Home from '../js/components/home.vue'
Vue,use(VueRouter)
Vue.use( axios)



const routes = [
    { path: '/contact', component: Contact },
    { path: '/', component: Home,
    path: '/navbar', component: Navbar },
  ]
  const router=new VueRouter({mode:'history',routes:routes})
  
const app =new Vue(Vue.util.extend({router},App)).$mount('#app');
  /*
const routes=[
    {
    name:'/',
    path:'/',
    component: home
},
{
    name:'contact',
    path:'/contact',
    component: Contact
}
]
const router=new VueRouter({mode:'history',routes:routes})

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

//Vue.component('example-component', require('./components/ExampleComponent.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

