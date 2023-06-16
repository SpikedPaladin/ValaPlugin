plugin_deps = [
    dependency('gee-0.8'),
    dependency('gio-2.0'),
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk4'),
    dependency('gtksourceview-5'),
    dependency('json-glib-1.0'),
    dependency('libadwaita-1'),
    dependency('libpeas-1.0'),
    dependency('libsoup-3.0'),
    dependency('template-glib-1.0'),
    dependency('libpanel-1'),
    dependency('vte-2.91-gtk4'),
    vala_compiler.find_library('libide', dirs: vapi_dir)
]

plugin_sources = files(
    'example-vala.vala'
)

shared_module(
    plugin_name,
    
    plugin_sources,
    c_args: [ '-DG_LOG_DOMAIN="' + plugin_name + '"' ],
    include_directories: plugin_inc,
    dependencies: plugin_deps,
    install: true,
    install_dir: get_option('datadir') / 'gnome-builder' / 'plugins',
)