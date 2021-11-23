#installation of dependencies
apt update && apt upgrade -y && apt install cmake && apt install -y libopenblas-dev libhackrf-dev build-essential libboost-system-dev libboost-thread-dev libboost-program-options-dev libboost-test-dev libfftw3-3 libfftw3-dev liblapack-dev libblas-dev librtlsdr-dev libncurses5-dev libitpp-dev

#installation of LTEsearchScanner
if [ -d /home/git-sources ];then
        echo "the directory exist"
else    
        mkdir /home/git-sources 
fi
cd /home/git-sources && git clone https://github.com/JiaoXianjun/LTE-Cell-Scanner && cd /home/git-sources/LTE-Cell-Scanner 


if [ -d /home/git-sources/LTE-Cell-Scanner/build ];then
        echo "the directory exist"
else    
        mkdir /home/git-sources/LTE-Cell-Scanner/build
fi
cd /home/git-sources/LTE-Cell-Scanner/build && cmake ../ -DUSE_HACKRF=1 && make
