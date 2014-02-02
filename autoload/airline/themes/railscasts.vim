" vim-airline companion theme of railscasts

let g:airline#themes#railscasts#palette = {}

let g:airline#themes#railscasts#palette.accents = {
      \ 'red': [ '#ffffff' , '' , 231 , '' , '' ],
      \ }


let s:N1 = [ '#ffffff' , '#005252' , 4 , 16]
let s:N2 = [ '#ffffff' , '#003f3f' , 5 , 16 ]
let s:N3 = [ '#ffffff' , '#002b2b' , 2 , 16 ]
let g:airline#themes#railscasts#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#railscasts#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#450000' , 16     , 1      , ''     ] ,
      \ }


let s:I1 = [ '#ffffff' , '#789f00' , 3 , 16 ]
let s:I2 = [ '#ffffff' , '#003f3f' , 5 , 16  ]
let s:I3 = [ '#ffffff' , '#002b2b' , 2 , 16  ]
let g:airline#themes#railscasts#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#railscasts#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#005e5e' , 16     , 1      , ''     ] ,
      \ }
let g:airline#themes#railscasts#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#789f00' , s:I1[2] , 106     , ''     ] ,
      \ }


let g:airline#themes#railscasts#palette.replace = copy(g:airline#themes#railscasts#palette.insert)
let g:airline#themes#railscasts#palette.replace.airline_a = [ s:I2[0]   , '#920000' , s:I2[2] , 88     , ''     ]
let g:airline#themes#railscasts#palette.replace_modified = g:airline#themes#railscasts#palette.insert_modified

let s:V1 = [ '#ffff9a' , '#ff8036' , 6 , 16 ]
let s:V2 = [ '#ffffff' , '#003f3f' , 5 , 16 ]
let s:V3 = [ '#ffffff' , '#002b2b' , 2 , 16 ]
let g:airline#themes#railscasts#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#railscasts#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#450000' , 16     , 1      , ''     ] ,
      \ }

let s:IA = [ '#4e4e4e' , '#002b2b' , 59 , 23 , '' ]
let g:airline#themes#railscasts#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#railscasts#palette.inactive_modified = {
      \ 'airline_c': [ '#450000' , ''        , 52      , ''      , ''     ] ,
      \ }

let g:airline#themes#railscasts#palette.tabline = {
      \ 'airline_tab':  ['#2aa198', '#003f3f',  16, 4, ''],
      \ 'airline_tabsel':  ['#ffffff', '#2e8b57',  4, 16, ''],
      \ 'airline_tabtype':  ['#ffffff', '#005252',  4, 16, ''],
      \ 'airline_tabfill':  ['#ffffff', '#002b2b',  4, 16, ''],
      \ 'airline_tabmod':  ['#ffffff', '#780000',  1, 16, ''],
      \ }

let s:WI = [ '#ffffff', '#5f0000', 2, 16 ]
let g:airline#themes#railscasts#palette.normal.airline_warning = [
     \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
     \ ]

let g:airline#themes#railscasts#palette.normal_modified.airline_warning =
    \ g:airline#themes#railscasts#palette.normal.airline_warning

let g:airline#themes#railscasts#palette.insert.airline_warning =
    \ g:airline#themes#railscasts#palette.normal.airline_warning

let g:airline#themes#railscasts#palette.insert_modified.airline_warning =
    \ g:airline#themes#railscasts#palette.normal.airline_warning

let g:airline#themes#railscasts#palette.visual.airline_warning =
    \ g:airline#themes#railscasts#palette.normal.airline_warning

let g:airline#themes#railscasts#palette.visual_modified.airline_warning =
    \ g:airline#themes#railscasts#palette.normal.airline_warning

let g:airline#themes#railscasts#palette.replace.airline_warning =
    \ g:airline#themes#railscasts#palette.normal.airline_warning

let g:airline#themes#railscasts#palette.replace_modified.airline_warning =
    \ g:airline#themes#railscasts#palette.normal.airline_warning


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#railscasts#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ffffff' , '#002b2b' , 231 , 23 , ''     ] ,
      \ [ '#ffffff' , '#005252' , 231 , 36 , ''     ] ,
      \ [ '#ffffff' , '#973d45' , 231 , 95 , ''     ] )

