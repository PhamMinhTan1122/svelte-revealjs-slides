import Highlight from 'reveal.js/plugin/highlight/highlight';
import Markdown from 'reveal.js/plugin/markdown/markdown';
import MathReveal from 'reveal.js/plugin/math/math';
import RevealNotes from 'reveal.js/plugin/notes/notes';

// Import theme
import 'reveal.js/dist/theme/white.css';

// Import CSS for plugins
import 'reveal.js/plugin/highlight/monokai.css';

export default {
    // App Config
    app: {
        name: 'The End 12.1',
    },
    // Reveal Config
    reveal: {
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
    },
};
