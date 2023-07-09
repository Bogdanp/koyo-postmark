#lang info

(define license 'BSD-3-Clause)
(define version "1.0")
(define collection "koyo")
(define scribblings '(("mail/koyo-postmark.scrbl" () ("Web Development"))))

(define deps '("base"
               "koyo-lib"
               "postmark-client"))
(define build-deps '("koyo-doc"
                     "racket-doc"
                     "scribble-lib"))
