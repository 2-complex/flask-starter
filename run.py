import os
from project import app

app.run(host='0.0.0.0', port=int(os.environ.get('PORT', 5000)))
