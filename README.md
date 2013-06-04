# glide

This is a template for easily making slides. This includes layout file written by haml, contents of the slide written by markdown, a javascript library to make slides using HTML, and themes.

## Setup

```
$ git clone git://github.com/naoty/glide slide_title
$ cd slide_title
$ bundle install
```

Glide have dependencies on some JavaScript libraries and stylesheets. There are two ways to install them.

### 1. bower (recommended)

[Bower](http://bower.io/) is a dependency manager for front-end libraries. If you haven't installed it yet, you should install it at first. How to install libraries using bower is below.

```
$ bower install
```

That's all!

### 2. manually download each libraries

It is probably hard for non-programmers to install bower, because it requires Node and npm. If you feel hard, you need to manually download each libraries. What to install is below.

- [jQuery](http://jquery.com)
- [haas.js](https://github.com/naoty/haas.js)
- [normalize.css](http://necolas.github.io/normalize.css/)

At last, you must fix paths for these libraries at `layout.haml`.

```haml
%script{src: "path/to/jquery.js"}
%script{src: "path/to/haas.js"}
%link{rel: "stylesheet", type: "text/css", href: "path/to/normalize.css"}
```

## Usage

After the setup, What to do is to write contents for your slide and to build them. The contents should be written in `content.md`.

```sh
$ vi content.md
$ rake
$ open index.html
```

`rake` command generates `index.html` from `content.md` and `layout.haml`. Open `index.html` and let's start your slide!

## Contributing

If you make themes for your own, welcome your pull request to include it in the template themes!
