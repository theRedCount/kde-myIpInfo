import QtQuick 2.0
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.components 3.0 as PlasmaComponents

Item {
    width: 300
    height: 30
    Plasmoid.preferredRepresentation: Plasmoid.fullRepresentation
    Plasmoid.icon: "../icon.png"

    Timer {
        id: updateTimer
        interval: 30000
        repeat: true
        running: true
        onTriggered: fetchIPAddress()
    }


    function fetchIPAddress() {
        infoLabel.text = "Fetching..."
        const xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    const data = JSON.parse(xhr.responseText);
                    let org = "Not Found"
                    if(data.org) {
                        org = data.org.split(" ").slice(1).join(" ")
                    }
                    infoLabel.text = org;
                } else {
                    infoLabel.text = "Not connected...";
                }
            }
        };
        xhr.open("GET", "https://ipinfo.io/json", true);
        xhr.send();
    }


    PlasmaComponents.Label {
        id: infoLabel
        text: fetchIPAddress()
        anchors.centerIn: parent
        font.pointSize: 8
    }


    Plasmoid.compactRepresentation: Item{
		Image {
			id: myIcon
			source: "../icon.png"
			anchors.fill: parent
		}
	}
}