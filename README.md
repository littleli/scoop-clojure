# scoop-clojure

This is a new and convenient way to install Clojure on Windows.

- [WSL2](https://docs.microsoft.com/en-us/windows/wsl/faq) is not required
- Administrator privileges are not required
- High chance it works in corporate Windows systems

First install Scoop installer. Installation steps for scoop and additional information can be found [here](http://scoop.sh). Don't worry installation is easy.

Please consider a small support and

<a href="https://www.buymeacoffee.com/alesrocks" target="_blank">
  <img src="https://cdn.buymeacoffee.com/buttons/default-green.png" alt="Buy Me A Coffee" height="51" width="217">
</a>

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
* [bb-web](https://github.com/kloimhardt/babashka-web): A babashka fork for small web-apps
* [bootleg](https://github.com/retrogradeorbit/bootleg): Simple template processing command line tool to help build static websites
* [clj-kondo](https://github.com/borkdude/clj-kondo): A linter for Clojure code that sparks joy
* [deps.clj](https://github.com/borkdude/deps.clj): A port of the clojure bash script to Clojure
* [grasp](https://github.com/borkdude/grasp) (development preview): Grep Clojure code using clojure.spec regexes 
* [jet](https://github.com/borkdude/jet): CLI to transform between JSON, EDN and Transit, powered with a minimal query language
* [joker](https://joker-lang.org): A small interpreted dialect of Clojure written in Go. It is also a Clojure(Script) linter
* [puget](https://github.com/borkdude/puget-cli) (development preview): A CLI version of puget

### Tools installation

### Install extras

First add extras bucket to unlock required dependencies:
```sh
scoop bucket add extras
```

### Tools

Now pick from the following tools:

```sh
scoop install babashka
scoop install bb-web
scoop install bootleg
scoop install clj-kondo
scoop install deps.clj
scoop install grasp        # development preview
scoop install jet
scoop install joker
scoop install puget        # development preview
```

### Updates

These tools are updated quite often, don't forget to update regularly with:
```sh
scoop update *
```

## Scoop directory

This scoop bucket is also listed in [Scoop directory](https://rasa.github.io/scoop-directory/by-bucket.html#littleli_scoop-clojure) where to check other useful buckets with tons of packaged software.
