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
@(define postmark-link (link postmark-url "Postmark"))
@(define adapter-tech (tech #:doc '(lib "koyo/scribblings/koyo.scrbl") "mail adapter"))

This package exposes a koyo @adapter-tech for interfacing with @|postmark-link|.

@section{Reference}

@defproc[(postmark-mail-adapter? [v any/c]) boolean?]{
  Returns @racket[#t] when @racket[v] is a Postmark @|adapter-tech|.
}

@defproc[(make-postmark-mail-adapter [client postmark?]) mail-adapter?]{
  Creates a @adapter-tech that uses the @|postmark-link| API to send e-mail.
}
