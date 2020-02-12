;; emacs resource
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; cl - Common Lisp Extension
(require 'cl)

;; ..................
;; ..................
;; ..................

;; Add Packages
(defvar my/packages '(
		      ;; ivy + swiper
		      ivy
		      swiper
		      ;; --- Minor Mode ---
		      exec-path-from-shell
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

;; ..................
;; ..................
;; ..................

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; keybindings
(global-set-key (kbd "M-k") 'kill-this-buffer)

;; ivy swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
;; keybindings
(global-set-key (kbd "M-n") 'next-error)
(global-set-key (kbd "M-p") 'previous-error)


;; org-download
(require 'org-download)
;; Drag-and-drop to `dired`
(add-hook 'dired-mode-hook 'org-download-enable)
(global-set-key (kbd "<f5>") 'org-download-screenshot)

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; disable alert voice
(setq ring-bell-function 'ignore)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 将函数 open-init-file 绑定到 <f1> 键上
(global-set-key (kbd "<f1>") 'open-init-file)

;; 快速加载配置文件
(defun load-init-file()
  (interactive)
  (load-file "~/.emacs.d/init.el"))
;; 将函数 load-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'load-init-file)

;; 打开 archive 文件
(defun open-archive-file()
  (interactive)
  (find-file (concat buffer-file-name "_archive")))
;; 将函数 open-archive-file 绑定到 <f3> 键上
(global-set-key (kbd "<f3>") 'open-archive-file)


;; 启动页面
(setq initial-buffer-choice "~/Desk/cloud/firslov.org")

;; 这个快捷键绑定可以用之后的插件 counsel 代替
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; disable backup
(setq make-backup-files nil)
;; disable auto-save
(setq auto-save-default nil)

;; yes-or-no y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

;; recent file
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; select input delete
(delete-selection-mode 1)

;; highlight current line
(global-hl-line-mode 1)

;; autoload change out of emacs
(global-auto-revert-mode 1)

;; highlight in org-mode
(require 'org)
(setq org-src-fontify-natively t)

;; format the buffer
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))
(global-set-key (kbd "<f4>") 'indent-buffer)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(org-download-display-inline-images nil)
 '(org-download-image-org-width 0)
 '(org-download-method (quote attach))
 '(org-download-screenshot-method "screencapture -i %s")
 '(package-selected-packages (quote (org-download ivy swiper exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
