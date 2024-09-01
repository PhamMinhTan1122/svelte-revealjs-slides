<script lang="ts">
    import RevealPresentation from '../../Presentation.svelte';
    import Highlight from 'reveal.js/plugin/highlight/highlight';
    import Markdown from 'reveal.js/plugin/markdown/markdown';
    import MathReveal from 'reveal.js/plugin/math/math';
    import RevealNotes from 'reveal.js/plugin/notes/notes';
    // import slides
    import Slide_1 from "./subs/sl_1.svelte"
    import Slide_2 from "./subs/sl_2.svelte"
    import Slide_3 from "./subs/sl_3.svelte"
    // Import theme
    import 'reveal.js/dist/theme/white.css';

    // Import CSS for plugins
    import 'reveal.js/plugin/highlight/monokai.css';
    export let app;
    export let reveal;
    let config = {
        plugins: [ Highlight, Markdown, MathReveal.MathJax2, MathReveal.KaTeX, RevealNotes ],
        hash: true,
        autoAnimateEasing: 'ease',
        autoAnimateDuration: 1,
        controls: false,
        progress: true,
        touch: true,
        transition: 'convex',
        mathjax2: {
            config: 'TeX-AMS_HTML-full',
            TeX: {
                Macros: {
                    R: '\\mathbb{R}',
                    set: [ '\\left\\{#1 \\; ; \\; #2\\right\\}', 2 ]
                }
            }
        },
  };
    
</script>
<RevealPresentation {config}>
<Slide_1/>
<Slide_2/>
<Slide_3/>
</RevealPresentation>
