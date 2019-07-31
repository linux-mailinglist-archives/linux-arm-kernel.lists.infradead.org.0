Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259B67CD89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwV39V+6A0KM/APXdF903MWKDIpH+JDN6F82E51sn1w=; b=XkAD9UfZne0DXz
	iuf9mHc/dgQL36anqFqBr5tMtEsCBo/PhatuS4uUW1go2WiyE8K72Lvp0qlWs4FIuGHrNNuMckPvb
	MBliMy69bdQo1koQC019epTHosol7l0xtrlbbgopjQB1clY8FaU5+gH/FtyoCEAZUA/qyHz2owTQQ
	6A35Fby1aK6pp5wqjj6QICEVFi3pIawjthqp5qSSuOx4p0zKLXxK9/WOUt+lwcELe0EFlqPHfXv0w
	jeTDPOp/jTRoC2brPenZD37WOT6sJ4BFKtA2xkp1RZr25783hAYr7GdXg0KCNW2l65AQLy1nDDvIf
	qhchakePpvjuZgyMLIeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsunP-0002MC-G9; Wed, 31 Jul 2019 20:01:59 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsunJ-0002Lr-9h
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:01:54 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MhWx1-1iWd3A2AUt-00eeFu; Wed, 31 Jul 2019 22:01:23 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 07/14] net: lpc-enet: move phy setup into platform code
Date: Wed, 31 Jul 2019 21:56:49 +0200
Message-Id: <20190731195713.3150463-8-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:DV0nUYbe0M7LEh69rBwpnzpxoNTB5NYut5sl+C1tAwRs+femstR
 Rb6T5pxzGUFSlJsJr98GJFWfI00qzelp0DSmJSBm+Ss1XOrjdPC5tHy4ZIHY7Q6wBFxXTCi
 jscc3Pqo7B3jvlmH+w27lTB9SaeK/1nbLjChGfLrc4ixR1DkgFO4ps4co9wrutnuhPxqLiW
 y2YJJujXV4RZ7aFFguoGQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4vEuAYs9ZXo=:GFoO+dSjJ1TDEX2+SUxnDx
 yqMghV4hxbjcUD6ijCuXiSaE3N3EEyyYw7YM+VDvmzD4V4clIdZVgbBBszYBg79h8zPiA/fi7
 PuHfqfZqc+YQKoLOz+Y05GtP1lQAKrt0dQunuwjuYVj565TjXwI0ZcNaWQmSzMHSO3AYGkO1t
 tM3cMJRzZpJKtFWZEmnaKy2bbsC3s+GFBnbjaRLVTA3VFHzURqYoRYLLOL2ilIvgCyHhVjFj4
 yeLFKXWVDO0GIQIdPorev9o1bd/H1DmbfTrvz7zfVCHzkq4s5r+z73cccXlotHP6nf7wedmXt
 iPeCk8sfxTrDcKlUg284A0JtFkg4URHi/sTKtsaLbno3CgnL5KdsqZXsDM8UpvjhA8905I7CI
 YJbJU2SP9RecnuZH+CvrVjWpjabuD6r8lfTHGhuF362RgQmSzRPuBf1Kk9yYGbKBqqQLCHZuO
 U0jagpJqBuZImzDYWYdne+7T8b1DpFvxzqpHXDX2P4AB4M/M7j1LBS3ZfDnXvKMFEfyyQF26w
 pBe2X3fJhusESwtQQuWiLhw/KlycsLnS6O5uZ20SL2VWN07a0meZDYTp15FQYWB7celFqw2cd
 WHnOcLv5jLsOgzWmcibU+4717eTSAv+Kn4hBKPs3pxhAP2mhxdtAlvmScDxXB/xPZ8hWJEhxJ
 /4n8Cmy85oczi2XHhkWw/t3JGfi2JLAtRqIK5N6g53zMPo3AaRWATfQamQ91y8XyQR8WublTd
 vvhb/nkpfBwQtPx27wK+aKf9DM4T9mjgAEcATg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130153_628268_F7C59AB7 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Setting the phy mode requires touching a platform specific
register, which prevents us from building the driver without
its header files.

Move it into a separate function in arch/arm/mach/lpc32xx
to hide the core registers from the network driver.

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
