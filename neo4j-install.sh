#/bin/bash

mkdir -p $HOME/neo4j/plugins

wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/5.22.0/apoc-5.22.0-extended.jar

sudo docker run -d \
    -p 7474:7474 -p 7687:7687 \
    -v $PWD/data:/data -v $PWD/plugins:/plugins \
    --name neo4j-apoc \
    -e NEO4J_apoc_export_file_enabled=true \
    -e NEO4J_apoc_import_file_enabled=true \
    -e NEO4J_apoc_import_file_use__neo4j__config=true \
    -e NEO4J_dbms_security_procedures_unrestricted=apoc.* \
    -e NEO4J_dbms_security_procedures_allowlist=apoc.* \
    -e NEO4J_apoc_meta_data_enabled=true \
    -e NEO4J_AUTH=neo4j/password \
    -e NEO4JLABS_PLUGINS=\[\"apoc\"\] \
    neo4j:5.22