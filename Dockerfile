FROM ros:indigo-ros-base

COPY open_ptrack /open_ptrack

RUN apt-get update && apt-get install -y wget

RUN /bin/bash -c "cd /open_ptrack/scripts; \
    ./ros_install.sh; \
    source /opt/ros/indigo/setup.bash; \
    ./ros_configure.sh; \
    ./openptrack_install.sh; \
"

ENV KINECT_DRIVER openni

CMD [ 'roslaunch' ]
