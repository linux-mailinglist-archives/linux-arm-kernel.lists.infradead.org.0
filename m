Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F7C17BA20
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wLcdzqCZGubceSo1ZyhdBhY9tYGAOkT41KpRfJYNLbw=; b=QPz
	UZ2zofqBdttn3CRyTQyA2IkC/9sqRUhE1B4hBwHzq60SiFpX9brvCro2f6Z0cJ58yKLfGL6c3QOjR
	Ohs19tDmQBzbb4RUJFXYCml7W97VlhWQ/J/PlIcUSY6tIDx0qJSBQ47a6sC6Oo4snDN0e+yqNPbu4
	C15MatFvz8ax3881DW/78UsiZhZkB1Pgbs2xD8iflKw+tJYX/tGP1LBTxJJlJj+ldoOcuK4axHmqI
	CusOuYxJTE6sevmw+v5rY3J+ijspoC9kcbLrOcHQrLvljWyt5E4pZuIwBl+yJatc4ZZEoKd2KUovv
	xxBxC9/YT3WMbRfIG8tzlvd4ufPAq5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAA8l-0001pK-Uo; Fri, 06 Mar 2020 10:23:35 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAA8a-0001on-DC
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:23:26 +0000
Received: from ramsan ([84.195.182.253])
 by baptiste.telenet-ops.be with bizsmtp
 id AyP22200S5USYZQ01yP2Pj; Fri, 06 Mar 2020 11:23:06 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jAA8E-0003iN-M7; Fri, 06 Mar 2020 11:23:02 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jAA8E-0004Or-IZ; Fri, 06 Mar 2020 11:23:02 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH] Revert "tty: serial: samsung_tty: build it for any platform"
Date: Fri,  6 Mar 2020 11:23:01 +0100
Message-Id: <20200306102301.16870-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_022324_608931_52966371 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-samsung-soc@vger.kernel.org, --cc@rox.of.borg,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019.

When the user configures a kernel without support for Samsung SoCs, it
makes no sense to ask the user about enabling "Samsung SoC serial
support", as Samsung serial ports can only be found on Samsung SoCs.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/tty/serial/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 880b962015302dca..932ad51099deae7d 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -237,6 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
 
 config SERIAL_SAMSUNG
 	tristate "Samsung SoC serial support"
+	depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
 	select SERIAL_CORE
 	help
 	  Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
