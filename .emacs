
(desktop-save-mode 1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;git 需要设置HOME环境变量作为根
;;emacs有多种方式存放设置文件，第一种也是设置HOME。

(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;;下面是git-emacs
(add-to-list 'load-path "~/git-emacs-1.0")
(require 'git-emacs)

;;删除当前缓冲区
(global-set-key (kbd "C-x k") 'kill-this-buffer)
;;删除全部缓冲区
(defun nuke-all-buffers ()
  (interactive)
  (mapcar 'kill-buffer (buffer-list))
  (delete-other-windows))
(global-set-key (kbd "C-x K") 'nuke-all-buffers)
