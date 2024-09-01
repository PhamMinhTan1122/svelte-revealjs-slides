<script lang="ts">
  export let id: string | null = null;
  export let animate = false;
  export let restart = false;
  export let ease: string = 'ease-in-out';
  export let duration: number | string = 1;
  export let color: string | null;
</script>

<section
  data-auto-animate-id={id || null}
  data-auto-animate={animate || null}
  data-auto-animate-restart={restart || null}
  data-auto-animate-easing={ease}
  data-auto-animate-duration={duration}
  data-background-color={color || null}
>
  <slot />
</section>
