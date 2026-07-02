-- Create organization table
CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

-- Insert organizations
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES 
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');

-- Create project table
CREATE TABLE project (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(150) NOT NULL,
    project_description TEXT NOT NULL
);

-- Insert projects
INSERT INTO project (project_name, project_description)
VALUES 
('Park Cleanup', 'Join us to clean up local parks and make them beautiful!'),
('Food Drive', 'Help collect and distribute food to those in need.'),
('Community Tutoring', 'Volunteer to tutor students in various subjects.');

-- Create category table
CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(150) NOT NULL
);

-- Insert categories
INSERT INTO category (category_name)
VALUES 
('Environmental'),
('Community Service'),
('Education');

-- Create project_category junction table
CREATE TABLE project_category (
    project_id INTEGER,
    category_id INTEGER,
    PRIMARY KEY (project_id, category_id),
    FOREIGN KEY (project_id) REFERENCES project (project_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id)
);

-- Associate projects with categories
INSERT INTO project_category (project_id, category_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(1, 2);