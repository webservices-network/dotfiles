#!/bin/bash
set --export HYBRIS_HOME ~/clarks/b2c/Hybris/hybris/hybris
set --export PLATFORM_HOME ~/clarks/b2c/Hybris/hybris/hybris/bin/platform
set --export PANGAEA_HOME ~/clarks/b2c/pangaea2
set --export HYBRIS_LOG_DIR ~/clarks/b2c/pangaea2/hybris/hybris/log
set --export HYBRIS_FE ~/clarks/b2c/pangaea2/FED
set --export CODE_HOME ~/clarks/b2c/pangaea2
set --export SOLR_HOME ~/clarks/b2c/pangaea2/Commerce/solr/pangaea2-solr/bin

function cbh
    cd $CODE_HOME
end

function hbh
  	cd $HYBRIS_HOME/bin/platform
end

function bhybris
    cd $PLATFORM_HOME
    set -gx ANT_OPTS "-Xmx512m -Dfile.encoding=UTF-8"
    set -gx ANT_HOME $PLATFORM_HOME/apache-ant-1.9.1
    chmod +x "$ANT_HOME/bin/ant"
    chmod +x "$PLATFORM_HOME/license.sh"
    set -gx PATH $PATH $ANT_HOME/bin

    ant clean all
end

function shybris
  	hbh
  	./hybrisserver.sh debug
end

function bshybris
    bhybris
    shybris
end

function pangaeaInitialise
	cd $PLATFORM_HOME
    set -gx ANT_OPTS "-Xmx512m -Dfile.encoding=UTF-8"
    set -gx ANT_HOME $PLATFORM_HOME/apache-ant-1.9.1
    chmod +x "$ANT_HOME/bin/ant"
    chmod +x "$PLATFORM_HOME/license.sh"
    set -gx PATH $PATH $ANT_HOME/bin
    
    ant initialize -DconfigFile=../custom/pangaea2/pangaea2release/resources/init_config.json
end

function ss
	cd $SOLR_HOME
	./solr start
	cd -
end
