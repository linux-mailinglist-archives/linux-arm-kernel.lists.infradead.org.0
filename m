Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65F0139B33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TSelmyxQctPrN0QApMCKXjw++HPn6vibR07oGDFuVfg=; b=ZvrgBlc5kDAS1Mku/0RUEQSqZ2
	YSF1a7WOWcrXr6IGdREYL9hVAgN/K1Y0w+ZjqrdrgJXb6baXFYtWystiBoCdNcBKrR7vovAUZ9CYs
	FApvjo5y7H5nuAlD+r73hPC/A8Ggh5Jy+x6f0GCveTMcXyLvBI0E8rTDWOJiaaRhJ+IV9yEG+08ad
	Bc+ytzRf6guN6gpXcLgyHJye3j4eAX6fNMU07w+uj3iHmRMvNMIaXWQgidLoBwKVETRy2t9f0iRSp
	NVbWOdU4S2EiFS7tG8Mc2cDieJitzQJgstHDV/OmYiTQaFQdPs9nni83cqm/c/rLrB7t8k9D8lzSg
	K9rH1BpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6x0-0007XF-Tq; Mon, 13 Jan 2020 21:08:42 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6wD-0006xY-4F
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:07:54 +0000
Received: by mail-pj1-x1041.google.com with SMTP id e11so3275172pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZCAEUSlUeHjJbOzhybZNdXvqq8RaBrp2R/gTbl2SsA4=;
 b=imf2N9GC3kHPqBbRGoBeoJtgVzok4YeYS3x1fRz8ck7RDWL0pktxyfg99w0VH067cP
 CuA2T30U80nscFo4jgx2jWiI/QlhO0N5HJT7ZMMQb0YlILKo6DefBL+DtkTB7cAybz5H
 scXKuPGm9p+ULT6R1oiWMTPz8YFxw531D4gNlI1L5MZpdlWBx6CweB+22+w5BEyO1YBs
 k6DN0vyNhFKzvzkEHcw+aXvF7FFB++6iDxB4GqfEOKNn8MxkQrsIEaEe/eKCw+lNDBmQ
 3RNOhrmOVYsoAsuDwf4Hw2as4TLZaeKD3WSGcxtHsEFHaBFAQPgnm5A8NnzS66UeTjwn
 cU6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZCAEUSlUeHjJbOzhybZNdXvqq8RaBrp2R/gTbl2SsA4=;
 b=f38Ouc+s4EP/OOoNrZ5sb0te8tvY5s7FjUm4lxXWlHs0EhSgEq8sCZCEOfSMjHQ9Fo
 xjY9tDLw90uPK3YTAVlRm+lSBZSRQkSE+cIUNF7NC6WKQlQpTLZ3gJMA9oWyWqcYUM/9
 85w2BtjKftQ1sq20urZmpdxepMXNBSKGIm3bkraU63pqVUjY2y3MPs1dsYRlcXb4U2HQ
 LTUtm+tPw54qkLxt6ZiYw8lcKiZzAlcj9vnu5hUQuuMbpGshmXsgXYXTDvZCvyZEzSdq
 eqzdOoyYqv+alr7QaofuXQ6p0AlS4F4SBnVSTjlLCRlHcnW8Q78b9oBjj5F0Xaf9Y2ff
 AhvQ==
X-Gm-Message-State: APjAAAXy4fSONP/tW+k9ywUetT0uQVpjmoal9VnqV9S/Xk5FLDE04rc6
 zbxiCVTheYSBO4JhtiVTmc4=
X-Google-Smtp-Source: APXvYqyErGp9uGm8FttvDm8IHO5klXLdH9nJDmcvZ44xGfQ3O2sLApMIAp/CiMUrsi0IV/v10P7o5g==
X-Received: by 2002:a17:902:5ac9:: with SMTP id
 g9mr15616765plm.69.1578949672068; 
 Mon, 13 Jan 2020 13:07:52 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s1sm14195827pgv.87.2020.01.13.13.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:07:51 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] mmc: sdhci-brcmstb: Add ability to use HS400ES transfer
 mode
