Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6144C139B36
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:09:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wrhPbd+OiQ3TG0637dKYWtWdIfsA4wnOohSbgtnmyfo=; b=cClNVCo2Gxhs/v6LfxB9WRAo7+
	G+qohKF4uRQAHqMwI5jnizAbZa/IYiUih/c9RueVSRPvXquZo8YXMsvnRQwano5wbtly54yS1I8Nz
	YSc3kbi7uimLa6aL+LvG/W+jl+YcdmxnhrsNg/GUY4F17ncfBAhXyHbC5CedBOYtFAihEopj1MHZh
	InUf4CtW9w/QMP3+8cFrpBkoeqRAbU3bChyMvQgXJuZZ3k+qSLoNJ0nZCdMDP5iyKoxC0n4lf2Y15
	mQDu2BOX77BPrUUU6JQUaP2bPZS44UAnz3kT9zig8ihT6HOy8VwxyQJMbTo0MYRavr0pFSK3VgxpV
	F8d0yKWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6xi-0008Do-56; Mon, 13 Jan 2020 21:09:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6wL-000774-F1
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:08:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id l24so5305987pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bZHyA1pnyUOSaH6sIl5fA7IIKshVElY/2p2ut+5kOaQ=;
 b=sdN9eNr07g2kJ1ITVDp0TNjWSLys9RQy1ZdVzcG/3SfKuPwDWgV8Nur8qCGDAVRfE/
 fcTpnrOMRkqfkPmRR8DD4YNCnM+XwpMwvTMp+dUYrAxINFzxj2Xo7cut3iU70gTLRGFa
 ByKJ1sLpMjcsk2JKEPNb28ScvP6tl6urgMRaKncQe0HITx/XtuUM+UKzMj8o6LG5jZ5g
 N8/M4RfvhEWGaLspv4geZbVCycj+Z+m674voNokRIunu6DVzliC0+KdCqTs1ReOBxAnx
 inOoPL0OHVO/slPdMquWDYoLDqzcZ/oDt5kwrAok2LtBhOr+t19+5MZJ/v5cQ36PxREk
 wQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bZHyA1pnyUOSaH6sIl5fA7IIKshVElY/2p2ut+5kOaQ=;
 b=YifbKrvhMUXbYnpa0Y8FXQe1zSaNQQbsnONkVshAmKkJNpKr9Q3A5npwhnGeEx70YI
 D7AOk8IoSH4OVVDWG1sKONcj3ybhgKJvMOF3MG7ZhgZFoFE7ZOFDCKoKfEKXL7ntGuzt
 iE8L+Z79Ra8rEJUpDpMsvIsPmFe/r1XZEkxiVKEm3DxEnqYQdl9gnVK8wZMfafNws695
 o7czZXPnuJsTkNZV9djeZNezM/4wVPkacTWQYz1YNRLAkfPTYmGHQiMN1E8rxq9X2ygH
 M/oJmfmhno5CL5XaHgcuE76ZdhqyT8WRKQ7dkRIklyTkkTkJD69gQ5lkTCoPlRUqKPVx
 Kx8Q==
X-Gm-Message-State: APjAAAX75+WrwNPZPfuFiofeViTnl2fLtVbce7qc8IakLDb9UJGSGrXf
 HvjMaUZ8rwOuylcQt+FYKHY=
X-Google-Smtp-Source: APXvYqxU8UBmtvYuVuX3/nVbKboe1z24KIGFrgYkD4UDVAQnisLGoaslVQUYy2VnpHAYyKYJyMAhjQ==
X-Received: by 2002:a63:6507:: with SMTP id z7mr23578729pgb.322.1578949680591; 
 Mon, 13 Jan 2020 13:08:00 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s1sm14195827pgv.87.2020.01.13.13.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:08:00 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] mmc: sdhci-brcmstb: Add support for Command Queuing (CQE)
Date: Mon, 13 Jan 2020 16:07:05 -0500
Message-Id: <20200113210706.11972-6-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113210706.11972-1-alcooperx@gmail.com>
References: <20200113210706.11972-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_130801_521092_DF706E24 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Takao Orito <orito.takao@socionext.com>, Andrew Jeffery <andrew@aj.id.au>,
 YueHaibing <yuehaibing@huawei.com>, Al Cooper <alcooperx@gmail.com>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sowjanya Komatineni <skomatineni@nvidia.com>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The latest Arasan controller first used in the 7216 now supports
CQE so enable this feature.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/mmc/host/Kconfig         |   1 +
 drivers/mmc/host/sdhci-brcmstb.c | 140 +++++++++++++++++++++++++++++--
 2 files changed, 133 insertions(+), 8 deletions(-)

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index d06b2dfe3c95..8897de30959a 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -990,6 +990,7 @@ config MMC_SDHCI_BRCMSTB
 	tristate "Broadcom SDIO/SD/MMC support"
 	depends on ARCH_BRCMSTB || BMIPS_GENERIC
 	depends on MMC_SDHCI_PLTFM
