{
    "GlanceImages.create_and_delete_image": [
        {
            "args": {
                "image_location": "http://download.cirros-cloud.net/0.3.1/cirros-0.3.1-x86_64-disk.img",
                "container_format": "bare",
                "disk_format": "qcow2"
            },
            "runner": {
                "type": "constant",
                "times": 10,
                "concurrency": 10
            },
            "context": {
                "users": {
                    "resource_management_workers": 1,
                    "tenants": 1,
                    "users_per_tenant": 1,
                    "tenant_id": RALLYTENANT,
                    "tenant_name": RALLYTENANT,
                    "user_id": RALLYUSER,
                    "username": RALLYUSER,
                    "password": RALLYPASSWORD,
                }
            }
        }
    ]
}

