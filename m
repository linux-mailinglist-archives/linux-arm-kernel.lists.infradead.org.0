Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 690444E67B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cpXz43w+H4NrtldSwxhKxjw126nTq0hcjnc/eOZpKFQ=; b=toh0OnRz7aC+2X
	ayoi1tL3BNUGupyoaEvwAAqZoyzrLboc5dsG0QVirbd9LkfQH2fuevEeHUHRFkE50yYgHjXWJSDeU
	uP/BjSlqXGVO75Gptln9Q4szk55OtfI4ZIolInqd57fZeQoqsBJPZsa9lUMtAWab4XD2ZLnTDPb8c
	9Sysca7mDGi1kSYd1BXw2lNDl+popwdffpX64CUZyZGw3ilWgYSr/EY6s6KmW8OQP+k/iJwU8/RBm
	S6p0o1ap/hqm6ckeFyFsckVMdXpbM2pgLzlRXA2Lg1YkFDArEbjKV7Hw7Zai+3bJAfavJKayNsTRZ
	TrXhwEC1hG+7HaqCtpeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHB2-00074b-Qw; Fri, 21 Jun 2019 10:53:52 +0000
Received: from smtp121.iad3b.emailsrvr.com ([146.20.161.121])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHAU-0006qW-J5; Fri, 21 Jun 2019 10:53:20 +0000
Received: from smtp24.relay.iad3b.emailsrvr.com (localhost [127.0.0.1])
 by smtp24.relay.iad3b.emailsrvr.com (SMTP Server) with ESMTP id 6C74C40101;
 Fri, 21 Jun 2019 06:53:15 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1561114395;
 bh=sq67qECzciHcysXU6QW4+AWhIlJ5q5EgWY3WTdVjfdo=;
 h=From:To:Subject:Date:From;
 b=PCGhT/8YcmoSxQHcv8TDBQPom2zk1MjPN4ntOyz6oAddHcFpEKPrlqWrCmYMxUf4h
 Ygtd8yJYQOLTswQM+XCri4NPVYX+3BvkJdV5Z+xkFr1F7OiljV6UE+Ssvh5LyTB8Fh
 elVX1O6NSl8g8OSqFiFsJASRpPHdJilaOZaniyUw=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp24.relay.iad3b.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id 2414540127; 
 Fri, 21 Jun 2019 06:53:14 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from commune.xenotropic.com (c-73-96-52-102.hsd1.or.comcast.net
 [73.96.52.102]) (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:25 (trex/5.7.12); Fri, 21 Jun 2019 06:53:15 -0400
From: Annaliese McDermond <nh6z@nh6z.net>
To: eric@anholt.net, wahrenst@gmx.net, f.fainelli@gmail.com, wsa@the-dreams.de,
 swarren@wwwdotorg.org, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] i2c: bcm2835: Fixes for clock changes in probe function
Date: Fri, 21 Jun 2019 03:52:48 -0700
Message-Id: <20190621105250.19858-1-nh6z@nh6z.net>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_035318_748288_79766D93 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.20.161.121 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: team@nwdigitalradio.com, Annaliese McDermond <nh6z@nh6z.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An issue was reported in [1] and [2] that the latest version of the i2c
driver was not properly loading.  After analysis it was determined that
the new clock code was failiing because the i2c driver was trying to
load before the bcm2835-clk driver when not loaded as a module. This is
fixed by actually attempting to grab a reference to the clock and failing
out with a EPROBE_DEFER if it's not there.  This gives the other drivers
an opportunity to load.

This series also fixes a related bug where the clock setup code in the
probe function could cause an issue where the IRQ would be requested
by the driver and never freed in case of some clock setup failure.  The
patch moves this IRQ code to the end of the probe function where it will
not cause this issue.

[1] - https://www.raspberrypi.org/forums/viewtopic.php?f=44&t=242856
[2] - https://archlinuxarm.org/forum/viewtopic.php?f=23&t=13719

Annaliese McDermond (2):
  i2c: bcm2835: Move IRQ request after clock code in probe
  i2c: bcm2835: Ensure clock exists when probing

 drivers/i2c/busses/i2c-bcm2835.c | 42 +++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 17 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
