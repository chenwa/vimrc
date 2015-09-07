"" Expand tabs in C files to spaces
"au BufRead,BufNewFile *.{c,h,java,cpp} set expandtab
"au BufRead,BufNewFile *.{c,h,java,cpp} set shiftwidth=2
"au BufRead,BufNewFile *.{c,h,java,cpp} set tabstop=2
"
"" Do not expand tabs in assembly file.  Make them 8 chars wide.
"au BufRead,BufNewFile *.s set noexpandtab
"au BufRead,BufNewFile *.s set shiftwidth=8

au FileType java ab psvm public static void main(String[] args){<LF>
au FileType java ab sop System.out.println("");<esc>2hi
au FileType java ab for; for (int i = 0; i < ; i++) {<esc>7hi
au FileType java ab pc public class
au FileType java ab pub public
au FileType java ab st static
au FileType java ab fin final
