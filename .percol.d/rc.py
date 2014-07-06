#
# Keymap
#
percol.import_keymap({
    'C-d' : lambda percol: percol.command.delete_forward_char(),
    'C-k' : lambda percol: percol.command.kill_end_of_line(),
    'C-a' : lambda percol: percol.command.beginning_of_line(),
    'C-e' : lambda percol: percol.command.end_of_line(),
    'C-b' : lambda percol: percol.command.backward_char(),
    'C-f' : lambda percol: percol.command.forward_char(),
    'C-n' : lambda percol: percol.command.select_next(),
    'C-p' : lambda percol: percol.command.select_previous(),
})

#
# Prompt
#
percol.view.PROMPT = ur'> %q'
percol.view.RPROMPT = ur'[%i/%I]'

#
# Style
#
percol.view.CANDIDATES_LINE_SELECTED = ('yellow', 'reverse')
percol.view.CANDIDATES_LINE_MARKED = ('cyan', 'reverse')
percol.view.CANDIDATES_LINE_QUERY = ('red',)
