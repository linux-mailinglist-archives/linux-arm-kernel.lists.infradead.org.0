Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C997CD7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZdFm6xByi26BAjE88vL3unHcYNaq9fnh6cI2RrCcSs=; b=I0FJulp+iLo+Aw
	thGhBOOlmgxmyRSvgkVH7+yuYdBx7vFc5hurH/E7AMfKnUZ3j1gdRm1ehNJTR6y2HsFYpGGG9PZah
	nqeRfeOBJGlIg4la6u7J0UgfqyaTcE3GMVSwyRYfiNO4QHCY6BPvAciN65r0NjeybzoK3NN2/UqOq
	OCTlnNcqGR41HobX2rncEWBOtQQhGxvQ7W6XwN/f7NamD24A45iH62/d5t5cUBAYkoJUzI6L24ezq
	d/fHcsat381NoB3pKgczIbVHa4ZYXc4q+Uraqp6cEcFDKJfnVB56P+6iwvSBkvKPALLHHVsadj+7u
	mlst4S88+wHbn7ph+pYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsun0-00027t-V5; Wed, 31 Jul 2019 20:01:34 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsumt-00027Z-FY
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:01:29 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MElhb-1i8Xgp2Pet-00GM78; Wed, 31 Jul 2019 22:00:56 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 06/14] net: lpc-enet: factor out iram access
Date: Wed, 31 Jul 2019 21:56:48 +0200
Message-Id: <20190731195713.3150463-7-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:SIR+StTg1yfrJOk+RcwJDCCTVUYEqRYGtvhttUvKUj31xjabS6n
 0LjT+qb3UAb0wMRK253nbzu3yZ3hPz+pIxmA9ovy6x6yoAvgMjctqBTKYeNdbeO3ryTQq28
 p/9wr3WFSy9q6FjN5nQAi3ktBtB0uKTJHmeIssaTO4h7KjjpJ9grdl8muSebBIPnDH93laV
 3vxDTuWhUy1AUE1bdegow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oRuu35Z+Gjo=:s5+pnERwtAQyP8VJgqAt49
 l0k5KqbH9+SS96l4h+t7GvVd1LVAAALILTBfI4FIqIlR10dLieS9fbqrdjL2AQ8WyRaRqOD6W
 epTKa71yW0dKFbxFd7fzUBx9uvpSW/aLQdPEZDpGrgeJO7mi5B3Wwed3PIXDydKimGUhVRqU2
 r/pe2z4V0WzBxz/E4hpeXgbTLft2IESnaRgLyIj1MGF62B8RdKPY2Ww4LvX6oHBj93pLER+Ne
 T8gmc/dSSkveTkm4kODVLzeWW9wQ5fme4TpyOnYibFO09p4n4OjViFaHBr69bv3YUYhtitzNv
 vB+MdT8votc29osLornsNrAUeWjVj8hN7O/Pq0vGo41TILFk/9fWyYnJqgT51E0/tWnfKIDVk
 FI+iwbCPxaA8Mp4gNKH5YZG+O0vQJld5RQZfh+UqvEpFObW/z7qP2ZvOqM2DLR18ZcOM6hQHb
 4gegkDsNTebUejDsUoTub4JH4mDFCADIQV5ksAXprlZIcylvj1aLVgpsYcfY8eumW5O10CZmJ
 1sw0dflgSdQQ1vHUczcQtEeuULSE9v+Ut+scmAwoNWZduHiN988x4HYFI7g7PHnMoTbf1FCqY
 yCmsKnSFvA0Vlw6LqowlAAEtPRZDIC3z1pMhGV+yW40QH0mkRF7qhig45pytv3oUneJF56cFi
 EiybDCqbeBLnSQfInzg22sf8KSPgsVL/8YCanPEE35FDEm8RF+5Y/EpIruCWZ1wrrd2VQtEKX
 ALqUR6CJ8FkCg3jSiJqjqpftcnb7idgRTWcyIw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130127_811776_D0701986 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-watchdog@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, linux-serial@vger.kernel.org,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Guenter Roeck <linux@roeck-us.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The lpc_eth driver uses a platform specific method to find
the internal sram. This prevents building it on other machines.

Rework to only use one function call and keep the other platform
internals where they belong. Ideally this would look up the
sram location from DT, but as this is a rarely used driver,
I want to keep the modifications to a minimum.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-lpc32xx/common.c             |  9 ++++++--
 arch/arm/mach-lpc32xx/common.h             |  1 -
 arch/arm/mach-lpc32xx/include/mach/board.h | 15 --------------
 drivers/net/ethernet/nxp/lpc_eth.c         | 17 ++++++++-------
 include/linux/soc/nxp/lpc32xx-misc.h       | 24 ++++++++++++++++++++++
 5 files changed, 39 insertions(+), 27 deletions(-)
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/board.h
 create mode 100644 include/linux/soc/nxp/lpc32xx-misc.h

diff --git a/arch/arm/mach-lpc32xx/common.c b/arch/arm/mach-lpc32xx/common.c
index 5b71b4fab2cd..f648324d5fb4 100644
--- a/arch/arm/mach-lpc32xx/common.c
+++ b/arch/arm/mach-lpc32xx/common.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/init.h>
+#include <linux/soc/nxp/lpc32xx-misc.h>
 
 #include <asm/mach/map.h>
 #include <asm/system_info.h>
@@ -32,7 +33,7 @@ void lpc32xx_get_uid(u32 devid[4])
  */
 #define LPC32XX_IRAM_BANK_SIZE SZ_128K
 static u32 iram_size;
