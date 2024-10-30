DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS project_category;
CREATE TABLE project_category (
	project_id INT NOT NULL,
	category_id INT NOT NULL,
	FOREIGN KEY (project_id) ON DELETE CASCADE,
	FOREIGN KEY (category_id) ON DELETE CASCADE,
	UNIQUE KEY (project_id, category_id),
);
CREATE TABLE category (
	category_id INT NOT NULL AUTO_INCREMENT,
	category_name VARCHAR(128) NOT NULL,
	PRIMARY KEY (category_id),
);
CREATE TABLE step (
	step_id INT NOT NULL AUTO_INCREMENT,
	project_id INT NOT NULL,
	step_text TEXT NOT NULL,
	step_order INT NOT NULL,
	FOREIGN KEY (project_id) ON DELETE CASCADE,
	PRIMARY KEY (step_id)
);
CREATE TABLE material (
	material_id INT NOT NULL AUTO_INCREMENT,
	project_id INT NOT NULL,
	material_name VARCHAR(128) NOT NULL,
	num_required INT IS NULL,
	cost DECIMAL(7,2) IS NULL,
	FOREIGN KEY (project_id) ON DELETE CASCADE,
	PRIMARY KEY (material_id)
);
CREATE TABLE project (
	project_id INT NOT NULL AUTO_INCREMENT,
	project_name VARCHAR(128) NOT NULL,
	estimated_hours DECIMAL(7,2) IS NULL,
	actual_hours DECIMAL(7,2) IS NULL,
	difficulty INT IS NULL,
	notes TEXT IS NULL,
	PRIMARY KEY (project_id),
);









