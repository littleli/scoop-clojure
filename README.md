# scoop-clojure

To install Clojure with Scoop you have to add two important buckets first:

```sh
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
