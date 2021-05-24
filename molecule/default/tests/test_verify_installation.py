# -*- coding: utf-8 -*-
import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_repo_added(host):
    f = host.file('/etc/apt/sources.list.d/spotify.list')

    assert f.exists
    assert f.contains('repository.spotify.com')


def test_package_installed(host):
    host.package('spotify-client').is_installed
    host.run('spotify --version').succeeded
