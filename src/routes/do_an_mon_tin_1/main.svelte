<!-- Your route component -->
<script lang="ts">
    import Code from "../../component/code.svelte";
    import Note from "../../component/note.svelte";
    import Slide from "../../component/slide.svelte";
    import Timer from "../../component/timer.svelte"; import RevealPresentation from '../../Presentation.svelte';
    import Highlight from 'reveal.js/plugin/highlight/highlight';
    import Markdown from 'reveal.js/plugin/markdown/markdown';
    import MathReveal from 'reveal.js/plugin/math/math';
    import RevealNotes from 'reveal.js/plugin/notes/notes';
    
    import Slide1 from "./sub/slide_1.svelte"
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
  <Slide1>
  </Slide1>
</RevealPresentation>

