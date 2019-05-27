Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F8B2B0B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Por3YDIhnrCw0fmICmO//HsvKl/28C8Zk346Nd91q1w=; b=COxMKhezippk5+pfgzz+u4vocK
	ZsyS24RYjpHf7yt9onP5A5b/xLE3mklnnqmEVEJDgffLzvvAN8OsR2vZpJyReCN94MQJdMuDzRmbd
	9wEfKADe94H4Km5ujmFka9bmtWMZNj85+onk7GK0V4DeDsVP9C+LEbcVyteP3OQKVR8i/RYmNdR/g
	BvCEVi+KwutKtX6ooZLEM0AdY0TlYRQbUjhXNKwQr2XaXEqwrzbftRF+Sa6dm+7nNFXAgTAMldVQL
	z7CjXR5Eg4ymeb4JhGsGlWVAGBV4HfHwPolY+A1uYT8kf2Z2a0nW3b6KL91ns2WiDDNzzjwIwe/9R
	unS0jNHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBMM-0000Hs-0D; Mon, 27 May 2019 08:51:58 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBKf-0007Dg-RF
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:50:20 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9C576200079;
 Mon, 27 May 2019 10:50:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B9532200B03;
 Mon, 27 May 2019 10:50:06 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3EC3140307;
 Mon, 27 May 2019 16:49:55 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, mark.rutland@arm.com, vkoul@kernel.org,
 dan.j.williams@intel.com
Subject: [PATCH v2 6/7] dmaengine: fsl-edma: add i.mx7ulp edma2 version support
Date: Mon, 27 May 2019 16:51:17 +0800
Message-Id: <20190527085118.40423-7-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527085118.40423-1-yibin.gong@nxp.com>
References: <20190527085118.40423-1-yibin.gong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_015014_506299_B83CB670 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Gong <yibin.gong@nxp.com>

  Add edma2 for i.mx7ulp by version v3, since v2 has already
been used by mcf-edma.
The big changes based on v1 are belows:
1. only one dmamux.
2. another clock dma_clk except dmamux clk.
3. 16 independent interrupts instead of only one interrupt for
all channels.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/fsl-edma-common.c | 18 +++++++++-
 drivers/dma/fsl-edma-common.h |  3 ++
 drivers/dma/fsl-edma.c        | 84 ++++++++++++++++++++++++++++++++++++++-----
 3 files changed, 96 insertions(+), 9 deletions(-)

diff --git a/drivers/dma/fsl-edma-common.c b/drivers/dma/fsl-edma-common.c
index 45d70d3..0d9915c 100644
--- a/drivers/dma/fsl-edma-common.c
+++ b/drivers/dma/fsl-edma-common.c
@@ -90,6 +90,19 @@ static void mux_configure8(struct fsl_edma_chan *fsl_chan, void __iomem *addr,
 	iowrite8(val8, addr + off);
 }
 
+void mux_configure32(struct fsl_edma_chan *fsl_chan, void __iomem *addr,
+		     u32 off, u32 slot, bool enable)
+{
+	u32 val;
+
+	if (enable)
+		val = EDMAMUX_CHCFG_ENBL << 24 | slot;
+	else
+		val = EDMAMUX_CHCFG_DIS;
+
+	iowrite32(val, addr + off * 4);
+}
+
 void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
 			unsigned int slot, bool enable)
 {
@@ -102,7 +115,10 @@ void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
 	muxaddr = fsl_chan->edma->muxbase[ch / chans_per_mux];
 	slot = EDMAMUX_CHCFG_SOURCE(slot);
 
-	mux_configure8(fsl_chan, muxaddr, ch_off, slot, enable);
+	if (fsl_chan->edma->version == v3)
+		mux_configure32(fsl_chan, muxaddr, ch_off, slot, enable);
+	else
+		mux_configure8(fsl_chan, muxaddr, ch_off, slot, enable);
 }
 EXPORT_SYMBOL_GPL(fsl_edma_chan_mux);
 
