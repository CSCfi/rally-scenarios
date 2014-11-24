{
    "CinderVolumes.create_and_attach_volume": [
        {
            "args": {
                "volume_size": 1,
                "image": {
                    "name": "cirros-0.3.0-x86_64"
                },
                "flavor": {
                    "name": "m1.tiny"
                }
            },
            "runner": {
                "type": "constant",
                "times": 1,
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
    ]
}

