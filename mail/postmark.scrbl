#lang scribble/manual

@(require (for-label koyo/mail
                     koyo/mail/postmark
                     postmark
                     racket/base
                     racket/contract
                     racket/string))

@title{Postmark Adapter for Koyo}
@defmodule[koyo/mail/postmark]

@(define postmark-url "https://postmarkapp.com")
@(define adapter-tech (tech #:doc '(lib "koyo/scribblings/koyo.scrbl") "mail adapter"))

This package exposes a koyo @adapter-tech for interfacing with
@link[postmark-url]{Postmark}.

@deftogether[(
  @defproc[(make-postmark-mail-adapter [client postmark?]) mail-adapter?]
  @defproc[(postmark-mail-adapter? [v any/c]) boolean?]
)]{

  A @adapter-tech that uses the @link[postmark-url]{Postmark} API to
  send e-mail.
}
