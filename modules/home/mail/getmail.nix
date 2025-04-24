{
  config,
  lib,
  inputs,
  username,
  ...
}: let
  accountConfig = ''
    [retriever]
    type = SimplePOP3SSLRetriever
    server = mail.mfa.gov.cn
    port = 993
    ssl_version = tlsv1_2
    ssl_ciphers = AES128-SHA

    username = xing_wenju@mfa.gov.cn
    password_command = ('cat', '/home/${username}/mfa_mail_pass.txt')

    [destination]
    type = Maildir
    path = /home/${username}/Mail/mfa/

    [options]
    delete = false
    read_all = true
  '';
in {
  accounts.email = {
    accounts = {
      mfa = {
        primary = false;
        address = "xing_wenju@mfa.gov.cn";
        userName = "xing_wenju@mfa.gov.cn";
        realName = "Xing Wenju";
        passwordCommand = "cat /home/${username}/mfa_mail_pass.txt";
        imap.host = "mail.mfa.gov.cn";
        imap.tls.useStartTls = true;
        smtp.host = "mail.mfa.gov.cn";
        smtp.tls.useStartTls = true;
        notmuch.enable = true;
        neomutt = {
          enable = true;
          extraConfig = ''
            color status cyan default
          '';
        };
        msmtp.enable = true;
      };
    };
  };
  home.file.".config/getmail/getmailrc".text = accountConfig;
}
