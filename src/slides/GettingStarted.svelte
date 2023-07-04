<script lang="ts">
	import Slide from "./component/slide.svelte";
    import Code from "./component/code.svelte";
</script>

<Slide animate>
	<Code id="code" lines>
		{`
            function void(){}
        `}
	</Code>
</Slide>

<Slide animate>
	<Code id="code" lines>
		{`
            function void(){
                console.log("Hello World")
            }
        `}
	</Code>
</Slide>
