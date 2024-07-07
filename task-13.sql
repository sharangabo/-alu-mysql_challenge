--13. Create a view to display project information along with assigned team leads.
CREATE VIEW ProjectInformation AS
SELECT employees.employee_name, projects.project_name, projects.deadline
FROM
    team_members
    JOIN employees ON team_members.employee_id = employees.employee_id
    AND team_members.is_lead = 1
    JOIN projects ON team_members.project_id = projects.project_id;