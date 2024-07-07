--14.Create a view to show project names and client contact information for projects with a deadline in November 2024.
CREATE OR REPLACE VIEW Project_Client_November AS
SELECT projects.project_name, projects.deadline, clients.contact_name, clients.client_name
FROM projects
    JOIN clients ON projects.client_id = clients.client_id
WHERE
    deadline BETWEEN '2024-11-01' AND '2024-11-30';