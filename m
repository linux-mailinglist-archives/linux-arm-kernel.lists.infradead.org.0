Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C301121F9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Es71iJ/hBpqI08OS76HQlasmGoMa1AGbFj80I6aj/qc=; b=XWg7amiKG37l8M
	7UAAqmSPN81tDqsld/+xeUuZh2lqgX+sMe6NX09ncaUHoRcNeTn0U8N+f8xwzK2gZ0xex4eWdUcT0
	SFKWC1DAIuQ5U6QommXMhhmAysfc72vgN68pLMs1rzIDaxgLOKWMIb7i+b6zZR98yLS59DWpJRZAt
	8CtoYz2+kdLHq0JsMvcn/yCWa+y+HlWgKWD7qyylm/hQS4JmPLtLYJr40fZCzpA03x6BXFioyITKa
	yTIUNTY671fb5r8NzpvFGZOUEFc2e+zxCI4UepPOyIPcpcjCYKxh7tXQVsEEXb3rOgD9qnBYkLZ8X
	cbhI10DWrq/wV5H5eEow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0dw-00054z-2q; Tue, 17 Dec 2019 00:23:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0ap-0001K4-DQ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:20:06 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 0C1DB8126;
 Tue, 17 Dec 2019 00:20:41 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 11/14] dmaengine: ti: omap-dma: Allocate channels directly
Date: Mon, 16 Dec 2019 16:19:22 -0800
Message-Id: <20191217001925.44558-12-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217001925.44558-1-tony@atomide.com>
References: <20191217001925.44558-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_162003_538794_6A1D209C 
X-CRM114-Status: GOOD (  12.89  )
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

With the legacy IRQ handling gone, we can now start allocating channels
directly in the dmaengine driver for device tree based SoCs.

Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/dma/ti/omap-dma.c | 62 ++++++++++++++++++++++++++++++++++++---
 1 file changed, 58 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
