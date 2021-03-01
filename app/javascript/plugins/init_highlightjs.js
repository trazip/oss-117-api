import hljs from 'highlight.js/lib/core';
import 'highlight.js/styles/night-owl.css';
import json from 'highlight.js/lib/languages/json';
import curl from 'highlight.js/lib/languages/curl';
hljs.registerLanguage('json', json);
hljs.registerLanguage('curl', curl);
