public class ExampleAppAddin : Ide.Object, Ide.ApplicationAddin {
    
	public void load (Ide.Application application) {
	    print("Plugin loaded!\n");
	}
	
	public void unload (Ide.Application application) {
	    print("Plugin unloaded!\n");
	}
	
    public void activate (Ide.Application application) {}
	public void add_option_entries (Ide.Application application) {}
	public void handle_command_line (Ide.Application application, GLib.ApplicationCommandLine cmdline) {}
	public void open (Ide.Application application, GLib.File[] files, string hint) {}
	public void workbench_added (Ide.Workbench workbench) {}
	public void workbench_removed (Ide.Workbench workbench) {}
}

public void peas_register_types(TypeModule module) {
	var obj = (Peas.ObjectModule) module;
	obj.register_extension_type (typeof (Ide.ApplicationAddin), typeof (ExampleAppAddin));
}
