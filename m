Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C2D23AEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMqg/+s95o1RYrbqCZGytzMBUzSerCoDepFhdonhlb4=; b=p0FHT1sJ2VDtre
	aN8dRfeYLVz11IUdGHEZskFLATNLgAQHkLf60nvCflBd1GCT2bcDRRC6l0F62us9fsDeLXqUW0k1N
	iDTxrny0iV7kbJBzLZrfj65hgf42gf9e50WpzgEb3fE1bN22W2zq5YMhpZyrGCq+oOVdE/EmPaB2w
	AXapQZcQ2svqYpeERZ4EPHI88S8u4jnXEeKvMoO5Nnb0Gah86d9w5+kBw73onYM8dfxutru4peL3z
	AhCRNPO0hmwwAsxd0I4fPM8M26DUcdE81quY1CMYZk5c9Zd5S3PtoS4uyDmq36Rj8HrPyTD2//myP
	hBEsbgkkVEPzFJfI8CTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjac-0000vR-HP; Mon, 20 May 2019 14:48:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjZf-0008Mx-FO
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FmimIr60tvqQY83Jar2RtP/mDmpKNOdQ8909mv+al3o=; b=cX+KwCtrubPECIGCkAH26NPfqF
 gBHpMIif090FAE2hQZ78ZOQyhHZjqpHyS8GBfq2Af2B3+XJt/eJk8YPLnhRBFV0IwaW8afTBnO7sZ
 1SN2rP+shWVXLldomgmo1raBaC0ed8J2XldURqQ8jLc1n81O/LmRf7aHbyi2Gnkt9kXrro99abv0v
 NrAUi1JBLdN1V3TGuTKrDZvlKSCorLxGHQz8yMbbd0jAwDGKQv02AxyPebuLMfSsNiaCW5Bk7e8Tb
 loKEfj5iytgbH353Xm311OqAm+ktuvXRZ+ql0BAf7QHOpNWfclX0KFnhASWzhUN5OBRR1MSn0goxN
 RaQNCT7w==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:42722 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZa-0003PH-Uk; Mon, 20 May 2019 15:47:31 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZZ-0000Yb-Sd; Mon, 20 May 2019 15:47:29 +0100
