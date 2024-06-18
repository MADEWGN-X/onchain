import os

for i in range(100):
    print(i)
    os.system(f"screen -dmS {i}b bash -c 'python3 on.py'")
