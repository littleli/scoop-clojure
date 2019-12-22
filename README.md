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

Note: [Clojure scoop manifest](https://gist.github.com/malyn/98973db594061ab57a8222432b8074d9) was written by [Malyn](https://github.com/malyn)

## Linting Tools

You may also want to install popular linters. The following two linters become available with this scoop bucket.

* [clj-kondo](https://github.com/borkdude/clj-kondo)
* [joker](https://joker-lang.org)

```sh
# To install clj-kondo.exe
scoop install clj-kondo

# To install joker.exe use this command
scoop install joker
```

To check availability you can execute:

```sh
# for clj-kondo
clj-kondo --version

# for joker
joker -v
```

Update to the newest versions

```sh
scoop update clj-kondo
scoop update joker
```
