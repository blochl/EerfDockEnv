# A container setup for ESRF data processing

## Purpose

This allows to perform the data processing tasks in an isolated, clean,
reproducible environment. While Python's [virtualenv](https://virtualenv.pypa.io/en/stable)
allows to install and use system-independent packages, it is not truly isolated
from the system, thus the results and the behavior can change between different
installations, depending on the state of the system (*e.g.* installed
libraries). Additionally, a container allows to use other, not necessarily
Python, tools for processing in such an environment.

Reproducibility is paramount for processing scientific data, and a hassle-free,
easy to set up, isolated environment should make it easy for inexperienced
users to do the processing, without worrying about installing packages
manually, or system dependencies.

## Running

Simply run:

`./eprun.sh`

...Ideally from the directory in which you would like to work on the data.

That's it! Start number crunching!

On the first run it will take some time, as the image will need to be
downloaded and configured for the system. Subsequent runs will start
practically instantly.

## Configuring for the first run

1. Insatll Docker (if not installed).
2. Configure Docker as needed (*e.g.* images' location...)
3. Start the Docker daemon, and make it start automatically on subsequent runs:
    ```
    sudo systemctl start docker
    sudo systemctl enable docker
    ```
4. Add the intended user to the `docker` group:
    ```
    sudo usermod -a -G docker username
    ```
    (replace `username` with your actual user name.)
5. Log out, and log back in.

## Building the entire image yourself

If you would like to build the entire image yourself, you can modify the file
**Dockerfile.all** as needed, and start the build by running `buildall.sh`.
This process will take 20-25 minutes.

## Licensing

Distributed under GPLv2.
