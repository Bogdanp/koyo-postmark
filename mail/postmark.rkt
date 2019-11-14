#lang racket/base

(require koyo/mail
         postmark
         racket/contract)

(provide
 (all-from-out postmark)
 postmark-mail-adapter?
 make-postmark-mail-adapter)

(struct postmark-mail-adapter (client)
  #:methods gen:mail-adapter
  [(define (mail-adapter-send-email-with-template ma
                                                  #:to to
                                                  #:from from
                                                  #:template-id [template-id #f]
                                                  #:template-alias [template-alias #f]
                                                  #:template-model template-model)
     (void
      (postmark-send-email-with-template
       (postmark-mail-adapter-client ma)
       #:to to
       #:from from
       #:template-id template-id
       #:template-alias template-alias
       #:template-model template-model)))])

(define/contract (make-postmark-mail-adapter client)
  (-> postmark? mail-adapter?)
  (postmark-mail-adapter client))
