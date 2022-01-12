#!/bin/bash
set -e

ln -s ~/environment/cloud9/bin/projector-run.sh ~/bin/projector-run.sh
sudo yum install less libXext libXrender libXtst libXi freetype -y  
pip3 install projector-installer --user