ALTER TABLE presentity CHANGE COLUMN body body TEXT NOT NULL;
ALTER TABLE rls_presentity CHANGE COLUMN presence_state presence_state TEXT NOT NULL;
ALTER TABLE silo CHANGE COLUMN body body TEXT NOT NULL;
ALTER TABLE xcap CHANGE COLUMN doc doc MEDIUMTEXT NOT NULL;