Date: Mon, 13 Jan 2020 16:07:02 -0500
Message-Id: <20200113210706.11972-3-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113210706.11972-1-alcooperx@gmail.com>
References: <20200113210706.11972-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_130753_231864_9408FC27 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

The latest eMMC JEDEC specification version 5.1 added a new
transfer mode, HS400 with enhanced strobe (HS400ES). This mode
will be selected if both the host controller and eMMC device
support it. The latest Arasan 5.1 controller in the 7216a0
supports this mode. The "Host Controller Specification" has
not been updated so the controller register bit used to enable
this mode is not specified and varies the with controller vendor.
The Linux SDHCI driver supplies a callback for enabling HS400ES
mode and that callback will be used to supply a routine that
will set the proper bit in the Arasan Vendor register.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/mmc/host/sdhci-brcmstb.c | 97 ++++++++++++++++++++++++++++----
 1 file changed, 86 insertions(+), 11 deletions(-)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index 73bb440aaf93..daa89ca232a2 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -9,9 +9,41 @@
 #include <linux/mmc/host.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/bitops.h>
 
 #include "sdhci-pltfm.h"
 
+#define SDHCI_VENDOR 0x78
+#define  SDHCI_VENDOR_ENHANCED_STRB 0x1
+
+#define BRCMSTB_PRIV_FLAGS_NO_64BIT		BIT(0)
+#define BRCMSTB_PRIV_FLAGS_BROKEN_TIMEOUT	BIT(1)
+
+struct sdhci_brcmstb_priv {
+	void __iomem *cfg_regs;
+};
+
+struct brcmstb_match_priv {
+	void (*hs400es)(struct mmc_host *mmc, struct mmc_ios *ios);
+	unsigned int flags;
+};
+
+static void sdhci_brcmstb_hs400es(struct mmc_host *mmc, struct mmc_ios *ios)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+
+	u32 reg;
+
+	dev_dbg(mmc_dev(mmc), "%s(): Setting HS400-Enhanced-Strobe mode\n",
+		__func__);
+	reg = readl(host->ioaddr + SDHCI_VENDOR);
+	if (ios->enhanced_strobe)
+		reg |= SDHCI_VENDOR_ENHANCED_STRB;
+	else
+		reg &= ~SDHCI_VENDOR_ENHANCED_STRB;
+	writel(reg, host->ioaddr + SDHCI_VENDOR);
+}
+
 static const struct sdhci_ops sdhci_brcmstb_ops = {
 	.set_clock = sdhci_set_clock,
 	.set_bus_width = sdhci_set_bus_width,
@@ -23,13 +55,40 @@ static const struct sdhci_pltfm_data sdhci_brcmstb_pdata = {
 	.ops = &sdhci_brcmstb_ops,
 };
 
+static const struct brcmstb_match_priv match_priv_7425 = {
+	.flags = BRCMSTB_PRIV_FLAGS_NO_64BIT |
+	BRCMSTB_PRIV_FLAGS_BROKEN_TIMEOUT,
+};
+
+static const struct brcmstb_match_priv match_priv_7445 = {
+	.flags = BRCMSTB_PRIV_FLAGS_BROKEN_TIMEOUT,
+};
+
+static const struct brcmstb_match_priv match_priv_7216 = {
+	.hs400es = sdhci_brcmstb_hs400es,
+};
+
+static const struct of_device_id sdhci_brcm_of_match[] = {
+	{ .compatible = "brcm,bcm7425-sdhci", .data = &match_priv_7425 },
+	{ .compatible = "brcm,bcm7445-sdhci", .data = &match_priv_7445 },
+	{ .compatible = "brcm,bcm7216-sdhci", .data = &match_priv_7216 },
+	{},
+};
+
 static int sdhci_brcmstb_probe(struct platform_device *pdev)
 {
-	struct sdhci_host *host;
+	const struct brcmstb_match_priv *match_priv;
 	struct sdhci_pltfm_host *pltfm_host;
+	const struct of_device_id *match;
+	struct sdhci_brcmstb_priv *priv;
+	struct sdhci_host *host;
+	struct resource *iomem;
 	struct clk *clk;
 	int res;
 
+	match = of_match_node(sdhci_brcm_of_match, pdev->dev.of_node);
+	match_priv = match->data;
+
 	clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(clk)) {
 		dev_err(&pdev->dev, "Clock not found in Device Tree\n");
@@ -39,36 +98,57 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 	if (res)
 		return res;
 
-	host = sdhci_pltfm_init(pdev, &sdhci_brcmstb_pdata, 0);
+	host = sdhci_pltfm_init(pdev, &sdhci_brcmstb_pdata,
+				sizeof(struct sdhci_brcmstb_priv));
 	if (IS_ERR(host)) {
 		res = PTR_ERR(host);
 		goto err_clk;
 	}
 
+	pltfm_host = sdhci_priv(host);
+	priv = sdhci_pltfm_priv(pltfm_host);
+
+	/* Map in the non-standard CFG registers */
+	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	priv->cfg_regs = devm_ioremap_resource(&pdev->dev, iomem);
+	if (IS_ERR(priv->cfg_regs)) {
+		res = PTR_ERR(priv->cfg_regs);
+		goto err;
+	}
+
 	sdhci_get_of_property(pdev);
 	res = mmc_of_parse(host->mmc);
 	if (res)
 		goto err;
 
+	/*
+	 * If the chip has enhanced strobe and it's enabled, add
+	 * callback
+	 */
+	if (match_priv->hs400es &&
+	    (host->mmc->caps2 & MMC_CAP2_HS400_ES))
+		host->mmc_host_ops.hs400_enhanced_strobe = match_priv->hs400es;
+
 	/*
 	 * Supply the existing CAPS, but clear the UHS modes. This
 	 * will allow these modes to be specified by device tree
 	 * properties through mmc_of_parse().
 	 */
 	host->caps = sdhci_readl(host, SDHCI_CAPABILITIES);
-	if (of_device_is_compatible(pdev->dev.of_node, "brcm,bcm7425-sdhci"))
+	if (match_priv->flags & BRCMSTB_PRIV_FLAGS_NO_64BIT)
 		host->caps &= ~SDHCI_CAN_64BIT;
 	host->caps1 = sdhci_readl(host, SDHCI_CAPABILITIES_1);
 	host->caps1 &= ~(SDHCI_SUPPORT_SDR50 | SDHCI_SUPPORT_SDR104 |
 			SDHCI_SUPPORT_DDR50);
-	host->quirks |= SDHCI_QUIRK_MISSING_CAPS |
-		SDHCI_QUIRK_BROKEN_TIMEOUT_VAL;
+	host->quirks |= SDHCI_QUIRK_MISSING_CAPS;
+
+	if (match_priv->flags & BRCMSTB_PRIV_FLAGS_BROKEN_TIMEOUT)
+		host->quirks |= SDHCI_QUIRK_BROKEN_TIMEOUT_VAL;
 
 	res = sdhci_add_host(host);
 	if (res)
 		goto err;
 
-	pltfm_host = sdhci_priv(host);
 	pltfm_host->clk = clk;
 	return res;
 
@@ -79,11 +159,6 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 	return res;
 }
 
-static const struct of_device_id sdhci_brcm_of_match[] = {
-	{ .compatible = "brcm,bcm7425-sdhci" },
-	{ .compatible = "brcm,bcm7445-sdhci" },
-	{},
-};
 MODULE_DEVICE_TABLE(of, sdhci_brcm_of_match);
 
 static struct platform_driver sdhci_brcmstb_driver = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
