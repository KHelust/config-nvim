" Vim-Which-Key

  call which_key#register('<Space>', "g:which_key_map")
  nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
  vnoremap <silent> <leader> :WhichKeyVisual '<Space>'<CR>
  " nnoremap <localleader>      :<c-u>WhichKey  ','<CR>
  " vnoremap <localleader>      :<c-u>WhichKeyVisual  ','<CR>

" Simple dictionary
  
  let g:which_key_map =  { '.' : 'Seguir-guía' }

" Prefix dictionary
  let g:which_key_map.a = { 'name' : '+Archivos' }
  let g:which_key_map.a.e = 'Editar archivo'
  let g:which_key_map.a.o = 'Cargar origen'
  let g:which_key_map.a.s = 'Guardar como'
  let g:which_key_map.a.t = 'Nueva pestaña'
  let g:which_key_map.a.w = 'Guardar'
  let g:which_key_map.a.d = { 'name' : '+Divsión' }
  let g:which_key_map.a.d.h = 'División horizontal'
  let g:which_key_map.a.d.v = 'División vertical'
  let g:which_key_map.a.n = { 'name' : '+Nuevo-Archivo' }
  let g:which_key_map.a.n.a = 'Nuevo archivo'
  let g:which_key_map.a.n.h = 'Nuevo archivo horizontal'
  let g:which_key_map.a.n.v = 'Nuevo archivo vertical'
  let g:which_key_map.b = { 'name' : '+Buffers' }
  let g:which_key_map.b.d = 'Borrar buffer'
  let g:which_key_map.b.n = 'Buffer siguiente'
  let g:which_key_map.b.p = 'Buffer previo'
  let g:which_key_map.c = { 'name' : '+Directorios/Líneas/Man' }
  let g:which_key_map.c.d = 'Cambiar directorio'
  let g:which_key_map.c.f = 'Cambiar al directorio dotfiles'
  let g:which_key_map.c.j = 'Mover línea abajo'
  let g:which_key_map.c.k = 'Mover línea arriba'
  let g:which_key_map.c.m = 'Man'
  let g:which_key_map.c.w = 'Cambiar al directorio actual'
  let g:which_key_map.f = { 'name' : '+FZF' }
  let g:which_key_map.f.b = 'Listar Buffers'
  let g:which_key_map.f.c = 'Listar Comandos'
  let g:which_key_map.f.f = 'Listar Archivos en la Carpeta'
  let g:which_key_map.f.h = 'Listar Historia'
  let g:which_key_map.f.m = 'Listar Archivos más reciente'
  let g:which_key_map.f.s = 'Listar Maps'
  let g:which_key_map.f.t = 'Listar Tipos de Archivo'
  let g:which_key_map.f.w = 'Listar Ventanas abiertas'
  let g:which_key_map.f.z = 'Fuzzy Finder'
  let g:which_key_map.g = { 'name' : '+Git' }
  let g:which_key_map.g.c = 'Git Checkout'
  let g:which_key_map.g.f = 'Git Files'
  let g:which_key_map.g.g = 'Git'
  let g:which_key_map.g.m = 'Git Commits'
  let g:which_key_map.g.p = 'Git push'
  let g:which_key_map.h = { 'name' : '+Help'}
  let g:which_key_map.h.c = 'Cerrar help'
  let g:which_key_map.h.e = 'Help'
  let g:which_key_map.h.g = 'Buscar patrón en Help'
  let g:which_key_map.h.t = 'Buscar etiquetas en Help'
  let g:which_key_map.i = { 'name' : '+Idiomas' }
  let g:which_key_map.i.e = 'Revisar ortografía en Español'
  let g:which_key_map.i.i = 'Revisar ortografía en Inglés'
  let g:which_key_map.l = { 'name' : '+LaTeX' }
  let g:which_key_map.l.c = 'VimtexCompile'
  let g:which_key_map.l.d = { 'name' : '+Documento' }
  let g:which_key_map.l.d.c = 'Preámbulo Documento'
  let g:which_key_map.l.u = { 'name' : '+Usar' }
  let g:which_key_map.l.u.p = 'paquete'
  let g:which_key_map.l.v = 'VimtexClean'
  let g:which_key_map.l.w = { 'name' : '+Contar' }
  let g:which_key_map.l.w.c = 'Contar palabras'
  let g:which_key_map.m = { 'name' : '+Markdown' }
  let g:which_key_map.m.p = { 'name' : '+Compilar' }
  let g:which_key_map.m.p.d = 'Compilar pdf con Pandoc'
  let g:which_key_map.m.p.f = 'Compilar pdf con Pandoc y abrir archivo'
  let g:which_key_map.m.p.h = 'Compilar pdf con Pandoc-Header'
  let g:which_key_map.m.p.i = 'Compilar pdf con Pandoc-Header y abrir archivo'
  let g:which_key_map.m.p.p = 'Compilar pdf con Plantilla'
  let g:which_key_map.m.p.t = 'Compilar pdf con Plantilla y abrir archivo'
  let g:which_key_map.m.p.w = 'Compilar html con Pandoc'
  let g:which_key_map.m.y = { 'name' : '+YAML' }
  let g:which_key_map.m.y.l = 'Insertar YAML'
  let g:which_key_map.n = { 'name' : '+Narrow-Region' }
  let g:which_key_map.n.r = 'Crear región aislada'
  let g:which_key_map.o = { 'name' : '+CoC' }
  let g:which_key_map.o.a = 'Plug CoC CodeAction Selected'
  let g:which_key_map.o.c = 'Plug CoC CodeAction'
  let g:which_key_map.o.d = 'CocList diagnostics'
  let g:which_key_map.o.e = 'CocList extensions'
  let g:which_key_map.o.f = 'Plug CoC Fix Current'
  let g:which_key_map.o.i = 'CocList Resume'
  let g:which_key_map.o.j = 'CocNext'
  let g:which_key_map.o.k = 'CocPrev'
  let g:which_key_map.o.l = 'CocList commands'
  let g:which_key_map.o.o = 'CocList outline'
  let g:which_key_map.o.r = 'Plug CoC Rename'
  let g:which_key_map.o.s = 'CocList symbols'
  let g:which_key_map.p = { 'name' : '+Compilar' }
  let g:which_key_map.p.a = 'Compilar y abrir archivo'
  let g:which_key_map.p.c = 'Compilar'
  let g:which_key_map.p.u = 'Abrir archivo compilado'
  let g:which_key_map.q = { 'name' : '+Quit' }
  let g:which_key_map.q.q = 'Cerrar'
  let g:which_key_map.q.x = 'Cerrar guardando'
  let g:which_key_map.q.z = 'Cerrar sin guardar'
  let g:which_key_map.r = { 'name' : '+RMarkdown' }
  let g:which_key_map.r.p = { 'name' : '+Compilar' }
  let g:which_key_map.r.p.d = 'Compilar pdf con RMarkdown'
  let g:which_key_map.r.p.f = 'Compilar pdf con RMarkdown y abrir archivo'
  let g:which_key_map.r.p.h = 'Compilar html con RMarkdown'
  let g:which_key_map.r.p.w = 'Compilar word con RMarkdown'
  let g:which_key_map.r.y = { 'name' : '+YAML' }
  let g:which_key_map.r.y.l = 'Insertar YAML'
  let g:which_key_map.s = { 'name' : '+Substituir/Buscar' }
  let g:which_key_map.s.a = 'Buscar adelante'
  let g:which_key_map.s.d = 'Buscar detrás'
  let g:which_key_map.s.s = 'Substituir'
  let g:which_key_map.t = { 'name' : '+Toggle-Commands' }
  let g:which_key_map.t.m = 'Toggle Tablemod'
  let g:which_key_map.t.t = 'Toggle Checkbox'
  let g:which_key_map.y = 'Goyo'
  " let g:which_key_map.z = { 'name' : '+Zettel' }
