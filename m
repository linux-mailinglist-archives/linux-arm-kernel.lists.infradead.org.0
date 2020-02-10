Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705E2157220
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=52m4zqqDQ15r/4EHqLM3tCdaghuCQFRSRI636FPzyTg=; b=sLV1I6RPSfIAq0DmE3ADnTyGjh
	NnOUSjVDCUDlMsaRe7dhAfC7D3enDiNCrnGXNT3kb6+57+bXrj31EU+9NhIevN+Rr+lrXe+8PaWKw
	Q2LbzZDJ3owcXTu2EZAYrQPHg/BScQT5NiMMHrLmISp9B3erAO45imXsyolyfBhUFbvxPY/ijVw2C
	rPXYS/w47IaC6T79wZVTZ1Iuqn0jR/qvksA7yRUBMTsnHcc3fv6yuD+cD0BFmmao7LAxKlA3uu8Ba
	MXB0/7aQIlb5yOssEfnwThbbnbrpxmnIS0CT00K1yAYIkzDAv7lS7imZ5qTy2uahyJFWjQF8T++wX
	TgZL/6mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15kL-0008ES-Lj; Mon, 10 Feb 2020 09:52:53 +0000
Received: from mailout1.hostsharing.net ([83.223.95.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15kC-0008Cu-Hl; Mon, 10 Feb 2020 09:52:46 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout1.hostsharing.net (Postfix) with ESMTPS id 32EE510192623;
 Mon, 10 Feb 2020 10:52:31 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id E85DF60AD5E1;
 Mon, 10 Feb 2020 10:52:30 +0100 (CET)
X-Mailbox-Line: From 8be2f3e95fb29abdf80240f2b8a38621c42eb2a9 Mon Sep 17
 00:00:00 2001
Message-Id: <8be2f3e95fb29abdf80240f2b8a38621c42eb2a9.1581327911.git.lukas@wunner.de>
In-Reply-To: <713627a200d9c8fd7cac424d69e98166@kernel.org>
References: <713627a200d9c8fd7cac424d69e98166@kernel.org>
From: Lukas Wunner <lukas@wunner.de>
Date: Mon, 10 Feb 2020 10:52:20 +0100
Subject: [PATCH v2] irqchip/bcm2835: Quiesce IRQs left enabled by bootloader
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>,
 "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_015244_903439_EE700514 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.223.95.204 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [83.223.95.204 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: Serge Schneider <serge@raspberrypi.org>
Cc: Kristina Brooks <notstina@gmail.com>
Cc: stable@vger.kernel.org
---
Changes since v1:
* Use "relaxed" MMIO accessors to avoid memory barriers (Marc)
* Use u32 instead of int for register access (Marc)
* Quiesce FIQ as well (Marc)
* Quiesce IRQs after mapping them for better readability
* Drop alternative approach from commit message (Marc)

Link to v1:
https://lore.kernel.org/lkml/988737dbbc4e499c2faaaa4e567ba3ed8deb9a89.1581089797.git.lukas@wunner.de/

 drivers/irqchip/irq-bcm2835.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/irqchip/irq-bcm2835.c b/drivers/irqchip/irq-bcm2835.c
index 418245d31921..63539c88ac3a 100644
--- a/drivers/irqchip/irq-bcm2835.c
+++ b/drivers/irqchip/irq-bcm2835.c
@@ -61,6 +61,7 @@
 					| SHORTCUT1_MASK | SHORTCUT2_MASK)
 
 #define REG_FIQ_CONTROL		0x0c
+#define REG_FIQ_ENABLE		0x80
 
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
+	if (reg & REG_FIQ_ENABLE) {
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
