Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C1530D33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 13:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyTeWwuMf4236b2SVqbiDh+Av2gHGUVUWCN7+HF2WQM=; b=UWChEfzf8NbFwg
	cfy26Si/m5KmlT4vpspjuGVdF5eAyP7wwxaIsEuODJD2Vt0EDruXCZ5d728Ntro4I6UCpzLlJEHsD
	fQxumxwaeSTquQ65fx8ZAhP8dxKOD1KRkAVDO9oCJXEphdA8scu080hhmKFkSJnag7MfrbJJyw921
	1hWmV3YsdSiC2s+cHpa+AzwpfDiiy+WGqd3Eef9/sYB/CjzX6Fu8jUGZTVrXLgchyQVOwuW/kyUxA
	WL8u6DRV1nUDxZxq+U4CuiJg+pkIPps9w427B7WhANYmCGYn/pWJZyH3gAa8cteD9TeYPcJrOSbRl
	Z7FB7CInby932hx8s0HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWfVH-0003qd-U2; Fri, 31 May 2019 11:15:19 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWfUT-0002OO-IX
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 11:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=erskDUB/2Fs4KqYqDJJfeR3vqL23NrMODoSCo1hPoYM=; b=OhIRskAD01Ht7HI8SHXc30mfb0
 2sQdUpvnHW0jjpWbv6QobmboDTt+Hnw4bhwHSvhGz4c2M/oLjvmagZQZ5RzKlnomVmhgIyUeorkog
 i5xI4DSNWrsBTcl94CGKQkGrhcUeubo8I2k22bpGG/sE2Aym2XCTAHSm13Hsgez5pd5D8GDjj8WRF
 iYdfHthY7AmdvSqReUYp072NbOZEfYcXm/gKyiMqBSPO0hd6UMJv43We+lxhmPedb0KJ+4rZYFlrN
 ImUkYsPmEsaMe44lRg9702pDxo0LPJfTYo+6D/8mHYQfSi5ZOBjE+jrZDrCAkGxsMWTIjLJ1RYFZh
 1Hcr7Ivw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:39634 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hWfUF-0000PV-N2; Fri, 31 May 2019 12:14:15 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hWfUD-0003fy-Hm; Fri, 31 May 2019 12:14:13 +0100
In-Reply-To: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
References: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org,linux-serial@vger.kernel.org
Subject: [PATCH 6/6] ARM: sa1100/neponset: convert serial to use gpiod APIs
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hWfUD-0003fy-Hm@rmk-PC.armlinux.org.uk>
Date: Fri, 31 May 2019 12:14:13 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_041430_674622_AD4C6237 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the serial modem control signals to use the gpiod APIs rather
than the private platform callbacks.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-sa1100/neponset.c | 109 +++++++++++-----------------------------
 1 file changed, 28 insertions(+), 81 deletions(-)

diff --git a/arch/arm/mach-sa1100/neponset.c b/arch/arm/mach-sa1100/neponset.c
index eb60a71cf125..f1f70fc98fb7 100644
--- a/arch/arm/mach-sa1100/neponset.c
+++ b/arch/arm/mach-sa1100/neponset.c
@@ -11,7 +11,6 @@
 #include <linux/irq.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/platform_data/sa11x0-serial.h>
 #include <linux/platform_device.h>
 #include <linux/pm.h>
 #include <linux/serial_core.h>
@@ -49,23 +48,8 @@
 #define IRR_SA1111	(1 << 2)
 
 #define NCR_NGPIO	7
-
-#define MDM_CTL0_RTS1	(1 << 0)
-#define MDM_CTL0_DTR1	(1 << 1)
-#define MDM_CTL0_RTS2	(1 << 2)
-#define MDM_CTL0_DTR2	(1 << 3)
 #define MDM_CTL0_NGPIO	4
-
-#define MDM_CTL1_CTS1	(1 << 0)
-#define MDM_CTL1_DSR1	(1 << 1)
-#define MDM_CTL1_DCD1	(1 << 2)
-#define MDM_CTL1_CTS2	(1 << 3)
-#define MDM_CTL1_DSR2	(1 << 4)
-#define MDM_CTL1_DCD2	(1 << 5)
 #define MDM_CTL1_NGPIO	6
-
-#define AUD_SEL_1341	(1 << 0)
-#define AUD_MUTE_1341	(1 << 1)
 #define AUD_NGPIO	2
 
 extern void sa1110_mb_disable(void);
@@ -97,6 +81,30 @@ struct neponset_drvdata {
 	struct gpio_chip *gpio[4];
 };
 
