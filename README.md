# rdm-installer
RDM Installer adalah installer otomatis berbasis Bash untuk deploy RDM (Raport Digital Madrasah) dengan 2 instance terpisah (MTS &amp; MA) pada server Ubuntu. Installer ini mendukung PHP 7.4 + ionCube, database terpisah, mode upload–wait, serta dapat dijalankan langsung dari GitHub menggunakan curl | bash.


# RDM Installer

Installer otomatis RDM (MTS & MA) berbasis Ubuntu.

## Fitur
- 2 instance terpisah
- Database terpisah
- PHP 7.4 + ionCube
- Upload-wait & auto extract
- Production hardened

## Install cepat
```bash
sudo bash <(curl -fsSL https://raw.githubusercontent.com/USERNAME/rdm-installer/main/install.sh)
