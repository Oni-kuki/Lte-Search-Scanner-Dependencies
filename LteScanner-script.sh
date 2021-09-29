#installation of dependencies
apt update && apt upgrade -y && apt install cmake && apt install -y libopenblas-dev libhackrf-dev build-essential libboost-system-dev libboost-thread-dev libboost-program-options-dev libboost-test-dev libfftw3-3 libfftw3-dev liblapack-dev libblas-dev librtlsdr-dev libncurses5-dev libitpp-dev

#installation of LTEsearchScanner
mkdir /home/tools/ && cd /home/tools && git clone https://github.com/JiaoXianjun/LTE-Cell-Scanner && cd /home/tools/LTE-Cell-Scanner && mkdir build && cd build && cmake ../ -DUSE_HACKRF=1 && make