-u32 lpc32xx_return_iram_size(void)
+u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr)
 {
 	if (iram_size == 0) {
 		u32 savedval1, savedval2;
@@ -53,10 +54,14 @@ u32 lpc32xx_return_iram_size(void)
 		} else
 			iram_size = LPC32XX_IRAM_BANK_SIZE * 2;
 	}
+	if (dmaaddr)
+		*dmaaddr = LPC32XX_IRAM_BASE;
+	if (mapbase)
+		*mapbase = io_p2v(LPC32XX_IRAM_BASE);
 
 	return iram_size;
 }
-EXPORT_SYMBOL_GPL(lpc32xx_return_iram_size);
+EXPORT_SYMBOL_GPL(lpc32xx_return_iram);
 
 static struct map_desc lpc32xx_io_desc[] __initdata = {
 	{
diff --git a/arch/arm/mach-lpc32xx/common.h b/arch/arm/mach-lpc32xx/common.h
index 8e597ce48a73..32f0ad217807 100644
--- a/arch/arm/mach-lpc32xx/common.h
+++ b/arch/arm/mach-lpc32xx/common.h
@@ -23,7 +23,6 @@ extern void __init lpc32xx_serial_init(void);
  */
 extern void lpc32xx_get_uid(u32 devid[4]);
 
-extern u32 lpc32xx_return_iram_size(void);
 /*
  * Pointers used for sizing and copying suspend function data
  */
diff --git a/arch/arm/mach-lpc32xx/include/mach/board.h b/arch/arm/mach-lpc32xx/include/mach/board.h
deleted file mode 100644
index 476513d970a4..000000000000
--- a/arch/arm/mach-lpc32xx/include/mach/board.h
+++ /dev/null
@@ -1,15 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arm/arch/mach-lpc32xx/include/mach/board.h
- *
- * Author: Kevin Wells <kevin.wells@nxp.com>
- *
- * Copyright (C) 2010 NXP Semiconductors
- */
-
-#ifndef __ASM_ARCH_BOARD_H
-#define __ASM_ARCH_BOARD_H
-
-extern u32 lpc32xx_return_iram_size(void);
-
-#endif  /* __ASM_ARCH_BOARD_H */
diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
index f7e11f1b0426..bcdd0adcfb0c 100644
--- a/drivers/net/ethernet/nxp/lpc_eth.c
+++ b/drivers/net/ethernet/nxp/lpc_eth.c
@@ -18,8 +18,8 @@
 #include <linux/phy.h>
 #include <linux/platform_device.h>
 #include <linux/spinlock.h>
+#include <linux/soc/nxp/lpc32xx-misc.h>
 
-#include <mach/board.h>
 #include <mach/hardware.h>
 #include <mach/platform.h>
 
@@ -1311,16 +1311,15 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
 	/* Get size of DMA buffers/descriptors region */
 	pldat->dma_buff_size = (ENET_TX_DESC + ENET_RX_DESC) * (ENET_MAXF_SIZE +
 		sizeof(struct txrx_desc_t) + sizeof(struct rx_status_t));
-	pldat->dma_buff_base_v = 0;
 
 	if (use_iram_for_net(dev)) {
-		dma_handle = LPC32XX_IRAM_BASE;
-		if (pldat->dma_buff_size <= lpc32xx_return_iram_size())
-			pldat->dma_buff_base_v =
-				io_p2v(LPC32XX_IRAM_BASE);
-		else
+		if (pldat->dma_buff_size >
+		    lpc32xx_return_iram(&pldat->dma_buff_base_v, &dma_handle)) {
+			pldat->dma_buff_base_v = NULL;
+			pldat->dma_buff_size = 0;
 			netdev_err(ndev,
 				"IRAM not big enough for net buffers, using SDRAM instead.\n");
+		}
 	}
 
 	if (pldat->dma_buff_base_v == 0) {
@@ -1409,7 +1408,7 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
 	unregister_netdev(ndev);
 err_out_dma_unmap:
 	if (!use_iram_for_net(dev) ||
-	    pldat->dma_buff_size > lpc32xx_return_iram_size())
+	    pldat->dma_buff_size > lpc32xx_return_iram(NULL, NULL))
 		dma_free_coherent(dev, pldat->dma_buff_size,
 				  pldat->dma_buff_base_v,
 				  pldat->dma_buff_base_p);
@@ -1436,7 +1435,7 @@ static int lpc_eth_drv_remove(struct platform_device *pdev)
 	unregister_netdev(ndev);
 
 	if (!use_iram_for_net(&pldat->pdev->dev) ||
-	    pldat->dma_buff_size > lpc32xx_return_iram_size())
+	    pldat->dma_buff_size > lpc32xx_return_iram(NULL, NULL))
 		dma_free_coherent(&pldat->pdev->dev, pldat->dma_buff_size,
 				  pldat->dma_buff_base_v,
 				  pldat->dma_buff_base_p);
diff --git a/include/linux/soc/nxp/lpc32xx-misc.h b/include/linux/soc/nxp/lpc32xx-misc.h
new file mode 100644
index 000000000000..f232e1a1bcdc
--- /dev/null
+++ b/include/linux/soc/nxp/lpc32xx-misc.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Author: Kevin Wells <kevin.wells@nxp.com>
+ *
+ * Copyright (C) 2010 NXP Semiconductors
+ */
+
+#ifndef __SOC_LPC32XX_MISC_H
+#define __SOC_LPC32XX_MISC_H
+
+#include <linux/types.h>
+
+#ifdef CONFIG_ARCH_LPC32XX
+extern u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr);
+#else
+static inline u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr)
+{
+	*mapbase = NULL;
+	*dmaaddr = 0;
+	return 0;
+}
+#endif
+
+#endif  /* __SOC_LPC32XX_MISC_H */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
