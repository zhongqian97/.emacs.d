;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)
(add-to-list 'load-path "~/.emacs.d/zhongqian/")

(require 'init-package)
(require 'init-popwin)
(require 'init-auto-org-md)
(require 'init-smartparens)
(require 'init-ivy)
(require 'init-hungry-delete)
(require 'init-recentf)
(require 'init-company)
(require 'init-system)
(require 'init-org-mode)

(shell)

(defun zhongqian-org-github-web ()
  (progn
    (shell-command "./sh/EmacsOrgGithub.sh")
    ;;
    (message "zhongqian-org-github-web is OK!")))

(add-hook 'after-save-hook 'zhongqian-org-github-web)

;;这个钩子全部保存函数都勾了。。。



 (defun open-my-init-file()
   (interactive)
   (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-my-init-file)

;;f2打开快捷键

