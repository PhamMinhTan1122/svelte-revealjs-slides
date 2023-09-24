<script>
    import 'reveal.js/dist/reveal.css';
    import Router from './component/Router.svelte';

    export let app;
    export let reveal;

    import Home from './routes/Home.svelte';
    import DoAnMonTin_1 from './routes/do_an_mon_tin_1/main.svelte';
    import More from './routes/more/main.svelte'
    const routes = [
      {
        path: '/', component: Home
      },
      {
        path: '/svelte-revealjs-slides/do_an_mon_tin_1', component: DoAnMonTin_1
      },
      {
        path: '/more', component: More 
      }
    ]
</script>

<svelte:head>
    <title>{app.name}</title>
</svelte:head>


<Router basepath="/svelte-revealjs-slides" {routes} {app} {reveal} />
