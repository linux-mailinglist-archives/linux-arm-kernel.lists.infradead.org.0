Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B5B87D18
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVQC67ZvDHCPlglI8G7YJa32l3AF+XKfyBZ1SiQsuCU=; b=tSU9XD4euTMAuM
	ETERbAlQ/P0XeGmYvg11MpjPbDftLXcD8v5Qj+XCvpy1QbsNgwVCP9vFkN0nPHtlJc6k0CmvRAoFV
	zldZg1Aj32hCpjw9e+nIi27eZfQKc6UQED1GnL/+066e8O8v4KbamXZqCc+8eRDTWSHNB5/n93X8F
	90uYcNE5WyurMW+oneLB4ee08pI2CPArZktG8hj7EnalqCXdhVGfXQmzMVtyqo56Hc29OX6tc0tjk
	s6cLl7Y6RTG9X7mwprUT+dIPauyWqcXng3anrgIiHEAfgxORJDZaElm+Qvrm7F3gxLtWo8mQVlBMz
	ZXx/0SvAa5ERo9ZSu0AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw69k-0008WF-J9; Fri, 09 Aug 2019 14:46:13 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw69W-0008Si-Sf
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:46:00 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N79Ey-1iNaIe1kU8-017V2R; Fri, 09 Aug 2019 16:45:20 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 11/13] serial: lpc32xx: allow compile testing
Date: Fri,  9 Aug 2019 16:40:37 +0200
Message-Id: <20190809144043.476786-12-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:QSyZAIrEK0tisvxeshqXx4Yf121VPR+VVNYcnXCO8jzU+Wj3Ush
 I/ukpTsjSD50wlu5mlErjvyyjoC7r5ZaE9gO6Bzq5JQB8kvQN/7/3zM8Bih+zpxqpE1wyo4
 T5ehI8/mM/L7wAgH4tcbxV4iEiOQijuNX2En16g/UAdInN5IC+HSJHS6z7Tyg1No1B2si8l
 19wPbeSZDJ1CNo4wggS2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VJCyh49joGQ=:hiDrY4RgZVRXKwVAgZwTaF
 zd/yvwV5BTZewhK51/lohRaZMa4Ns09MbbfjiVlXLr5F+LAzi3ITNBjb79lgUU0Y3zS5zA0Gg
 6fMw1KccRDUHKbZ7nR5vc3++tNjZAY8jtUo8K1uTy7g7c8fU29PKEi1rzwGZofnn7OUmhCK9/
 +SoDdtlr/BCbvIO8lImCdQ6JUpVEhWW2ZW6skW9CBes3Aud4FKEi2N/AEreZqioOOYxOxVVbC
 E7ZXajHg0vvQvFwqJKTMEHyssG8oGufrB2rl2mltwc/9AyeWX5gLPnrgwwGKAYieJgrHBKd90
 2hdrZOhAt6ju6w3H7zepU+DH3gSl8nopfVfESIfOH708xGNuc9p3bDTiq61nsIza3PM7gCmGs
 w44mJQY5PlsPIGTFdlzKnJy+xhElyaG3CbTYGUBn0lngXe6pEAah6teBvuIhbhe9z2KbBoVae
 xL6OnSGYwiKhBS2tq0YmF+AN4Cvv6dq7t68dsK24GOgio4AyGLVg7DLrJhguVowEXjR3qAqSU
 vyvia2c9x7tzYcRE2DvRfP7km8GnHCORRT34OKCUqNiMD5pwREOpwFiU0AO86WFKuZhxzydlG
 uheyaIfuS+5sTAUwai+7fYv+NvzQ5wIxwI/1kz6tLkzmBBAQVrvXoHqxhfqmgJAcwNoa3YLnr
 Ok37nwVz4h+iJIXlt6wzL8C3QHsoOhlH4hXBTMxqosmMvDo5Skz356oB7K+CDQDhQAaVW9Kuu
 C3BZGQW5BFpJC6DTSfIJQyquZnDaMZQUeE0TuA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074559_259933_889D913A 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
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
