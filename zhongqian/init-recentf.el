(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 50)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;自动保存最近50个文件

(provide 'init-recentf)
