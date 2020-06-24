docker run -v "$PWD:/repo" -w=/repo gradle:6.5.0-jdk8 gradle -q --no-daemon getVersion
