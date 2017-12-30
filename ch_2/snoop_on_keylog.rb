def snoop_on_keylog(input) 
    input.each_char do |b| 
        case b
            when ?\C-c; puts 'Control-C: stopped a process?'
            when ?\C-z; puts 'Control-Z: suspended a process?'
            when ?\n; puts 'Newline'
            when ?\M-x; puts 'Meta-x: using Emacs? You pleb.'
        end
    end
end

snoop_on_keylog("ls -ltR\003emacsHello\012\370rot13-other-window\012\032")