diff --git a/drivers/dma/fsl-edma-common.h b/drivers/dma/fsl-edma-common.h
index 21a9cfd..2b0cc8e 100644
--- a/drivers/dma/fsl-edma-common.h
+++ b/drivers/dma/fsl-edma-common.h
@@ -124,6 +124,7 @@ struct fsl_edma_chan {
 	dma_addr_t			dma_dev_addr;
 	u32				dma_dev_size;
 	enum dma_data_direction		dma_dir;
+	char				chan_name[16];
 };
 
 struct fsl_edma_desc {
@@ -138,6 +139,7 @@ struct fsl_edma_desc {
 enum edma_version {
 	v1, /* 32ch, Vybrid, mpc57x, etc */
 	v2, /* 64ch Coldfire */
+	v3, /* 32ch, i.mx7ulp */
 };
 
 struct fsl_edma_engine {
@@ -145,6 +147,7 @@ struct fsl_edma_engine {
 	void __iomem		*membase;
 	void __iomem		*muxbase[DMAMUX_NR];
 	struct clk		*muxclk[DMAMUX_NR];
+	struct clk		*dmaclk;
 	u32			dmamux_nr;
 	struct mutex		fsl_edma_mutex;
 	u32			n_chans;
diff --git a/drivers/dma/fsl-edma.c b/drivers/dma/fsl-edma.c
index 7b65ef4..055f430 100644
--- a/drivers/dma/fsl-edma.c
+++ b/drivers/dma/fsl-edma.c
@@ -165,6 +165,51 @@ fsl_edma_irq_init(struct platform_device *pdev, struct fsl_edma_engine *fsl_edma
 	return 0;
 }
 
+static int
+fsl_edma2_irq_init(struct platform_device *pdev,
+		   struct fsl_edma_engine *fsl_edma)
+{
+	struct device_node *np = pdev->dev.of_node;
+	int i, ret, irq;
+	int count = 0;
+
+	count = of_irq_count(np);
+	dev_info(&pdev->dev, "%s Found %d interrupts\r\n", __func__, count);
+	if (count <= 2) {
+		dev_err(&pdev->dev, "Interrupts in DTS not correct.\n");
+		return -EINVAL;
+	}
+	/*
+	 * 16 channel independent interrupts + 1 error interrupt on i.mx7ulp.
+	 * 2 channel share one interrupt, for example, ch0/ch16, ch1/ch17...
+	 * For now, just simply request irq without IRQF_SHARED flag, since 16
+	 * channels are enough on i.mx7ulp whose M4 domain own some peripherals.
+	 */
+	for (i = 0; i < count; i++) {
+		irq = platform_get_irq(pdev, i);
+		if (irq < 0)
+			return -ENXIO;
+
+		sprintf(fsl_edma->chans[i].chan_name, "eDMA2-CH%02d", i);
+
+		/* The last IRQ is for eDMA err */
+		if (i == count - 1)
+			ret = devm_request_irq(&pdev->dev, irq,
+						fsl_edma_err_handler,
+						0, "eDMA2-ERR", fsl_edma);
+		else
+
+			ret = devm_request_irq(&pdev->dev, irq,
+						fsl_edma_tx_handler, 0,
+						fsl_edma->chans[i].chan_name,
+						fsl_edma);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static void fsl_edma_irq_exit(
 		struct platform_device *pdev, struct fsl_edma_engine *fsl_edma)
 {
@@ -184,8 +229,17 @@ static void fsl_disable_clocks(struct fsl_edma_engine *fsl_edma, int nr_clocks)
 		clk_disable_unprepare(fsl_edma->muxclk[i]);
 }
 
+static const struct of_device_id fsl_edma_dt_ids[] = {
+	{ .compatible = "fsl,vf610-edma", .data = (void *)v1 },
+	{ .compatible = "fsl,imx7ulp-edma", .data = (void *)v3 },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, fsl_edma_dt_ids);
+
 static int fsl_edma_probe(struct platform_device *pdev)
 {
+	const struct of_device_id *of_id =
+			of_match_device(fsl_edma_dt_ids, &pdev->dev);
 	struct device_node *np = pdev->dev.of_node;
 	struct fsl_edma_engine *fsl_edma;
 	struct fsl_edma_chan *fsl_chan;
@@ -205,7 +259,7 @@ static int fsl_edma_probe(struct platform_device *pdev)
 	if (!fsl_edma)
 		return -ENOMEM;
 
-	fsl_edma->version = v1;
+	fsl_edma->version = (enum edma_version)of_id->data;
 	fsl_edma->dmamux_nr = DMAMUX_NR;
 	fsl_edma->n_chans = chans;
 	mutex_init(&fsl_edma->fsl_edma_mutex);
@@ -218,6 +272,22 @@ static int fsl_edma_probe(struct platform_device *pdev)
 	fsl_edma_setup_regs(fsl_edma);
 	regs = &fsl_edma->regs;
 
+	if (fsl_edma->version == v3) {
+		fsl_edma->dmamux_nr = 1;
+
+		fsl_edma->dmaclk = devm_clk_get(&pdev->dev, "dma");
+		if (IS_ERR(fsl_edma->dmaclk)) {
+			dev_err(&pdev->dev, "Missing DMA block clock.\n");
+			return PTR_ERR(fsl_edma->dmaclk);
+		}
+
+		ret = clk_prepare_enable(fsl_edma->dmaclk);
+		if (ret) {
+			dev_err(&pdev->dev, "DMA clk block failed.\n");
+			return ret;
+		}
+	}
+
 	for (i = 0; i < fsl_edma->dmamux_nr; i++) {
 		char clkname[32];
 
@@ -264,7 +334,11 @@ static int fsl_edma_probe(struct platform_device *pdev)
 	}
 
 	edma_writel(fsl_edma, ~0, regs->intl);
-	ret = fsl_edma_irq_init(pdev, fsl_edma);
+
+	if (fsl_edma->version == v3)
+		ret = fsl_edma2_irq_init(pdev, fsl_edma);
+	else
+		ret = fsl_edma_irq_init(pdev, fsl_edma);
 	if (ret)
 		return ret;
 
@@ -383,12 +457,6 @@ static const struct dev_pm_ops fsl_edma_pm_ops = {
 	.resume_early   = fsl_edma_resume_early,
 };
 
-static const struct of_device_id fsl_edma_dt_ids[] = {
-	{ .compatible = "fsl,vf610-edma", },
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, fsl_edma_dt_ids);
-
 static struct platform_driver fsl_edma_driver = {
 	.driver		= {
 		.name	= "fsl-edma",
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
