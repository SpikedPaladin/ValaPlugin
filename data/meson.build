configure_file(
    input: 'plugin.in',
    output: plugin_name + '.plugin',
    
    configuration: {
        'MODULE' : plugin_name,
        'BUILDER_ABI' : get_option('builder_abi')
    },
    install: true,
    install_dir: get_option('datadir') / 'gnome-builder' / 'plugins',
)