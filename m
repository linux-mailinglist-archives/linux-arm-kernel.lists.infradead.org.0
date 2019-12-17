Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F126121F9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vppz+Rj4gLc5rxlx8N+ZeQM6aDhUFKMvgLyq5gJMW+4=; b=hgICuzHl2XaeeW
	+nG7E1Msfx1wUGMZB9e260+u5ydYrjP0VqjxSgpRn6jiPKSa3jqjkI+1C1Uwjl0r9w9E1b7kUAHjs
	wNh+aViErifJaHErr5g5z42oNHAYf+ufxDpb+55e37s0IL6Zb95f0pvE6u/m7qZwX01slaqbzEUfR
	Ki8aU4HbvyB96fwE7VNLhFTtoJoAMX7Wn0V4HQI85qxXTfnbVR/C3zLXeHaqM4+M7AL5bm9JV1RmP
	+m+R969t3lLy7RiPuapfiSWfBveNuX3on9t7Gn7E4MiTg1NgGp/hbVKqT9QJjCQH1BHRbzPq2Y51Y
	8MbGKoy6DZ5jndhZVTzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0dS-0004Z7-FH; Tue, 17 Dec 2019 00:22:46 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0am-0001K4-4C
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:20:02 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id CB83681D8;
 Tue, 17 Dec 2019 00:20:38 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 09/14] dmaengine: ti: omap-dma: Configure global priority
 register directly
Date: Mon, 16 Dec 2019 16:19:20 -0800
Message-Id: <20191217001925.44558-10-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217001925.44558-1-tony@atomide.com>
References: <20191217001925.44558-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_162000_235659_778DF971 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can move the global priority register configuration to the dmaengine
driver and configure it based on the of_device_id match data.

Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/plat-omap/dma.c  | 36 ------------------------------------
 drivers/dma/ti/omap-dma.c | 29 +++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+), 36 deletions(-)

diff --git a/arch/arm/plat-omap/dma.c b/arch/arm/plat-omap/dma.c
--- a/arch/arm/plat-omap/dma.c
+++ b/arch/arm/plat-omap/dma.c
@@ -557,38 +557,6 @@ void omap_free_dma(int lch)
 }
 EXPORT_SYMBOL(omap_free_dma);
 
-/**
- * @brief omap_dma_set_global_params : Set global priority settings for dma
- *
- * @param arb_rate
- * @param max_fifo_depth
- * @param tparams - Number of threads to reserve : DMA_THREAD_RESERVE_NORM
- * 						   DMA_THREAD_RESERVE_ONET
- * 						   DMA_THREAD_RESERVE_TWOT
- * 						   DMA_THREAD_RESERVE_THREET
- */
-static void
-omap_dma_set_global_params(int arb_rate, int max_fifo_depth, int tparams)
-{
-	u32 reg;
-
-	if (dma_omap1()) {
-		printk(KERN_ERR "FIXME: no %s on 15xx/16xx\n", __func__);
-		return;
-	}
-
-	if (max_fifo_depth == 0)
-		max_fifo_depth = 1;
-	if (arb_rate == 0)
-		arb_rate = 1;
-
-	reg = 0xff & max_fifo_depth;
-	reg |= (0x3 & tparams) << 12;
-	reg |= (arb_rate & 0xff) << 16;
-
-	p->dma_write(reg, GCR, 0);
-}
-
 /*
  * Clears any DMA state so the DMA engine is ready to restart with new buffers
  * through omap_start_dma(). Any buffers in flight are discarded.
@@ -969,10 +937,6 @@ static int omap_system_dma_probe(struct platform_device *pdev)
 		}
 	}
 
-	if (d->dev_caps & IS_RW_PRIORITY)
-		omap_dma_set_global_params(DMA_DEFAULT_ARB_RATE,
-				DMA_DEFAULT_FIFO_DEPTH, 0);
-
 	/* reserve dma channels 0 and 1 in high security devices on 34xx */
 	if (d->dev_caps & HS_CHANNELS_RESERVED) {
 		pr_info("Reserving DMA channels 0 and 1 for HS ROM code\n");
diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
--- a/drivers/dma/ti/omap-dma.c
+++ b/drivers/dma/ti/omap-dma.c
@@ -26,6 +26,7 @@
 
 struct omap_dma_config {
 	int lch_end;
+	unsigned int rw_priority:1;
 	unsigned int may_lose_context:1;
 };
 
@@ -1536,6 +1537,27 @@ static int omap_dma_context_notifier(struct notifier_block *nb,
 	return NOTIFY_OK;
 }
 
+static void omap_dma_init_gcr(struct omap_dmadev *od, int arb_rate,
+			      int max_fifo_depth, int tparams)
+{
+	u32 val;
+
+	/* Set only for omap2430 and later */
+	if (!od->cfg->rw_priority)
+		return;
+
+	if (max_fifo_depth == 0)
+		max_fifo_depth = 1;
+	if (arb_rate == 0)
+		arb_rate = 1;
+
+	val = 0xff & max_fifo_depth;
+	val |= (0x3 & tparams) << 12;
+	val |= (arb_rate & 0xff) << 16;
+
+	omap_dma_glbl_write(od, GCR, val);
+}
+
 #define OMAP_DMA_BUSWIDTHS	(BIT(DMA_SLAVE_BUSWIDTH_1_BYTE) | \
 				 BIT(DMA_SLAVE_BUSWIDTH_2_BYTES) | \
 				 BIT(DMA_SLAVE_BUSWIDTH_4_BYTES))
@@ -1701,6 +1723,8 @@ static int omap_dma_probe(struct platform_device *pdev)
 		}
 	}
 
+	omap_dma_init_gcr(od, DMA_DEFAULT_ARB_RATE, DMA_DEFAULT_FIFO_DEPTH, 0);
+
 	if (od->cfg->may_lose_context) {
 		od->nb.notifier_call = omap_dma_context_notifier;
 		cpu_pm_register_notifier(&od->nb);
@@ -1743,24 +1767,29 @@ static int omap_dma_remove(struct platform_device *pdev)
 
 static const struct omap_dma_config omap2420_data = {
 	.lch_end = CCFN,
+	.rw_priority = true,
 };
 
 static const struct omap_dma_config omap2430_data = {
 	.lch_end = CCFN,
+	.rw_priority = true,
 };
 
 static const struct omap_dma_config omap3430_data = {
 	.lch_end = CCFN,
+	.rw_priority = true,
 	.may_lose_context = true,
 };
 
 static const struct omap_dma_config omap3630_data = {
 	.lch_end = CCDN,
+	.rw_priority = true,
 	.may_lose_context = true,
 };
 
 static const struct omap_dma_config omap4_data = {
 	.lch_end = CCDN,
+	.rw_priority = true,
 };
 
 static const struct of_device_id omap_dma_match[] = {
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
