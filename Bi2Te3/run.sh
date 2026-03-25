#!/bin/sh

dpgen autotest make relaxation.json
dpgen autotest run relaxation.json machine.json
dpgen autotest post relaxation.json 

dpgen autotest make property.json
dpgen autotest run property.json machine.json 
dpgen autotest post property.json 
