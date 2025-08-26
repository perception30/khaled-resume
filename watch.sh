#!/bin/bash

echo "🚀 Starting local preview server..."
echo "📝 Your resume will be available at: http://localhost:8000"
echo "🔄 The page will auto-refresh when you save changes to the markdown file"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Start a simple HTTP server
python3 -m http.server 8000 &
SERVER_PID=$!

# Open browser
if [[ "$OSTYPE" == "darwin"* ]]; then
    sleep 1
    open "http://localhost:8000"
fi

# Watch for changes and notify
echo "Watching for changes..."
fswatch -o "Resume of Khaled Bin A Quadir.md" | while read change; do
    echo "📝 Resume updated - refresh your browser to see changes"
done

# Kill server on exit
trap "kill $SERVER_PID" EXIT
wait