+static struct gpiod_lookup_table neponset_uart1_gpio_table = {
+	.dev_id = "sa11x0-uart.1",
+	.table = {
+		GPIO_LOOKUP("neponset-mdm-ctl0", 2, "rts", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("neponset-mdm-ctl0", 3, "dtr", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("neponset-mdm-ctl1", 3, "cts", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("neponset-mdm-ctl1", 4, "dsr", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("neponset-mdm-ctl1", 5, "dcd", GPIO_ACTIVE_LOW),
+		{ },
+	},
+};
+
+static struct gpiod_lookup_table neponset_uart3_gpio_table = {
+	.dev_id = "sa11x0-uart.3",
+	.table = {
+		GPIO_LOOKUP("neponset-mdm-ctl0", 0, "rts", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("neponset-mdm-ctl0", 1, "dtr", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("neponset-mdm-ctl1", 0, "cts", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("neponset-mdm-ctl1", 1, "dsr", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("neponset-mdm-ctl1", 2, "dcd", GPIO_ACTIVE_LOW),
+		{ },
+	},
+};
+
 static struct gpiod_lookup_table neponset_pcmcia_table = {
 	.dev_id = "1800",
 	.table = {
@@ -124,69 +132,6 @@ void neponset_ncr_frob(unsigned int mask, unsigned int val)
 }
 EXPORT_SYMBOL(neponset_ncr_frob);
 
-static void neponset_set_mctrl(struct uart_port *port, u_int mctrl)
-{
-	struct neponset_drvdata *n = nep;
-	unsigned long mask, val = 0;
-
-	if (!n)
-		return;
-
-	if (port->mapbase == _Ser1UTCR0) {
-		mask = MDM_CTL0_RTS2 | MDM_CTL0_DTR2;
-
-		if (!(mctrl & TIOCM_RTS))
-			val |= MDM_CTL0_RTS2;
-
-		if (!(mctrl & TIOCM_DTR))
-			val |= MDM_CTL0_DTR2;
-	} else if (port->mapbase == _Ser3UTCR0) {
-		mask = MDM_CTL0_RTS1 | MDM_CTL0_DTR1;
-
-		if (!(mctrl & TIOCM_RTS))
-			val |= MDM_CTL0_RTS1;
-
-		if (!(mctrl & TIOCM_DTR))
-			val |= MDM_CTL0_DTR1;
-	}
-
-	n->gpio[1]->set_multiple(n->gpio[1], &mask, &val);
-}
-
-static u_int neponset_get_mctrl(struct uart_port *port)
-{
-	void __iomem *base = nep->base;
-	u_int ret = TIOCM_CD | TIOCM_CTS | TIOCM_DSR;
-	u_int mdm_ctl1;
-
-	if (!base)
-		return ret;
-
-	mdm_ctl1 = readb_relaxed(base + MDM_CTL_1);
-	if (port->mapbase == _Ser1UTCR0) {
-		if (mdm_ctl1 & MDM_CTL1_DCD2)
-			ret &= ~TIOCM_CD;
-		if (mdm_ctl1 & MDM_CTL1_CTS2)
-			ret &= ~TIOCM_CTS;
-		if (mdm_ctl1 & MDM_CTL1_DSR2)
-			ret &= ~TIOCM_DSR;
-	} else if (port->mapbase == _Ser3UTCR0) {
-		if (mdm_ctl1 & MDM_CTL1_DCD1)
-			ret &= ~TIOCM_CD;
-		if (mdm_ctl1 & MDM_CTL1_CTS1)
-			ret &= ~TIOCM_CTS;
-		if (mdm_ctl1 & MDM_CTL1_DSR1)
-			ret &= ~TIOCM_DSR;
-	}
-
-	return ret;
-}
-
-static struct sa1100_port_fns neponset_port_fns = {
-	.set_mctrl	= neponset_set_mctrl,
-	.get_mctrl	= neponset_get_mctrl,
-};
-
 /*
  * Install handler for Neponset IRQ.  Note that we have to loop here
  * since the ETHERNET and USAR IRQs are level based, and we need to
@@ -388,6 +333,8 @@ static int neponset_probe(struct platform_device *dev)
 			   d->base + AUD_CTL, AUD_NGPIO, false,
 			   neponset_aud_names);
 
+	gpiod_add_lookup_table(&neponset_uart1_gpio_table);
+	gpiod_add_lookup_table(&neponset_uart3_gpio_table);
 	gpiod_add_lookup_table(&neponset_pcmcia_table);
 
 	/*
@@ -402,8 +349,6 @@ static int neponset_probe(struct platform_device *dev)
 		 d->irq_base, d->irq_base + NEP_IRQ_NR - 1);
 	nep = d;
 
-	sa1100_register_uart_fns(&neponset_port_fns);
-
 	/* Ensure that the memory bus request/grant signals are setup */
 	sa1110_mb_disable();
 
@@ -442,6 +387,8 @@ static int neponset_remove(struct platform_device *dev)
 		platform_device_unregister(d->smc91x);
 
 	gpiod_remove_lookup_table(&neponset_pcmcia_table);
+	gpiod_remove_lookup_table(&neponset_uart3_gpio_table);
+	gpiod_remove_lookup_table(&neponset_uart1_gpio_table);
 
 	irq_set_chained_handler(irq, NULL);
 	irq_free_descs(d->irq_base, NEP_IRQ_NR);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
