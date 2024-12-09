#!/bin/bash

sudo fdisk -l
sudo umount  /dev/mapper/vg_datos-lv_workareas
sudo lvremove /dev/mapper/vg_datos-lv_workareas
sudo vgremove vg_datos
sudo pvremove  /dev/sdf
sudo fdisk /dev/sdf/
sudo fdisk /dev/sdf
sudo lvs
sudo fdisk -l
sudo vgs
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk  /dev/sdd
sudo pvcreate /dev/sdd1 /dev/sdc1
sudo vgcreate vg_datos /dev/sdc1
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo mkfs.ext4  /dev/mapper/vg_datos-lv_docke
sudo mkfs.ext4  /dev/mapper/vg_datos-lv_docker
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo lvcreate -L +2.5M vg_datos -n lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo vgextend vg_datos /dev/sdf1
sudo lvextend -L +512M /dev/mapper/vg_datos-lv_workareas
sudo resize2fs  /dev/mapper/vg_datos-lv_workareas

