# Kill anything running on port 5000
fuser -k 5000/tcp || true

# Create and activate venv
python3 -m venv venv
. venv/bin/activate

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Run the app
python app.py
