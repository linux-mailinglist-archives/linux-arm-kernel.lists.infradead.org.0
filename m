Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57D2160B69
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:07:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHSfoRlLPESRBNNPHdb4QFffrjzGrJU3tEE+jFMY9tY=; b=Xqqmd31GhaZThl
	zqki/H/MSn7sj7JvD+H1QNKFwHOQmDWYsmvSwq96Dswde1kilCkwxgEQy/o9T+LvbQtY/YAgdhA8m
	Dz+mGx3UQAz0oQqZ0axKTy8UtM4WTX63Q0pj397jZnxRZid3y4AK+AcvuGXDFslknKiLyUOHGNSb/
	r4/Z2PjOGDzZ95vLxFfzRjSY7zdKZCvkqalNcCFos3pDNPJe4fORqa75jZaX3r173+H1Z8R9zw8co
	9N4Sf5Ye91sYWXdPOWHMeSGvqMxKMmHUf5mTLTNg190nmfGLqHQvEaiSPpK801XjmrcN6Qo5+YiyH
	SqZeJHQZcHyetztaAxXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aUp-0005rP-MA; Mon, 17 Feb 2020 07:07:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3aUI-0005LB-08; Mon, 17 Feb 2020 07:06:39 +0000
X-UUID: 34a5a4c6fc334475bb4246bf55aa8b1a-20200216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=VrmygX1t75VJVJnpZMTf/c4INrvk7cvItYDMJAmprqA=; 
 b=TtVVk89sTXABV6yl3IkIslrBh1JuSbVJSUAjFOUWWfwa4Qx8bzWhQPudSaFXZSRNI6G3WTjPRFOtNwuz5tX/WMoVHcg/t0cnaDT1fDtBvdyvqotJcICIpHdYRUnIrkbHMkukgkRNuEZhfssctkqqX6mr/NueN9F2o2h2MxnG7s4=;
X-UUID: 34a5a4c6fc334475bb4246bf55aa8b1a-20200216
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 589528044; Sun, 16 Feb 2020 23:06:33 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 22:57:32 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 14:55:50 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 17 Feb 2020 14:54:44 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>, "Linus
 Walleij" <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>, Kate
 Stewart <kstewart@linuxfoundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Pan Bian <bianpan2016@163.com>, "Thomas
 Gleixner" <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "Mathieu Malaterre" <malat@debian.org>, Stanley Chu
 <stanley.chu@mediatek.com>, "Kuohong Wang" <kuohong.wang@mediatek.com>
Subject: [PATCH v3 3/4] mmc: mediatek: command queue support
Date: Mon, 17 Feb 2020 14:56:03 +0800
Message-ID: <1581922564-24914-4-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1581922564-24914-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1581922564-24914-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_230638_074070_D20C12FA 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Chun-Hung Wu <chun-hung.wu@mediatek.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support command queue for mt6779 platform.
a. Add msdc_set_busy_timeout() to calculate emmc write timeout
b. Connect mtk msdc driver to cqhci driver through
   host->cq_host->ops = &msdc_cmdq_ops;
c. msdc_cmdq_irq() will link up with cqchi_irq(). Besides, it provides
   more irq error messages like RSPCRCERR/CMDTO/DATACRCERR/DATTMO.
d. Use the options below to separate support for CQHCI or not, because
   some of our platform does not support CQHCI hence no kernel option:
   CONFIG_MMC_CQHCI.
   #if IS_ENABLED(CONFIG_MMC_CQHCI)
   XXX //Support CQHCI
   #else
   XXX //Not support CQHCI
   #endif

Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
---
 drivers/mmc/host/mtk-sd.c | 119 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index 127b0cf..b132397 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -31,6 +31,8 @@
 #include <linux/mmc/sdio.h>
 #include <linux/mmc/slot-gpio.h>
 
+#include "cqhci.h"
+
 #define MAX_BD_NUM          1024
 
 /*--------------------------------------------------------------------------*/
@@ -151,6 +153,7 @@
 #define MSDC_INT_DMA_BDCSERR    (0x1 << 17)	/* W1C */
 #define MSDC_INT_DMA_GPDCSERR   (0x1 << 18)	/* W1C */
 #define MSDC_INT_DMA_PROTECT    (0x1 << 19)	/* W1C */
+#define MSDC_INT_CMDQ           (0x1 << 28)	/* W1C */
 
 /* MSDC_INTEN mask */
 #define MSDC_INTEN_MMCIRQ       (0x1 << 0)	/* RW */
