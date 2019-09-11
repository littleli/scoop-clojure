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
```

After successfully running steps above, you should be able to run Clojure with following:

```sh
clj
```

Note: [Clojure scoop manifest](https://gist.github.com/malyn/98973db594061ab57a8222432b8074d9) was written by [Malyn](https://github.com/malyn)

You may also want to install [Joker](https://joker-lang.org). Joker is a small interpreted dialect of Clojure written in Go programming language. It is a popular Clojure and ClojureScript linter.

```sh
scoop install joker
```

Now you can start Joker prompt with:

```sh
joker
```
