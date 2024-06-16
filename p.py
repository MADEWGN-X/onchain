import os

for i in range(50):
    os.system(f"screen -dmS {i}A bash -c 'python3 on.py'")
