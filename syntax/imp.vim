"----------------------------------------------------------------------
" imp.vim -- Syntax file for Ivy's "Imp" language with highlighting
"
" Maintainer:   Mobin Dariush
" Last Updated: Jan 4, 2025
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
syntax case match
syntax sync fromstart

" -----------------------------------------------------------------------------
" 1. IMP LINE REGION
"    We define a region for each line, from ^ to $, which can contain
"    tokens (numbers, keywords, operators) as well as a comment sub-region.
" -----------------------------------------------------------------------------
syntax region ImpLine start="^" end="$" keepend contains=ImpComment,ImpNumber,ImpBoolean,ImpType,ImpMethod,ImpConditional,ImpLoop,ImpSpec,ImpLogic,ImpOperator

" -----------------------------------------------------------------------------
" 2. SINGLE-LINE COMMENTS
"    Everything from "//" to the end of the line is a comment, with
"    contains=NONE so no tokens can match inside.
" -----------------------------------------------------------------------------
syntax region ImpComment start="//" end="$" contains=NONE

" -----------------------------------------------------------------------------
" 3. NUMBERS
"    Basic decimal integer pattern. "contained" so it only applies in ImpLine.
" -----------------------------------------------------------------------------
syntax match ImpNumber "\d\+" contained

" -----------------------------------------------------------------------------
" 4. BOOLEAN LITERALS
" -----------------------------------------------------------------------------
syntax keyword ImpBoolean true false contained

" -----------------------------------------------------------------------------
" 5. TYPES
"    Current types in Imp grammar: `int`, `bool`, and array types `int[]`, `bool[]`
" -----------------------------------------------------------------------------
syntax match   ImpType "int\[\]\|bool\[\]" contained
syntax keyword ImpType int bool contained

" -----------------------------------------------------------------------------
" 6. METHODS & FUNCTION-LIKE DECLS
" -----------------------------------------------------------------------------
syntax keyword ImpMethod method contained

" -----------------------------------------------------------------------------
" 7. LOOP & CONDITIONAL KEYWORDS
" -----------------------------------------------------------------------------
syntax keyword ImpLoop        while contained
syntax keyword ImpConditional if else contained

" -----------------------------------------------------------------------------
" 8. SPECIFICATION KEYWORDS
" -----------------------------------------------------------------------------
syntax keyword ImpSpec requires ensures invariant returns contained

" -----------------------------------------------------------------------------
" 9. LOGIC & QUANTIFIERS
" -----------------------------------------------------------------------------
syntax keyword ImpLogic forall exists contained

" -----------------------------------------------------------------------------
" 10. OPERATORS
"    Define them separately to avoid regex errors in older Vim versions.
" -----------------------------------------------------------------------------
syntax match ImpOperator "==>" contained
syntax match ImpOperator "&&\|\|\|\|\|" contained

" Multi-char operators: ==, !=, <=, >=
syntax match ImpOperator "==" contained
syntax match ImpOperator "!=" contained
syntax match ImpOperator "<=" contained
syntax match ImpOperator ">=" contained

" Single-char operators: <, >, %, +, -, *, /
syntax match ImpOperator "[<>%+\-*/]" contained

" -----------------------------------------------------------------------------
" 11. LINKING TO STANDARD VIM HIGHLIGHT GROUPS
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
highlight link ImpOperator     Operator

" -----------------------------------------------------------------------------
" Mark the file type as using "imp" syntax.
" -----------------------------------------------------------------------------
let b:current_syntax = "imp"


