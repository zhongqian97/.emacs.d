(when (>= emacs-major-version 25)
  (require 'package)
 
  (add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
  )
(require 'cl)

(defvar my/packages '(
		      company
		      monokai-theme
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      auto-org-md
		      popwin
		      flycheck
		      magit
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;;包裹管理

(provide 'init-package)
