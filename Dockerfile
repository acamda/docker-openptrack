FROM ros:indigo-ros-base

COPY open_ptrack /open_ptrack

RUN /bin/sh -c "cd /open_ptrack/scripts; \
    ./ros_install.sh; \
    source /opt/ros/indigo/setup.bash; \
    ./ros_configure.sh; \
    ./openptrack_install.sh; \
"

CMD [ 'roslaunch' ]
