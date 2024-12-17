from dotenv import load_dotenv
import os

load_dotenv()

CLIENT_URL = os.getenv("CLIENT_URL", "http://localhost:4321")
