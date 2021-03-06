-record(options, {
    max_errors = 100 :: non_neg_integer(),
    max_redirects = 15 :: non_neg_integer(),
    delay_factor = 5 :: non_neg_integer(),
    default_request_ttl = 0 :: non_neg_integer(),
    dead_status_codes = [] :: list(),
    
    alert_queued_requests_max_count = 1000 :: non_neg_integer(),
    alert_dead_request = true ::boolean(),
    alert_email_receiver = none ::string() | none,
    alert_email_relay ::string(),
    alert_email_username ::string(),
    alert_email_password :: string(),
    alert_email_ssl = false ::boolean(),
    
    endpoint = "http://localhost:8081" :: string(),
    listen_on_port = 80 :: non_neg_integer(),
    backend_max_req = 3 :: non_neg_integer(),
    route_strategy = all_paths_relative_to_enpoint :: all_to_endpoint | all_paths_relative_to_enpoint
}).
