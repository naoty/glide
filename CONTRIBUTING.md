# How to contribute

Thank you for reading this page. Welcome to your pull requests! 

## Getting started

If you want to contribute to this project, I recommend that you should install below stuffs.

- [npm](https://npmjs.org/)
- [bower](http://bower.io/)
- [grunt](http://gruntjs.com/)

After install these packages, let's start with below commands.

```sh
$ git clone git://github.com/naoty/glide.git -b develop
$ cd glide
$ git checkout -b your-branch
$ bundle install
$ bower install
```

## Setup for making themes

Themes for slides are at `themes` directory.

```sh
themes
├── css
│   └── default.css
└── sass
    └── default.sass
```

I always write themes at sass files and have grunt to convert them into css files when they are saved. How to setup grunt is below.

```sh
$ npm install
$ grunt
```

`grunt` command has grunt to monitor the changes of css files.

## Making themes

At first, you should generate `index.html` to make themes.

```sh
$ mv sample_content.md content.md
$ rake
```

`rake` command generates `index.html` from `layout.haml` and `content.md`.

After that, you can make cool themes for the `index.html`.
