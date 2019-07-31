Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ED87CD96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVQC67ZvDHCPlglI8G7YJa32l3AF+XKfyBZ1SiQsuCU=; b=fe6YW8EyS/zuz7
	zPBy5n6xRU4hfKvPPC1zFDij7wvNBtKM2TD88G2NSWDUPAtZ2WHY0LDTuAqwWB6z8Onr6Eoi0uEyC
	s4zQYjMUM6GjDBM9PqbXcPfG8Go1udVbcXGNYRqL03nXjaXDr5q+lyfnSGHFnSp0TRg19XGCWfova
	0rbYmqsnt+UQeP3YczGkhtWqvJxAFiJjq61UISoSgG1LQ28Qeujzl2HjX3S+hFbgFmIlpVQh37Q1G
	ydwJ2UG873GB3krwVmjobvaCVeE7uF0myg6b2pWaexlpvC7RArY1A1RMubAu632muA8VmS+3BcPeh
	2KhiGwx9ID8jQBW9gXjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsuoP-0003bI-Ac; Wed, 31 Jul 2019 20:03:01 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsuo3-0003IC-UN
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:02:43 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MyvFC-1iFEmI1isM-00vu1b; Wed, 31 Jul 2019 22:02:08 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 09/14] serial: lpc32xx: allow compile testing
Date: Wed, 31 Jul 2019 21:56:51 +0200
Message-Id: <20190731195713.3150463-10-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:U34UKG0WKd1du7DGye/96IP8sexEkIzBlk61JFzClDj31SLKqCI
 wfz+noGeI4XYslZMxD9cagGBYN/PWTDbo26SLz707TH/Ua6X9hBQLqZGlOQJxZ8AQi6UI9o
 cSjmHqUz43Veryx8v4Q1bfVU25rLjk0jJYvgztz+l1bZMNCjzxpn2Oz4oZ+VdmqEv+N2NyI
 AK7H4/I5OUe/oZGljJ50A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xpMEYv/5InE=:SJjD2WgwLQK7f/E7eG49m1
 ORCHWdS6/lv4MHlAX9BAyyAzpJ37dQYNMkXKmZj2nREnuOPDQi8KABrnPacczrAz27FJOfXrx
 R8OpIbGHb1OZXerV+HbTvHFFmIRMylgwXzscLtC9Lw21WwjNzEfvk5VXvk+RXedvozf707BnR
 gLKPap9ZJE1WdxxphI0eL3/CfKAz+4eWAxdfGq0g701jnm8txJekpOspq/R+klU7jVStL/qlo
 uFX4imePVsjfkU3XUgKN/J49zj/WCVXzjl5+bEfQrJzdneGQcuMy5Dflv1C9rJC1guUOKEClr
 D+MCibHfsUeL73Pz8TjL+aEee1QYidg9uAWVZVE6IO8u3yq4CJ+yRTDbQKlq8xtIz7RauM6Wo
 2fzPgU5667Cs1YTWGXcBfPTSFcqcrGUl+7Db+yzjwvHi8W4s+cc9pZyw1lOlCEjkBUKpyXUGq
 8oanZOfS4SDpK0V/rh8bp5wAytZ+pa58Nv0NkuphQIm1NgbZutoGbqzO+hSy87q1xXM0LmxVK
 C2vmeJ/BVUkQK9gGduSd5IZghQq/S65gYcPY34ce41IlP9mie+7rNba87dk+9KIQdEU1FkHt7
 X/yu8Ev+mtMh5TQ8dP6o8gN1sNmc7ClBxwoMKNTbwQpTWhCggqRcZjVGcKgpYb4j65PeB1vgB
 zeQT+UXcTgGAOM/3NC2qSmGn6Dv0v/AuPh4G7fl00U4rgcXkRG1axjkHib/qYlhLxUc3YNvXv
 y/20aDue/cmZNdH9zEwtoYWsepgqu1h0QGyRXw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130240_281826_211F1697 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 netdev@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The lpc32xx_loopback_set() function in hte lpc32xx_hs driver is the
one thing that relies on platform header files. Move that into the
core platform code so we only need a variable declaration for it,
and enable COMPILE_TEST building.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-lpc32xx/serial.c       | 30 ++++++++++++++++++++++++
 drivers/tty/serial/lpc32xx_hs.c      | 35 ++++------------------------
 include/linux/soc/nxp/lpc32xx-misc.h |  4 ++++
 3 files changed, 38 insertions(+), 31 deletions(-)

diff --git a/arch/arm/mach-lpc32xx/serial.c b/arch/arm/mach-lpc32xx/serial.c
index 3f9b30df9f0e..cfb35e5691cd 100644
--- a/arch/arm/mach-lpc32xx/serial.c
+++ b/arch/arm/mach-lpc32xx/serial.c
@@ -60,6 +60,36 @@ static struct uartinit uartinit_data[] __initdata = {
 	},
 };
 