@@ -181,6 +184,7 @@
 /* SDC_CFG mask */
 #define SDC_CFG_SDIOINTWKUP     (0x1 << 0)	/* RW */
 #define SDC_CFG_INSWKUP         (0x1 << 1)	/* RW */
+#define SDC_CFG_WRDTOC          (0x1fff  << 2)  /* RW */
 #define SDC_CFG_BUSWIDTH        (0x3 << 16)	/* RW */
 #define SDC_CFG_SDIO            (0x1 << 19)	/* RW */
 #define SDC_CFG_SDIOIDE         (0x1 << 20)	/* RW */
@@ -228,6 +232,7 @@
 #define MSDC_PATCH_BIT_SPCPUSH    (0x1 << 29)	/* RW */
 #define MSDC_PATCH_BIT_DECRCTMO   (0x1 << 30)	/* RW */
 
+#define MSDC_PB1_BUSY_CHECK_SEL   (0x1 << 7)    /* RW */
 #define MSDC_PATCH_BIT1_STOP_DLY  (0xf << 8)    /* RW */
 
 #define MSDC_PATCH_BIT2_CFGRESP   (0x1 << 15)   /* RW */
@@ -431,6 +436,7 @@ struct msdc_host {
 	struct msdc_save_para save_para; /* used when gate HCLK */
 	struct msdc_tune_para def_tune_para; /* default tune setting */
 	struct msdc_tune_para saved_tune_para; /* tune result of CMD21/CMD19 */
+	struct cqhci_host *cq_host;
 };
 
 static const struct mtk_mmc_compatible mt8135_compat = {
@@ -527,6 +533,18 @@ struct msdc_host {
 	.use_internal_cd = true,
 };
 
+static const struct mtk_mmc_compatible mt6779_compat = {
+	.clk_div_bits = 12,
+	.hs400_tune = false,
+	.pad_tune_reg = MSDC_PAD_TUNE0,
+	.async_fifo = true,
+	.data_tune = true,
+	.busy_check = true,
+	.stop_clk_fix = true,
+	.enhance_rx = true,
+	.support_64g = true,
+};
+
 static const struct of_device_id msdc_of_ids[] = {
 	{ .compatible = "mediatek,mt8135-mmc", .data = &mt8135_compat},
 	{ .compatible = "mediatek,mt8173-mmc", .data = &mt8173_compat},
@@ -536,6 +554,7 @@ struct msdc_host {
 	{ .compatible = "mediatek,mt7622-mmc", .data = &mt7622_compat},
 	{ .compatible = "mediatek,mt8516-mmc", .data = &mt8516_compat},
 	{ .compatible = "mediatek,mt7620-mmc", .data = &mt7620_compat},
+	{ .compatible = "mediatek,mt6779-mmc", .data = &mt6779_compat},
 	{}
 };
 MODULE_DEVICE_TABLE(of, msdc_of_ids);
@@ -739,6 +758,15 @@ static void msdc_set_timeout(struct msdc_host *host, u64 ns, u64 clks)
 		      (u32)(timeout > 255 ? 255 : timeout));
 }
 
+static void msdc_set_busy_timeout(struct msdc_host *host, u64 ns, u64 clks)
+{
+	u64 timeout;
+
+	timeout = msdc_timeout_cal(host, ns, clks);
+	sdr_set_field(host->base + SDC_CFG, SDC_CFG_WRDTOC,
+		      (u32)(timeout > 8191 ? 8191 : timeout));
+}
+
 static void msdc_gate_clock(struct msdc_host *host)
 {
 	clk_disable_unprepare(host->src_clk_cg);
@@ -1425,6 +1453,36 @@ static void msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
 		pm_runtime_put_noidle(host->dev);
 }
 
