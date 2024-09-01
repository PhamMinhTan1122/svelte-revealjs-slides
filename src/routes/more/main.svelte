<script lang="ts">
    import Code from "../../component/code.svelte";
    import Note from "../../component/note.svelte";
    import Slide from "../../component/slide.svelte";
    import Timer from "../../component/timer.svelte"; import RevealPresentation from '../../Presentation.svelte';
    import Highlight from 'reveal.js/plugin/highlight/highlight';
    import Markdown from 'reveal.js/plugin/markdown/markdown';
    import MathReveal from 'reveal.js/plugin/math/math';
    import RevealNotes from 'reveal.js/plugin/notes/notes';

    // Import theme
    import 'reveal.js/dist/theme/black.css';

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
<Slide animate>
	<Code id="code" lines>
		{`
            function void(){}
        `}
	</Code>
	<Note>NOTES</Note>
</Slide>

<Slide animate>
	<Code id="code" lines>
		{`
            function void(){
                console.log("Hello World")
            }
        `}
	</Code>
  <Timer />
</Slide>

<Slide animate>
	<p class="uppercase">Transition</p>
	<div class="r-hstack flex gap-4 place-content-center">
		<div data-id="box-1" class="w-[100px] h-[100px] bg-gray-400" />
		<div data-id="box-2" class="w-[100px] h-[100px] bg-gray-400" />
		<div
			data-id="box-3"
			style="background-color: rgb(156, 163, 175);"
			class="w-[100px] h-[100px]"
		/>
	</div>
</Slide>
<Slide animate ease="cubic-bezier(0.770, 0.000, 0.175, 1.000)">
	<p class="uppercase">Transition</p>
	<div class="r-hstack flex gap-4 place-content-center">
		<div data-id="box-1" class="w-[200px] h-[200px] bg-red-400" />
		<div data-id="box-2" class="w-[200px] h-[200px] bg-blue-400" />
		<div
			data-id="box-3"
			style="background-color: rgb(189, 246, 183);"
			class="w-[200px] h-[200px]"
		/>
	</div>
</Slide>
<Slide animate ease="cubic-bezier(0.770, 0.000, 0.175, 1.000)" duration="2">
	<p class="uppercase">Transition</p>
	<div class="r-stack flex gap-4 place-content-center">
		<div
			data-id="box-3"
			data-auto-animate-delay="0.3"
			class="w-[400px] h-[400px]"
			style="border-radius: 300px; background-color: rgb(189, 246, 183)"
		/>
		<div
			data-id="box-2"
			data-auto-animate-delay="0.2"
			class="w-[400px] h-[400px] bg-blue-400"
			style="opacity: 0;"
		/>
		<div
			data-id="box-1"
			data-auto-animate-delay="0.1"
			class="w-[400px] h-[400px] bg-green-400"
			style="opacity: 0;"
		/>
	</div>
</Slide>

</RevealPresentation>
