<script>
  import { onMount } from 'svelte';
  export let routes = [];
  export let app;
  export let reveal;
  let currentRoute = '';

  onMount(() => {
    // Set initial value of currentRoute based on window location
    currentRoute = window.location.pathname;

    // Handle browser back/forward navigation
    window.onpopstate = () => {
      currentRoute = window.location.pathname;
    };
  });

  function navigateTo(route) {
    // Update currentRoute when navigating to a new route
    currentRoute = route;
    window.history.pushState({}, null, route);
  }
</script>

{#if currentRoute=='/'}
  <nav>
    <ul>
      <li>
        <a href="/do_an_mon_tin_1" on:click|preventDefault={() => navigateTo('/do_an_mon_tin_1')}> do_an_mon_tin_1 </a>
        <a href="/more" on:click|preventDefault={() => navigateTo('/more')}> more </a>
      </li>
    </ul>
  </nav>
{/if}
<div class="reveal">
    <div class="slides">
        {#each routes as { path, component }}
    {#if path === currentRoute}
      <svelte:component this={component} {app} {reveal} />
    {/if}
  {/each}
    </div>
</div>
<style>
  /* Styles for the navigation buttons/links */
  nav {
    margin-bottom: 10px;
  }
  li {
    padding: 10px;
  }

  a {
    display: inline-block;
    margin-right: 10px;
    padding: 5px 10px;
    background-color: #f2f2f2;
    color: #333;
    text-decoration: none;
    border-radius: 5px;
  }

  a:hover {
    background-color: #e6e6e6;
  }


</style>
