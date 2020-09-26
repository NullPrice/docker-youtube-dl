![Docker](https://github.com/NullPrice/docker-youtube-dl/workflows/Docker/badge.svg)

# What is youtube-dl?

[youtube-dl](https://github.com/rg3/youtube-dl) is a command-line program to download videos from YouTube.com and other video sites.


# How to use this image

   ```bash
	docker run --rm --user $UID:$GID -v $PWD:/downloads ghcr.io/nullprice/docker-youtube-dl/youtube-dl:latest \
          <video_url>
   ```

  * `--user $UID:$GID` is to run as your current user, and not `root`.
  * `-v $PWD:/downloads` is to store downloaded files in the current working directory.
  * `<video_url>` is the ID of a YouTube video or other arguments to pass to `youtube-dl`.

Note: The entrypoint is set to `youtube-dl`, so do *not* put `youtube-dl` again as argument.

# Features of this image

  * **Small**: Built based on official [Alpine Linux](https://registry.hub.docker.com/_/alpine/).
  * **Simple**: One command and you should be ready to go. All documented here.
  * **Secure**: Runs as any user.

# Differences in this fork?

The only difference in this fork is that it pushes to [GitHub Container Registry ](https://docs.github.com/en/free-pro-team@latest/packages/getting-started-with-github-container-registry/about-github-container-registry) instead of Docker Hub.  

This image is also rebuilt nightly and tagged with the `youtube-dl` version at time of build.

# User Feedback

Having more issues? [Report a bug on GitHub](https://github.com/NullPrice/docker-youtube-dl/issues).
