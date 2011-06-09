= Extended Base Directory Standard

The extended base directory standard provides

    require 'xdg/base_dir/extended'

== Resource

    XDG['RESOURCE_HOME'].env.assert == ENV['XDG_RESOURCE_HOME'].to_s
    XDG['RESOURCE_HOME'].environment_variables.assert == ['XDG_RESOURCE_HOME']

Looking at the data home location by default it should be pointing to
our joe user's home directory under `.local`.

    XDG['RESOURCE_HOME'].to_a.assert == [$froot + 'home/joe/.local']


== Work

The working configuration directory

    XDG['CONFIG_WORK'].env.assert == ENV['XDG_CONFIG_WORK'].to_s
    XDG['CONFIG_WORK'].environment_variables.assert == ['XDG_CONFIG_WORK']

Looking at the config work location, by default it should be pointing to
the current working directory's `.config` or `config` directory.

    XDG['CONFIG_WORK'].to_a.assert == ['.config', 'config']

The working cache directory

    XDG['CACHE_WORK'].env.assert == ENV['XDG_CACHE_WORK'].to_s
    XDG['CACHE_WORK'].environment_variables.assert == ['XDG_CACHE_WORK']

Looking at the cache work location, by default it should be pointing to
the current working directory's `.tmp` or `tmp` directory.

    XDG['CONFIG_WORK'].to_a.assert == ['.tmp', 'tmp']

