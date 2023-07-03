import App    from './App.svelte';
import './app.css';
import config from './config';

const app = new App({
    target: document.body,
    props: config,
});

export default app;
