
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(when (>= emacs-major-version 25)
  (require 'package)
  (package-initialize)
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

(require 'auto-org-md)
(add-hook 'org-mode-hook 'auto-org-md-mode)

(shell)

(defun zhongqian-org-github-web ()
  (progn
    (shell-command "./sh/EmacsOrgGithub.sh")
    ;;
    (message "zhongqian-org-github-web is OK!")))

(add-hook 'after-save-hook 'zhongqian-org-github-web)

;;这个钩子全部保存函数都勾了。。。

(setq auto-save-default nil)



(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

;;括号匹配

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)

;;查看器，打开列表的，炒鸡好用！

(require 'hungry-delete)
(global-hungry-delete-mode)

;;吃空格

(load-theme 'monokai t)

;;加载主题

(setq-default cursor-type 'bar)

;;更改输入处形状

(tool-bar-mode -1)

;;关闭工具栏

(scroll-bar-mode -1)

;;关闭滚动条

(global-linum-mode t)

;;打开行号

(setq inhibit-splash-screen t)

;;关闭启动画面

 (defun open-my-init-file()
   (interactive)
   (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-my-init-file)

;;f2打开快捷键

(setq org-src-fontify-natively t)

;;设置org文本语法高亮

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 50)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;自动保存最近50个文件

(delete-selection-mode t)

;;选中直接改变

(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;窗口最大化

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;elisp括号匹配

(global-hl-line-mode t)

;;行号高亮

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   (quote
    ("c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-company-mode t)


