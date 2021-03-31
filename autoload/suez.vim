function! suez#status()
    let buf_lines = line("$")
    let cursor_line = line(".")
    let p = float2nr(floor(cursor_line) / buf_lines * 100)
    let r = float2nr(20-(p/5))
    let status = repeat('  ', r) .. nr2char(128674) .. repeat(nr2char(127754), 20-r)
    return status
endfunction
