# UUUPdump Executor

When using macOS or linux, [uupdump.net](https://uupdump.net) requires you to install a couple of packages to execute the download script.
With this docker image, there is no need for that. You simply mount the downloader directory, run this docker image and get your ISO file after some time.

## Usage

1. Go to [uupdump.net](https://uupdump.net) and generate a download package.
2. Unzip the download package.

    ```bash
    unzip 22631.2861_arm64_en-us_multi_8cb83256_convert.zip -d downloader
    ```

3. Change to the directory that contains the install scripts, which you downloaded from uup

    ```bash
    cd downloader
    docker run -it -v "$PWD/:/downloader" ghcr.io/lukasweber/uupdump-exec
    ```

    There you go ... :)

    ```log
    [...]
    99.11% done, estimate finish Thu Jan  4 11:31:43 2024
    99.34% done, estimate finish Thu Jan  4 11:31:44 2024
    99.57% done, estimate finish Thu Jan  4 11:31:44 2024
    99.80% done, estimate finish Thu Jan  4 11:31:44 2024
    Total translation table size: 2048
    Total rockridge attributes bytes: 0
    Total directory bytes: 0
    Path table size(bytes): 10
    Max brk space used ce000
    2194437 extents written (4286 MB)
    Done.
    ```
