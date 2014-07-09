vim
===

My personal Vim configuration

---

####What is Vim?
Vim is a text editor that improves on the vi editor that is distributed with most UNIX computers.

####Why use Vim?
* Improves Efficiency (eventually)
    * Stay in the command line
        * Don't need to switch between applications
    * Forces you to use keyboard shortcuts
        * Doesn't use a mouse
    * Easier / quicker editing on servers
        * Linux servers use vi by default which has the same general commands
        * Don't need FTP, etc to take down locally and edit with your local text editor
* Customizable
    * Numerous plugins
    * Pick your own settings
* Well Supported
    * Open Source
    * Been around since 1991 (public release)
* Lightweight
    * Quick startup
    * Not a resource hog

<a href="http://csswizardry.com/2014/06/vim-for-people-who-think-things-like-vim-are-weird-and-hard/" target="blank">This Post</a> says it better.

####Common commands
Move Cursor:
* Move left: h
* Move right: l
* Move up: k
* Move down: j
(left, right, up, down arrows also work, but h/j/k/l is more ergonomic and efficient when switching to insert mode)

Editing:
* Insert mode: i
* Quit insert mode: ESC

Saving/Quiting:
* Quit the document after viewing: :q
* Quit the document after making changes, without saving those changes: :q!
* Save (write to) the document: :w
* Save (write) and quit: :wq!

Search:
* Find a specific string: /<the thing you are searching for>
    * e.g. /foo
* Find and replace all occurances: :%s/<find string>/<replace string>/g
    * e.g. :%s/foo/bar/g
* Find and replace in current line only: :s/<find string>/<replace string>/g
    * e.g. :s/foo/bar/g
* Find and replace all, but ask for confirmation first: :%s/<find string>/<replace string>/gc
    * e.g. :%s/foo/bar/gc

Navigate document:
* Go to top of document: gg
* Go to bottom of document: G
* Go to a specific line: <line #>gg (e.g. 212gg)
* Go up a line: CNTRL + y
* Go down a line: CNTRL + e</line>

NERDTree:
* switch to new pane: CNTRL + ww
* switch to right pane: CNTRL + wl
* switch to left pane: CNTRL + wh

<a href="http://vim.rtorr.com/" target="blank">This Post</a> does a great outlining basic vim commands
