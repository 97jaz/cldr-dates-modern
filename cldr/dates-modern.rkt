#lang racket/base

(require racket/contract/base
         racket/runtime-path
         cldr/core)

(provide/contract [ca-generic      cldr-main/c]
                  [ca-gregorian    cldr-main/c]
                  [date-fields     cldr-main/c]
                  [time-zone-names cldr-main/c])

(define (ca-generic loc)
  (get loc "ca-generic.json" `(main ,loc dates calendars generic)))

(define (ca-gregorian loc)
  (get loc "ca-gregorian.json" `(main ,loc dates calendars gregorian)))

(define (date-fields loc)
  (get loc "dateFields.json" `(main ,loc dates fields)))

(define (time-zone-names loc)
  (get loc "timeZoneNames.json" `(main ,loc dates timeZoneNames)))

(define (get loc file path)
  (if (modern-locale? loc)
      (cldr-json ZIP-PATH PKG (build-path "main" loc file) path)
      (raise-locale-not-found loc PKG)))

(define PKG "cldr-dates-modern")
(define-runtime-path ZIP-PATH "data/cldr-dates-modern.zip")
