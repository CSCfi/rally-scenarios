{
    "NeutronNetworks.create_and_delete_subnets": [
        {
            "args": {
                "network_create_args": {},
                "subnet_create_args": {},
                "subnet_cidr_start": "192.168.1.0/24",
                "subnets_per_network": 2
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

