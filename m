Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E520423AE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQyB0uVFxzvjatCl/RUfcNIIORzJhysdcwGhxi6wcSM=; b=X3p5NSVghyk116
	E7pdPsv6vTIkuJMbUXH9EfCUzLth7/3nZg6vrfIHEBoMTudkSLNd/e1sVk2ri4W5cCCoi6SvvYihd
	B9PXRSA2FdDeSwIXIw7PS9PL/iruT1SJP6632XjyfGA6gdwsqmL+iIQl9Mod5v1/GntEsHORg+prr
	xp0HqvJJD8n4SBYIn3HOr563jLfE/nnTT+tgclTWTASQiG5B4gfmuidREJeyRJRhQYGTaiR7G6gwQ
	xxd96NsbItyOBFPNeN2YEtqYbdph2ZcYTmRs7j61nlIrr4aA7mhkteMD+7hbj5cdKiU5UW1AUo1vs
	aM+tb4THXayyAFTtz7oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjaR-0000hM-QG; Mon, 20 May 2019 14:48:23 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjZc-0008HT-GU
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=21w7KE8tXy3iMmpWOOluePmpf84SK3SGDnuK211RYxk=; b=wygKvi9sXRSWegAFtSuYEF93f2
 1UMrAeU/NnOH3KwnzB4RxVWajq6WDV0Bw00+Zj04f/pbSDFqskJg2dJsvd6Z4om+jICLnCDNSggO5
 5tRDIJ7h0vVAOLBLkw4eZoUPO/vYx5JQLbG/9G/O99KsIIRKyf62cVVB9XhLEsc2I8XSJMZ26noml
 LT9WYW1E+TeTur+l2WkFWCxoZ1Grt/PLdtvBCSvv9FcAr3mkCY9s9NqfHm+7uXAfZj0kfky2HqI3w
 R7Ojbhsy9cEs/xZ9BRCbjXvefGqOt08pIC4eEtIjRJU6qohnNY9X8g/jkfq5IOjsv+52OqNyxAJqM
 LHiTbNFA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:33290 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZV-0003P7-OG; Mon, 20 May 2019 15:47:25 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZU-0000YU-Oa; Mon, 20 May 2019 15:47:24 +0100
In-Reply-To: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
References: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/8] ARM: riscpc: dma: improve address/length writing
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hSjZU-0000YU-Oa@rmk-PC.armlinux.org.uk>
Date: Mon, 20 May 2019 15:47:24 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074733_166399_8DE36551 
X-CRM114-Status: GOOD (  10.86  )
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

Rearrange writing the DMA addresses to generate more efficient code.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-rpc/dma.c | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-rpc/dma.c b/arch/arm/mach-rpc/dma.c
index e2b9c95d853b..6140472d148e 100644
--- a/arch/arm/mach-rpc/dma.c
+++ b/arch/arm/mach-rpc/dma.c
@@ -100,7 +100,7 @@ static irqreturn_t iomd_dma_handle(int irq, void *dev_id)
 	struct iomd_dma *idma = dev_id;
 	unsigned long base = idma->base;
 	unsigned int state = idma->state;
-	unsigned int status;
+	unsigned int status, cur, end;
 
 	do {
 		status = iomd_readb(base + ST);
@@ -110,21 +110,17 @@ static irqreturn_t iomd_dma_handle(int irq, void *dev_id)
 		if ((state ^ status) & DMA_ST_AB)
 			iomd_get_next_sg(idma);
 
-		switch (status & (DMA_ST_OFL | DMA_ST_AB)) {
-		case DMA_ST_OFL:			/* OIA */
-		case DMA_ST_AB:				/* .IB */
-			iomd_writel(idma->cur_addr, base + CURA);
-			iomd_writel(idma->cur_len, base + ENDA);
-			state = DMA_ST_AB;
-			break;
-
-		case DMA_ST_OFL | DMA_ST_AB:		/* OIB */
-		case 0:					/* .IA */
-			iomd_writel(idma->cur_addr, base + CURB);
-			iomd_writel(idma->cur_len, base + ENDB);
-			state = 0;
-			break;
+		// This efficiently implements state = OFL != AB ? AB : 0
+		state = ((status >> 2) ^ status) & DMA_ST_AB;
+		if (state) {
+			cur = CURA;
+			end = ENDA;
+		} else {
+			cur = CURB;
+			end = ENDB;
 		}
+		iomd_writel(idma->cur_addr, base + cur);
+		iomd_writel(idma->cur_len, base + end);
 
 		if (status & DMA_ST_OFL &&
 		    idma->cur_len == (DMA_END_S|DMA_END_L))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
