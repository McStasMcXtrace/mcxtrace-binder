# McXtrace Binder from Jupyter Desktop Server
Start it in a single click here >> [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/McStasMcXtrace/mcxtrace-binder/master?urlpath=desktop)

[McXtrace](http://mcxtrace.org/) X-ray beam-line simulations in a "free" computer at Binder.

<img src="http://mcxtrace.org/mcxtrace_1.png"> <img src="https://mybinder.org/static/logo.svg?v=fe52c40adc69454ba7536393f76ebd715e5fb75f5feafe16a27c47483eabf3311c14ed9fda905c49915d6dbf369ae68fb855a40dd05489a7b9542a9ee532e92b">

## Usage

Click on the Binder Badge above or https://mybinder.org/v2/gh/McStasMcXtrace/mcxtrace-binder/master?urlpath=desktop

A full desktop, running at Binder for free, will appear in your browser after e.g. a few minutes (be patient).
The [McXtrace](http://mcxtrace.org/) software is available from the __Applications__ menu in group __Education__.

Both the legacy version 1.7 and the 'next-generation' 3.0 (with revised grammar, compilation and performance effiiency) are available. You are welcome to use MPI clustering to distribute the computations over all CPU cores. There is however no GPU support for the 3.0 release.

## Credits

This tool is forked from <https://github.com/yuvipanda/jupyter-desktop-server>.
It runs a Docker container at Binder, which includes websockify, tightvnc server, and novnc via a jupyter notebook.
