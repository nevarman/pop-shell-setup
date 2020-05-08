const Main = imports.ui.main;
const Lang = imports.lang;
const Mainloop = imports.mainloop;

let activitiesButton;

function enable() {
    // added a bit delay, I guess pop loading takes time and there is no execution order for extensions
    Mainloop.timeout_add_seconds(2, Lang.bind(this, this.hide));
}
async function hide(){
 activitiesButton = await Main.panel.statusArea['pop-shell'];
    if(activitiesButton != null)
        activitiesButton.container.hide();

}
function disable() {
    if(activitiesButton != null)
        activitiesButton.container.show();
}

function init(metadata) {
}
