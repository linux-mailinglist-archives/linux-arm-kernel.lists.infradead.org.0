Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162C386C5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjV3/aXe0TDHS8dg/SbINYISmjuWmGg1xxuTF6/wjn4=; b=S30sO2B2zsCpG1
	YqPCMYba9aP8dlVQ35wMbR0zu4j/3ArNJS5xsZfvGUvnIVVhQR4frKWWltiWbv7vwLpiQn1S7VZgu
	8/CFp+zzaoPHE4RCMViTgKXu6K+hx8ObOqXRN4yfbdrJhfqddj/uTRzfgMzBasuj+ocNqtJ3i2j7Y
	U5gZniFGocO19A/Qj9APwZ2Vn2eHFOftrHfB1dZYw0Arz/KtRI+Aq+5SYb55KxT5h0KbftrAZeLaR
	kcTTr38ugp0Nln6bRILVUbX6vK1++OSTMQ9/lg2nYDO3f5oc38PRClqzC5Wg8mLJQyoN/SSffqC6a
	E/vH+tSph0wqUf0rBvpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpyG-0006yd-Ru; Thu, 08 Aug 2019 21:29:16 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpy8-0006yH-7l
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:29:09 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mxpqo-1iF0VT3dks-00zD7L; Thu, 08 Aug 2019 23:28:57 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Mark Brown <broonie@kernel.org>
Subject: [PATCH 07/22] ARM: omap1: move perseus spi pinconf to board file
Date: Thu,  8 Aug 2019 23:22:16 +0200
Message-Id: <20190808212234.2213262-8-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808212234.2213262-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:OUywYjmUvR4CggfZfvVTBOs6Wqw61X7ANdp+0I65+P8MCPSSa41
 5GvGcAmYjU2DGOzqYVYCAn/KSoqrC1TXd4CnESq/PgpAi3GqLbpTe3IptCS8caaxMlQ7MWB
 qspivVS8oe8TFvFiGP+yhn+TNtbQ31DZqvBQMB8LsgaAzHiS6rwCdV2Wa5fHzpxxGDK29H2
 oVjrpRiT3l+OAdxjzkEqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HTgsHXt4VYg=:wv/3Tz08gC4O1xmYtn1lnv
 0DQVchC6pJEpqwK+9CzLoTkrnBsAxE7wZ+elRXgafIIObsfCNN/YIgTQ1GdzAShuaQlhVUAiI
 x2put5/QNp+CQKco+ufIo3WHRGRBqey6WIpXX3I0vYqr5zrSFImTvDEr26dWXewa8Mge4eIl9
 1zandRW0JCIG0L7TtDX6UFCokfvoWtQFPzY3zsIR/U9cFbYboSkaJl1xb6m8LmTMz1Fy+r3Xo
 3IxwAXhdJ539LXs1RLtojMfFqgTVwmfhY2aiC4Mu1N4VhBJRVMUU39ySLQZi7LVc/eOT7qiOt
 mbUIg0pOs3W84yVSI/V/2eEOCoxIhMCWtiQ8UYSmcrk3HumNFJCiB0TJn2lnbrIByn4XAm24E
 WznZoc38kwirw1rzqsFaDVwfSRvHkB5IOK392edCP0d7AgSYWCrBKpTvLVWew9EfVojJI/WHc
 2mVDRcJiU4P/xzA3rN8j7ED727y6zXc0KrWLV+OLt27wntOZxNuwOIjm9oDiicsH1bvFm7OUC
 SNkSxxwqlJeNQXllVKUrLsRfTT5UGPZIqVy5go2ubH3J6RHBC1w0pP+0w5WqBW8Cm89usEALa
 iKtMuH4jjEzc/yH9jf4lu9GQ05158U+qlSFKhqq27BtihJNJhdr4cG8OTguF49oF/z3GoUZbz
 0zk3AiGWMmw/7SdHAJ8JjCbDR6tL1hq0xnwyrGxON2pNn9j7RW51LxD6sg3MZJxWqMNYZ+1WU
 sY7/qqbeEDI/viciS0gwy5RjMHG7ffieopLw0A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_142908_565922_74D5BB97 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver has always had a FIXME about this, and it seems
like this trivial code move avoids a mach header inclusion,
so just do it.

With that out of the way, and the header file inclusions
changed to global files, the driver can also be compile-tested
on other platforms.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-omap1/board-perseus2.c |  6 ++++++
 drivers/spi/Kconfig                  |  2 +-
 drivers/spi/spi-omap-uwire.c         | 15 +++------------
 3 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-omap1/board-perseus2.c b/arch/arm/mach-omap1/board-perseus2.c
index 1aeeb7337d29..da0155107d85 100644
--- a/arch/arm/mach-omap1/board-perseus2.c
+++ b/arch/arm/mach-omap1/board-perseus2.c
@@ -289,6 +289,12 @@ static void __init omap_perseus2_init(void)
 	omap_cfg_reg(F4_7XX_KBC3);
 	omap_cfg_reg(E3_7XX_KBC4);
 
+	if (IS_ENABLED(CONFIG_SPI_OMAP_UWIRE)) {
+		/* configure pins: MPU_UW_nSCS1, MPU_UW_SDO, MPU_UW_SCLK */
+		int val = omap_readl(OMAP7XX_IO_CONF_9) & ~0x00EEE000;
+		omap_writel(val | 0x00AAA000, OMAP7XX_IO_CONF_9);
+	}
+
 	platform_add_devices(devices, ARRAY_SIZE(devices));
 
 	omap_serial_init();
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 949b18ed9d6b..4e67c155229e 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -464,7 +464,7 @@ config SPI_OCTEON
 
 config SPI_OMAP_UWIRE
 	tristate "OMAP1 MicroWire"
-	depends on ARCH_OMAP1
+	depends on ARCH_OMAP1 || (ARM && COMPILE_TEST)
 	select SPI_BITBANG
 	help
 	  This hooks up to the MicroWire controller on OMAP1 chips.
diff --git a/drivers/spi/spi-omap-uwire.c b/drivers/spi/spi-omap-uwire.c
index ce8dbdbce312..278d42a2ec49 100644
--- a/drivers/spi/spi-omap-uwire.c
+++ b/drivers/spi/spi-omap-uwire.c
@@ -44,13 +44,10 @@
 #include <linux/module.h>
 #include <linux/io.h>
 
-#include <mach/hardware.h>
 #include <asm/mach-types.h>
-
-#include <mach/mux.h>
-
-#include <mach/omap7xx.h>	/* OMAP7XX_IO_CONF registers */
-
+#include <linux/soc/ti/omap1-io.h>
+#include <linux/soc/ti/omap1-soc.h>
+#include <linux/soc/ti/omap1-mux.h>
 
 /* FIXME address is now a platform device resource,
  * and irqs should show there too...
@@ -541,12 +538,6 @@ static int __init omap_uwire_init(void)
 		omap_cfg_reg(N14_1610_UWIRE_CS0);
 		omap_cfg_reg(N15_1610_UWIRE_CS1);
 	}
-	if (machine_is_omap_perseus2()) {
-		/* configure pins: MPU_UW_nSCS1, MPU_UW_SDO, MPU_UW_SCLK */
-		int val = omap_readl(OMAP7XX_IO_CONF_9) & ~0x00EEE000;
-		omap_writel(val | 0x00AAA000, OMAP7XX_IO_CONF_9);
-	}
-
 	return platform_driver_register(&uwire_driver);
 }
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
