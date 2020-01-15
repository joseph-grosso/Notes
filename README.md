# Notes

This git repo serves as a backup for my notes taken in my math classes. 

This project was inspired by this series of articles - if you are interested in vim, LaTeX or just being a faster developer I highly recommend reading them. 

https://castel.dev/post/lecture-notes-1/

# Usage 

To compile these notes, I use the command line tool `pdflatex` to compile the file master.tex:

    pdflatex master.tex

I haven't tried compiling in a full development environment but I'm sure there is some equivalent thing you can do in a LaTeX editor like TexLive or TexMaker.

The body of each master.tex file looks like this: 

    \begin{document}
        \maketitle
        \tableofcontents
        % start lectures
        \input{lec_01.tex}
        % end lectures
    \end{document}

To make the master.tex files compile the lectures that you want to see in the output add in the names of those lectures using the `\input` command. For example, if I wanted to see the first 5 lectures in pdf form I would write:

    \begin{document}
        \maketitle
        \tableofcontents
        % start lectures
        \input{lec_01.tex}
        \input{lec_02.tex}
        \input{lec_03.tex}
        \input{lec_04.tex}
        \input{lec_05.tex}
        % end lectures
    \end{document}
