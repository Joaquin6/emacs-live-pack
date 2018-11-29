# Emacs Live Pack

  [Emacs Live](https://github.com/overtone/emacs-live) is a comprehensive setup for Emacs, with a focus on Clojure development and live coding.

  Just like Emacs itself, Emacs Live is highly configurable and it recommended you do so via a **Live Pack**.  All your own preferences and any additional features can be easily added to Emacs Live by adding them to your Live Pack.

  This Live Pack has the following configuration & features

  * Ubuntu Mono font
  * Buffer layout and categories
  * Run Emacs Server at startup
  * Re-load buffers from previous session
  * Modeline customisation
  * Kanban todo list via Org-mode
  * Emacs Multi-media System (EMMS)

  Read on for details on how the Live Pack is organised.

## init.el

Use the file `init.el` for your own configuration elisp. If this starts
getting unweildy then you might want to break out the config into
separate files which you can store in the config directory.

## config

Files placed in the `config` dir may then be referenced and pulled into
your `init.el` via the fn `live-load-config-file`. For example, if you
have the file config/foo.el then you may load it in with:

    (live-load-config-file "foo.el")

## lib

 If you want to pull in external libraries into your pack, then you
 should place the libraries within the lib dir. To add a directory
 within the pack's lib directory to the Emacs load path (so that it's
 contents are available to require) you can use the fn
 `live-add-pack-lib`. For example, if you have the external library bar
 stored in lib which contains the file `baz.el` which you wish to
 require, this may be achieved by:

    (live-add-pack-lib "bar")
    (require 'baz)

 Have fun!