--- a/drivers/dma/ti/omap-dma.c
+++ b/drivers/dma/ti/omap-dma.c
@@ -28,6 +28,7 @@ struct omap_dma_config {
 	int lch_end;
 	unsigned int rw_priority:1;
 	unsigned int may_lose_context:1;
+	unsigned int needs_lch_clear:1;
 };
 
 struct omap_dma_context {
@@ -47,6 +48,8 @@ struct omap_dmadev {
 	struct notifier_block nb;
 	struct omap_dma_context context;
 	int lch_count;
+	DECLARE_BITMAP(lch_bitmap, OMAP_SDMA_CHANNELS);
+	struct mutex lch_lock;		/* for assigning logical channels */
 	bool legacy;
 	bool ll123_supported;
 	struct dma_pool *desc_pool;
@@ -664,6 +667,37 @@ static irqreturn_t omap_dma_irq(int irq, void *devid)
 	return IRQ_HANDLED;
 }
 
+static int omap_dma_get_lch(struct omap_dmadev *od, int *lch)
+{
+	int channel;
+
+	mutex_lock(&od->lch_lock);
+	channel = find_first_zero_bit(od->lch_bitmap, od->lch_count);
+	if (channel >= od->lch_count)
+		goto out_busy;
+	set_bit(channel, od->lch_bitmap);
+	mutex_unlock(&od->lch_lock);
+
+	omap_dma_clear_lch(od, channel);
+	*lch = channel;
+
+	return 0;
+
+out_busy:
+	mutex_unlock(&od->lch_lock);
+	*lch = -EINVAL;
+
+	return -EBUSY;
+}
+
+static void omap_dma_put_lch(struct omap_dmadev *od, int lch)
+{
+	omap_dma_clear_lch(od, lch);
+	mutex_lock(&od->lch_lock);
+	clear_bit(lch, od->lch_bitmap);
+	mutex_unlock(&od->lch_lock);
+}
+
 static int omap_dma_alloc_chan_resources(struct dma_chan *chan)
 {
 	struct omap_dmadev *od = to_omap_dma_dev(chan->device);
@@ -675,15 +709,13 @@ static int omap_dma_alloc_chan_resources(struct dma_chan *chan)
 		ret = omap_request_dma(c->dma_sig, "DMA engine",
 				       omap_dma_callback, c, &c->dma_ch);
 	} else {
-		ret = omap_request_dma(c->dma_sig, "DMA engine", NULL, NULL,
-				       &c->dma_ch);
+		ret = omap_dma_get_lch(od, &c->dma_ch);
 	}
 
 	dev_dbg(dev, "allocating channel %u for %u\n", c->dma_ch, c->dma_sig);
 
 	if (ret >= 0) {
 		omap_dma_assign(od, c, c->dma_ch);
-		pr_info("XXX %s: assigned lch: %i\n", __func__, c->dma_ch);
 
 		if (!od->legacy) {
 			unsigned val;
@@ -734,7 +766,11 @@ static void omap_dma_free_chan_resources(struct dma_chan *chan)
 	c->channel_base = NULL;
 	od->lch_map[c->dma_ch] = NULL;
 	vchan_free_chan_resources(&c->vc);
-	omap_free_dma(c->dma_ch);
+
+	if (od->legacy)
+		omap_free_dma(c->dma_ch);
+	else
+		omap_dma_put_lch(od, c->dma_ch);
 
 	dev_dbg(od->ddev.dev, "freeing channel %u used for %u\n", c->dma_ch,
 		c->dma_sig);
@@ -1574,6 +1610,7 @@ static int omap_dma_probe(struct platform_device *pdev)
 	struct omap_dmadev *od;
 	struct resource *res;
 	int rc, i, irq;
+	u32 val;
 
 	od = devm_kzalloc(&pdev->dev, sizeof(*od), GFP_KERNEL);
 	if (!od)
@@ -1628,6 +1665,7 @@ static int omap_dma_probe(struct platform_device *pdev)
 	od->ddev.max_burst = SZ_16M - 1; /* CCEN: 24bit unsigned */
 	od->ddev.dev = &pdev->dev;
 	INIT_LIST_HEAD(&od->ddev.channels);
+	mutex_init(&od->lch_lock);
 	spin_lock_init(&od->lock);
 	spin_lock_init(&od->irq_lock);
 
@@ -1654,6 +1692,17 @@ static int omap_dma_probe(struct platform_device *pdev)
 		od->lch_count = OMAP_SDMA_CHANNELS;
 	}
 
+	/* Mask of allowed logical channels */
+	if (pdev->dev.of_node && !of_property_read_u32(pdev->dev.of_node,
+						       "dma-channel-mask",
+						       &val)) {
+		/* Tag channels not in mask as reserved */
+		val = ~val;
+		bitmap_from_arr32(od->lch_bitmap, &val, od->lch_count);
+	}
+	if (od->plat->dma_attr->dev_caps & HS_CHANNELS_RESERVED)
+		bitmap_set(od->lch_bitmap, 0, 2);
+
 	od->lch_map = devm_kcalloc(&pdev->dev, od->lch_count,
 				   sizeof(*od->lch_map),
 				   GFP_KERNEL);
@@ -1772,28 +1821,33 @@ static int omap_dma_remove(struct platform_device *pdev)
 static const struct omap_dma_config omap2420_data = {
 	.lch_end = CCFN,
 	.rw_priority = true,
+	.needs_lch_clear = true,
 };
 
 static const struct omap_dma_config omap2430_data = {
 	.lch_end = CCFN,
 	.rw_priority = true,
+	.needs_lch_clear = true,
 };
 
 static const struct omap_dma_config omap3430_data = {
 	.lch_end = CCFN,
 	.rw_priority = true,
+	.needs_lch_clear = true,
 	.may_lose_context = true,
 };
 
 static const struct omap_dma_config omap3630_data = {
 	.lch_end = CCDN,
 	.rw_priority = true,
+	.needs_lch_clear = true,
 	.may_lose_context = true,
 };
 
 static const struct omap_dma_config omap4_data = {
 	.lch_end = CCDN,
 	.rw_priority = true,
+	.needs_lch_clear = true,
 };
 
 static const struct of_device_id omap_dma_match[] = {
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
