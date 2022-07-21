c.JupyterHub.services = [
    {
        # the /services/<name> path for accessing the notebook viewer
        "name": "nbviewer",
        # the interface and port nbviewer will use
        "url": "https://dev.cioosatlantic.ca/nbviewer",
        # command to start the nbviewer
        "command": ["python", "-m", "nbviewer", "--config-file==nbviewer_config.py"],
    }
]