+	select MMC_CQHCI
 	default y
 	help
 	  This selects support for the SDIO/SD/MMC Host Controller on
diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index 7ea426ba5cbc..2c4b6e7e3d9a 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -10,8 +10,10 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/bitops.h>
+#include <linux/delay.h>
 
 #include "sdhci-pltfm.h"
+#include "cqhci.h"
 
 #define SDHCI_VENDOR 0x78
 #define  SDHCI_VENDOR_ENHANCED_STRB 0x1
@@ -19,12 +21,16 @@
 #define BRCMSTB_PRIV_FLAGS_NO_64BIT		BIT(0)
 #define BRCMSTB_PRIV_FLAGS_BROKEN_TIMEOUT	BIT(1)
 
+#define SDHCI_ARASAN_CQE_BASE_ADDR		0x200
+
 struct sdhci_brcmstb_priv {
 	void __iomem *cfg_regs;
+	bool has_cqe;
 };
 
 struct brcmstb_match_priv {
 	void (*hs400es)(struct mmc_host *mmc, struct mmc_ios *ios);
+	struct sdhci_ops *ops;
 	unsigned int flags;
 };
 
@@ -44,28 +50,74 @@ static void sdhci_brcmstb_hs400es(struct mmc_host *mmc, struct mmc_ios *ios)
 	writel(reg, host->ioaddr + SDHCI_VENDOR);
 }
 
-static const struct sdhci_ops sdhci_brcmstb_ops = {
+static void sdhci_brcmstb_set_clock(struct sdhci_host *host, unsigned int clock)
+{
+	u16 clk;
+
+	host->mmc->actual_clock = 0;
+
+	clk = sdhci_calc_clk(host, clock, &host->mmc->actual_clock);
+	sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
+
+	if (clock == 0)
+		return;
+
+	sdhci_enable_clk(host, clk);
+}
+
+static void sdhci_brcmstb_dumpregs(struct mmc_host *mmc)
+{
+	sdhci_dumpregs(mmc_priv(mmc));
+}
+
+static void sdhci_brcmstb_cqe_enable(struct mmc_host *mmc)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	u32 reg;
+
+	reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
+	while (reg & SDHCI_DATA_AVAILABLE) {
+		sdhci_readl(host, SDHCI_BUFFER);
+		reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
+	}
+
+	sdhci_cqe_enable(mmc);
+}
+
+static const struct cqhci_host_ops sdhci_brcmstb_cqhci_ops = {
+	.enable         = sdhci_brcmstb_cqe_enable,
+	.disable        = sdhci_cqe_disable,
+	.dumpregs       = sdhci_brcmstb_dumpregs,
+};
+
+static struct sdhci_ops sdhci_brcmstb_ops = {
 	.set_clock = sdhci_set_clock,
 	.set_bus_width = sdhci_set_bus_width,
 	.reset = sdhci_reset,
 	.set_uhs_signaling = sdhci_set_uhs_signaling,
 };
 
