Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA7D3D2F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQbxJzl42lFTvZHY1eJTP6M+rBCW0E0iHvBLOTmcTGU=; b=ApYyiPLJ/8G1g6
	ZsEV8pToJrpA04AgZ135iUBDQt0Nbddo8EXXAjX4x1TP2j01NNK7dwgpw4Q54uA9UngVA4cwjWXfY
	YlkehDh8H8IPnDJ76haz1wJTYUpB90dH9IOR7RPCY6hnAtl4movUnUPdExauNRy3Cz4Sephw2JlTL
	esbiJRJVTZ+x1K46KRhPpTUruGnLA9afHBQweXqZ1uaMYJQaCaNSG/iQ3C/1tlfLqtgxnJJiiEihd
	y3RB7qZMIFcD20JYn9WVxwSiqJ32lwoZFFyj4DM36867uigviiyU3dzoyqSm/0HMCGqlhXTZbcaFE
	hKSHiKcSiT1+DLHy2hjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajwh-0001HJ-6K; Tue, 11 Jun 2019 16:48:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajvg-0000Xh-DP
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QpSmT2cFKx65fsxBcmPoiPiG91syf0dNg2/T/AgZxQE=; b=L6JkV8l1mmwDgxUBuUtERqBy+M
 U3Ho81vQKcDSZLuYtN7H5yCN5v1h+p86x/5JQZm7EgcxtCKv3U8sp5J7uSpVn0Saxxg6cWhTvo3nA
 UyEb4sRUz+Zu0LynzDtFMS8ktQGSicZiOXnMjcj6zJbb8DsSpbnux3mngVpAer/Xi5rY0hL5lEB5s
 An9HVnhS4SpDzJnV2ky2wt1A9XT3Jw9LzW21ViE7cjEvtFQxv5JQVHScMRL+RTjLwkW+Aa0bDZIUE
 JmdjHRjIBk2rdj5XsY/JIBt+/EgkHmhQVtrEBwlNp8ORpuhf9BNmhZc2mgTBTUJoIrAKfqg7W6b6E
 P7re/qkw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:55464 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvY-0006ru-7B; Tue, 11 Jun 2019 17:47:16 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvW-00037N-Fz; Tue, 11 Jun 2019 17:47:14 +0100