+/* LPC3250 Errata HSUART.1: Hang workaround via loopback mode on inactivity */
+void lpc32xx_loopback_set(resource_size_t mapbase, int state)
+{
+	int bit;
+	u32 tmp;
+
+	switch (mapbase) {
+	case LPC32XX_HS_UART1_BASE:
+		bit = 0;
+		break;
+	case LPC32XX_HS_UART2_BASE:
+		bit = 1;
+		break;
+	case LPC32XX_HS_UART7_BASE:
+		bit = 6;
+		break;
+	default:
+		WARN(1, "lpc32xx_hs: Warning: Unknown port at %08x\n", mapbase);
+		return;
+	}
+
+	tmp = readl(LPC32XX_UARTCTL_CLOOP);
+	if (state)
+		tmp |= (1 << bit);
+	else
+		tmp &= ~(1 << bit);
+	writel(tmp, LPC32XX_UARTCTL_CLOOP);
+}
+EXPORT_SYMBOL_GPL(lpc32xx_loopback_set);
+
 void __init lpc32xx_serial_init(void)
 {
 	u32 tmp, clkmodes = 0;
diff --git a/drivers/tty/serial/lpc32xx_hs.c b/drivers/tty/serial/lpc32xx_hs.c
index 7f14cd8fac47..d3843f722182 100644
--- a/drivers/tty/serial/lpc32xx_hs.c
+++ b/drivers/tty/serial/lpc32xx_hs.c
@@ -25,6 +25,8 @@
 #include <linux/irq.h>
 #include <linux/gpio.h>
 #include <linux/of.h>
+#include <linux/sizes.h>
+#include <linux/soc/nxp/lpc32xx-misc.h>
 
 /*
  * High Speed UART register offsets
@@ -79,6 +81,8 @@
 #define LPC32XX_HSU_TX_TL8B			(0x2 << 0)
 #define LPC32XX_HSU_TX_TL16B			(0x3 << 0)
 
+#define LPC32XX_MAIN_OSC_FREQ			13000000
+
 #define MODNAME "lpc32xx_hsuart"
 
 struct lpc32xx_hsuart_port {
@@ -149,8 +153,6 @@ static void lpc32xx_hsuart_console_write(struct console *co, const char *s,
 	local_irq_restore(flags);
 }
 
-static void lpc32xx_loopback_set(resource_size_t mapbase, int state);
-
 static int __init lpc32xx_hsuart_console_setup(struct console *co,
 					       char *options)
 {
@@ -437,35 +439,6 @@ static void serial_lpc32xx_break_ctl(struct uart_port *port,
 	spin_unlock_irqrestore(&port->lock, flags);
 }
 
-/* LPC3250 Errata HSUART.1: Hang workaround via loopback mode on inactivity */
-static void lpc32xx_loopback_set(resource_size_t mapbase, int state)
-{
-	int bit;
-	u32 tmp;
-
-	switch (mapbase) {
-	case LPC32XX_HS_UART1_BASE:
-		bit = 0;
-		break;
-	case LPC32XX_HS_UART2_BASE:
-		bit = 1;
-		break;
-	case LPC32XX_HS_UART7_BASE:
-		bit = 6;
-		break;
-	default:
-		WARN(1, "lpc32xx_hs: Warning: Unknown port at %08x\n", mapbase);
-		return;
-	}
-
-	tmp = readl(LPC32XX_UARTCTL_CLOOP);
-	if (state)
-		tmp |= (1 << bit);
-	else
-		tmp &= ~(1 << bit);
-	writel(tmp, LPC32XX_UARTCTL_CLOOP);
-}
-
 /* port->lock is not held.  */
 static int serial_lpc32xx_startup(struct uart_port *port)
 {
diff --git a/include/linux/soc/nxp/lpc32xx-misc.h b/include/linux/soc/nxp/lpc32xx-misc.h
index af4f82f6cf3b..699c6f1e3aab 100644
--- a/include/linux/soc/nxp/lpc32xx-misc.h
+++ b/include/linux/soc/nxp/lpc32xx-misc.h
@@ -14,6 +14,7 @@
 #ifdef CONFIG_ARCH_LPC32XX
 extern u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr);
 extern void lpc32xx_set_phy_interface_mode(phy_interface_t mode);
+extern void lpc32xx_loopback_set(resource_size_t mapbase, int state);
 #else
 static inline u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr)
 {
@@ -24,6 +25,9 @@ static inline u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaadd
 static inline void lpc32xx_set_phy_interface_mode(phy_interface_t mode)
 {
 }
+static inline void lpc32xx_loopback_set(resource_size_t mapbase, int state)
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
