;; 添加本地路径
(add-to-list 'load-path "~/.emacs.d/plugins")
;; 关闭启动画面
(setq inhibit-startup-message t)
; 设置缺省目录
(setq default-directory "~/文档/cpp/")
;; 设置括号匹配
(require 'autopair)
(autopair-global-mode)
;; 设置高亮当前行
(require 'hl-line)
(global-hl-line-mode 1)
;; 设置代码片段
;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
;(require 'yasnippet)
;(yas-global-mode 1)
;(setq yas/prompt-functions '(yas/dropdown-prompt))
;; 设置自动完成
(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/ac-dict")
(ac-config-default)
;; 设置gdb
(setq gdb-many-windows t)
;; 设置智能编译
(require 'smart-compile)
(global-set-key (kbd "<f5>") 'smart-run)
(global-set-key (kbd "M-<f5>") 'smart-compile)
(global-set-key (kbd "<f8>") 'quick-debug)
(defun quick-debug ()
  (interactive)
  (setq debug-command
 	(concat "gdb -i=mi" " "
 		(file-name-sans-extension
 		 (file-name-nondirectory buffer-file-name))))
  (gdb debug-command))
;; cc-mode
(setq c-basic-offset 4)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal)))))
