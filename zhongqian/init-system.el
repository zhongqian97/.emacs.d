(setq auto-save-default nil)
(setq make-backup-files nil)

;;不保存文件

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

(delete-selection-mode t)

;;选中直接改变

(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;窗口最大化

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;elisp括号匹配

(global-hl-line-mode t)

;;行号高亮

(setq ring-bell-function 'ignore)

;;关闭蜂鸣器

(fset 'yes-or-no-p 'y-or-n-p)

;;简写

(provide 'init-system)
