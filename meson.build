project('example-vala', ['c', 'vala'],
    
    version: '0.1.0',
    meson_version: '>= 0.60.0',
)

plugin_name = meson.project_name()
vala_compiler = meson.get_compiler('vala')
vapi_dir = meson.current_source_dir() / 'vapi'

# Load custom vapi files
add_project_arguments(
    [ '--vapidir', vapi_dir ],
    language: 'vala'
)

# Load libide headers
plugin_inc = include_directories(
    'include/libide',
    'include/libide/code',
    'include/libide/core',
    'include/libide/debugger',
    'include/libide/editor',
    'include/libide/foundry',
    'include/libide/greeter',
    'include/libide/gtk',
    'include/libide/gui',
    'include/libide/io',
    'include/libide/lsp',
    'include/libide/plugins',
    'include/libide/projects',
    'include/libide/search',
    'include/libide/sourceview',
    'include/libide/terminal',
    'include/libide/threading',
    'include/libide/tree',
    'include/libide/tweaks',
    'include/libide/vcs',
    'include/libide/webkit',
    'include/webkitgtk-6.0',
)

subdir('data')
subdir('src')