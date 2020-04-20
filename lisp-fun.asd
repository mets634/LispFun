(asdf:defsystem "lisp-fun"
  :version "0.1.0"
  :author "mets634"
  :license "GNU General Public License v3.0"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:module "hello-world"
		  :components ((:file "hello-world"))))))
  :description "A project to play around with Common Lisp")
