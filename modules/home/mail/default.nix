{
  inputs,
  config,
  pkgs,
  host,
  username,
  ...
}: let
in {
  imports = [./getmail.nix];
  programs.neomutt = {
    enable = true;
    vimKeys = false;
  };

  services.getmail = {enable = true;};

  programs.mbsync.enable = true;
  services.mbsync.enable = true;

  accounts.email = {
    maildirBasePath = "Mail";

    accounts = {
      qq = {
        primary = true;
        address = "linuxing3@qq.com";
        userName = "linuxing3";
        realName = "Xing Wenju";
        passwordCommand = "cat /home/linuxing3/qq_mail_pass.txt";
        imap.port = 993;
        imap.host = "imap.qq.com";
        imap.tls.useStartTls = true;
        smtp.host = "smtp.qq.com";
        smtp.tls.useStartTls = true;
        notmuch.enable = true;
        msmtp.enable = true;
        mbsync = {
          enable = true;
          create = "maildir";
          extraConfig = {
            account = {
              TLSType = "IMAPS";
              PipelineDepth = 10;
              Timeout = 60;
            };
          };
        };
        neomutt = {
          enable = true;
          extraConfig = ''
            color status cyan default
          '';
        };
      };
    };
  };
}
