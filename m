Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D140C23AE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h2p1JrGypxdW+T/n/XYnQpGpANEKvyllu+IIx8iuRvE=; b=LJujzYgrmIH0LX
	UonfmI8uq+WVnm+lffCs30qByaiR1THCges9YNlOojUoSpVgWAqFdH2vC4bDKfRwaupcQQuEkaasT
	fCxf+QwhLuWbi7xogRBqrVjhm7T51bqdYT6dc1Adh2zil2oie31hofknJtrsDPLVZXHl4oTSH7Xa4
	d8yO0Imlp/LeiScGljbnR313SGERsWIqs+Nh4x1jdMBWGtiL3xASc6H8HHvgSrWnJFLfdzIGaC9Vj
	BximQT/ZKsKnQcg1H3mgchEn4tQZi18kkT3CPMFhCzArDDG9sCwfsZiu9OoszZG1oN6GcOxLfyRXz
	QCvhF7dsntJKygaxSAhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjaI-0000Pf-Bw; Mon, 20 May 2019 14:48:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjZU-000874-EL
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sx8jZ8xkTcaYCALkUI7SlSTg/5SsVi5Usjg0XCjqbZ8=; b=KU7Ew3MOPNIxbdtT1ja24rZq5s
 nhbRQVjpySv1ZxcPXm43ro0UjkhsXA/ouwaZNkW2YBE6vU2h+JR+QwcZGCwroSu4C5RTKIAV1ZZAW
 KlzAA7tPGx9UKPCJ6z7O5xwPrFr9cSMJVCpoZinjIU3jEkDe/jJQHFg47qWzbPWY3KR1Hg9yuatcd
 lSVveye6MxFCkcXssrWcKMX8ZOAJ+f9+WD0BNWungYXy/GBAbSyqicEXksLCpE54eVcvGd5zhnZks
 Y6BcBS9FUt19QDUGRDRrzsAbI2ZNiQ5RiI7jGTA1FmzhkwTQmnKSrF6xlnmHjFSdU3uXLs25anrxw
 v9Iec/tQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:43232 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZQ-0003P0-4y; Mon, 20 May 2019 15:47:20 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZP-0000YH-Kw; Mon, 20 May 2019 15:47:19 +0100
In-Reply-To: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
References: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/8] ARM: riscpc: dma: make state a local variable
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hSjZP-0000YH-Kw@rmk-PC.armlinux.org.uk>
Date: Mon, 20 May 2019 15:47:19 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074724_956327_BBDB3EFB 
X-CRM114-Status: GOOD (  12.87  )
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

Make state a local variable to avoid rewriting it in the DMA loop.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-rpc/dma.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-rpc/dma.c b/arch/arm/mach-rpc/dma.c
index 37750c6493b4..e2b9c95d853b 100644
--- a/arch/arm/mach-rpc/dma.c
+++ b/arch/arm/mach-rpc/dma.c
@@ -99,15 +99,15 @@ static irqreturn_t iomd_dma_handle(int irq, void *dev_id)
 {
 	struct iomd_dma *idma = dev_id;
 	unsigned long base = idma->base;
+	unsigned int state = idma->state;
+	unsigned int status;
 
 	do {
-		unsigned int status;
-
 		status = iomd_readb(base + ST);
 		if (!(status & DMA_ST_INT))
-			return IRQ_HANDLED;
+			goto out;
 
-		if ((idma->state ^ status) & DMA_ST_AB)
+		if ((state ^ status) & DMA_ST_AB)
 			iomd_get_next_sg(idma);
 
 		switch (status & (DMA_ST_OFL | DMA_ST_AB)) {
@@ -115,14 +115,14 @@ static irqreturn_t iomd_dma_handle(int irq, void *dev_id)
 		case DMA_ST_AB:				/* .IB */
 			iomd_writel(idma->cur_addr, base + CURA);
 			iomd_writel(idma->cur_len, base + ENDA);
-			idma->state = DMA_ST_AB;
+			state = DMA_ST_AB;
 			break;
 
 		case DMA_ST_OFL | DMA_ST_AB:		/* OIB */
 		case 0:					/* .IA */
 			iomd_writel(idma->cur_addr, base + CURB);
 			iomd_writel(idma->cur_len, base + ENDB);
-			idma->state = 0;
+			state = 0;
 			break;
 		}
 
@@ -131,9 +131,10 @@ static irqreturn_t iomd_dma_handle(int irq, void *dev_id)
 			break;
 	} while (1);
 
-	idma->state = ~DMA_ST_AB;
+	state = ~DMA_ST_AB;
 	disable_irq_nosync(irq);
-
+out:
+	idma->state = state;
 	return IRQ_HANDLED;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
