(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; keybindings
; buffer-menu -> bs-show
(global-set-key "\C-x\C-b" 'bs-show)
(global-set-key "\C-h" (quote delete-backward-char))

(when window-system
  ;; font
  (setq default-frame-alist
	(append (list
		 '(font . "Migu 1M 13")
		 '(width . 80) '(height . 40)
		 )
		default-frame-alist)
	)
     (define-key global-map [?¥] "\\")
     )

(add-hook 'lsp-mode-hook
	  (setq lsp-solargraph-use-bundler t)
;(setq-default flycheck-disabled-checkers '(ruby-rubocop))
(use-package add-node-modules-path
  :hook (web-mode js-mode js2-mode typescript-mode vue-mode)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(company-auto-complete ''company-explicit-action-p)
 '(dired-listing-switches "-alo")
 '(dired-use-ls-dired nil)
 '(editorconfig-indentation-alist
   '((vue-mode js-indent-level css-indent-offset)
     (apache-mode apache-indent-level)
     (awk-mode c-basic-offset)
     (bpftrace-mode c-basic-offset)
     (c++-mode c-basic-offset)
     (c-mode c-basic-offset)
     (cmake-mode cmake-tab-width)
     (coffee-mode coffee-tab-width)
     (cperl-mode cperl-indent-level)
     (crystal-mode crystal-indent-level)
     (csharp-mode c-basic-offset)
     (css-mode css-indent-offset)
     (emacs-lisp-mode lisp-indent-offset)
     (enh-ruby-mode enh-ruby-indent-level)
     (erlang-mode erlang-indent-level)
     (ess-mode ess-indent-offset)
     (feature-mode feature-indent-offset feature-indent-level)
     (fsharp-mode fsharp-continuation-offset fsharp-indent-level fsharp-indent-offset)
     (groovy-mode groovy-indent-offset)
     (haskell-mode haskell-indent-spaces haskell-indent-offset haskell-indentation-layout-offset haskell-indentation-left-offset haskell-indentation-starter-offset haskell-indentation-where-post-offset haskell-indentation-where-pre-offset shm-indent-spaces)
     (haxor-mode haxor-tab-width)
     (idl-mode c-basic-offset)
     (jade-mode jade-tab-width)
     (java-mode c-basic-offset)
     (js-mode js-indent-level)
     (js-jsx-mode js-indent-level sgml-basic-offset)
     (js2-mode js2-basic-offset)
     (js2-jsx-mode js2-basic-offset sgml-basic-offset)
     (js3-mode js3-indent-level)
     (json-mode js-indent-level)
     (julia-mode julia-indent-offset)
     (kotlin-mode kotlin-tab-width)
     (latex-mode . editorconfig-set-indentation-latex-mode)
     (lisp-mode lisp-indent-offset)
     (livescript-mode livescript-tab-width)
     (lua-mode lua-indent-level)
     (matlab-mode matlab-indent-level)
     (mips-mode mips-tab-width)
     (mustache-mode mustache-basic-offset)
     (nasm-mode nasm-basic-offset)
     (nginx-mode nginx-indent-level)
     (nxml-mode nxml-child-indent
		(nxml-attribute-indent . 2))
     (objc-mode c-basic-offset)
     (octave-mode octave-block-offset)
     (perl-mode perl-indent-level)
     (php-mode c-basic-offset)
     (pike-mode c-basic-offset)
     (ps-mode ps-mode-tab)
     (pug-mode pug-tab-width)
     (puppet-mode puppet-indent-level)
     (python-mode . editorconfig-set-indentation-python-mode)
     (ruby-mode ruby-indent-level)
     (rust-mode rust-indent-offset)
     (scala-mode scala-indent:step)
     (scss-mode css-indent-offset)
     (sgml-mode sgml-basic-offset)
     (sh-mode sh-basic-offset sh-indentation)
     (slim-mode slim-indent-offset)
     (tcl-mode tcl-indent-level tcl-continued-indent-level)
     (terra-mode terra-indent-level)
     (typescript-mode typescript-indent-level)
     (verilog-mode verilog-indent-level verilog-indent-level-behavioral verilog-indent-level-declaration verilog-indent-level-module verilog-cexp-indent verilog-case-indent)
     (web-mode
      (web-mode-indent-style lambda
			     (size)
			     2)
      web-mode-attr-indent-offset web-mode-attr-value-indent-offset web-mode-code-indent-offset web-mode-css-indent-offset web-mode-markup-indent-offset web-mode-sql-indent-offset web-mode-block-padding web-mode-script-padding web-mode-style-padding)
     (yaml-mode yaml-indent-offset)))
 '(editorconfig-mode t)
 '(flycheck-javascript-eslint-executable nil)
 '(flycheck-javascript-standard-executable nil)
 '(flycheck-ruby-rubocop-executable "bundle exec rubocop")
 '(flycheck-typescript-tslint-executable nil)
 '(global-company-mode nil)
 '(global-flycheck-mode t)
 '(inhibit-startup-screen t)
 '(lsp-steep-log-level "info")
 '(lsp-tailwindcss-auto-install-server t)
 '(lsp-tailwindcss-major-modes '(rjsx-mode web-mode html-mode html+-mode css-mode))
 '(menu-bar-mode nil)
 '(mmm-global-mode 'maybe nil (mmm-mode))
 '(package-enable-at-startup nil)
 '(package-selected-packages
   '(lsp-mode jtsx web-mode docker-tramp docker-compose-mode gradle-mode toml-mode flycheck vue-mode graphql-mode use-package add-node-modules-path exec-path-from-shell rbs-mode dockerfile-mode plantuml-mode string-inflection origami json-mode esa simplenote2 company php-mode typescript-mode feature-mode markdown-mode editorconfig yaml-mode csv-mode))
 '(plantuml-default-exec-mode 'jar)
 '(plantuml-executable-path "/opt/homebrew/bin/plantuml")
 '(plantuml-jar-args '("-charset" "UTF-8" "-graphvizdot /opt/homebrew/bin/dot"))
 '(plantuml-jar-path
   "/opt/homebrew/Cellar/plantuml/1.2025.1/libexec/plantuml.jar")
 '(plantuml-java-args
   '("-Djava.awt.headless=true" "-jar" "--illegal-access=deny"))
 '(ruby-flymake-use-rubocop-if-available nil)
 '(ruby-insert-encoding-magic-comment nil)
 '(safe-local-variable-values '((encoding . utf-8)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(menu ((t (:inverse-video t))))
 '(mmm-comment-submode-face ((t nil)))
 '(mmm-declaration-submode-face ((t nil)))
 '(mmm-default-submode-face ((t nil)))
 '(region ((t (:extend t :background "color-103" :foreground "brightwhite"))))
 '(tty-menu-selected-face ((t (:background "color-17"))))
 '(web-mode-html-attr-name-face ((t (:foreground "brightblack"))))
 '(web-mode-html-tag-face ((t (:foreground "color-52")))))
(put 'narrow-to-region 'disabled nil)
