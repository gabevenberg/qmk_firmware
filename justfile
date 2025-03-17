default:
    just --list

init:
    git submodule update --recursive --init

compile:
    make ferris/sweep:almost_default

flash target:
    mkdir -p mnt
    sudo mount -o uid=`whoami` /dev/{{target}} mnt
    cp ./ferris_sweep_almost_default_elite_pi.uf2 mnt
    sync
    sudo umount mnt