+#if IS_ENABLED(CONFIG_MMC_CQHCI)
+static irqreturn_t msdc_cmdq_irq(struct msdc_host *host, u32 intsts)
+{
+	int cmd_err = 0, dat_err = 0;
+
+	if (intsts & MSDC_INT_RSPCRCERR) {
+		cmd_err = (unsigned int)-EILSEQ;
+		dev_err(host->dev, "%s: CMD CRC ERR", __func__);
+	} else if (intsts & MSDC_INT_CMDTMO) {
+		cmd_err = (unsigned int)-ETIMEDOUT;
+		dev_err(host->dev, "%s: CMD TIMEOUT ERR", __func__);
+	}
+
+	if (intsts & MSDC_INT_DATCRCERR) {
+		dat_err = (unsigned int)-EILSEQ;
+		dev_err(host->dev, "%s: DATA CRC ERR", __func__);
+	} else if (intsts & MSDC_INT_DATTMO) {
+		dat_err = (unsigned int)-ETIMEDOUT;
+		dev_err(host->dev, "%s: DATA TIMEOUT ERR", __func__);
+	}
+
+	if (cmd_err || dat_err) {
+		dev_err(host->dev, "cmd_err = %d, dat_err =%d, intsts = 0x%x",
+			cmd_err, dat_err, intsts);
+	}
+
+	return cqhci_irq(host->mmc, 0, cmd_err, dat_err);
+}
+#endif
+
 static irqreturn_t msdc_irq(int irq, void *dev_id)
 {
 	struct msdc_host *host = (struct msdc_host *) dev_id;
@@ -1461,6 +1519,16 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
 		if (!(events & (event_mask & ~MSDC_INT_SDIOIRQ)))
 			break;
 
+#if IS_ENABLED(CONFIG_MMC_CQHCI)
+		if ((host->mmc->caps2 & MMC_CAP2_CQE) &&
+		    (events & MSDC_INT_CMDQ)) {
+			msdc_cmdq_irq(host, events);
+			/* clear interrupts */
+			writel(events, host->base + MSDC_INT);
+			return IRQ_HANDLED;
+		}
+#endif
+
 		if (!mrq) {
 			dev_err(host->dev,
 				"%s: MRQ=NULL; events=%08X; event_mask=%08X\n",
@@ -2144,6 +2212,36 @@ static int msdc_get_cd(struct mmc_host *mmc)
 		return !val;
 }
 
+static void msdc_cqe_enable(struct mmc_host *mmc)
+{
+	struct msdc_host *host = mmc_priv(mmc);
+
+	/* enable cmdq irq */
+	writel(MSDC_INT_CMDQ, host->base + MSDC_INTEN);
+	/* enable busy check */
+	sdr_set_bits(host->base + MSDC_PATCH_BIT1, MSDC_PB1_BUSY_CHECK_SEL);
+	/* default write data / busy timeout 20s */
+	msdc_set_busy_timeout(host, 20 * 1000000000ULL, 0);
+	/* default read data timeout 1s */
+	msdc_set_timeout(host, 1000000000ULL, 0);
+}
+
+void msdc_cqe_disable(struct mmc_host *mmc, bool recovery)
+{
+	struct msdc_host *host = mmc_priv(mmc);
+
+	/* disable cmdq irq */
+	sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INT_CMDQ);
+	/* disable busy check */
+	sdr_clr_bits(host->base + MSDC_PATCH_BIT1, MSDC_PB1_BUSY_CHECK_SEL);
+
+	if (recovery) {
+		sdr_set_field(host->base + MSDC_DMA_CTRL,
+			      MSDC_DMA_CTRL_STOP, 1);
+		msdc_reset_hw(host);
+	}
+}
+
 static const struct mmc_host_ops mt_msdc_ops = {
 	.post_req = msdc_post_req,
 	.pre_req = msdc_pre_req,
@@ -2160,6 +2258,11 @@ static int msdc_get_cd(struct mmc_host *mmc)
 	.hw_reset = msdc_hw_reset,
 };
 
+static const struct cqhci_host_ops msdc_cmdq_ops = {
+	.enable         = msdc_cqe_enable,
+	.disable        = msdc_cqe_disable,
+};
+
 static void msdc_of_property_parse(struct platform_device *pdev,
 				   struct msdc_host *host)
 {
@@ -2311,6 +2414,22 @@ static int msdc_drv_probe(struct platform_device *pdev)
 		host->dma_mask = DMA_BIT_MASK(32);
 	mmc_dev(mmc)->dma_mask = &host->dma_mask;
 
+#if IS_ENABLED(CONFIG_MMC_CQHCI)
+	if (mmc->caps2 & MMC_CAP2_CQE) {
+		host->cq_host = devm_kzalloc(host->mmc->parent,
+					     sizeof(*host->cq_host),
+					     GFP_KERNEL);
+		host->cq_host->caps |= CQHCI_TASK_DESC_SZ_128;
+		host->cq_host->mmio = host->base + 0x800;
+		host->cq_host->ops = &msdc_cmdq_ops;
+		cqhci_init(host->cq_host, mmc, true);
+		mmc->max_segs = 128;
+		/* cqhci 16bit length */
+		/* 0 size, means 65536 so we don't have to -1 here */
+		mmc->max_seg_size = 64 * 1024;
+	}
+#endif
+
 	host->timeout_clks = 3 * 1048576;
 	host->dma.gpd = dma_alloc_coherent(&pdev->dev,
 				2 * sizeof(struct mt_gpdma_desc),
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
