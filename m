Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FDD23AD6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QFE01pGe7vUhxfEY/8P31jHaRCRnWZvURhUCzl0L/8=; b=kVntkNOWavMCol
	PkGzz3nY+VwVPHaQi0ekFHpYsZJjs2eKk38QjdD1+vOM0j1nhXylFKhtbOKjTW2lhn03d6ZExJLIm
	zkCa3tmoy1POts84735bDXbZWcyYMFtYqbxE55FtYQziSnNPr/NMoQCkY2ECXLbSKC94koP/aGUdJ
	I9KwtwWyXDTd7Qdb2+rcr0J98SmXMfgabmmeLc1n5B2Sr/IxhYOhmKS8eI2DV0V+NxtOWsQQRP9Ho
	oTakxBkry+4n2AT3G/bNbtLB8F5G70yk3ilVZ0XuDYTWfpHDN+pERfSqjwWFG3A9mhIfnCmDv/hbL
	jnJHHxrY2vx2CKzhGanQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSja7-0000Hk-0s; Mon, 20 May 2019 14:48:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjZP-0007zl-0R
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dVXNwRaht4mbhZtEHlBmOsgFUVlPVkYwCCg6xIosRPE=; b=G57yju6Vm0d0zf4YHcaAgv9U8T
 9XEnylhU03pXEtbzgBJgxUaTcSZN6IrSHXj1QNteDfE72P6zJo9hIXl9eZ2porZDQcX1hVDZH48l1
 jztDmSRAW2X2mxWWotT+ULRQ4Fizhuol4Z+uGpOLOPBTm4aoBPRMSd/8PvuL2cqPg5s9XqrpzIK+i
 Z2Vhqe5vvdKYT/WTq5Hu6rN7Sb/g7nxvvVSkPeCJc9IOgrfdzaXOOAwBI2ehKiK+7K+WSChbI/wJS
 guxU3724cVsVzgvRtdgTqFQmwZFtLp4YYYmQ2LGhvRYK0ibhoaXOZFWyw5DRk+U4JxPhLXYRluyrU
 oRcPjD7w==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:43228 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZL-0003Ou-1d; Mon, 20 May 2019 15:47:15 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZK-0000Y9-Gf; Mon, 20 May 2019 15:47:14 +0100
In-Reply-To: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
References: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/8] ARM: riscpc: dma: eliminate "cur_sg" scatterlist usage
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hSjZK-0000Y9-Gf@rmk-PC.armlinux.org.uk>
Date: Mon, 20 May 2019 15:47:14 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074719_653368_089A6C01 
X-CRM114-Status: GOOD (  14.32  )
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

All we really need is the DMA address and size, we don't need the
baggage of a full scatterlist structure.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-rpc/dma.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-rpc/dma.c b/arch/arm/mach-rpc/dma.c
index c4c96661eb89..37750c6493b4 100644
--- a/arch/arm/mach-rpc/dma.c
+++ b/arch/arm/mach-rpc/dma.c
@@ -30,7 +30,8 @@ struct iomd_dma {
 	unsigned int		state;
 	unsigned long		base;		/* Controller base address */
 	int			irq;		/* Controller IRQ */
-	struct scatterlist	cur_sg;		/* Current controller buffer */
+	dma_addr_t		cur_addr;
+	unsigned int		cur_len;
 	dma_addr_t		dma_addr;
 	unsigned int		dma_len;
 };
@@ -53,13 +54,13 @@ typedef enum {
 #define CR	(IOMD_IO0CR - IOMD_IO0CURA)
 #define ST	(IOMD_IO0ST - IOMD_IO0CURA)
 
-static void iomd_get_next_sg(struct scatterlist *sg, struct iomd_dma *idma)
+static void iomd_get_next_sg(struct iomd_dma *idma)
 {
 	unsigned long end, offset, flags = 0;
 
 	if (idma->dma.sg) {
-		sg->dma_address = idma->dma_addr;
-		offset = sg->dma_address & ~PAGE_MASK;
+		idma->cur_addr = idma->dma_addr;
+		offset = idma->cur_addr & ~PAGE_MASK;
 
 		end = offset + idma->dma_len;
 
@@ -69,7 +70,7 @@ static void iomd_get_next_sg(struct scatterlist *sg, struct iomd_dma *idma)
 		if (offset + TRANSFER_SIZE >= end)
 			flags |= DMA_END_L;
 
-		sg->length = end - TRANSFER_SIZE;
+		idma->cur_len = end - TRANSFER_SIZE;
 
 		idma->dma_len -= end - offset;
 		idma->dma_addr += end - offset;
@@ -87,11 +88,11 @@ static void iomd_get_next_sg(struct scatterlist *sg, struct iomd_dma *idma)
 		}
 	} else {
 		flags = DMA_END_S | DMA_END_L;
-		sg->dma_address = 0;
-		sg->length = 0;
+		idma->cur_addr = 0;
+		idma->cur_len = 0;
 	}
 
-	sg->length |= flags;
+	idma->cur_len |= flags;
 }
 
 static irqreturn_t iomd_dma_handle(int irq, void *dev_id)
@@ -107,26 +108,26 @@ static irqreturn_t iomd_dma_handle(int irq, void *dev_id)
 			return IRQ_HANDLED;
 
 		if ((idma->state ^ status) & DMA_ST_AB)
-			iomd_get_next_sg(&idma->cur_sg, idma);
+			iomd_get_next_sg(idma);
 
 		switch (status & (DMA_ST_OFL | DMA_ST_AB)) {
 		case DMA_ST_OFL:			/* OIA */
 		case DMA_ST_AB:				/* .IB */
-			iomd_writel(idma->cur_sg.dma_address, base + CURA);
-			iomd_writel(idma->cur_sg.length, base + ENDA);
+			iomd_writel(idma->cur_addr, base + CURA);
+			iomd_writel(idma->cur_len, base + ENDA);
 			idma->state = DMA_ST_AB;
 			break;
 
 		case DMA_ST_OFL | DMA_ST_AB:		/* OIB */
 		case 0:					/* .IA */
-			iomd_writel(idma->cur_sg.dma_address, base + CURB);
-			iomd_writel(idma->cur_sg.length, base + ENDB);
+			iomd_writel(idma->cur_addr, base + CURB);
+			iomd_writel(idma->cur_len, base + ENDB);
 			idma->state = 0;
 			break;
 		}
 
 		if (status & DMA_ST_OFL &&
-		    idma->cur_sg.length == (DMA_END_S|DMA_END_L))
+		    idma->cur_len == (DMA_END_S|DMA_END_L))
 			break;
 	} while (1);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
