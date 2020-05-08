const Main = imports.ui.main;

let activitiesButton;

function enable() {
    activitiesButton = Main.panel.statusArea['pop-shell'];
    activitiesButton.container.hide();
}

function disable() {
    activitiesButton.container.show();
}

function init(metadata) {

}
