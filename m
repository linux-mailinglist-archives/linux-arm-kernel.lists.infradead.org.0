Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B819F284
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCtiETMrH6aInQdyQPPdNmsmTSScN+OvHJXrc4eWbx8=; b=roQSTNn7ARozTb
	0h6MD+VhErfs50eCmH/1bywRp8IrpD9Q4H4VLs26BoIFK8h+7d1ou79Wo42tLDrX7fcfNE1cYENRT
	+6e/xRiG5v4f9SnA09MRqLn7IqdW4WVMTvZbmIjOcDXBKTd/GulGbdEiyfC/NmjAxZqvqzkzC/+HS
	x+aufKVZsWFP5keR4+JZ7hOj0HBqWwiuI5qfK/0wpNYGDvlDvus1Jm5HateDcCtXJFbDAdKbUgdep
	0SwY0Qb05c3sJnwRckckRs73qaWSZ/ba2g6XyLV029zRDwM21Bnk9LQGT+SBYsVk9ClOqS9gMGnKd
	mionr0FjrON3/bgLNE/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLO3K-0001IR-Ge; Mon, 06 Apr 2020 09:28:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLO3C-0001HP-Ei; Mon, 06 Apr 2020 09:28:15 +0000
X-UUID: 87cf2f163bfb4ac6b9181f9c8a6214ac-20200406
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=MWNDe8xiBMP9rQl7Ip5z2SzbYK+nzQInXthBu/WoeY4=; 
 b=jvL06Rv3oJhkkDpLah1/6P070nOTmTIz1xt0ziMsMUsHnN9qXusdx3Fq47VWBDmIO3rn0LcC+CEo/IDhzZl8V7nYUsTMdCk0gyjF/ppcgMuBb0qI6j1dbTjT2Fc08ULithwXBUWVtNKAQ1Dbjy1IbbeVei3S6eCssD/K9+UORCw=;
X-UUID: 87cf2f163bfb4ac6b9181f9c8a6214ac-20200406
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 861558126; Mon, 06 Apr 2020 01:28:11 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 02:28:05 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 17:28:03 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 6 Apr 2020 17:28:02 +0800
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
 <stanley.chu@mediatek.com>, "Kuohong Wang" <kuohong.wang@mediatek.com>
Subject: [PATCH 2/5] [2/5] mmc: host: Remove redundant host CQE bindings
Date: Mon, 6 Apr 2020 17:27:58 +0800
Message-ID: <1586165281-11888-3-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1586165281-11888-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1586165281-11888-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3A9531E2BC7618BFEB04D1E964ADCBD4D2135A383C34C28A1E705DD966F2B10A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_022814_498999_46181529 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
