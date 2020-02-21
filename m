Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C7916843D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1c1Ym4uy2UpUDxf71QQ1N4jalH12bbPX/m5Q0aMcFpA=; b=iN1WJ/IKEy9rWm
	lAZMH9nviMpT727U9Qj1HPfM6dJOUKWlXUOehzR6Hcq48Neo4FKzPbfpf63PaERisFqay6jWetJVW
	pI7nz67MhkdKVvF5xgWZVn7oHrZ5Jy0lWvLS8ImEtuqH4FN+yyDWkddUvauGeWkTZ9GuXZwmfFtGp
	dXA/5M/+bIJn4wNc0M2j8oXUe0w3yqMiAcEW5w0Vq1do/Dd/Oz2M6nnBh2zsgns+G8boJkmjl/ikb
	yv4Ed2LPUv8GFkncw8Re9vUNbcC8wF/zEfieSaNBpVMGoPEeiu198O9NuyYVvs+bL50ickunLfKK6
	iY7gqjBx9DmC+e3LrUxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BbO-00022W-W3; Fri, 21 Feb 2020 16:56:34 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BbG-00021s-MI
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:56:28 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 8B7F7807E;
 Fri, 21 Feb 2020 16:57:06 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] Fix LCD backlight issue for droid4
Date: Fri, 21 Feb 2020 08:55:55 -0800
Message-Id: <pull-1582303901-96693@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_085626_770445_3CA80BA7 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arm@kernel.org, Tony Lindgren <tony@atomide.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Pavel Machek <pavel@ucw.cz>,
 linux-omap@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/droid4-lcd-fix-signed

for you to fetch changes up to 10dc62d0ae4167770e9ab150fc1ab55baa82e010:

  ARM: dts: droid4: Configure LED backlight for lm3532 (2020-02-20 06:51:13 -0800)

----------------------------------------------------------------
Fix LCD backlight issue for droid4 for v5.6

There was a bit of an integration glitch with the LED backlight series.
The LED related parts got merged into v5.6-rc1, but the actual backlight
driver got left out.

This caused an issue on at least droid4 where the LCD backlight can not
yet be enabled automatically. And the LCD backlight can no longer be
enabled manually either via sysfs.

The integration glitch happened because some pending comments from me.
There was some confusion on which device tree property we should use for
the default brightness property.

After discussing how to fix this on the mailing lists, we came to the
conclusion that it's best to fix this issue properly by adding the
missing driver.

The other solutions would mean backpedaling and try to come up with some
temporary solution that really does not solve the issue for users. The
patch for led_bl.c has been around for quite a while and tested by many
users and was assumed to be merged as part of the LED backlight series.

For the brightness property to use, we ended up using the more common
"default-brightness-level" rather than "default-brightness" used by
some backlight drivers.

----------------------------------------------------------------
Tomi Valkeinen (1):
      backlight: add led-backlight driver

Tony Lindgren (1):
      ARM: dts: droid4: Configure LED backlight for lm3532

 arch/arm/boot/dts/motorola-mapphone-common.dtsi |  13 +-
 arch/arm/configs/omap2plus_defconfig            |   1 +
 drivers/video/backlight/Kconfig                 |   7 +
 drivers/video/backlight/Makefile                |   1 +
 drivers/video/backlight/led_bl.c                | 260 ++++++++++++++++++++++++
 5 files changed, 280 insertions(+), 2 deletions(-)
 create mode 100644 drivers/video/backlight/led_bl.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
