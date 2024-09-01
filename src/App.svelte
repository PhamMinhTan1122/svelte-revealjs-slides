<script lang="ts">
    import 'reveal.js/dist/reveal.css';
    import Router from './component/Router.svelte';

    export let app;
    export let reveal;

    import Home from './routes/Home.svelte';
    import DoAnMonTin_1 from './routes/do_an_mon_tin_1/main.svelte';
    import More from './routes/more/main.svelte'
    import TheEnd12a1 from './routes/the_end_12a1/main.svelte'
    const routes = [
      //{
      //  path: '/', component: Home
      //},
      {
        path: '/', component: TheEnd12a1
      },
      {
        path: '/do_an_mon_tin_1', component: DoAnMonTin_1
      },
      {
        path: '/more', component: More 
      }
    ]
</script>

<svelte:head>
    <title>{app.name}</title>
</svelte:head>


<Router {routes} {app} {reveal} />
