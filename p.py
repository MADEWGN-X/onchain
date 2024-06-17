import os

for i in range(3000):
    print(i)
    os.system(f"screen -dmS {i}b bash -c 'python3 on.py'")
