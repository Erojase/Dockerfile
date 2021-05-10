#!/bin/bash

#Inicia la base de datos
echo "odoo" | sudo -S su postgres -c "pg_ctlcluster 11 main start"

#inicio odoo
#/home/odoo/odoo/odoo-bin -c /home/odoo/odoo.conf

/bin/bash
