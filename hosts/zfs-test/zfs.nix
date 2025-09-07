{
  services.openssh.settings.PermitRootLogin = "prohibit-password";
  users.users.root.openssh.authorizedKeys.keyFiles = [ ../../users/root/pubkeys/zfs-replication.pub ];
}
