Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB86687CFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZdFm6xByi26BAjE88vL3unHcYNaq9fnh6cI2RrCcSs=; b=V8z+SELvksZrQP
	jdJCS///v2OZIdOpJ36enxNhbSCIU357V8Cl1EnMRvZf9ktF1lUea3UWVmaLK76f+cnDufZ68n6vu
	34cOGnqDq/dmASmfljBT6oIruj6KYo/C8k0jHtP0iwTUJnfYz40oEWQoxQk5284PwM8osXaJSLexJ
	TM8T+63QrT5NG/FY9BVvZK9puE9/WjmOhivHIqbAoHFZ52FyBbTUuci4apR5kZIMADpNSiCC5lopk
	6Dmr3bjeKUZxoxNESGXbCQQPvnKXKj+2/J1AO21ccNTL6AoUZHC8Dx/yfeGVEa1tyMTTV5SkxXtFp
	V5Cp6gxAhsHdQBSeuj9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw67W-0005an-Fi; Fri, 09 Aug 2019 14:43:54 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw67L-0005aR-88
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:43:44 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N0qmr-1iGfMq1dTx-00wjWU; Fri, 09 Aug 2019 16:43:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 06/13] net: lpc-enet: factor out iram access
Date: Fri,  9 Aug 2019 16:40:32 +0200
Message-Id: <20190809144043.476786-7-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:M1AYytHx6XmmunCKlV/TLUdpENpBqLRCGCD3Pn5cu9bj26l7VNZ
 ppTmd/I+r5hcLU0hmOjH/xyc/sS3WjXelutVyPcQXkf+1fcQuy0SLJgMYzoy3xLp7l3Kh1d
 3Ql2Y8T6+WkkXw8dptJK85G1JUkG2GNTdVLR5WJAy5JJwbmIXNJts54TsFkP6dIVozEMZ30
 oAx+HJ4EWfL59R8y6IhDw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gYlz00sn4w0=:BqGN/DtzRwRepukBnvS5uD
 jtT5EKlubutzFsIn9CkuwmcuLmlSQeQonfrz6aRlQaSgiCPYs2v01l58RsrUsg3yrid6VbP/+
 OkI19EJmhyt0Kqo7L2/z+4Fsjx8J+d+3MnCxMOjHxY6D25viimEAc8S9TWPa1PlK3k8GU3+lU
 vgZOe3DJ9z/1kocRjLJXBV7kpB1cRNZCxvkpnkzmklp1OsUj0sCGVyjSyb63RhsmVGVr2++nm
 PPdv6sSHoTqcSwzE/zleeDippUxx3OiEwpZMEYL5PNrBLauaqqna60c5uRDNi55XNdyJr+ABN
 Svztmjz1G/7PVk2O3uhNMVr4BHmBAjzdKVEA8c0rQXlP5JiBWm9cQBvEWLBwwU4aRPq2XJoOV
 vYVgJvxdRnzBbRBzmketRNlXZPS4742xUl1FkEnWibmAzWImR/UwuyJcaNJmChauTOldQ889O
 xjI/+djH1UHAzBhyEXaJILAKMTdNCSexIymg5cnGWSTLqTnGRvRCMHqZdYu3pQJrAlGDrMllQ
 +NjL6Y69+YAnXAoZHi00DvYNk1fJcA6vVrwtgySNB9PcK3I3gvpoiPbHmXmH+gfj+jHG5WL+R
 93SdLp2QCCm5WRXPtDXksNACmUIpXISEX49NGsYEmdrF0DRp8ecH2ID/JnN//+6OEqmYyDkih
 tZGCcLBJBEtXih2po/Iy7XvCXe4HrG87vaH2dTegieCZinPcr0o3Z410szVqPXcNtnXsJ12fr
 EwlOhWlxH2qDnflSWNTk8zgSlxgyCC69ukAXdQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074343_580110_86E4EFC8 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
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
