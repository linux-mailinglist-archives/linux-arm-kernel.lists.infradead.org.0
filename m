Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D00F1BB263
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 01:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzyG1yEw9KE1pS1mQomfVeAmc1GKSQUKPKN90uzXyH4=; b=l7WOcOKfVUHpRB
	8HRxCmY8nUGXvq40bRyBj8HABQBZdzeHJATcfB77YH/RGQdDwwFa1tliXa+c7s3EqLBhIyP4bAHJV
	34vY2FJ+9xXMD71bMNfHirXco9S6NmpbgwhAUB2HGlZXmeCYZNJFTPVVy3AXvU4PyAXmRT0tDoOxR
	R99uNonC8brJ2Fg/kDCEX+aUwZmjEj6jNqVx71o0loZ8lvhgyCNbFv4rFSDGPYEYCF73UVah/AQcO
	OfsW0aY60APDHkYLUIAoKRBtLEC2Eo3ZayVIizm/V5g71xpeU7+igzqH/O+2amfyhQTWjPFwFYgq2
	42TEhF2dgg7HGa7YjGBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDdi-0000q7-Iq; Mon, 27 Apr 2020 23:58:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDcn-0000Br-Cu; Mon, 27 Apr 2020 23:57:23 +0000
X-UUID: 1a13534ece9c44c3bdbe59583bceb5d3-20200427
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=+sx88la9jukwwPydWrvJ7BtN1WCn5H7eGpl+1G7y/Z8=; 
 b=HyUOe4hGxSFsPaTl2pmChHo2fF3kYB8vV5ikPfxj1/K/lr4GhNFs49uwMhgIeBcjDpDPMwSUUprVqsJF9pDwfKqBLfH0oD7x66ImByQto5yR4xoGKPmZmWHlHefse6gkbY1hiSyZUIK0dA0KYO17JLNhkwvMV4TuwEVb0wyfOHU=;
X-UUID: 1a13534ece9c44c3bdbe59583bceb5d3-20200427
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 236835507; Mon, 27 Apr 2020 15:57:16 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 27 Apr 2020 16:57:14 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 07:57:08 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 28 Apr 2020 07:57:12 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: <mirq-linux@rere.qmqm.pl>, Jonathan Hunter <jonathanh@nvidia.com>, "Al
 Cooper" <alcooperx@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 <bcm-kernel-feedback-list@broadcom.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Michal Simek
 <michal.simek@xilinx.com>, Thierry Reding <thierry.reding@gmail.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>, "Linus
 Walleij" <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>, Kate
 Stewart <kstewart@linuxfoundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Pan Bian <bianpan2016@163.com>, "Thomas
 Gleixner" <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "Mathieu Malaterre" <malat@debian.org>, Stanley Chu
 <stanley.chu@mediatek.com>, "Kuohong Wang" <kuohong.wang@mediatek.com>, Yong
 Mao <yong.mao@mediatek.com>
Subject: [PATCH v5 2/5] mmc: host: Remove redundant CQE bindings
Date: Tue, 28 Apr 2020 07:56:05 +0800
Message-ID: <1588031768-23677-3-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_165721_445702_9494F40E 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-msm@vger.kernel.org, Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CQE bindings "supports-cqe" and "disable-cqe-dcmd" is parsed
in mmc_of_parse(). Remove vendor code which parses CQE bindings,
and use mmc_host->caps2 to decide support CQE or not.

Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Acked-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/mmc/host/sdhci-brcmstb.c   | 11 ++++++-----
 drivers/mmc/host/sdhci-msm.c       |  3 +--
 drivers/mmc/host/sdhci-of-arasan.c |  3 ---
 drivers/mmc/host/sdhci-tegra.c     |  2 +-
 4 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index ad01f64..07c90c6 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -247,10 +247,6 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 		return res;
 
 	memset(&brcmstb_pdata, 0, sizeof(brcmstb_pdata));
-	if (device_property_read_bool(&pdev->dev, "supports-cqe")) {
-		has_cqe = true;
-		match_priv->ops->irq = sdhci_brcmstb_cqhci_irq;
-	}
 	brcmstb_pdata.ops = match_priv->ops;
 	host = sdhci_pltfm_init(pdev, &brcmstb_pdata,
 				sizeof(struct sdhci_brcmstb_priv));
@@ -261,7 +257,6 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 
 	pltfm_host = sdhci_priv(host);
 	priv = sdhci_pltfm_priv(pltfm_host);
-	priv->has_cqe = has_cqe;
 
 	/* Map in the non-standard CFG registers */
 	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
@@ -276,6 +271,12 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 	if (res)
 		goto err;
 
+	if (host->mmc->caps2 & MMC_CAP2_CQE) {
+		has_cqe = true;
+		match_priv->ops->irq = sdhci_brcmstb_cqhci_irq;
+	}
+	priv->has_cqe = has_cqe;
+
 	/*
 	 * If the chip has enhanced strobe and it's enabled, add
 	 * callback
diff --git a/drivers/mmc/host/sdhci-msm.c b/drivers/mmc/host/sdhci-msm.c
index c3a160c..fbb2f57 100644
--- a/drivers/mmc/host/sdhci-msm.c
+++ b/drivers/mmc/host/sdhci-msm.c
@@ -1880,7 +1880,6 @@ static int sdhci_msm_probe(struct platform_device *pdev)
 	u8 core_major;
 	const struct sdhci_msm_offset *msm_offset;
 	const struct sdhci_msm_variant_info *var_info;
-	struct device_node *node = pdev->dev.of_node;
 
 	host = sdhci_pltfm_init(pdev, &sdhci_msm_pdata, sizeof(*msm_host));
 	if (IS_ERR(host))
@@ -2076,7 +2075,7 @@ static int sdhci_msm_probe(struct platform_device *pdev)
 	pm_runtime_use_autosuspend(&pdev->dev);
 
 	host->mmc_host_ops.execute_tuning = sdhci_msm_execute_tuning;
-	if (of_property_read_bool(node, "supports-cqe"))
+	if (host->mmc->caps2 & MMC_CAP2_CQE)
 		ret = sdhci_msm_cqe_add_host(host, pdev);
 	else
 		ret = sdhci_add_host(host);
diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index e49b44b..359eff6 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -1281,9 +1281,6 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 					sdhci_arasan_voltage_switch;
 		sdhci_arasan->has_cqe = true;
 		host->mmc->caps2 |= MMC_CAP2_CQE;
-
-		if (!of_property_read_bool(np, "disable-cqe-dcmd"))
-			host->mmc->caps2 |= MMC_CAP2_CQE_DCMD;
 	}
 
 	ret = sdhci_arasan_add_host(sdhci_arasan);
diff --git a/drivers/mmc/host/sdhci-tegra.c b/drivers/mmc/host/sdhci-tegra.c
index 403ac44..d09abdd 100644
--- a/drivers/mmc/host/sdhci-tegra.c
+++ b/drivers/mmc/host/sdhci-tegra.c
@@ -715,7 +715,7 @@ static void tegra_sdhci_parse_dt(struct sdhci_host *host)
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 
-	if (device_property_read_bool(host->mmc->parent, "supports-cqe"))
+	if (host->mmc->caps2 & MMC_CAP2_CQE)
 		tegra_host->enable_hwcq = true;
 	else
 		tegra_host->enable_hwcq = false;
-- 
2.6.4
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
