<<<<<<< HEAD
import App    from './App.svelte';
import config from './config';
import './app.css'

const app = new App({
    target: document.body,
    props: config,
});

export default app;
=======
import App    from './App.svelte';
import './app.css';
import config from './config';

const app = new App({
    target: document.body,
    props: config,
});

export default app;
>>>>>>> e66663ea33fc9e13cfee46a74145cd0c79536bb3
