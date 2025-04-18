{
  inputs,
  pkgs,
  host,
  ...
}: {
  home.packages = (
    with pkgs; [
      inputs.zen-browser.packages."${system}".default
      # pkgs.librewolf
    ]
  );

  programs.neomutt = {
    enable = true;
    vimKeys = false;
  };

  accounts.email = {
    maildirBasePath = "Mail";

    accounts = {
      # "xing_wenju@mfa.gov.cn" = {
      #   primary = true;
      #   address = "xing_wenju@mfa.gov.cn";
      #   userName = "xing_wenju@mfa.gov.cn";
      #   realName = "Xing Wenju";
      #   passwordCommand = "cat /home/linuxing3/mfa_mail_pass.txt";
      #   # imap.port = 993;
      #   imap.host = "mail.mfa.gov.cn";
      #   imap.tls.useStartTls = false;
      #   smtp.host = "mail.mfa.gov.cn";
      #   smtp.tls.useStartTls = false;
      #   notmuch.enable = true;
      #   neomutt = {
      #     enable = true;
      #     extraConfig = ''
      #       color status cyan default
      #     '';
      #   };
      # };
      "linuxing3@qq.com" = {
        primary = true;
        address = "linuxing3@qq.com";
        userName = "linuxing3";
        realName = "Xing Wenju";
        passwordCommand = "cat /home/linuxing3/qq_mail_pass.txt";
        # imap.port = 993;
        imap.host = "imap.qq.com";
        imap.tls.useStartTls = true;
        smtp.host = "smtp.qq.com";
        smtp.tls.useStartTls = true;
        notmuch.enable = true;
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
