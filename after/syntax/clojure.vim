

syn clear clojureVector
syn clear clojureMap

syntax cluster clojureTop contains=@clojureTopBase,clojureSexp0
syntax cluster clojureTop1 contains=@clojureTopBase,clojureSexp1

syntax cluster clojureTopBase contains=@Spell,clojureAnonArg,clojureBoolean,clojureCharacter,clojureComment,clojureCond,clojureConstant,clojureDefine,clojureDeref,clojureDispatch,clojureException,clojureFunc,clojureKeyword,clojureMacro,clojureMap,clojureMeta,clojureNumber,clojureQuote,clojureRegexp,clojureRepeat,clojureSpecial,clojureString,clojureSymbol,clojureUnquote,clojureVarArg,clojureVariable,clojureVector,clojureSet,clojureAnonFn

"Brian's adjustments here allow more colors
"alternating parens, plus different colors for
"other enclosures
syntax region clojureSet    matchgroup=clojureSet start="#{"  end="}" contains=@clojureTop fold
syntax region clojureAnonFn    matchgroup=clojureAnonFn start="#("  end=")" contains=@clojureTop fold
syntax region clojureSexp0   matchgroup=clojureParen0 start="("  end=")" contains=@clojureTop1 fold
syntax region clojureSexp1   matchgroup=clojureParen1 start="("  end=")" contains=@clojureTop fold contained
syntax region clojureVector matchgroup=clojureVector start="\[" end="]" contains=@clojureTop fold
syntax region clojureMap    matchgroup=clojureMap start="{"  end="}" contains=@clojureTop fold


"These colors are probably not what you want, unless you're using Solarize
"Please adjust them.
highlight clojureVector  ctermfg=darkyellow
highlight clojureMap  ctermfg=darkgreen
highlight clojureSet  ctermfg=magenta
highlight clojureAnonFn ctermfg=lightblue
highlight clojureAnonArg ctermfg=lightblue
highlight clojureParen1 ctermfg=darkred
highlight clojureParen0 ctermfg=darkmagenta
"highlight clojureError term=bold
