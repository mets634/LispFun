(asdf:defsystem "lisp-fun"
  :version "0.1.0"
  :author "mets634"
  :license "GNU General Public License v3.0"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "hello-world")
		 (:file "fibonacci"))))
  :description "A project to play around with Common Lisp")
