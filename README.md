# Lte-Search-Scanner-Dependencies
just little script to install every dependencies of Lte search &amp; scanner and install Lte himself (JiaoXianjun/LTE-Cell-Scanner) 

respect to : https://github.com/JiaoXianjun/LTE-Cell-Scanner

Don't Forget to change the permission on the script: 

chmod 744 LteScanner-script.sh


# Hardware uses:

-DUSE_BLADERF=1   -- build for BladeRF

-DUSE_HACKRF=1    -- build for HackRF

-DUSE_OPENCL=0    -- disable OpenCL 


# Cell search exemple:

./src/CellSearch --freq-start 1890000000
./src/CellSearch --freq-start 900000000 --freq-end 1800000000

beetween 900mhz and 1800mhz(1,8ghz)
# Lte tracker exemple:

./src/LTE-Tracker -f 1890000000
