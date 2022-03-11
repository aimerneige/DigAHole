namespace DigAHole {

    public class MainWindow : Gtk.ApplicationWindow {

        public GLib.Settings settings;

        public MainWindow (App app) {
            Object (
                application: app
            );
        }

        construct {
            title = "Dig A Hole";

            // windows status revovery
            settings = new GLib.Settings ("com.github.aimerneige.digahole");
            int window_width = settings.get_int ("window-width");
            int window_height = settings.get_int ("window-height");
            bool is_maximized = settings.get_boolean ("is-maximized");
            set_default_size (window_width, window_height);
            if (is_maximized) {
                maximize ();
            }
            close_request.connect (e => {
                return before_destory ();
            });

            // main widget
            var hello_world_label = new Gtk.Label ("Hello World!");
            set_child (hello_world_label);

            show ();
        }

        // save windows status before quit
        public bool before_destory () {
            int width = get_width ();
            int height = get_height ();
            bool maximize = is_maximized ();

            settings.set_int ("window-width", width);
            settings.set_int ("window-height", height);
            settings.set_boolean ("is-maximized", maximize);

            return false;
        }
    }
}
