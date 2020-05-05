const Gtk = imports.gi.Gtk;
const Gdk = imports.gi.Gdk;
const util = imports.misc.extensionUtils.getCurrentExtension().imports.util;
 
function init(){
    
}

function buildPrefsWidget() {
    this.settings = util.getSettings();
    
    let frame = new Gtk.Box({
        orientation: Gtk.Orientation.VERTICAL,
        border_width: 10
    });

    let hbox = new Gtk.Box({
        orientation: Gtk.Orientation.HORIZONTAL
    });

    let vbox = new Gtk.Box({
        orientation: Gtk.Orientation.VERTICAL,
        margin: 20,
        margin_top: 10
    });
    
    this.button = new Gtk.ColorButton();
    this.color = new Gdk.RGBA();
    this.color.red = 0.0;
    this.color.green = 0.0;
    this.color.blue = 0.0;
    this.color.alpha = 1.0;
    this.button.set_use_alpha(true);
    this.button.set_rgba(this.color);
    this.button.connect("color-set", this.onColorChosen.bind(this));
    this.label = new Gtk.Label();
    this.label.set_text("Click to choose a color");

    hbox.add(this.button);
    hbox.pack_start(this.label, true, true, 0);
    
    vbox.add(hbox);

    frame.add(vbox);
    frame.show_all();
    return frame;
}
function onColorChosen() {
    let colorName = this.button.get_rgba().to_string();// this.color.to_string();
    this.label.set_text("Selected color: " + colorName);
    this.settings.set_string('color',colorName);
}


