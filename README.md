# Ubport Environment Build Helper
Sets up ubports build environment using docker-compose so the build environment is somewhat portable.

This was created because I was having trouble with dependencies setting up my build environment so I decided this was better/quicker
than fighting in the dependency nonsense.

When you clone this repo, be sure to change the <code>.env.example</code> file into a regular <code>.env</code>
file. Also be sure to update the path in your <code>.env</code> to reflect the location you've cloned the repo to.

There is a helper script to automatically manage the docker image and attaching to it if you've got BASH.
However, if you're on Windows, you'll need the docker-compose command and you can just run the following
commands to accomplish the same thing:
<br>
<code>
  docker-compose run build_machine
</code>

And when you are done:<br>
<code>
  docker-compose down
</code>

