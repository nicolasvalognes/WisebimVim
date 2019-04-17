function! s:wisebim_file_header()
    if (&ft=='c' || &ft=='cpp' || &ft=='javascript' || &ft=='typescript')
        execute "normal! ggO/**"
        execute "normal! o*The file " . expand("%:t")
        execute "normal! a is part of Bimize software, property of WiseBIM."
        execute "normal! o*The content could not be copied, modified or used in any condition without permission of WiseBIM."
        execute "normal! o*"
        execute "normal! o*Le fichier " . expand("%:t")
        execute "normal! a, composant du logiciel Bimize est la propriété exclusive de WiseBIM."
        execute "normal! o*Tout contenu, même partiellement, ne peut être copié, édité ou utilisé sans la permission de WiseBIM."
        execute "normal! o*"
        execute "normal! o*Copyright WiseBIM 2019   www.wisebim.fr"
        execute "normal! o*"
        execute "normal! o*"
        execute "normal! o**/"
        execute "normal! o"
        execute "normal! Vgg="
    elseif (&ft=='python')
        execute "normal! ggO#"
        execute "normal! o#The file " . expand("%:t")
        execute "normal! a is part of Bimize software, property of WiseBIM."
        execute "normal! o#The content could not be copied, modified or used in any condition without permission of WiseBIM."
        execute "normal! o#"
        execute "normal! o#Le fichier " . expand("%:t")
        execute "normal! a, composant du logiciel Bimize est la propriété exclusive de WiseBIM."
        execute "normal! o#Tout contenu, même partiellement, ne peut être copié, édité ou utilisé sans la permission de WiseBIM."
        execute "normal! o#"
        execute "normal! o#Copyright WiseBIM 2019   www.wisebim.fr"
        execute "normal! o#"
        execute "normal! o#"
        execute "normal! o#"
        execute "normal! o"
        execute "normal! Vgg="
    endif
endfunction

command! -nargs=0 WisebimHeader :call <SID>wisebim_file_header()
