import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), '../swap-app'))
# swap_app/__init__.py
from swap_app import app  # ok, maintenant app est importable

def test_homepage():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200