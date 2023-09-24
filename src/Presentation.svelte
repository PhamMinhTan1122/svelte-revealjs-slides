<!-- RevealPresentation.svelte -->
<script lang="ts">
  import { onMount } from 'svelte';
  import  Reveal  from 'reveal.js';
  import 'reveal.js/dist/reveal.css';
  import 'reveal.js/plugin/highlight/monokai.css';

  export let config;

  onMount(async () => {
    // const Highlight = import('reveal.js/plugin/highlight/highlight');
    // const Markdown = import('reveal.js/plugin/markdown/markdown');
    // const MathReveal = import('reveal.js/plugin/math/math');
    // const RevealNotes = import('reveal.js/plugin/notes/notes');

    Reveal.initialize(config);
    // Reveal.registerPlugin('highlight', Highlight);
    // Reveal.registerPlugin('markdown', Markdown);
    // Reveal.registerPlugin('math', MathReveal);
    // Reveal.registerPlugin('notes', RevealNotes);
  });
</script>

<div class="reveal">
  <div class="slides">
    <slot></slot>
  </div>
</div>
