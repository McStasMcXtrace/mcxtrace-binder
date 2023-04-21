FROM jupyter/base-notebook


USER root

# get McCode debian packages: release 1.7.1
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-comps-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-manuals-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-suite-python_1.7.1_all.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-suite-python_1.7.1_all.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-matlab-mxplot-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-perl-cmdline-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-perl-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mccodelib-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxdisplay-pyqtgraph-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxdisplay-webgl-1.7.1-deb64.deb 
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxdoc-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxgui-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxplot-matplotlib-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxplot-pyqtgraph-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxplot-svg-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxrun-1.7.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-mcpl-1.7.1-deb64.deb

# get McCode debian packages: release 3.1
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-comps-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-manuals-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-suite-python-ng_3.1_all.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-matlab-mxplot-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-perl-cmdline-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-perl-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mccodelib-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxdisplay-pyqtgraph-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxdisplay-webgl-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxdoc-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxgui-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxplot-matplotlib-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxplot-pyqtgraph-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-tools-python-mxrun-3.1-deb64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcxtrace-mcpl-3.1-deb64.deb

# we add iFit
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcrinstaller-7.13-2010a-amd64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/libxp6_1.0.2-1ubuntu1_amd64.deb
RUN wget http://ftp.de.debian.org/debian/pool/main/g/glibc/multiarch-support_2.28-10+deb10u1_amd64.deb
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/ifit-2.0.2-amd64.deb

# Tk-CodeText
RUN wget https://packages.mccode.org/debian/dists/stable/main/binary-amd64/libtk-codetext-perl_0.3.4-1_all.deb

RUN apt-get -y update \
 && apt-get install -y dbus-x11 \
   midori \
   netsurf-gtk \
   dillo \
   xfce4 \
   xfce4-panel \
   xfce4-session \
   xfce4-settings \
   xorg \
   xubuntu-icon-theme \
   view3dscene \
   python3-pyqt5 \
   xdg-utils \
   gedit \
   gedit-plugins \
   evince \
   gnuplot \
   octave \
   libopenmpi-dev \
   libnexus1 \
   libnexus-dev \
   libncurses5 \
   git \
   libpgplot-perl \
   pdl \
   perl-tk
   
# install McXtrace, and make sure we use the python from the system for it
RUN apt install -y ./*.deb
RUN rm *.deb
RUN ln -s /usr/bin/python3.8 /usr/share/mcxtrace/1.7.1/bin/python3
RUN ln -s /usr/bin/python3.8 /usr/share/mcxtrace/1.7.1/bin/
RUN ln -s /usr/bin/python3.8 /usr/share/mcxtrace/3.1/bin/python3
RUN ln -s /usr/bin/python3.8 /usr/share/mcxtrace/3.1/bin/

# configure McXtrace 1.7.1 launcher to install PATH via a script
RUN echo "#!/bin/sh" > /usr/local/bin/mxgui17_noconda
RUN echo "export PATH=/usr/share/mcxtrace/1.7.1/bin:$PATH" >> /usr/local/bin/mxgui17_noconda
RUN echo "conda deactivate" >> /usr/local/bin/mxgui17_noconda
RUN echo "mxgui" >> /usr/local/bin/mxgui17_noconda
RUN sed -i 's|Exec=mxgui|Exec=/usr/local/bin/mxgui17_noconda|' /usr/share/applications/mcxtrace-1.7.1-py.desktop
RUN chmod a+x /usr/local/bin/mxgui17_noconda

# configure McXtrace 3.1 launcher to install PATH via a script
RUN echo "#!/bin/sh" > /usr/local/bin/mxgui3_noconda
RUN echo "export PATH=/usr/share/mcxtrace/3.1/bin:$PATH" >> /usr/local/bin/mxgui3_noconda
RUN echo "conda deactivate" >> /usr/local/bin/mxgui3_noconda
RUN echo "mxgui" >> /usr/local/bin/mxgui3_noconda
RUN sed -i 's|Exec=mxgui|Exec=/usr/local/bin/mxgui30_noconda|' /usr/share/applications/mcxtrace-3.1-py.desktop
RUN chmod a+x /usr/local/bin/mxgui3_noconda

# Remove perl launchers
# RUN rm /usr/share/applications/mcxtrace-1.7.1-pl.desktop
# RUN rm /usr/share/applications/mcxtrace-3.1-pl.desktop

# Remove light-locker to prevent screen lock
RUN wget 'https://sourceforge.net/projects/turbovnc/files/2.2.5/turbovnc_2.2.5_amd64.deb/download' -O turbovnc_2.2.5_amd64.deb && \
   apt-get install -y -q ./turbovnc_2.2.5_amd64.deb && \
   apt-get remove -y -q light-locker && \
   rm ./turbovnc_2.2.5_amd64.deb && \
   ln -s /opt/TurboVNC/bin/* /usr/local/bin/

# apt-get may result in root-owned directories/files under $HOME
RUN chown -R $NB_UID:$NB_GID $HOME

ADD . /opt/install
RUN fix-permissions /opt/install

USER $NB_USER
RUN cd /opt/install && \
   conda env update -n base --file environment.yml
