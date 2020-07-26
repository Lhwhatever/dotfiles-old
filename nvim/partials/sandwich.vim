let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

let g:sandwich#recipes += [
            \ { 
            \   'buns': ['{ ', ' }'], 
            \   'nesting': 1, 
            \   'match_syntax': 1,
            \   'action': ['add'],
            \   'input': ['{'] 
            \ },
            \ { 
            \   'buns': ['[ ', ' ]'],
            \   'nesting': 1, 
            \   'match_syntax': 1,
            \   'action': ['add'],
            \   'input': ['[']
            \ },
            \ { 
            \   'buns': ['( ', ' )'],
            \   'nesting': 1,
            \   'match_syntax': 1,
            \   'kind': ['add', 'replace'],
            \   'action': ['add'],
            \   'input': ['('] 
            \ },
            \ { 
            \   'buns': ['{\s*', '\s*}'],
            \   'nesting': 1,
            \   'regex': 1,
            \   'match_syntax': 1,
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'action': ['delete'],
            \   'input': ['{'] 
            \ },
            \ { 
            \   'buns': ['[\s*', '\s*]'],
            \   'nesting': 1,
            \   'regex': 1,
            \   'match_syntax': 1,
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'action': ['delete'],
            \   'input': ['['] 
            \ },
            \ { 
            \   'buns': ['(\s*', '\s*)'],
            \   'nesting': 1,
            \   'regex': 1,
            \   'match_syntax': 1,
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'action': ['delete'],
            \   'input': ['('] 
            \ },
            \ ]

" Python
autocmd FileType python call sandwich#util#addlocal([
            \ {
            \   'buns': ['r"', '"'],
            \   'motionwise': ['char', 'block'],
            \   'kind': ['add', 'replace'],
            \   'action': ['add'],
            \   'input': ['r"'],
            \ },
            \ {
            \   'buns': ['R"', '"'],
            \   'motionwise': ['char', 'block'],
            \   'kind': ['add', 'replace'],
            \   'action': ['add'],
            \   'input': ['R"'],
            \ },
            \ {
            \   'buns': ["r'", "'"],
            \   'motionwise': ['char', 'block'],
            \   'kind': ['add', 'replace'],
            \   'action': ['add'],
            \   'input': ["r'"],
            \ },
            \ {
            \   'buns': ["R'", "'"],
            \   'motionwise': ['char', 'block'],
            \   'kind': ['add', 'replace'],
            \   'action': ['add'],
            \   'input': ["R'"],
            \ }
            \ {
            \   'buns': ['[rR]"', '"'],
            \   'regex': 1,
            \   'quoteescape': 1,
            \   'expand_range': 0,
            \   'syntax': ['String'],
            \   'match_syntax': 2,
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'input': ['r"', 'R"'],
            \ },
            \ {
            \   'buns': ["[rR]'", "'"],
            \   'regex': 1,
            \   'quoteescape': 1,
            \   'expand_range': 0,
            \   'syntax': ['String'],
            \   'match_syntax': 2,
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'action': ['delete'],
            \   'input': ["r'", "R'"],
            \ },
            \ {
            \   'buns': ['[fF]"', '"'],
            \   'regex': 1,
            \   'quoteescape': 1,
            \   'expand_range': 0,
            \   'syntax': ['String'],
            \   'match_syntax': 1,
            \   'inner_syntax': ['String', 'Constant'],
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'action': ['delete'],
            \   'input': ['f"', 'F"'],
            \ },
            \ {
            \   'buns': ["[fF]'", "'"],
            \   'regex': 1,
            \   'quoteescape': 1,
            \   'expand_range': 0,
            \   'syntax': ['String'],
            \   'match_syntax': 1,
            \   'inner_syntax': ['String', 'Constant'],
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'action': ['delete'],
            \   'input': ["f'", "F'"],
            \ },
            \ {
            \   'buns': ['[uU]"', '"'],
            \   'regex': 1,
            \   'quoteescape': 1,
            \   'expand_range': 0,
            \   'syntax': ['String'],
            \   'match_syntax': 1,
            \   'inner_syntax': ['String', 'Constant'],
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'action': ['delete'],
            \   'input': ['u"', 'U"'],
            \ },
            \ {
            \   'buns': ["[uU]'", "'"],
            \   'regex': 1,
            \   'quoteescape': 1,
            \   'expand_range': 0,
            \   'syntax': ['String'],
            \   'match_syntax': 1,
            \   'inner_syntax': ['String', 'Constant'],
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'action': ['delete'],
            \   'input': ["u'", "U'"],
            \ },
            \ {
            \   'buns': ['\([rRfFuU]\|[rR][fF]\|[fF][rR]\)\="', '"'],
            \   'regex': 1,
            \   'quoteescape': 1,
            \   'expand_range': 0,
            \   'syntax': ['String'],
            \   'match_syntax': 1,
            \   'inner_syntax': ['String', 'Constant'],
            \   'kind': ['delete', 'replace', 'textobj'],
            \   'action': ['delete'],
            \   'input': ['"', 'q'],
            \ }
            \ ]
