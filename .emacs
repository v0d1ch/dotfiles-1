;; Dependencies

(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'load-path "~/.emacs.d")

;; Miscellaneous keyboard and personal preferences
(load-library "misc-config.el")

;; auto-complete
(load-library "ac-config.el")

;; Marmalade
;; (require 'package)
;; (add-to-list 'package-archives
;;     '("marmalade" .
;;       "http://marmalade-repo.org/packages/"))
;; (package-initialize)

;; Clojure
(require 'clojure-mode)

;; coffee-script
(require 'coffee-mode)

;; color-grep
(require 'color-grep)

;; DCPU-16
(require 'dcpu16-mode)

;; Drag stuff
(require 'drag-stuff)
(drag-stuff-mode t)

;; Edit server
(require 'edit-server)
(edit-server-start)

;; Enhance dired
(require 'dired+)
(require 'dired-x)

;; Erlang
(load-library "erlang-config.el")

;; Go
(load-library "go-config.el")

;; Haskell
(load-library "haskell-config.el")

;; Jade
;; (load-library "jade-config.el")

;; Jinja
;; (require 'jinja)
;; (fset 'html-mode 'jinja-mode)

;; (load-library "multi-web-mode-config.el")

;;; Magit
(require 'magit)
(global-set-key (kbd "C-c m g") 'magit-status)

;; Markdown
(load-library "markdown-config.el")

;; Mustache
(require 'mustache-mode)

;; OCaml
(load-library "ocaml-config.el")

;; Python
(load-library "python-config.el")

;; rainbow-mode for CSS
(require 'rainbow-mode)

;; rainbow-delimiters
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

;; rect mark
(require 'rect-mark)

;; Rest client
(require 'restclient)

;; rst
(require 'rst)

;; undo tree
(require 'undo-tree)
(global-undo-tree-mode)

;; Ruby
(load-library "ruby-config.el")

;; Rust
(require 'rust-mode)

;; Scala
;; (require 'scala-mode-auto)

;; Scala
;; (load-library "ensime-config.el")

;; ~/.sbt/plugins/build.sbt
;; resolvers ++= Seq(Resolver.url("sbt-plugin-releases",
;;                                          new URL("http://scalasbt.artifactoryonline.com/scalasbt/sbt-plugin-releases/"))(Resolver.ivyStylePatterns))

;; addSbtPlugin("org.ensime" % "ensime-sbt-cmd" % "0.0.10")

;; (add-to-list 'load-path "~/.emacs.d/scala/ensime/src/main/elisp/")
;; (require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
;; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Slime
(load-library "slime-config.el")

;; Stripe buffer mode
(require 'stripe-buffer)
(stripe-buffer-mode 1)
(add-hook 'org-mode-hook 'org-table-stripes-enable)
(add-hook 'dired-mode-hook 'stripe-listify-buffer)

;; Tabbar
(if (display-graphic-p)
    (load-library "tabbar-config.el"))

;; Web-mode
(load-library "web-mode-config.el")

;; Vala
(load-library "vala-config.el")

;; Yaml
(load-library "yaml-config.el")

;; Nyan-mode
;; (if (display-graphic-p)
;;     (require 'nyan-mode))

;; Color theme
(require 'color-theme)
(color-theme-initialize)
;; (require 'tomorrow-night-theme)
;; (require 'tomorrow-theme)
;; (require 'tomorrow-night-bright-theme)
(require 'color-theme-bitemyapp)
(color-theme-bitemyapp)

(if (string= system-type "darwin")
(custom-set-faces
 '(default ((t (:background "black" :foreground "white" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :family "Menlo")))))

(custom-set-faces
 '(default ((t (:background "black" :foreground "white" :inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "unknown" :family "Monospace"))))))
