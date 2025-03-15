#!/usr/bin/with-contenv bash

# Copy the theme template at first startup.
if [ -d /assets/template/themes/my-theme ] && [ ! -e /config/www/themes/my-theme ]; then
    echo Copy theme template
    mkdir -p /config/www/themes
    cp -RT /assets/template/themes/my-theme    /config/www/themes/my-theme
fi

# Copy the lang resource at every startup.
if [ -d /app/www/lang ]; then
    echo Copy lang resources
    cp -RT /assets/lang    /app/www/lang
fi
