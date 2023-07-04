<script lang="ts">
	export let id: String | null = null;
	export let animate = false;
	export let restart = false;
	export let ease: String = 'ease-in-out';
    export let duration: number | String = 1
</script>

<section
	data-auto-animate-id={id}
	data-auto-animate={animate || null}
	data-auto-animate-restart={restart || null}
	data-auto-animate-easing={ease}
    data-auto-animate-duration={duration}
>
	<slot />
</section>