In-Reply-To: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
References: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] ARM: riscpc: reduce IRQ handling code
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hajvW-00037N-Fz@rmk-PC.armlinux.org.uk>
Date: Tue, 11 Jun 2019 17:47:14 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_094724_632573_C6086EE8 
X-CRM114-Status: GOOD (  12.16  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reduce the amount of IRQ handling code that RiscPC requires; there's no
need for this duplication if we place the virtual iomem base address for
each bank directly in the irq_data structure.  Provide helpers to get
the base address, and setup the base address and register mask.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-rpc/irq.c | 133 +++++++++++++++++-------------------------------
 1 file changed, 47 insertions(+), 86 deletions(-)

diff --git a/arch/arm/mach-rpc/irq.c b/arch/arm/mach-rpc/irq.c
index 7f0f40178634..803aeb126f0e 100644
--- a/arch/arm/mach-rpc/irq.c
+++ b/arch/arm/mach-rpc/irq.c
@@ -8,110 +8,64 @@
 #include <asm/irq.h>
 #include <asm/fiq.h>
 
-static void iomd_ack_irq_a(struct irq_data *d)
-{
-	unsigned int val, mask;
-
-	mask = 1 << d->irq;
-	val = iomd_readb(IOMD_IRQMASKA);
-	iomd_writeb(val & ~mask, IOMD_IRQMASKA);
-	iomd_writeb(mask, IOMD_IRQCLRA);
-}
-
-static void iomd_mask_irq_a(struct irq_data *d)
-{
-	unsigned int val, mask;
+// These are offsets from the stat register for each IRQ bank
+#define STAT	0x00
+#define REQ	0x04
+#define CLR	0x04
+#define MASK	0x08
 
-	mask = 1 << d->irq;
-	val = iomd_readb(IOMD_IRQMASKA);
-	iomd_writeb(val & ~mask, IOMD_IRQMASKA);
-}
-
-static void iomd_unmask_irq_a(struct irq_data *d)
+static void __iomem *iomd_get_base(struct irq_data *d)
 {
-	unsigned int val, mask;
+	void *cd = irq_data_get_irq_chip_data(d);
 
-	mask = 1 << d->irq;
-	val = iomd_readb(IOMD_IRQMASKA);
-	iomd_writeb(val | mask, IOMD_IRQMASKA);
+	return (void __iomem *)(unsigned long)cd;
 }
 
-static struct irq_chip iomd_a_chip = {
-	.irq_ack	= iomd_ack_irq_a,
-	.irq_mask	= iomd_mask_irq_a,
-	.irq_unmask	= iomd_unmask_irq_a,
-};
-
-static void iomd_mask_irq_b(struct irq_data *d)
+static void iomd_set_base_mask(unsigned int irq, void __iomem *base, u32 mask)
 {
-	unsigned int val, mask;
+	struct irq_data *d = irq_get_irq_data(irq);
 
-	mask = 1 << (d->irq & 7);
-	val = iomd_readb(IOMD_IRQMASKB);
-	iomd_writeb(val & ~mask, IOMD_IRQMASKB);
+	d->mask = mask;
+	irq_set_chip_data(irq, (void *)(unsigned long)base);
 }
 
-static void iomd_unmask_irq_b(struct irq_data *d)
+static void iomd_irq_mask_ack(struct irq_data *d)
 {
-	unsigned int val, mask;
+	void __iomem *base = iomd_get_base(d);
+	unsigned int val, mask = d->mask;
 
-	mask = 1 << (d->irq & 7);
-	val = iomd_readb(IOMD_IRQMASKB);
-	iomd_writeb(val | mask, IOMD_IRQMASKB);
+	val = readb(base + MASK);
+	writeb(val & ~mask, base + MASK);
+	writeb(mask, base + CLR);
 }
 
-static struct irq_chip iomd_b_chip = {
-	.irq_ack	= iomd_mask_irq_b,
-	.irq_mask	= iomd_mask_irq_b,
-	.irq_unmask	= iomd_unmask_irq_b,
-};
-
-static void iomd_mask_irq_dma(struct irq_data *d)
+static void iomd_irq_mask(struct irq_data *d)
 {
-	unsigned int val, mask;
+	void __iomem *base = iomd_get_base(d);
+	unsigned int val, mask = d->mask;
 
-	mask = 1 << (d->irq & 7);
-	val = iomd_readb(IOMD_DMAMASK);
-	iomd_writeb(val & ~mask, IOMD_DMAMASK);
+	val = readb(base + MASK);
+	writeb(val & ~mask, base + MASK);
 }
 
-static void iomd_unmask_irq_dma(struct irq_data *d)
+static void iomd_irq_unmask(struct irq_data *d)
 {
-	unsigned int val, mask;
+	void __iomem *base = iomd_get_base(d);
+	unsigned int val, mask = d->mask;
 
-	mask = 1 << (d->irq & 7);
-	val = iomd_readb(IOMD_DMAMASK);
-	iomd_writeb(val | mask, IOMD_DMAMASK);
+	val = readb(base + MASK);
+	writeb(val | mask, base + MASK);
 }
 
-static struct irq_chip iomd_dma_chip = {
-	.irq_ack	= iomd_mask_irq_dma,
-	.irq_mask	= iomd_mask_irq_dma,
-	.irq_unmask	= iomd_unmask_irq_dma,
+static struct irq_chip iomd_chip_clr = {
+	.irq_mask_ack	= iomd_irq_mask_ack,
+	.irq_mask	= iomd_irq_mask,
+	.irq_unmask	= iomd_irq_unmask,
 };
 
-static void iomd_mask_irq_fiq(struct irq_data *d)
-{
-	unsigned int val, mask;
-
-	mask = 1 << (d->irq & 7);
-	val = iomd_readb(IOMD_FIQMASK);
-	iomd_writeb(val & ~mask, IOMD_FIQMASK);
-}
-
-static void iomd_unmask_irq_fiq(struct irq_data *d)
-{
-	unsigned int val, mask;
-
-	mask = 1 << (d->irq & 7);
-	val = iomd_readb(IOMD_FIQMASK);
-	iomd_writeb(val | mask, IOMD_FIQMASK);
-}
-
-static struct irq_chip iomd_fiq_chip = {
-	.irq_ack	= iomd_mask_irq_fiq,
-	.irq_mask	= iomd_mask_irq_fiq,
-	.irq_unmask	= iomd_unmask_irq_fiq,
+static struct irq_chip iomd_chip_noclr = {
+	.irq_mask	= iomd_irq_mask,
+	.irq_unmask	= iomd_irq_unmask,
 };
 
 extern unsigned char rpc_default_fiq_start, rpc_default_fiq_end;
@@ -141,30 +95,37 @@ void __init rpc_init_irq(void)
 
 		switch (irq) {
 		case 0 ... 7:
-			irq_set_chip_and_handler(irq, &iomd_a_chip,
+			irq_set_chip_and_handler(irq, &iomd_chip_clr,
 						 handle_level_irq);
 			irq_modify_status(irq, clr, set);
+			iomd_set_base_mask(irq, IOMD_BASE + IOMD_IRQSTATA,
+					   BIT(irq));
 			break;
 
 		case 8 ... 15:
-			irq_set_chip_and_handler(irq, &iomd_b_chip,
+			irq_set_chip_and_handler(irq, &iomd_chip_noclr,
 						 handle_level_irq);
 			irq_modify_status(irq, clr, set);
+			iomd_set_base_mask(irq, IOMD_BASE + IOMD_IRQSTATB,
+					   BIT(irq - 8));
 			break;
 
 		case 16 ... 21:
-			irq_set_chip_and_handler(irq, &iomd_dma_chip,
+			irq_set_chip_and_handler(irq, &iomd_chip_noclr,
 						 handle_level_irq);
 			irq_modify_status(irq, clr, set);
+			iomd_set_base_mask(irq, IOMD_BASE + IOMD_DMASTAT,
+					   BIT(irq - 16));
 			break;
 
 		case 64 ... 71:
-			irq_set_chip(irq, &iomd_fiq_chip);
+			irq_set_chip(irq, &iomd_chip_noclr);
 			irq_modify_status(irq, clr, set);
+			iomd_set_base_mask(irq, IOMD_BASE + IOMD_FIQSTAT,
+					   BIT(irq - 64));
 			break;
 		}
 	}
 
 	init_FIQ(FIQ_START);
 }
-
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
