Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02EC16BE12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NOMv4r3sujgA6IgoCI80FPtqziK7hwaOVWM6RogLTp4=; b=OShXmM7AgC+FmgHwxj368aY/JS
	2HIZXZ8mv8ABlCkIMBhowxDn+WXkn7y14Y9oLuwnEfNHCjx4G+/dVnQYGCbeYSkS9TScbdjmaMbci
	1ElnDT3QPiamyVQv7CX1B5DONZUJK26M2KmU3XQv6xyt04qQjLhxzVZrUIJcnLuxbFieUuJrS1cyC
	+1kSM5m7WMRBKc8dDSI6AxesppomUYJXycap/vvEzRpIrFiRv77kdl7n3Q/b7Jeqcf+MZxX3hISSR
	Xsxf87Ja+AoH3u4OGojSgPn8goJl4elpwFzEbegEM0enO1vEty90f9tfDyDCYLd2pqtycgRkqnCeV
	kWO9xfMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6WzD-0000nL-Q2; Tue, 25 Feb 2020 09:58:43 +0000
Received: from mailout2.hostsharing.net ([2a01:37:3000::53df:4ee9:0])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Wyr-0000i1-Tp; Tue, 25 Feb 2020 09:58:23 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id 1E07D1008D00B;
 Tue, 25 Feb 2020 10:50:42 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id CC23461146E6;
 Tue, 25 Feb 2020 10:50:41 +0100 (CET)
X-Mailbox-Line: From f97868ba4e9b86ddad71f44ec9d8b3b7d8daa1ea Mon Sep 17
 00:00:00 2001
Message-Id: <f97868ba4e9b86ddad71f44ec9d8b3b7d8daa1ea.1582618537.git.lukas@wunner.de>
In-Reply-To: <1a5735e8-b876-92e4-9f1e-687f5abf8708@i2se.com>
References: <1a5735e8-b876-92e4-9f1e-687f5abf8708@i2se.com>
From: Lukas Wunner <lukas@wunner.de>
Date: Tue, 25 Feb 2020 10:50:41 +0100
Subject: [PATCH v4] irqchip/bcm2835: Quiesce IRQs left enabled by bootloader
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_015822_137152_93679CBB 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Kristina Brooks <notstina@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Serge Schneider <serge@raspberrypi.org>,
 linux-kernel@vger.kernel.org, Phil Elwell <phil@raspberrypi.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Martin Sperl <kernel@martin.sperl.org>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Per the spec, the BCM2835's IRQs are all disabled when coming out of
power-on reset.  Its IRQ driver assumes that's still the case when the
kernel boots and does not perform any initialization of the registers.
However the Raspberry Pi Foundation's bootloader leaves the USB
interrupt enabled when handing over control to the kernel.

Quiesce IRQs and the FIQ if they were left enabled and log a message to
let users know that they should update the bootloader once a fixed
version is released.

If the USB interrupt is not quiesced and the USB driver later on claims
the FIQ (as it does on the Raspberry Pi Foundation's downstream kernel),
interrupt latency for all other peripherals increases and occasional
lockups occur.  That's because both the FIQ and the normal USB interrupt
fire simultaneously:

On a multicore Raspberry Pi, if normal interrupts are routed to CPU 0
and the FIQ to CPU 1 (hardcoded in the Foundation's kernel), then a USB
interrupt causes CPU 0 to spin in bcm2836_chained_handle_irq() until the
FIQ on CPU 1 has cleared it.  Other peripherals' interrupts are starved
as long.  I've seen CPU 0 blocked for up to 2.9 msec.  eMMC throughput
on a Compute Module 3 irregularly dips to 23.0 MB/s without this commit
but remains relatively constant at 23.5 MB/s with this commit.

The lockups occur when CPU 0 receives a USB interrupt while holding a
lock which CPU 1 is trying to acquire while the FIQ is temporarily
disabled on CPU 1.  At best users get RCU CPU stall warnings, but most
of the time the system just freezes.

Fixes: 89214f009c1d ("ARM: bcm2835: add interrupt controller driver")
Signed-off-by: Lukas Wunner <lukas@wunner.de>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: stable@vger.kernel.org # v3.7+
Cc: Serge Schneider <serge@raspberrypi.org>
Cc: Kristina Brooks <notstina@gmail.com>
Cc: Stefan Wahren <wahrenst@gmx.net>
---
v4:
* Add missing REG_FIQ_ENABLE macro, rename to FIQ_CONTROL_ENABLE (Stefan)

v3: (submitted as inline patch)
* Shorten commit message (Florian, Marc)

v2:
* Use "relaxed" MMIO accessors to avoid memory barriers (Marc)
* Use u32 instead of int for register access (Marc)
* Quiesce FIQ as well (Marc)
* Quiesce IRQs after mapping them for better readability
* Drop alternative approach from commit message (Marc)

 drivers/irqchip/irq-bcm2835.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/irqchip/irq-bcm2835.c b/drivers/irqchip/irq-bcm2835.c
index 418245d31921..a1e004af23e7 100644
--- a/drivers/irqchip/irq-bcm2835.c
+++ b/drivers/irqchip/irq-bcm2835.c
@@ -61,6 +61,7 @@
 					| SHORTCUT1_MASK | SHORTCUT2_MASK)
 
 #define REG_FIQ_CONTROL		0x0c
+#define FIQ_CONTROL_ENABLE	BIT(7)
 
 #define NR_BANKS		3
 #define IRQS_PER_BANK		32
@@ -135,6 +136,7 @@ static int __init armctrl_of_init(struct device_node *node,
 {
 	void __iomem *base;
 	int irq, b, i;
+	u32 reg;
 
 	base = of_iomap(node, 0);
 	if (!base)
@@ -157,6 +159,19 @@ static int __init armctrl_of_init(struct device_node *node,
 				handle_level_irq);
 			irq_set_probe(irq);
 		}
+
+		reg = readl_relaxed(intc.enable[b]);
+		if (reg) {
+			writel_relaxed(reg, intc.disable[b]);
+			pr_err(FW_BUG "Bootloader left irq enabled: "
+			       "bank %d irq %*pbl\n", b, IRQS_PER_BANK, &reg);
+		}
+	}
+
+	reg = readl_relaxed(base + REG_FIQ_CONTROL);
+	if (reg & FIQ_CONTROL_ENABLE) {
+		writel_relaxed(0, base + REG_FIQ_CONTROL);
+		pr_err(FW_BUG "Bootloader left fiq enabled\n");
 	}
 
 	if (is_2836) {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
