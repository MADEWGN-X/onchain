#!/bin/bash

# Daftar semua screen dan ekstrak ID-nya
screen_ids=$(screen -ls | grep -o '[0-9]*\.[^\t]*' | cut -d'.' -f1)

# Hapus setiap screen berdasarkan ID
for id in $screen_ids
do
    screen -X -S "$id" quit
    echo "Screen dengan ID $id telah dihapus."
done

echo "Semua screen telah dihapus."
