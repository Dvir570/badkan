#!bash
#
# Start all servers in "developer" mode:
# * backend websocket server - single port (5760) in a terminal;
# * backend http server - single port (9000) in a terminal;
# * frontend server - single port (8000) in a terminal;
# * docker.
#

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sudo killall -9 python3 2>/dev/null
cd $DIR/../backend; sudo gnome-terminal -- python3 -u server.py 5670 &
cd $DIR/../backend; sudo gnome-terminal -- python3 -u file_server.py 9000 &
cd $DIR/../frontend; sudo gnome-terminal -- python3 -u -m http.server 8000 &
sudo docker run --name badkan -p 8010:8010 --rm -itd erelsgl/badkan bash 
