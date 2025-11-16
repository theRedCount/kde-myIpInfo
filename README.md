# KDE Plasma IP Widget

This KDE Plasma widget is designed for anyone who needs to quickly and dynamically fetch and display the organization name associated with their current IP address. It stands out as an invaluable tool, especially for users who frequently change their network settings or use VPN services to ensure privacy and security online. By providing real-time insights into the organization or service provider your IP address is associated with, this widget makes it incredibly easy to verify your network connection and ensure you are connected through the desired VPN, making it an essential addition to your desktop.

## Features

- **IP Information Display:** Instantly shows the organization name related to your current IP address, offering a quick way to verify the network you're routed through.
- **VPN Connection Insight:** Particularly useful for VPN users, this widget allows you to ensure at a glance that your connection is secure and routed through the expected service provider.
- **Automatic Refresh:** The widget updates the displayed information every 30 seconds, ensuring you have the most current data without any manual refresh.

## Installation

To bring this convenience to your KDE Plasma environment, you can install the IP Widget following these steps:

1. **Clone the repository** to your local machine:
    ```bash
    git clone https://github.com/theRedCount/kde-myIpInfo
    ```

2. **Navigate to the cloned directory**:
    ```bash
    cd kde-myIpInfo
    ```

3. **Install the widget** using `kpackagetool5`:
    ```bash
    kpackagetool5 -t Plasma/Applet --install .
    ```

    This command installs the widget into your Plasma environment. If you need to update the widget later, you can run the same command to reinstall it.

## Adding the Widget to Your Desktop or Panel

After installing the widget, you can add it to your desktop or panel by following these steps:

1. Right-click on your desktop or panel and select **"Add Widgets..."**
2. Use the widget browser to search for **"IP Widget"**. You might find it under the name **"myIpInfo"** as well, depending on how Plasma indexes the widget.
3. Drag the widget to your desired location on the desktop or panel.

## Contributing

Contributions to the KDE Plasma IP Widget are welcome! If you have a suggestion for improvement or a new feature, feel free to fork the repo, make your changes, and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to KDE Community for the Plasma platform.
- Uses IP information from [ipinfo.io](https://ipinfo.io).
