Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA2087D02
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwTixJCfPcqn83Z1eS9zB6677GR0szsqbDrNxDzUF7Y=; b=BV9nVYnQLsl/3u
	zcJ3Vs+FOEuesdj1MO1HWSwr/iuxggRlceA6ZRQtzvKikKk8+QBvEv/wLjoJWpSXtiLpRZCPU0fTk
	zgV54CwVms4no9VovwEqgwn+v56KF7as7UVb5wErrLPNSQbFuv8ZJx4H/RcQMJTq/FupObWtgkg6j
	o+oHwioLszk7X+A/PfgZU9WVR1PLp/wDqaSgG4z31hqKYlGLWFEyFpFqQM5NAgzBUbAVy8yj4qYxt
	KYzmzGxkZjGhXjn0Rbv1G4OL08GEHTEhAU+rtl16HneB85Rqa9GI6Wm3ZKtfAmuxzoEYwqA6Sux5y
	KJgdwcRiXshcJV8xCPCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw67t-0005tW-JT; Fri, 09 Aug 2019 14:44:17 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw67g-0005rt-Eg
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:44:06 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mx0VH-1iG7wk0ZcR-00yNx6; Fri, 09 Aug 2019 16:43:57 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 07/13] net: lpc-enet: move phy setup into platform code
Date: Fri,  9 Aug 2019 16:40:33 +0200
Message-Id: <20190809144043.476786-8-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:npK/7O3KZV7d5O6NlWG3KNX1AMZFTWjJt5jIZxT/9Cn6I6FKIyo
 QtmoB26+nkmPETIXDitdSAt3MnVUpAxDnh/1ZLz+8c0KEwvBbqHnSWWDkLtfc/YRekmRqr5
 U4rxDZ6QBOwqpsUrp+++R8K7fAN9D0TeE8kfbsHlLe8H0PeB8CZjVjOVT8MXhEld2he1dd2
 UkoVJI9R12KVyqTHBifnQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kLcmpZsLMHg=:LoRu5U8RBYNWBdajrx2Cwj
 6uByw9wEYucEAL3bs+1NpQky5IJXsvTOh30GBcLVsNnj5/OwquXE9MpMPWojycLdCkndhwz+z
 puWsll5zQwgM8JWIVSvq6AWJAbVRm2X4pe5oDaKtxCngVuIIA+axfdXJ0S6FbTUnb8VnSwRIz
 qq7v+7v038KEMCGZ35mPmHCkXfEU1cSN6ZYwbZ0efnPULIZduEpJC52N64jDVt8VisVK3ssV7
 6aZtKKRmULV1uAZhzrlmFP9iq2m/I9znqHOwo0YJr7yMOEeIgUZbJKtSxQV4j+UbcZDmS8HQE
 LuGQwq1CMlbsrrJJ0CGqN2/mLKJxYmnbfJtnsDdp1pjp20yYDa4qMU8r6bhtgwS3/yG7zDNqK
 iZxDQHnl4i8x6PnGJz67MzpBbv3vmsym27A3S58cKKn6Md9UDbBI242zZ6rbizo5HJDKXJ6GI
 UxCWGLvITRVhAspCZCfwt+EBfFguy1dhrC9XrOF4I0VJK3M53cHCw+jPJUdCzLP0oyIMvdtkp
 Weh4d1hylUIKcVZqernWkqPkZorxBi3+lgfwM6I+ifN2erPkpucf3aFo3oP3Wfr9zIDsiHgRm
 mo7Zowpf0ldICtz3wHHRygz4UhGCgI7NWy93AvCjci6ORuvc4Ev3IYioUWqjuGJPDuxULpn4A
 a15PpF5qK7LDO+UcnTtvdG5ORUZbfltTMWziW0OG2VhmkxTExAwXFxEmM7eWriJ1BYH607csq
 1aGj26CaWSLC6rzP2Cbj9tPr6g43e+aGnQqJxQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074404_796242_5A6BB396 
