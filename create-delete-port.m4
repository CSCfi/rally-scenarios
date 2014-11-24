{
    "NeutronNetworks.create_and_delete_ports": [
        {
            "args": {
                "network_create_args": {},
                "port_create_args": {},
                "ports_per_network": 10
            },
            "runner": {
                "type": "constant",
                "times": 2,
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