-static const struct sdhci_pltfm_data sdhci_brcmstb_pdata = {
-	.ops = &sdhci_brcmstb_ops,
+static struct sdhci_ops sdhci_brcmstb_ops_7216 = {
+	.set_clock = sdhci_brcmstb_set_clock,
+	.set_bus_width = sdhci_set_bus_width,
+	.reset = sdhci_reset,
+	.set_uhs_signaling = sdhci_set_uhs_signaling,
 };
 
-static const struct brcmstb_match_priv match_priv_7425 = {
+static struct brcmstb_match_priv match_priv_7425 = {
 	.flags = BRCMSTB_PRIV_FLAGS_NO_64BIT |
 	BRCMSTB_PRIV_FLAGS_BROKEN_TIMEOUT,
+	.ops = &sdhci_brcmstb_ops,
 };
 
-static const struct brcmstb_match_priv match_priv_7445 = {
+static struct brcmstb_match_priv match_priv_7445 = {
 	.flags = BRCMSTB_PRIV_FLAGS_BROKEN_TIMEOUT,
+	.ops = &sdhci_brcmstb_ops,
 };
 
 static const struct brcmstb_match_priv match_priv_7216 = {
 	.hs400es = sdhci_brcmstb_hs400es,
+	.ops = &sdhci_brcmstb_ops_7216,
 };
 
 static const struct of_device_id sdhci_brcm_of_match[] = {
@@ -75,20 +127,85 @@ static const struct of_device_id sdhci_brcm_of_match[] = {
 	{},
 };
 
+static u32 sdhci_brcmstb_cqhci_irq(struct sdhci_host *host, u32 intmask)
+{
+	int cmd_error = 0;
+	int data_error = 0;
+
+	if (!sdhci_cqe_irq(host, intmask, &cmd_error, &data_error))
+		return intmask;
+
+	cqhci_irq(host->mmc, intmask, cmd_error, data_error);
+
+	return 0;
+}
+
+static int sdhci_brcmstb_add_host(struct sdhci_host *host,
+				  struct sdhci_brcmstb_priv *priv)
+{
+	struct cqhci_host *cq_host;
+	bool dma64;
+	int ret;
+
+	if (!priv->has_cqe)
+		return sdhci_add_host(host);
+
+	dev_dbg(mmc_dev(host->mmc), "CQE is enabled\n");
+	host->mmc->caps2 |= MMC_CAP2_CQE | MMC_CAP2_CQE_DCMD;
+	ret = sdhci_setup_host(host);
+	if (ret)
+		return ret;
+
+	cq_host = devm_kzalloc(mmc_dev(host->mmc),
+			       sizeof(*cq_host), GFP_KERNEL);
+	if (!cq_host) {
+		ret = -ENOMEM;
+		goto cleanup;
+	}
+
+	cq_host->mmio = host->ioaddr + SDHCI_ARASAN_CQE_BASE_ADDR;
+	cq_host->ops = &sdhci_brcmstb_cqhci_ops;
+
+	dma64 = host->flags & SDHCI_USE_64_BIT_DMA;
+	if (dma64) {
+		dev_dbg(mmc_dev(host->mmc), "Using 64 bit DMA\n");
+		cq_host->caps |= CQHCI_TASK_DESC_SZ_128;
+		cq_host->quirks |= CQHCI_QUIRK_SHORT_TXFR_DESC_SZ;
+	}
+
+	ret = cqhci_init(cq_host, host->mmc, dma64);
+	if (ret)
+		goto cleanup;
+
+	ret = __sdhci_add_host(host);
+	if (ret)
+		goto cleanup;
+
+	return 0;
+
+cleanup:
+	sdhci_cleanup_host(host);
+	return ret;
+}
+
 static int sdhci_brcmstb_probe(struct platform_device *pdev)
 {
 	const struct brcmstb_match_priv *match_priv;
+	struct sdhci_pltfm_data brcmstb_pdata;
 	struct sdhci_pltfm_host *pltfm_host;
 	const struct of_device_id *match;
 	struct sdhci_brcmstb_priv *priv;
 	struct sdhci_host *host;
 	struct resource *iomem;
+	bool has_cqe = false;
 	struct clk *clk;
 	int res;
 
 	match = of_match_node(sdhci_brcm_of_match, pdev->dev.of_node);
 	match_priv = match->data;
 
+	dev_dbg(&pdev->dev, "Probe found match for %s\n",  match->compatible);
+
 	clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(clk)) {
 		if (PTR_ERR(clk) == -EPROBE_DEFER)
@@ -100,7 +217,13 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 	if (res)
 		return res;
 
-	host = sdhci_pltfm_init(pdev, &sdhci_brcmstb_pdata,
+	memset(&brcmstb_pdata, 0, sizeof(brcmstb_pdata));
+	if (device_property_read_bool(&pdev->dev, "supports-cqe")) {
+		has_cqe = true;
+		match_priv->ops->irq = sdhci_brcmstb_cqhci_irq;
+	}
+	brcmstb_pdata.ops = match_priv->ops;
+	host = sdhci_pltfm_init(pdev, &brcmstb_pdata,
 				sizeof(struct sdhci_brcmstb_priv));
 	if (IS_ERR(host)) {
 		res = PTR_ERR(host);
@@ -109,6 +232,7 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 
 	pltfm_host = sdhci_priv(host);
 	priv = sdhci_pltfm_priv(pltfm_host);
+	priv->has_cqe = has_cqe;
 
 	/* Map in the non-standard CFG registers */
 	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
@@ -141,13 +265,13 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 		host->caps &= ~SDHCI_CAN_64BIT;
 	host->caps1 = sdhci_readl(host, SDHCI_CAPABILITIES_1);
 	host->caps1 &= ~(SDHCI_SUPPORT_SDR50 | SDHCI_SUPPORT_SDR104 |
-			SDHCI_SUPPORT_DDR50);
+			 SDHCI_SUPPORT_DDR50);
 	host->quirks |= SDHCI_QUIRK_MISSING_CAPS;
 
 	if (match_priv->flags & BRCMSTB_PRIV_FLAGS_BROKEN_TIMEOUT)
 		host->quirks |= SDHCI_QUIRK_BROKEN_TIMEOUT_VAL;
 
-	res = sdhci_add_host(host);
+	res = sdhci_brcmstb_add_host(host, priv);
 	if (res)
 		goto err;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
