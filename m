Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4296C86C42
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jm/eY1b7nShskBk9I9SMIYK4MLoNc9zIZAwpN5AKR7U=; b=aQum+zo2g7xpFH
	g4CUoi2vzQU9Fa//HD5S8ZsQWqhW6vLQQZuxQ4Pks1BrN3ApjWUZ3HYAqiLRrIdzKbXXEn3dIv1bB
	2fEZmAIbnx5bQ+mq51/CKnCFZuwekxY6IPJUv3xP+Brfg0rQVJwtIKYzzfelAdI5y7kG8BVq6hgF1
	sXevdXwSIOUcOnOyS3JHdEgXg1ETXLORNz/2nZQ0qudUeovj7wu3E4dzj23yf3S9GZ4lWay32WQbJ
	FeSIUNNDw3QMxrsGzyIwHyqDCDBWpOCenvBmr8Z5XM7FjQKXxPb64AqwPD897wRts7nI8dsDBQ+EB
	4w5pSwAe3qsN5hd1l0DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpsr-0003zH-0C; Thu, 08 Aug 2019 21:23:41 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpsj-0003ym-42
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:23:34 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MnFps-1icdKs0qea-00jKxt; Thu, 08 Aug 2019 23:23:10 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH 01/22] ARM: omap1: innovator: pass lcd control address as pdata
Date: Thu,  8 Aug 2019 23:22:10 +0200
Message-Id: <20190808212234.2213262-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808212234.2213262-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:gYQzCnwbWs8mL7daViFjHUrU0375LB2jW2jmopnOztbOKCOlUH9
 wzr6xMzlYNNwM9kds2mG3qevqDGBNAJ3ckfUEAJNYKK2tsSbQCiKiSG2zIoL5FigrrtryXb
 Y4gOJjw9g/rplk35Su3pjCxkNftH4wqexHHFCHXeHNLLb4peZcfvWmcPJIjtkK+3FpiI1uO
 R3+EaCP0c583jcXIH3TLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+scwJx1aJ24=:fzzjaWEd6UPfzIwJQkEsjs
 3PTOJzPRcySccl4YgEgKXsQSYLtgS3T1hlqg3ZG2nwTEaklnDQd1wsErnSVNJ2YjuNtkgEUNh
 iLJMSmvFG/ccgp/BsS5ghJUtr6n8vBlVcGNIvumQMiY/5sE2/504mNQ2uAI03GlBW3LmYwjcL
 cYCUmNpBsQfxoatS96SDmS+0c56C8BdC5Cs2QkPQ5Zo3VG7V98t2Th5OYJ8U7dD3mEs8wKAau
 +3mXwnpIAvpMCQ4+862wyYMuYn+63CjZgS/J+sdQEqioMPPONV3Cl5u0Kf07S/WtLpvrrkHpz
 Fie4Uaa4YHh+u1hpgJyZUkMl8yDDXLwLPhGWtWFfTGVHALI0RwN12IWuUjFYbXDGLn6hSHYyF
 n11jgojUqdWQF59bUBi7NqCEuGwKXCvylQbWaW1eLg79pLVjw9SZmBgAjoxkEcAuRf/PMfTVb
 93uOK5qGjcH/0VJDhP4u5EQNPEkLjhXYrs7f0fGWQIxH2awjzUHHhBaO8E8TZcuCmY7XR/sZw
 fouqZmyBUeyGE9kyGsRTjLpIisj1GhWIqDXQFQHnaI5xn9abxsiGjPdGL4t507DJ/g2puzCYz
 mO5yy+hPpJ/V44WQbdwNgmuU61K3Ol0StT+Go+tfZLZu5CGGp1cY8F/dZPnyy3fDcfguqzXsq
 3VUbPE24+i8zOqaZL1+UCpVISxqc7h6WID356sPIluGWaulaS4+f6xXxbT5cy3ejlJejzCobv
 pXs4GXE031dxuO+xu0W3giaP84+bJ+pQrG0nMQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_142333_451996_D0F787E1 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: linux-fbdev@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To avoid using the mach/omap1510.h header file, pass the correct
address as platform data.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-omap1/board-innovator.c  | 3 +++
 drivers/video/fbdev/omap/lcd_inn1510.c | 7 +++++--
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap1/board-innovator.c b/arch/arm/mach-omap1/board-innovator.c
index cbe093f969d5..2425f1bacb33 100644
--- a/arch/arm/mach-omap1/board-innovator.c
+++ b/arch/arm/mach-omap1/board-innovator.c
@@ -194,6 +194,9 @@ static struct platform_device innovator1510_smc91x_device = {
 static struct platform_device innovator1510_lcd_device = {
 	.name		= "lcd_inn1510",
 	.id		= -1,
+	.dev	= {
+		.platform_data = (void __force *)OMAP1510_FPGA_LCD_PANEL_CONTROL,
+	}
 };
 
 static struct platform_device innovator1510_spi_device = {
diff --git a/drivers/video/fbdev/omap/lcd_inn1510.c b/drivers/video/fbdev/omap/lcd_inn1510.c
index 776e7f8d656e..37ed0c14aa5a 100644
--- a/drivers/video/fbdev/omap/lcd_inn1510.c
+++ b/drivers/video/fbdev/omap/lcd_inn1510.c
@@ -14,15 +14,17 @@
 
 #include "omapfb.h"
 
+static void __iomem *omap1510_fpga_lcd_panel_control;
+
 static int innovator1510_panel_enable(struct lcd_panel *panel)
 {
-	__raw_writeb(0x7, OMAP1510_FPGA_LCD_PANEL_CONTROL);
+	__raw_writeb(0x7, omap1510_fpga_lcd_panel_control);
 	return 0;
 }
 
 static void innovator1510_panel_disable(struct lcd_panel *panel)
 {
-	__raw_writeb(0x0, OMAP1510_FPGA_LCD_PANEL_CONTROL);
+	__raw_writeb(0x0, omap1510_fpga_lcd_panel_control);
 }
 
 static struct lcd_panel innovator1510_panel = {
@@ -48,6 +50,7 @@ static struct lcd_panel innovator1510_panel = {
 
 static int innovator1510_panel_probe(struct platform_device *pdev)
 {
+	omap1510_fpga_lcd_panel_control = (void __iomem *)pdev->dev.platform_data;
 	omapfb_register_panel(&innovator1510_panel);
 	return 0;
 }
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
