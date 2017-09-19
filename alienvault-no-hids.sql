GRANT SELECT ON alienvault.host to hidschecker@'127.0.0.1' IDENTIFIED BY '<replace with password>';
GRANT SELECT ON alienvault.hids_agents to hidschecker@'127.0.0.1' IDENTIFIED BY '<replace with password>';
FLUSH PRIVILEGES;

DELETE FROM plugin WHERE id = "717355";
DELETE FROM plugin_sid where plugin_id = "717355";
INSERT INTO plugin (id, type, name, description, product_type, vendor) VALUES (717355, 1, 'alienvault-no-hids', 'AlienVault NoHIDS Tracker', 4, 'AlienVault NoHIDS Tracker');
INSERT INTO `plugin_sid` (`plugin_id`,`sid`,`category_id`,`subcategory_id`,`reliability`,`priority`,`name`) VALUES (717355, 99, 15, 131, 2, 2, 'No HIDS Detected for Asset');
