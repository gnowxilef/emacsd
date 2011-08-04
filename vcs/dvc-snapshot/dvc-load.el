; -*- mode: emacs-lisp -*-
;;
;; Load DVC easily ...
;;
;; Manually, you can run
;;
;;   M-x load-file RET /path/to/dvc-load.el RET
;;
;; (usefull when you want to load DVC after starting "emacs -q"!), or
;; add
;;
;;   (load-file "/path/to/this/file/in/builddir/dvc-load.el")
;;
;; to your ~/.emacs.el

(add-to-list 'load-path "/Users/michaelsteger/.emacs.d/vcs/dvc-snapshot/lisp")
(unless (locate-library "ewoc")
  (add-to-list 'load-path "/Users/michaelsteger/.emacs.d/vcs/dvc-snapshot/lisp/contrib"))
(add-to-list 'Info-default-directory-list "/Users/michaelsteger/.emacs.d/vcs/dvc-snapshot/texinfo")

(if (featurep 'dvc-core)
    (dvc-reload)
  (if (featurep 'xemacs)
      (require 'dvc-autoloads "/Users/michaelsteger/.emacs.d/vcs/dvc-snapshot/lisp/auto-autoloads.elc")
    (require 'dvc-autoloads)))

