#!/usr/bin/env bats

@test "vcap user created" {
  [ -d /home/vcap ]
  [ -f /home/vcap/.profile ]
  [ -f /home/vcap/.bashrc ]
  # [ -f /home/vcap/.bash_profile ]
}

@test "all sudoers access" {
  run sudo grep "%admin ALL=(ALL) NOPASSWD:ALL" /etc/sudoers
  [ "$status" -eq 0 ]
  [ -f /etc/sudoers.d/vcap ]
  run sudo grep "%vcap  ALL=(vcap) ALL" /etc/sudoers.d/vcap
  [ "$status" -eq 0 ]
}