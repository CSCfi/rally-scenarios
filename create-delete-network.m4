{
    "NeutronNetworks.create_and_delete_networks": [
        {
            "args": {
                "network_create_args": { }
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

