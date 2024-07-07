--7. Find all clients with projects having a deadline after October 31st, 2024.
SELECT DISTINCT
    client_id
FROM projects
WHERE
    deadline > '2024-10-31';
-- or
SELECT client_name
FROM clients
WHERE
    client_id IN (
        SELECT client_id
        FROM projects
        WHERE
            deadline > '2024-10-31'
    );