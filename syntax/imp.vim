"----------------------------------------------------------------------
" imp.vim -- Syntax file for Ivy's "Imp" language with highlighting
" 
" Maintainer:   Mobin Dariush
" Last Updated: Jan 4, 2025
"
" This file defines syntax highlighting for .imp files that contain Ivy/Imp
" code.
"
" Usage:
"     Put this file into ~/.config/nvim/syntax/imp.vim 
"     (or in $VIMRUNTIME/syntax/imp.vim if system-wide).
"----------------------------------------------------------------------

if exists("b:current_syntax")
  finish
endif

" Reset any existing syntax in this buffer.
syntax clear

" Imp is case-sensitive for keywords (method, if, else, etc.).
syntax case match

" -----------------------------------------------------------------------------
" 1. COMMENTS
"    Single-line comments: "// ... until EOL"
" -----------------------------------------------------------------------------
syntax match ImpComment "//.*$"

" -----------------------------------------------------------------------------
" 2. NUMBERS
"    Basic decimal integer pattern. 
" -----------------------------------------------------------------------------
syntax match ImpNumber "\v\d+"

" -----------------------------------------------------------------------------
" 3. BOOLEAN LITERALS
" -----------------------------------------------------------------------------
syntax keyword ImpBoolean true false

" -----------------------------------------------------------------------------
" 4. TYPES
"    Current types in Imp grammar: `int`, `bool`, and array types `int[]`, `bool[]`
" -----------------------------------------------------------------------------
syntax match ImpType "int\[\]\|bool\[\]"
syntax keyword ImpType int bool

" -----------------------------------------------------------------------------
" 5. METHODS & FUNCTION-LIKE DECLS
"    "method" is used in Imp to define procedures. 
" -----------------------------------------------------------------------------
syntax keyword ImpMethod method

" -----------------------------------------------------------------------------
" 6. LOOP & CONDITIONAL KEYWORDS
" -----------------------------------------------------------------------------
syntax keyword ImpLoop while
syntax keyword ImpConditional if else

" -----------------------------------------------------------------------------
" 7. SPECIFICATION KEYWORDS
" -----------------------------------------------------------------------------
syntax keyword ImpSpec requires ensures invariant returns

" -----------------------------------------------------------------------------
" 8. LOGIC & QUANTIFIERS
" -----------------------------------------------------------------------------
syntax keyword ImpLogic forall exists

" -----------------------------------------------------------------------------
" 9. OPERATORS
" -----------------------------------------------------------------------------
syntax match ImpOperator "==>"
syntax match ImpOperator "&&\|\|\|\|\|"
syntax match ImpOperator "[=!<>]=\|==\|<\|>\|%\|[\+\-\*/]"

" -----------------------------------------------------------------------------
" 10. LINKING TO STANDARD VIM HIGHLIGHT GROUPS
" -----------------------------------------------------------------------------
highlight link ImpComment      Comment
highlight link ImpNumber       Number
highlight link ImpBoolean      Boolean

highlight link ImpType         Type
highlight link ImpMethod       Function
highlight link ImpConditional  Conditional
highlight link ImpLoop         Repeat

highlight link ImpSpec         Statement
highlight link ImpLogic        Statement
highlight link ImpKeyword      Keyword
highlight link ImpOperator     Operator

" -----------------------------------------------------------------------------
" Mark the file type as using "imp" syntax.
" -----------------------------------------------------------------------------
let b:current_syntax = "imp"

