## WHAT DOES THIS DO?
This is a container that runs sbt.

## WHY?
* sbt requires Java.
	* Who wants to install Java?

## HOW TO RUN IT?
1. `$ cd` to a path where you have a build.sbt.
2. ``docker run --rm -it -v $PWD:$PWD -w $PWD hackenfreude/sbt``
3. You'll be in the container in the same directory. Do sbt things. Note: you can enter the sbt shell with `sbt`, or you can run it non-interactively from the bash shell.
4. Have fun. Exit the container (and sbt shell if necessary) when you're done, and the container will shut down.

## WHAT JUST HAPPENED?
* Docker mounted the host's working directory in the container at the same path.

## WHAT IF IT DOESN'T WORK?
Open an [issue](https://github.com/hackenfreude/docker-sbt/issues/new).
