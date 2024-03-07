# scoop-clojure [![Build status](https://ci.appveyor.com/api/projects/status/u9ru7wvaoslc4coh/branch/master?svg=true)](https://ci.appveyor.com/project/littleli/scoop-clojure/branch/master)

This is a new and convenient way to install Clojure on Windows.

- [WSL2](https://docs.microsoft.com/en-us/windows/wsl/faq) is not required
- Administrator privileges are not required
- High chance it works on your corporate Windows system

First install Scoop installer. Installation steps for scoop and additional information can be found [here](http://scoop.sh). Don't worry installation is easy.

<a href="https://www.buymeacoffee.com/alesrocks" target="_blank">
  <img src="https://cdn.buymeacoffee.com/buttons/default-green.png" alt="Buy Me A Coffee" height="51" width="217">
</a>

if you like this project.

<hr>

## Clojure

To install Clojure with Scoop you have to add two important buckets first:

```sh
# if you don't have git version control system installed
# it is required for adding new external buckets to your scoop installer
# you can skip this step otherwise
scoop install git

# add scoop bucket for Java
scoop bucket add java

# add scoop bucket with extras, here there is a dependency on visual studio redistributable 'extras/vcredist2022'
scoop bucket add extras

# add scoop bucket for clojure build
scoop bucket add scoop-clojure https://github.com/littleli/scoop-clojure
```

Now we are ready to install Java and Clojure by issuing following commands:

```sh
# install TCK certified Java runtime and compiler if you need to (optional)
scoop install temurin-lts-jdk

# install official clojure tools
scoop install clj-deps

# update to the newest version
scoop update clj-deps
```

After successfully running steps above, you should be able to run Clojure with following:

```sh
clj
```

Emacs users should now issue `clj` and `clojure` commands without hassle.

## Other tools available in this bucket

- [babashka](https://github.com/babashka/babashka): A port of the clojure bash script to Clojure
- [bb-http-server](https://github.com/babashka/http-server): Babashka to serve static assets
- [bb-web](https://github.com/kloimhardt/babashka-web): A babashka fork for small web-apps
- [bibcal](https://github.com/johanthoren/bibcal): Calculate dates based on the Bible and the 1st Book of Enoch
- [bootleg](https://github.com/retrogradeorbit/bootleg): Simple template processing command line tool to help build static websites
- [carve](https://github.com/borkdude/carve): Carve will search through your code for unused vars and will remove them
- [clj-kondo](https://github.com/borkdude/clj-kondo): A linter for Clojure code that sparks joy
- [clojure-lsp](https://github.com/clojure-lsp/clojure-lsp): Language server for Clojure
- [cq](https://github.com/markus-wa/cq): Clojure Command-line Data Processor for JSON, YAML, EDN, XML and more
- [datalevin](https://github.com/juji-io/datalevin): A simple, fast and durable Datalog database
- [grasp](https://github.com/borkdude/grasp): Grep Clojure code using clojure.spec regexes
- [hiccup-cli](https://github.com/kwrooijen/hiccup-cli): CLI to convert HTML to Hiccup syntax
- [jet](https://github.com/borkdude/jet): CLI to transform between JSON, EDN and Transit, powered with a minimal query language
- [joker](https://joker-lang.org): A small interpreted dialect of Clojure written in Go. It is also a Clojure(Script) linter
- [lmgrep](https://github.com/dainiusjocas/lucene-grep): A Grep-like utility based on Lucene Monitor
- [pathom-viz](https://github.com/wilkerlucio/pathom-viz): Visualization tools for Pathom
- [pgmig](https://github.com/leafclick/pgmig): Standalone PostgreSQL migration runner
- [puget](https://github.com/borkdude/puget-cli): A CLI version of puget
- [shh](https://github.com/askonomm/shh): A CLI password manager designed for efficiency
- [trenchman](https://github.com/athos/trenchman): A standalone nREPL/prepl client written in Go and heavily inspired by [Grenchman](https://github.com/technomancy/grenchman)

## Babashka based utilities

- [bbin](https://github.com/babashka/bbin): Babashka script or project installer
- [eql-cli](https://github.com/lilactown/eql-cli): A CLI for executing EQL queries on EDN data
- [neil](https://github.com/babashka/neil): A CLI to add common aliases and features to deps.edn-based projects

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
scoop install bb-http-server
scoop install bb-web
scoop install bibcal
scoop install bootleg
scoop install carve
scoop install clj-kondo
scoop install clojure-lsp
scoop install cq
scoop install datalevin
scoop install hiccup-cli
scoop install grasp
scoop install jet
scoop install joker
scoop install lmgrep
scoop install pathom-viz
scoop install pgmig
scoop install puget
scoop install shh
scoop install trenchman
```

or babashka based utilities:

```sh
scoop install bbin
scoop install eql-cli
scoop install neil
```

### Updates

These tools are updated quite often, don't forget to update regularly with:

```sh
scoop update *
```

### Uninstall

If you had enough of Clojure for some reason. It's easy to uninstall it using scoop:

```sh
scoop uninstall clj-deps
```

Also applies to every tool above.

## Scoop directory

This scoop bucket is also listed in [Scoop directory](https://rasa.github.io/scoop-directory/by-bucket.html#littleli_scoop-clojure) where to check other useful buckets with tons of packaged software.

## Contributor Code of Conduct

This project adheres to No Code of Conduct. We are all adults. I accept anyone's contributions. Nothing else matters.

For more information please visit the [No Code of Conduct](https://github.com/domgetter/NCoC) homepage.