X-CRM114-Status: GOOD (  13.64  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setting the phy mode requires touching a platform specific
register, which prevents us from building the driver without
its header files.

Move it into a separate function in arch/arm/mach/lpc32xx
to hide the core registers from the network driver.

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-lpc32xx/common.c       | 12 ++++++++++++
 drivers/net/ethernet/nxp/lpc_eth.c   | 12 +-----------
 include/linux/soc/nxp/lpc32xx-misc.h |  5 +++++
 3 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-lpc32xx/common.c b/arch/arm/mach-lpc32xx/common.c
index f648324d5fb4..a475339333c1 100644
--- a/arch/arm/mach-lpc32xx/common.c
+++ b/arch/arm/mach-lpc32xx/common.c
@@ -63,6 +63,18 @@ u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr)
 }
 EXPORT_SYMBOL_GPL(lpc32xx_return_iram);
 
+void lpc32xx_set_phy_interface_mode(phy_interface_t mode)
+{
+	u32 tmp = __raw_readl(LPC32XX_CLKPWR_MACCLK_CTRL);
+	tmp &= ~LPC32XX_CLKPWR_MACCTRL_PINS_MSK;
+	if (mode == PHY_INTERFACE_MODE_MII)
+		tmp |= LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS;
+	else
+		tmp |= LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS;
+	__raw_writel(tmp, LPC32XX_CLKPWR_MACCLK_CTRL);
+}
+EXPORT_SYMBOL_GPL(lpc32xx_set_phy_interface_mode);
+
 static struct map_desc lpc32xx_io_desc[] __initdata = {
 	{
 		.virtual	= (unsigned long)IO_ADDRESS(LPC32XX_AHB0_START),
diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
index bcdd0adcfb0c..0893b77c385d 100644
--- a/drivers/net/ethernet/nxp/lpc_eth.c
+++ b/drivers/net/ethernet/nxp/lpc_eth.c
@@ -20,9 +20,6 @@
 #include <linux/spinlock.h>
 #include <linux/soc/nxp/lpc32xx-misc.h>
 
-#include <mach/hardware.h>
-#include <mach/platform.h>
-
 #define MODNAME "lpc-eth"
 #define DRV_VERSION "1.00"
 
@@ -1237,16 +1234,9 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
 	dma_addr_t dma_handle;
 	struct resource *res;
 	int irq, ret;
-	u32 tmp;
 
 	/* Setup network interface for RMII or MII mode */
-	tmp = __raw_readl(LPC32XX_CLKPWR_MACCLK_CTRL);
-	tmp &= ~LPC32XX_CLKPWR_MACCTRL_PINS_MSK;
-	if (lpc_phy_interface_mode(dev) == PHY_INTERFACE_MODE_MII)
-		tmp |= LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS;
-	else
-		tmp |= LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS;
-	__raw_writel(tmp, LPC32XX_CLKPWR_MACCLK_CTRL);
+	lpc32xx_set_phy_interface_mode(lpc_phy_interface_mode(dev));
 
 	/* Get platform resources */
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
diff --git a/include/linux/soc/nxp/lpc32xx-misc.h b/include/linux/soc/nxp/lpc32xx-misc.h
index f232e1a1bcdc..af4f82f6cf3b 100644
--- a/include/linux/soc/nxp/lpc32xx-misc.h
+++ b/include/linux/soc/nxp/lpc32xx-misc.h
@@ -9,9 +9,11 @@
 #define __SOC_LPC32XX_MISC_H
 
 #include <linux/types.h>
+#include <linux/phy.h>
 
 #ifdef CONFIG_ARCH_LPC32XX
 extern u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr);
+extern void lpc32xx_set_phy_interface_mode(phy_interface_t mode);
 #else
 static inline u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr)
 {
@@ -19,6 +21,9 @@ static inline u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaadd
 	*dmaaddr = 0;
 	return 0;
 }
+static inline void lpc32xx_set_phy_interface_mode(phy_interface_t mode)
+{
+}
 #endif
 
 #endif  /* __SOC_LPC32XX_MISC_H */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
