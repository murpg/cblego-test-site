<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>cblego HTTP-01 Test</title>
    <style>
        body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
               max-width: 720px; margin: 4rem auto; padding: 0 1.5rem;
               line-height: 1.6; color: #1a1a1a; }
        h1 { color: #2d7a2d; margin-bottom: 0.25rem; }
        .meta { color: #666; font-size: 0.9rem; margin-bottom: 2rem; }
        .check { background: #f0f9f0; border-left: 4px solid #2d7a2d;
                 padding: 1rem 1.25rem; border-radius: 4px; margin: 1.5rem 0; }
        .check h2 { margin-top: 0; font-size: 1.1rem; }
        code { background: #f4f4f4; padding: 0.15rem 0.4rem; border-radius: 3px;
               font-size: 0.9em; }
        .footer { margin-top: 3rem; padding-top: 1.5rem;
                  border-top: 1px solid #eee; color: #888; font-size: 0.85rem; }
    </style>
</head>
<body>
    <h1>It works.</h1>
    <p class="meta">Certificate served by CommandBox, issued by lego via cblego.</p>

    <div class="check">
        <h2>What this page proves</h2>
        <ul>
            <li>cblego issued a Let's Encrypt certificate using HTTP-01</li>
            <li>CommandBox is serving that certificate on port 443</li>
            <li>The browser accepted the trust chain</li>
        </ul>
    </div>

    <cfoutput>
        <p><strong>Server time:</strong> #dateTimeFormat(now(), "yyyy-mm-dd HH:nn:ss")# UTC</p>
        <p><strong>Domain:</strong> #cgi.server_name#</p>
        <p><strong>Protocol:</strong> <code>#cgi.server_protocol#</code></p>
        <p><strong>HTTPS:</strong> <code>#cgi.https#</code></p>
    </cfoutput>

    <div class="footer">
        Into the Box 2026 — cblego demo. <code>github.com/murpg/cblego</code>
    </div>
</body>
</html>
