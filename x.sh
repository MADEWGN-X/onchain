#!/bin/bash

# Nama screen
screen_name="my_screen"

# Jumlah screen yang ingin dibuat
num_screens=10

# Perintah yang ingin dijalankan di setiap screen
command="python3 main.py"

for i in $(seq 1 $num_screens)
do
    # Buat screen baru dan jalankan perintah
    screen -dmS "${screen_name}_$i" bash -c "$command"
    echo "Screen ${screen_name}_$i telah dibuat dan menjalankan perintah: $command"
done

echo "Selesai membuat $num_screens screen."
