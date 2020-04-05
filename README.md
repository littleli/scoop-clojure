# scoop-clojure

Hello. This repository is a scoop bucket. In order to be useful you have to install scoop first. Installation steps for scoop and additional information can be found on [scoop homepage](http://scoop.sh). Don't worry installation is easy.

To install Clojure with Scoop you have to add two important buckets first:

```sh
# if you don't have git version control system installed
# it is required for adding new external buckets to your scoop installer
# you can skip this step otherwise
scoop install git

# add scoop bucket for Java 
scoop bucket add java

# add scoop bucket for clojure build
scoop bucket add scoop-clojure https://github.com/littleli/scoop-clojure
```

Now we are ready to install Java and Clojure by issuing following commands:

```sh
# install Java runtime and compiler
scoop install adoptopenjdk-lts-hotspot

# install official clojure tools
scoop install clojure

# update to the newest version
scoop update clojure
```

After successfully running steps above, you should be able to run Clojure with following:

```sh
clj
```

To launch clojure from `cmd.exe` or tools like Emacs, you can use prepared shims:

```sh
cmd-clj
cmd-clojure
```

## Tools available in this scoop bucket

* [babashka](https://github.com/borkdude/babashka): A port of the clojure bash script to Clojure
* [bootleg](https://github.com/retrogradeorbit/bootleg): Simple template processing command line tool to help build static websites
* [clj-kondo](https://github.com/borkdude/clj-kondo): A linter for Clojure code that sparks joy
* [deps.clj](https://github.com/borkdude/deps.clj): A port of the clojure bash script to Clojure
* [jet](https://github.com/borkdude/jet): CLI to transform between JSON, EDN and Transit, powered with a minimal query language
* [joker](https://joker-lang.org): A small interpreted dialect of Clojure written in Go. It is also a Clojure(Script) linter

```sh
scoop install babashka
scoop install bootleg
scoop install clj-kondo
scoop install deps.clj
scoop install jet
scoop install joker
```

These tools are updated quite often, don't forget to update regularly with:
```sh
scoop update *
```

## Scoop directory

This scoop bucket is also listed in [Scoop directory](https://github.com/rasa/scoop-directory/blob/master/by-bucket.md#back_littleli_scoop-clojure) where to check other useful buckets with tons of packaged software.
