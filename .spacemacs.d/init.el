;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; +chat
     ;; +checkers
     (spell-checking :variables
                     spell-checking-enable-by-default nil
                     enable-flyspell-auto-completion nil)
     syntax-checking
     ;; +completion
     (auto-completion :variables
                      auto-complete-return-key-behavior 'complete
                      auto-complete-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence "jk"
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t )
     helm
     ;; +emacs
     org
     ;; better-defaults
     ;; +filetree
     (treemacs :variables
               treemacs-use-follow-mode t
               treemacs-use-filewatch-mode t
               treemacs-use-collapsed-directories 3
               treemacs-lock-width t)
     ;; +fonts
     unicode-fonts
     ;; +intl
     (chinese :variables
              pyim-default-scheme 'microsoft-shuangpin
              ;; chinese-default-input-method nil
              ;; chinese-enable-youdao-dict t
              ;; chinese-enable-fcitx t
              )
     ;; +langs
     ;; autohotkey
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-backend 'lsp-ccls
            c-c++-executable "D:\\Projects\\ccls\\Release\\ccls.exe")
     bibtex
     csv
     ;; csharp
     elixir
     emacs-lisp
     ;; extra-langs
     graphviz
     ;; haskell
     html
     idris
     ipython-notebook
     (java :variables java-backend 'lsp)
     (javascript :variables
                 javascript-backend 'lsp)
     (latex :variables latex-enable-auto-fill t)
     ;; lua
     (markdown :variables markdown-live-preview-engine 'vmd)
     ;; octave
     (python :variables
             python-backend 'lsp
             python-lsp-server 'mspyls
             python-lsp-git-root "D:/Projects/python-language-server")
     ;; shaders
     sql
     (typescript :variables typescript-backend 'lsp)
     windows-scripts
     yaml
     ;; +misc
     ;; (multiple-cursors :variables multiple-cursors-backend 'evil-mc)
     ;; +reader
     (dash :variables helm-dash-docset-newath "C:/Users/kenkangxgwe/AppData/Local/Zeal/Zeal/docsets")
     ;; +source-control
     git
     ;; version-control
     ;; +tags
     ;; (gtags :variables gtags-enable-by-default t)
     ;; +themes
     ; themes-megapack
     ;; +tools
     dap
     docker
     finance
     imenu-list
     lsp
     ; nginx
     (shell :variables
            shell-default-height 30
            shell-default-shell 'ansi-term
            shell-default-term-shell "pwsh"
            shell-default-position 'bottom)
     ; speed-reading
     ; vim-powerline
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(
                                      base16-theme
                                      doom-themes
                                      tao-theme
                                      ;; (pynt :location "~/.emacs.d/private/local/")
                                      (hydra-posframe :location "~/.emacs.d/private/local/hydra-posframe")
                                      posframe
                                      major-mode-hydra
                                      wolfram-mode
                                      evil-quickscope
                                      yasnippet-snippets
                                      editorconfig
                                      eglot
                                      focus
                                      vlf
                                      all-the-icons
                                      nhexl-mode
                                      esup
                                      (beancount
                                       :location
                                       "D:/Projects/beancount/editors/emacs"
                                       ;; (recipe
                                       ;;  :fetcher github
                                       ;;  :repo "beancount/beancount"
                                       ;;  :files ("editors/emacs/beancount.el")
                                       ;;  )
                                       )
                                      (fast-scroll
                                       :location (recipe
                                                  :fetcher github
                                                  :repo "ahungry/fast-scroll"
                                                  :files ("fast-scroll.el")
                                                  )
                                       )
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    ;; powerline
                                    vi-tilde-fringe
                                    org-projectile)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default spacemacs-27.1.pdmp)
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update t

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner "D:\\康明宇的文档\\Ken's Pictures\\ACGN\\Durarara!!\\Character x2\\01_Sturluson.png"
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(doom-molokai
                         base16-monokai)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(doom :separator arrow :separator-scale 1.2)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("等距更纱黑体 SC Regular"
                               :size 18
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar nil

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server t

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%a - %I"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfer with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

; ;; replace package repositories by Chinese mirror
; (setq configuration-layer--elpa-archives
;       '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
;         ("org-cn"   . "http://elpa.emacs-china.org/org/")
;         ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/"))
;       )
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  ;; disable bidirectional scanning for it is slow for long lines,
  ;; see https://emacs.stackexchange.com/questions/598/how-do-i-prevent-extremely-long-lines-making-emacs-slow
  (setq-default bidi-display-reordering nil)

  ;; base16-theme
  (use-package base16-theme
    :ensure t
    :init (setq base16-distinct-fringe-background nil)
    (setq base16-highlight-mode-line nil)
    ;; :config
    ;; (load-theme 'base16-monokai t)
    )

  ;; Require VLF (view large files)
  (use-package vlf-setup)

  ;; cuda-mode
  ;; (use-package cuda-mode
  ;;   :defer t)

  ;; evil-quickscope
  (use-package evil-quickscope
    :init (setq evil-cross-lines t
                evil-quickscope-cross-lines t)
    :config (global-evil-quickscope-mode)
    )

  ;; beancount-mode
  (use-package beancount
    :mode ("\\.beancount$" . beancount-mode)
    :hook (beancount-mode . outline-minor-mode))

  ;; (evil-global-set-key 'motion ";" 'evil-ex)
  ;; (evil-global-set-key 'normal ":" 'evil-repeat-find-char)
  (spacemacs|do-after-display-system-init
   (spacemacs-modeline/init-spaceline))


  (setq ispell-program-name "aspell")

  ;; (defun spacemacs/prompt-kill-emacs ()
  ;;   "Prompt to save changed buffers and exit Spacemacs"
  ;;   (interactive)
  ;;   (save-some-buffers)
  ;;   (mapc 'kill-buffer  (buffer-list))
  ;;   (kill-emacs))

  (global-set-key (kbd "<mode-line> <wheel-down>") 'next-buffer)
  (global-set-key (kbd "<mode-line> <wheel-up>") 'previous-buffer)

  ;; Hot-fix for yasnippet
  ;; (setq yas-snippet-dirs yasnippet-snippets-dir)

  ;; Start Server
  ;; (server-start)

  ;; fringe arrow shape
  (define-fringe-bitmap 'right-curly-arrow
    [#b00000000
     #b00000000
     #b00000000
     #b00000000
     #b00000000
     #b00000000
     #b00000000
     #b00000000])
  (define-fringe-bitmap 'left-curly-arrow
    [#b00000000
     #b00000000
     #b00000000
     #b00000000
     #b00000000
     #b00000000
     #b00000000
     #b00000000])

  ;; wolfram indentation
  (defun wolfram-smie-rules (kind token)
    "Wolfram Language SMIE indentation function for KIND and TOKEN."
    (pcase (cons kind token)
      ;; (`(:before . "[")
      ;;  (save-excursion
      ;;    (smie-default-backward-token) 4))
      (`(:after . ":=") 4)
      (`(:after . ,(or "]" "}" ")" "|>")) '(column . 0))
      ;; (`(:after . ,(or "[" "{" "(" "<|"))
      ;;  (save-excursion
      ;;    (beginning-of-line)
      ;;    (skip-chars-forward " \t")
      ;;    `(column . ,(+ wolfram-indent (current-column)))))
      (`(,_ . ";") (smie-rule-separator kind))
      (`(,_ . ",") (smie-rule-separator kind))
      (`(:elem . ,_) 0)
      (t nil)))

  ;; 设置垃圾回收，在 Windows 下，emacs25 版本会频繁出发垃圾回收，所以需要设置
  ;; (when (eq system-type 'windows-nt)
  ;;   (setq gc-cons-threshold (* 512 1024 1024))
  ;;   (setq gc-cons-percentage 0.5)
  ;;   (run-with-idle-timer 5 t #'garbage-collect)
  ;;   ;; 显示垃圾回收信息，这个可以作为调试用
  ;;   ;; (setq garbage-collection-messages t)
  ;;   )
  ;; 设置垃圾回收，在 Windows 下，emacs25 版本会频繁出发垃圾回收，所以需要设置
  ;; See http://bling.github.io/blog/2016/01/18/why-are-you-changing-gc-cons-threshold/
  ;; (defun my-minibuffer-setup-hook ()
  ;;   (setq gc-cons-threshold most-positive-fixnum))
  (defmacro k-time (&rest body)
    "Measure and return the time it takes evaluating BODY."
    `(let ((time (current-time)))
       ,@body
       (float-time (time-since time))))

  (defvar k-gc-timer
    (run-with-idle-timer 15 t
                         (lambda ()
                           (message "Garbage Collector has run for %.06fsec"
                                    (k-time (garbage-collect))))))

  ;; fast-scroll
  ;; (advice-add #'pixel-scroll-down :around #'fast-scroll-run-fn-minimally)

  (setq mouse-wheel-scroll-amount '(5 ((shift) . 1) ((control) . nil)))
  (setq mouse-wheel-progressive-speed nil)

  ;; (defun my-minibuffer-exit-hook ()
  ;;   (setq gc-cons-threshold 800000))

  ;; (add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
  ;; (add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

  ;; Line Space
  (setq-default line-spacing 0.2)

  ;; accelerate all-the-font rendering
  (setq inhibit-compacting-font-caches t)

  ;; neo-tree theme
  (setq neo-theme 'icons)
  ;; (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  ;; automatically start neo-tree
  ;; (add-hook 'window-setup-hook #'neotree-find-project-root)
  ;; (add-hook 'server-switch-hook (lambda () (call-interactively 'neotree-show)))

  ;; Javascript indentation
  (setq-default js2-basic-offset 2)
  (setq-default js-indent-level 2)

  ;; add hook to wolfram mode for .m files
  (use-package wolfram-mode
    :defer t
    :interpreter "\\(Wolfram\\|Mathematica\\)Script\\( -script\\)?"
    :mode "\\.m\\'")

  ;; Temporarily avoid bookmark bug
  ;; (require 'helm-bookmark)

  ;; Handling Chinese Path
  (setq file-name-coding-system 'gbk)
  ;; (setq file-name-coding-system 'mule-utf-8-dos)
  ;; (set-language-environment "UTF-8")
  ;; (prefer-coding-system 'utf-8) ; Default setting

  ;; 中文字体与 IosevkaCC 字体等宽
  ;; CJK font has the same width as IosevkaCC
  ;; (cond
  ;;  ((display-graphic-p)
  ;; (spacemacs|do-after-display-system-init
  ;;  (spacemacs//set-monospaced-font "IosevkaCC" "Noto Serif CJK SC Medium" 20 20)
  ;;  )
  ;; )
  ;; (t 0)
  ;; )

  ;; No sharing clipboard with system
  ;; (fset 'evil-visual-update-x-selection 'ignore)

  ;; Perform full-document previews in Latex
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)

  ;; Change Default Dictionary
  ;; (ispell-change-dictionary "american" t)

  ;; Proxy
  ;; (setq
  ;;  url-proxy-services '(("http" . "127.0.0.1:1080")
  ;;                       ("https" . "127.0.0.1:1080"))
  ;;  )

  ;; prettier-js
  ;; (use-package prettier-js
  ;;   :hook js2-mode
  ;;   web-mode)

  ;; Add sqlplus path to PATH
  (let ((sqlplus-path "D:/Programs/Oracle/instantclient_12_2"))
    (setenv "PATH" (concat sqlplus-path ";" (getenv "PATH")))
    (add-to-list 'exec-path sqlplus-path))

  ;; Add fcitx-remote path to PATH
  ;; (let ((fcitx-path "D:/康明宇的文档/Ken's Garage/Editors/Emacs/"))
  ;;   (setenv "PATH" (concat fcitx-path ";" (getenv "PATH")))
  ;;   (add-to-list 'exec-path fcitx-path))

  ;; Wolfram-mode
  (setq wolfram-program "D:/Programs/Wolfram Research/Mathematica/11.3/MathKernel.exe")
  (setq wolfram-path "C:/Users/Ken.K/AppData/Roaming/Mathematica/Applications")
  (setq wolfram-indent 4)

  ;; ein
  ;; (require 'ein-dev)
  ;; (advice-add 'request--netscape-cookie-parse :around #'fix-request-netscape-cookie-parse)
  ;; (setq ein:load-dev t)
  ;; (setq python-shell-interpreter "ipython" python-shell-interpreter-args "--simple-prompt --pprint")

  ;; Enter Zone Mode after a few seconds
  ;; (require 'zone)
  ;; (zone-when-idle 600)

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
