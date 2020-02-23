#lang info

(define version "0.0.0")
(define collection "koyo")
(define scribblings '(("mail/koyo-postmark.scrbl" ())))

(define deps '("base"
               "koyo-lib"
               "postmark-client"))
(define build-deps '("koyo-doc"
                     "racket-doc"
                     "scribble-lib"))