In-Reply-To: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
References: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 8/8] ARM: riscpc: dma: use __iomem pointers for writing DMA
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hSjZZ-0000Yb-Sd@rmk-PC.armlinux.org.uk>
Date: Mon, 20 May 2019 15:47:29 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074736_094487_2E512C2B 
X-CRM114-Status: GOOD (  12.86  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use __iomem pointers for efficiency to write the DMA registers.
This avoids the compiler emitting several instructions for each access
to calculate the register address.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-rpc/dma.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-rpc/dma.c b/arch/arm/mach-rpc/dma.c
index 6140472d148e..eeda808a7320 100644
--- a/arch/arm/mach-rpc/dma.c
+++ b/arch/arm/mach-rpc/dma.c
@@ -27,9 +27,9 @@
 
 struct iomd_dma {
 	struct dma_struct	dma;
-	unsigned int		state;
-	unsigned long		base;		/* Controller base address */
+	void __iomem		*base;		/* Controller base address */
 	int			irq;		/* Controller IRQ */
+	unsigned int		state;
 	dma_addr_t		cur_addr;
 	unsigned int		cur_len;
 	dma_addr_t		dma_addr;
@@ -98,12 +98,12 @@ static void iomd_get_next_sg(struct iomd_dma *idma)
 static irqreturn_t iomd_dma_handle(int irq, void *dev_id)
 {
 	struct iomd_dma *idma = dev_id;
-	unsigned long base = idma->base;
+	void __iomem *base = idma->base;
 	unsigned int state = idma->state;
 	unsigned int status, cur, end;
 
 	do {
-		status = iomd_readb(base + ST);
+		status = readb(base + ST);
 		if (!(status & DMA_ST_INT))
 			goto out;
 
@@ -119,8 +119,8 @@ static irqreturn_t iomd_dma_handle(int irq, void *dev_id)
 			cur = CURB;
 			end = ENDB;
 		}
-		iomd_writel(idma->cur_addr, base + cur);
-		iomd_writel(idma->cur_len, base + end);
+		writel(idma->cur_addr, base + cur);
+		writel(idma->cur_len, base + end);
 
 		if (status & DMA_ST_OFL &&
 		    idma->cur_len == (DMA_END_S|DMA_END_L))
@@ -152,7 +152,7 @@ static void iomd_free_dma(unsigned int chan, dma_t *dma)
 static void iomd_enable_dma(unsigned int chan, dma_t *dma)
 {
 	struct iomd_dma *idma = container_of(dma, struct iomd_dma, dma);
-	unsigned long dma_base = idma->base;
+	void __iomem *base = idma->base;
 	unsigned int ctrl = TRANSFER_SIZE | DMA_CR_E;
 
 	if (idma->dma.invalid) {
@@ -175,27 +175,27 @@ static void iomd_enable_dma(unsigned int chan, dma_t *dma)
 		idma->dma_addr = idma->dma.sg->dma_address;
 		idma->dma_len = idma->dma.sg->length;
 
-		iomd_writeb(DMA_CR_C, dma_base + CR);
+		writeb(DMA_CR_C, base + CR);
 		idma->state = DMA_ST_AB;
 	}
 
 	if (idma->dma.dma_mode == DMA_MODE_READ)
 		ctrl |= DMA_CR_D;
 
-	iomd_writeb(ctrl, dma_base + CR);
+	writeb(ctrl, base + CR);
 	enable_irq(idma->irq);
 }
 
 static void iomd_disable_dma(unsigned int chan, dma_t *dma)
 {
 	struct iomd_dma *idma = container_of(dma, struct iomd_dma, dma);
-	unsigned long dma_base = idma->base;
+	void __iomem *base = idma->base;
 	unsigned long flags;
 
 	local_irq_save(flags);
 	if (idma->state != ~DMA_ST_AB)
 		disable_irq(idma->irq);
-	iomd_writeb(0, dma_base + CR);
+	writeb(0, base + CR);
 	local_irq_restore(flags);
 }
 
@@ -358,17 +358,17 @@ static int __init rpc_dma_init(void)
 	 */
 	iomd_writeb(DMA_EXT_IO3|DMA_EXT_IO2, IOMD_DMAEXT);
 
-	iomd_dma[DMA_0].base	= IOMD_IO0CURA;
+	iomd_dma[DMA_0].base	= IOMD_BASE + IOMD_IO0CURA;
 	iomd_dma[DMA_0].irq	= IRQ_DMA0;
-	iomd_dma[DMA_1].base	= IOMD_IO1CURA;
+	iomd_dma[DMA_1].base	= IOMD_BASE + IOMD_IO1CURA;
 	iomd_dma[DMA_1].irq	= IRQ_DMA1;
-	iomd_dma[DMA_2].base	= IOMD_IO2CURA;
+	iomd_dma[DMA_2].base	= IOMD_BASE + IOMD_IO2CURA;
 	iomd_dma[DMA_2].irq	= IRQ_DMA2;
-	iomd_dma[DMA_3].base	= IOMD_IO3CURA;
+	iomd_dma[DMA_3].base	= IOMD_BASE + IOMD_IO3CURA;
 	iomd_dma[DMA_3].irq	= IRQ_DMA3;
-	iomd_dma[DMA_S0].base	= IOMD_SD0CURA;
+	iomd_dma[DMA_S0].base	= IOMD_BASE + IOMD_SD0CURA;
 	iomd_dma[DMA_S0].irq	= IRQ_DMAS0;
-	iomd_dma[DMA_S1].base	= IOMD_SD1CURA;
+	iomd_dma[DMA_S1].base	= IOMD_BASE + IOMD_SD1CURA;
 	iomd_dma[DMA_S1].irq	= IRQ_DMAS1;
 
 	for (i = DMA_0; i <= DMA_S1; i++) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
