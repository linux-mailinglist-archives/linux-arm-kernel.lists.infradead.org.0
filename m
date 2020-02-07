Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1B0155B3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 16:56:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PoTBVmmly7qS1O/fhxrGZWlxbs246B+1dCkAPcF58Ko=; b=JUk
	PvvP5RKnnQUXWRy8rmriDb0eCNp1zMkxIxX5WoLRI6qC5Vq2O3csIXKkF5ESWRnLWemFsuTAT9gmZ
	9YFM9ybuyagSV70w8BHVJyOljKV42ix+TcwZD4NjtzgP0G8yyoSzbQkzm4E4t8TNeh23pzsHblqQx
	WgKB7OV3ttumMPSguwtqlv4dzHtMmYzcRIN0raXDUu7inawXzH2i9tqpDvYBEmMrj0jksQokqM3EE
	auzsTybqFctRbLyLts5CV38Cbw5JizAN1by27Yqavs7SKhz59zMO+VfHbyyt2LQMZ3nBT4aWoey1O
	Tavm4njEEs1v0hWN9lMjQzn1k8sTuEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j05zi-0003sm-Qx; Fri, 07 Feb 2020 15:56:38 +0000
Received: from mailout3.hostsharing.net ([2a01:4f8:150:2161:1:b009:f236:0])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j05za-0003rV-65; Fri, 07 Feb 2020 15:56:32 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout3.hostsharing.net (Postfix) with ESMTPS id 6682E100B01B2;
 Fri,  7 Feb 2020 16:47:17 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 097A8615E104;
 Fri,  7 Feb 2020 16:47:17 +0100 (CET)
X-Mailbox-Line: From 988737dbbc4e499c2faaaa4e567ba3ed8deb9a89 Mon Sep 17
 00:00:00 2001
Message-Id: <988737dbbc4e499c2faaaa4e567ba3ed8deb9a89.1581089797.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Fri, 7 Feb 2020 16:46:41 +0100
Subject: [PATCH] irqchip/bcm2835: Quiesce IRQs left enabled by bootloader
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>,
 "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_075630_540717_E625BDB7 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Kristina Brooks <notstina@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Serge Schneider <serge@raspberrypi.org>,
 linux-kernel@vger.kernel.org, Phil Elwell <phil@raspberrypi.org>,
 Matthias Brugger <mbrugger@suse.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Martin Sperl <kernel@martin.sperl.org>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Customers of our "Revolution Pi" open source PLCs (which are based on
the Raspberry Pi) have reported random lockups as well as jittery eMMC,
UART and SPI latency.  We were able to reproduce the lockups in our lab
and hooked up a JTAG debugger:

It turns out that the USB controller's interrupt is already enabled when
the kernel boots.  All interrupts are disabled when the chip comes out
of power-on reset, according to the spec.  So apparently the bootloader
enables the interrupt but neglects to disable it before handing over
control to the kernel.

The bootloader is a closed source blob provided by the Raspberry Pi
Foundation.  Development of an alternative open source bootloader was
begun by Kristina Brooks but it's not fully functional yet.  Usage of
the blob is thus without alternative for the time being.

The Raspberry Pi Foundation's downstream kernel has a performance-
optimized USB driver (which we use on our Revolution Pi products).
The driver takes advantage of the FIQ fast interrupt.  Because the
regular USB interrupt was left enabled by the bootloader, both the
FIQ and the normal interrupt is enabled once the USB driver probes.

The spec has the following to say on simultaneously enabling the FIQ
and the normal interrupt of a peripheral:

"One interrupt source can be selected to be connected to the ARM FIQ
 input.  An interrupt which is selected as FIQ should have its normal
 interrupt enable bit cleared.  Otherwise a normal and an FIQ interrupt
 will be fired at the same time.  Not a good idea!"
                                  ^^^^^^^^^^^^^^^
https://www.raspberrypi.org/app/uploads/2012/02/BCM2835-ARM-Peripherals.pdf
page 110

On a multicore Raspberry Pi, the Foundation's kernel routes all normal
interrupts to CPU 0 and the FIQ to CPU 1.  Because both the FIQ and the
normal interrupt is enabled, a USB interrupt causes CPU 0 to spin in
bcm2836_chained_handle_irq() until the FIQ on CPU 1 has cleared it.
Interrupts with a lower priority than USB are starved as long.

That explains the jittery eMMC, UART and SPI latency:  On one occasion
I've seen CPU 0 blocked for no less than 2.9 msec.  Basically,
everything not USB takes a performance hit:  Whereas eMMC throughput
on a Compute Module 3 remains relatively constant at 23.5 MB/s with
this commit, it irregularly dips to 23.0 MB/s without this commit.

The lockups occur when CPU 0 receives a USB interrupt while holding a
lock which CPU 1 is trying to acquire while the FIQ is temporarily
disabled on CPU 1.

I've tested old releases of the Foundation's bootloader as far back as
1.20160202-1 and they all leave the USB interrupt enabled.  Still older
releases fail to boot a contemporary kernel on a Compute Module 1 or 3,
which are the only Raspberry Pi variants I have at my disposal for
testing.

Fix by disabling IRQs left enabled by the bootloader.  Although the
impact is most pronounced on the Foundation's downstream kernel,
it seems prudent to apply the fix to the upstream kernel to guard
against such mistakes in any present and future bootloader.

An alternative, though more convoluted approach would be to clear the
IRQD_IRQ_MASKED flag on all interrupts left enabled on boot.  Then the
first invocation of handle_level_irq() would mask and thereby quiesce
those interrupts.

Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: Serge Schneider <serge@raspberrypi.org>
Cc: Kristina Brooks <notstina@gmail.com>
Cc: stable@vger.kernel.org
---
 drivers/irqchip/irq-bcm2835.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/irqchip/irq-bcm2835.c b/drivers/irqchip/irq-bcm2835.c
index 418245d31921..0d9a5a7ebe2c 100644
--- a/drivers/irqchip/irq-bcm2835.c
+++ b/drivers/irqchip/irq-bcm2835.c
@@ -150,6 +150,13 @@ static int __init armctrl_of_init(struct device_node *node,
 		intc.enable[b] = base + reg_enable[b];
 		intc.disable[b] = base + reg_disable[b];
 
+		irq = readl(intc.enable[b]);
+		if (irq) {
+			writel(irq, intc.disable[b]);
+			pr_err(FW_BUG "Bootloader left irq enabled: "
+			       "bank %d irq %*pbl\n", b, IRQS_PER_BANK, &irq);
+		}
+
 		for (i = 0; i < bank_irqs[b]; i++) {
 			irq = irq_create_mapping(intc.domain, MAKE_HWIRQ(b, i));
 			BUG_ON(irq <= 0);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
