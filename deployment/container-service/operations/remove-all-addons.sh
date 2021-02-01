#!/bin/bash

director_name='in-paasta-bosh'

bosh -e ${director_name} update-runtime-config ./remove-all-addons.yml
