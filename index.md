---
layout: none
---
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Khaled Bin A Quadir - Resume</title>
    <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@300;400;600;700&display=swap');
        
        :root {
            --bg-primary: #0a0e1a;
            --bg-secondary: #141823;
            --text-primary: #e8eaed;
            --text-secondary: #8b92a4;
            --accent: #00d4ff;
            --accent-hover: #00a8cc;
            --border: #2a3444;
            --code-bg: #1a1f2e;
            --success: #10b981;
            --warning: #f59e0b;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Courier New', 'JetBrains Mono', monospace;
            line-height: 1.7;
            background: linear-gradient(135deg, var(--bg-primary) 0%, var(--bg-secondary) 100%);
            color: var(--text-primary);
            min-height: 100vh;
            position: relative;
        }
        
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: 
                repeating-linear-gradient(
                    0deg,
                    transparent,
                    transparent 2px,
                    rgba(0, 212, 255, 0.03) 2px,
                    rgba(0, 212, 255, 0.03) 4px
                );
            pointer-events: none;
            z-index: 1;
        }
        
        .container {
            max-width: 1000px;
            margin: 40px auto;
            background: rgba(20, 24, 35, 0.95);
            backdrop-filter: blur(10px);
            padding: 50px;
            border: 1px solid var(--border);
            border-radius: 12px;
            box-shadow: 
                0 20px 60px rgba(0, 212, 255, 0.1),
                inset 0 1px 0 rgba(255, 255, 255, 0.05);
            position: relative;
            z-index: 2;
        }
        
        .container::before {
            content: '';
            position: absolute;
            top: -2px;
            left: -2px;
            right: -2px;
            bottom: -2px;
            background: linear-gradient(45deg, var(--accent), transparent, var(--accent));
            border-radius: 12px;
            opacity: 0.1;
            z-index: -1;
            animation: glow 3s ease-in-out infinite alternate;
        }
        
        @keyframes glow {
            0% { opacity: 0.1; }
            100% { opacity: 0.2; }
        }
        
        h1 {
            font-size: 2.5em;
            font-weight: 700;
            color: var(--accent);
            text-transform: uppercase;
            letter-spacing: 3px;
            margin-bottom: 10px;
            position: relative;
            padding-bottom: 20px;
        }
        
        h1::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, var(--accent), transparent);
        }
        
        h1::before {
            content: '> ';
            color: var(--success);
            font-weight: 400;
        }
        
        h2 {
            font-size: 1.6em;
            font-weight: 600;
            color: var(--accent);
            margin-top: 35px;
            margin-bottom: 20px;
            padding: 10px 0;
            border-bottom: 1px solid var(--border);
            position: relative;
        }
        
        h2::before {
            content: '## ';
            color: var(--text-secondary);
            font-weight: 400;
        }
        
        h3 {
            font-size: 1.3em;
            font-weight: 600;
            color: var(--text-primary);
            margin-top: 25px;
            margin-bottom: 15px;
        }
        
        h3::before {
            content: '### ';
            color: var(--text-secondary);
            opacity: 0.5;
        }
        
        p {
            margin-bottom: 15px;
            color: var(--text-primary);
            text-align: justify;
        }
        
        a {
            color: var(--accent);
            text-decoration: none;
            position: relative;
            transition: all 0.3s ease;
            font-weight: 600;
        }
        
        a::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--accent);
            transition: width 0.3s ease;
        }
        
        a:hover {
            color: var(--accent-hover);
        }
        
        a:hover::after {
            width: 100%;
        }
        
        ul, ol {
            margin: 15px 0;
            padding-left: 30px;
        }
        
        li {
            margin-bottom: 8px;
            color: var(--text-primary);
            position: relative;
        }
        
        ul li::before {
            content: '▸';
            color: var(--accent);
            position: absolute;
            left: -20px;
            font-weight: bold;
        }
        
        ul li::marker {
            content: '';
        }
        
        code {
            background: var(--code-bg);
            color: var(--accent);
            padding: 3px 8px;
            border-radius: 4px;
            font-family: 'Courier New', monospace;
            font-size: 0.95em;
            border: 1px solid var(--border);
        }
        
        pre {
            background: var(--code-bg);
            border: 1px solid var(--border);
            border-radius: 8px;
            padding: 20px;
            overflow-x: auto;
            margin: 20px 0;
            position: relative;
        }
        
        pre::before {
            content: 'CODE';
            position: absolute;
            top: 8px;
            right: 12px;
            font-size: 0.7em;
            color: var(--text-secondary);
            letter-spacing: 2px;
        }
        
        pre code {
            background: none;
            border: none;
            padding: 0;
            color: var(--text-primary);
        }
        
        blockquote {
            border-left: 4px solid var(--accent);
            padding: 15px 20px;
            margin: 20px 0;
            background: rgba(0, 212, 255, 0.05);
            border-radius: 4px;
            font-style: italic;
            color: var(--text-secondary);
        }
        
        strong {
            color: var(--accent);
            font-weight: 600;
        }
        
        em {
            color: var(--text-primary);
            font-style: italic;
        }
        
        hr {
            border: none;
            height: 1px;
            background: linear-gradient(90deg, transparent, var(--border), transparent);
            margin: 30px 0;
        }
        
        .cursor {
            display: inline-block;
            width: 10px;
            height: 20px;
            background: var(--accent);
            animation: blink 1s infinite;
            margin-left: 3px;
        }
        
        @keyframes blink {
            0%, 50% { opacity: 1; }
            51%, 100% { opacity: 0; }
        }
        
        ::-webkit-scrollbar {
            width: 10px;
            height: 10px;
        }
        
        ::-webkit-scrollbar-track {
            background: var(--bg-secondary);
        }
        
        ::-webkit-scrollbar-thumb {
            background: var(--accent);
            border-radius: 5px;
        }
        
        ::-webkit-scrollbar-thumb:hover {
            background: var(--accent-hover);
        }
        
        @media (max-width: 768px) {
            body {
                padding: 10px;
            }
            .container {
                padding: 30px 20px;
                margin: 20px auto;
            }
            h1 {
                font-size: 1.8em;
                letter-spacing: 1px;
            }
            h2 {
                font-size: 1.3em;
            }
        }
        
        @media print {
            body {
                background: white;
                color: black;
            }
            .container {
                box-shadow: none;
                border: none;
                background: white;
                padding: 0;
            }
            .container::before,
            body::before {
                display: none;
            }
            h1, h2, h3, a, strong {
                color: black !important;
            }
            h1::before, h2::before, h3::before {
                display: none;
            }
        }
    </style>
</head>
<body>
    <div class="container" id="content">
        <div style="text-align: center; padding: 50px;">
            Loading resume...
        </div>
    </div>
    
    <script>
        async function loadResume() {
            try {
                const response = await fetch('Resume of Khaled Bin A Quadir.md');
                const markdown = await response.text();
                const html = marked.parse(markdown);
                document.getElementById('content').innerHTML = html;
            } catch (error) {
                document.getElementById('content').innerHTML = '<h2>Error loading resume</h2><p>Please ensure the markdown file is available.</p>';
                console.error('Error loading markdown:', error);
            }
        }
        
        loadResume();
    </script>
</body>
</html>