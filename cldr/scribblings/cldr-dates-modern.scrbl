#lang scribble/manual

@(require scribble/eval
          (for-label racket/base
                     racket/runtime-path
                     cldr/core
                     cldr/dates-modern
                     json))
@(define the-eval (make-base-eval))
@(the-eval '(require cldr/core
                     cldr/dates-modern))

@title{CLDR Dates for Modern Locales}
@author[@author+email["Jon Zeppieri" "zeppieri@gmail.com"]]

@margin-note{
@deftech{CLDR} is the @link["http://cldr.unicode.org/"]{Common Locale Data Repository}, a
database of localization information published by the Unicode Consortium.
}

The CLDR Dates-Modern library is a Racket interface to the
@link["https://github.com/unicode-cldr/cldr-dates-modern"]{cldr-dates-modern} JSON
distribution published by the Unicode Consortium. 

See @(other-manual '(lib "cldr/scribblings/cldr-core.scrbl")) for more information.

@defmodule[cldr/dates-modern]

@defproc[(ca-generic [locale string?]) jsexpr?]{
Returns raw data from @tt{ca-generic.json} for the given @racket[locale].
}

@defproc[(ca-gregorian [locale string?]) jsexpr?]{
Returns raw data from @tt{ca-gregorian.json} for the given @racket[locale].
}

@defproc[(date-fields [locale string?]) jsexpr?]{
Returns raw data from @tt{dateFields.json} for the given @racket[locale].
}

@defproc[(time-zone-names [locale string?]) jsexpr?]{
Returns raw data from @tt{timeZoneNames.json} for the given @racket[locale].
}
