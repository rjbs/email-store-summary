use Test::More tests => 5;
use File::Slurp;
BEGIN { unlink("t/test.db"); }
use Email::Store "dbi:SQLite:dbname=t/test.db";
Email::Store->setup;
ok(1, "Set up");

my $data = do { local $/; <DATA> };
Email::Store::Mail->store($data);

# We need one mail:
my @mails = Email::Store::Mail->retrieve_all;
is(@mails, 1, "Only one mail");
is($mails[0]->subject, "[Templates] ttree problems - the sequel", "Correct subject");
like($mails[0]->original, qr/debug my problems/, "Correct original text");

__DATA__
From owner-tokyo-pm-list@pm.org  Mon Jan  5 04:47:30 2004
Received: from mail.pm.org ([64.49.222.22])
	by alibi.simon-cozens.org with esmtp (Exim 3.35 #1 (Debian))
	id 1AdMeD-0000el-00
	for <simon@netthink.co.uk>; Mon, 05 Jan 2004 04:47:25 +0000
Received: (from majordomo@localhost)
	by mail.pm.org (8.11.6/8.11.6) id i054RT224581
	for tokyo-pm-list-outgoing; Sun, 4 Jan 2004 22:27:29 -0600
X-Authentication-Warning: mail.pm.org: majordomo set sender to owner-tokyo-pm-list@pm.org using -f
Received: from momiji.ryuchi.org (kitty.ryuchi.org [219.165.126.202])
	by mail.pm.org (8.11.6/8.11.6) with ESMTP id i054RQ124578
	for <tokyo-pm-list@happyfunball.pm.org>; Sun, 4 Jan 2004 22:27:27 -0600
Received: from localhost (localhost [IPv6:::1])
	by momiji.ryuchi.org (8.12.9/8.12.9) with ESMTP id i054Q77p071837
	for <tokyo-pm-list@happyfunball.pm.org>; Mon, 5 Jan 2004 13:26:07 +0900 (JST)
	(envelope-from ryuchi@ryuchi.org)
Date: Mon, 05 Jan 2004 13:26:07 +0900 (JST)
Message-Id: <20040105.132607.112548803.ryuchi@ryuchi.org>
To: tokyo-pm-list@happyfunball.pm.org
Subject: [Tokyo.pm] =?iso-2022-jp?B?GyRCPzdHLzJxGyhC?=
From: Tetsuya Ryuchi <ryuchi@ryuchi.org>
X-Mailer: Mew version 3.2 on Emacs 20.7 / Mule 4.0 (HANANOEN)
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit
Sender: owner-tokyo-pm-list@pm.org
Precedence: bulk
Reply-To: tokyo-pm-list@happyfunball.pm.org
Content-Length: 405
Lines: 17
X-IMAPbase: 1079362854 30
Status: RO
X-Status: 
X-Keywords:                     
X-UID: 1


  $B$j$e$&$A$G$9(B

  $B$"$1$^$7$F(B $B$*$a$G$H$&$4$6$$$^$9!#:#G/$b$h$m$7$/$*4j$$$7$^$9!#(B

  $B$5$F!"(B2004$BG/$b(B $BL@$1$F$b$&$9$0(B $B0l=54V$K$J$C$F$7$^$$$^$9$,!"?7G/2q(B
$B$J$I$$$+$,$G$7$g$&(B?

  $B:#G/$b(B LL Saturday $B$r7W2h$7$F$$$^$9!#(B

  $B$40U8+$r$*4j$$$7$^$9!#(B

($BN6(B)
--
# From Tetsuya Ryuchi   ryuchi@ryuchi.org
#                       ryuchi@beatcraft.com
