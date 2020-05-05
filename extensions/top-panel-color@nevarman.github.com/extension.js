const Main = imports.ui.main;
const Config = imports.misc.config;
const util = imports.misc.extensionUtils.getCurrentExtension().imports.util;


function enable()
{
    this.settings = util.getSettings();
    this.settings.connect('changed', this.onSettingsChanged.bind(this))
    Main.panel.style = "background-color:" + this.settings.get_string('color');
}
function disable()
{
    Main.panel.style = "background-color:rgba(0,0,0,1.0)";
}
function onSettingsChanged(){
    Main.panel.style = "background-color:" + this.settings.get_string('color'); 
}