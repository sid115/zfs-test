{ pkgs, lib, ... }:

{
  networking.hostId = "f4a3bcf1"; # head -c 8 /etc/machine-id

  boot.supportedFilesystems = [ "zfs" ];
  boot.loader.systemd-boot.enable = lib.mkForce false;
  boot.loader.grub.enable = true;
  boot.loader.grub.zfsSupport = true;
  boot.zfs.extraPools = [ "dpool" ];

  services.openssh.settings.PermitRootLogin = "yes";
  users.users.root.openssh.authorizedKeys.keyFiles = [ ../../users/root/pubkeys/zfs-replication.pub ];

  environment.systemPackages = with pkgs; [ lz4 ];
}
