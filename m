Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9592B152C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mWnWJaOpowA4sfbd6dzCemjEwgGoDG8YQ6Pc6ug53Nk=; b=gOF
	/vMWfxXTKsNPLxUhgDOMvgvyXzYTDRC1/3GGQ9kkdnwWhRZTbnBquzn9DbJCMUDlO9hSdZPO9xJDh
	orL2Kt7a0I3rpte889lW51ruAEq0V+SZTaG6za+bB7i0BmXW9wtX0nL79//RQdcAxlkgI5B8NOZAQ
	sJNb1oKJ5MNBkMOhcoyY74By4I2Z91A/FMWqJYuB3Vfgpq+xhHW+wkB3B54ll5P0ZQXr3UzYcOWhU
	9OXqfWk17E+rjzArnCBA02ZcGhcIjaNpJx7MeVIytr271hWC4kcjuvBj7+/DfT0Khw6P1Oll3hVLk
	b4fRl7JFe+iRu79mjjTeNwDZLAkxlGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhQc-0000EF-8X; Mon, 06 May 2019 17:29:26 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhQU-0000Du-4X
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:29:20 +0000
Received: from grover.flets-west.jp (softbank126125154139.bbtec.net
 [126.125.154.139]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x46HSZCi022951;
 Tue, 7 May 2019 02:28:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x46HSZCi022951
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1557163716;
 bh=rLUuRSyxYbwt0UVs9QzxFKJlZ9BtLeDXvLxtcsNawRY=;
 h=From:To:Cc:Subject:Date:From;
 b=JKXYbZcbzekTUoL6mu+jZH4TU3MaGysbzm7unONRIccBJk6/UgXh6Bh9aTWwiW+Ky
 A2ptFGi+J9bV+RT6ywYeX1Qnt4A6lFmUkq00Nd5GMuTOaW2tNCVATIqA4Fq/HRXLYr
 WU81SQYU6DOjxjrRMurBKpCpPe/E/INWCawblX04Pp9cEBtDKms2OUowjOq9pQSTQC
 GFNUMVWSuzcZ8Ufn0cOstMMRyrcrn34nrEuVi3uWWQ5qtTUX1Xyls6gAdGc4C672QN
 4zLbnoRXV6315fHrM4TXSMkwwXikidN8W/U5/s7ksKIdmrtuC6xMxxiKny2sqkCqN3
 eyh2vCnHuXi3w==
X-Nifty-SrcIP: [126.125.154.139]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH] Remove MODULE_ALIAS() calls that take undefined macro
Date: Tue,  7 May 2019 02:28:17 +0900
Message-Id: <1557163697-17882-1-git-send-email-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_102918_507708_E3B15610 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Alexey Gladkov <gladkov.alexey@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These files do not define (USBHS_)DRIVER_NAME. Yet, they can be
successfully compiled because they are never built as a module by
anyone, i.e, the MODULE_ALIAS() calls are always no-op.

A problem showed up when a patch "moduleparam: Save information about
built-in modules in separate file" is applied. With this new feature,
MODULE_*() are populated even if the callers are built-in.

To avoid the build errors, the lines referencing to the undefined
macro must be removed.

The complete fix is to remove all MODULE_* and #include <linux/module.h>
like many "make ... explicitly non-modular" commits did.

For now, I am touching the offending lines.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

I will insert this commit before
"moduleparam: Save information about built-in modules in separate file"


 arch/arm/plat-omap/dma.c          | 1 -
 drivers/clocksource/timer-ti-dm.c | 1 -
 drivers/mfd/omap-usb-tll.c        | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm/plat-omap/dma.c b/arch/arm/plat-omap/dma.c
index d4012d6..5ca4c5f 100644
--- a/arch/arm/plat-omap/dma.c
+++ b/arch/arm/plat-omap/dma.c
@@ -1449,7 +1449,6 @@ static void __exit omap_system_dma_exit(void)
 
 MODULE_DESCRIPTION("OMAP SYSTEM DMA DRIVER");
 MODULE_LICENSE("GPL");
-MODULE_ALIAS("platform:" DRIVER_NAME);
 MODULE_AUTHOR("Texas Instruments Inc");
 
 /*
diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index 3352da6..2b7cee81 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -998,5 +998,4 @@ module_platform_driver(omap_dm_timer_driver);
 
 MODULE_DESCRIPTION("OMAP Dual-Mode Timer Driver");
 MODULE_LICENSE("GPL");
-MODULE_ALIAS("platform:" DRIVER_NAME);
 MODULE_AUTHOR("Texas Instruments Inc");
diff --git a/drivers/mfd/omap-usb-tll.c b/drivers/mfd/omap-usb-tll.c
index 446713d..93177d8 100644
--- a/drivers/mfd/omap-usb-tll.c
+++ b/drivers/mfd/omap-usb-tll.c
@@ -459,7 +459,6 @@ EXPORT_SYMBOL_GPL(omap_tll_disable);
 
 MODULE_AUTHOR("Keshava Munegowda <keshava_mgowda@ti.com>");
 MODULE_AUTHOR("Roger Quadros <rogerq@ti.com>");
-MODULE_ALIAS("platform:" USBHS_DRIVER_NAME);
 MODULE_LICENSE("GPL v2");
 MODULE_DESCRIPTION("usb tll driver for TI OMAP EHCI and OHCI controllers");
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
