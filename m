Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9246CAE9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=loS6LFxFC+SaU4VaWp0E7hzI99JwPv5mTBr7XzNq9Mg=; b=ru2
	q/gAn4fW405Hs7AXJQZBzIju4LpO+PkmYGg5IkvYgC76JeVpxuQuwyC/i6b9NTFlzHbDeG/vVHXC3
	FLp5VZ34Y8IRMs0IzMH590s6D+HSyEwcLyl+xo1isn+9zb07UkItMOtSSjuvIycCNRsNxibPgI0xv
	a6vX6mMJ8BA+VuVglyskwRruuhcTitXvTZvg5fJ6mfPGFRP/itGAZLxsDuWZdpIRhu4Edu0X+cPv+
	05rcbaRju3I4P54D064t6XQ86uBq95+wFDqm1UQsD1uLmi/Ta5uprHv4+VgTvGI72Qp9axUjQo8AM
	yWmcJdQvgAPUc2VACHIf9w8u8VVJRqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6Eq-0003S9-9a; Thu, 03 Oct 2019 18:54:08 +0000
Received: from mxwww.masterlogin.de ([95.129.51.220])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6Eh-0003R0-OM; Thu, 03 Oct 2019 18:54:01 +0000
Received: from mxout2.routing.net (unknown [192.168.10.82])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id A5FE596C8B;
 Thu,  3 Oct 2019 18:53:53 +0000 (UTC)
Received: from mxbox4.masterlogin.de (unknown [192.168.10.79])
 by mxout2.routing.net (Postfix) with ESMTP id 127BF648FA;
 Thu,  3 Oct 2019 18:53:54 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-217.61.155.74.bambit.de
 [217.61.155.74])
 by mxbox4.masterlogin.de (Postfix) with ESMTPSA id 71F278089F;
 Thu,  3 Oct 2019 18:53:53 +0000 (UTC)
From: Frank Wunderlich <frank-w@public-files.de>
To: Lee Jones <lee.jones@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: [PATCH] mfd: mt6397: fix probe after changing mt6397-core
Date: Thu,  3 Oct 2019 20:53:23 +0200
Message-Id: <20191003185323.24646-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_115400_092627_D76E1C52 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.129.51.220 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Part 3 from this series [1] was not merged due to wrong splitting
and breaks mt6323 pmic on bananapi-r2

dmesg prints this line and at least switch is not initialized on bananapi-r2

mt6397 1000d000.pwrap:mt6323: unsupported chip: 0x0

this patch contains only the probe-changes and chip_data structs
from original part 3 by Hsin-Hsiung Wang

Fixes: a4872e80ce7d2a1844328176dbf279d0a2b89bdb mfd: mt6397: Extract IRQ related code from core driver

[1] https://patchwork.kernel.org/project/linux-mediatek/list/?series=164155

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/mfd/mt6397-core.c | 64 ++++++++++++++++++++++++---------------
 1 file changed, 40 insertions(+), 24 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 310dae26ddff..b2c325ead1c8 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -129,11 +129,27 @@ static int mt6397_irq_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_irq_suspend,
 			mt6397_irq_resume);
 
+struct chip_data {
+	u32 cid_addr;
+	u32 cid_shift;
+};
+
+static const struct chip_data mt6323_core = {
+	.cid_addr = MT6323_CID,
+	.cid_shift = 0,
+};
+
+static const struct chip_data mt6397_core = {
+	.cid_addr = MT6397_CID,
+	.cid_shift = 0,
+};
+
 static int mt6397_probe(struct platform_device *pdev)
 {
 	int ret;
 	unsigned int id;
 	struct mt6397_chip *pmic;
+	const struct chip_data *pmic_core;
 
 	pmic = devm_kzalloc(&pdev->dev, sizeof(*pmic), GFP_KERNEL);
 	if (!pmic)
@@ -149,28 +165,30 @@ static int mt6397_probe(struct platform_device *pdev)
 	if (!pmic->regmap)
 		return -ENODEV;
 
-	platform_set_drvdata(pdev, pmic);
+	pmic_core = of_device_get_match_data(&pdev->dev);
+	if (!pmic_core)
+		return -ENODEV;
 
-	ret = regmap_read(pmic->regmap, MT6397_CID, &id);
+	ret = regmap_read(pmic->regmap, pmic_core->cid_addr, &id);
 	if (ret) {
-		dev_err(pmic->dev, "Failed to read chip id: %d\n", ret);
+		dev_err(&pdev->dev, "Failed to read chip id: %d\n", ret);
 		return ret;
 	}
 
+	pmic->chip_id = (id >> pmic_core->cid_shift) & 0xff;
+
+	platform_set_drvdata(pdev, pmic);
+
 	pmic->irq = platform_get_irq(pdev, 0);
 	if (pmic->irq <= 0)
 		return pmic->irq;
 
-	switch (id & 0xff) {
-	case MT6323_CHIP_ID:
-		pmic->int_con[0] = MT6323_INT_CON0;
-		pmic->int_con[1] = MT6323_INT_CON1;
-		pmic->int_status[0] = MT6323_INT_STATUS0;
-		pmic->int_status[1] = MT6323_INT_STATUS1;
-		ret = mt6397_irq_init(pmic);
-		if (ret)
-			return ret;
+	ret = mt6397_irq_init(pmic);
+	if (ret)
+		return ret;
 
+	switch (pmic->chip_id) {
+	case MT6323_CHIP_ID:
 		ret = devm_mfd_add_devices(&pdev->dev, -1, mt6323_devs,
 					   ARRAY_SIZE(mt6323_devs), NULL,
 					   0, pmic->irq_domain);
@@ -178,21 +196,13 @@ static int mt6397_probe(struct platform_device *pdev)
 
 	case MT6391_CHIP_ID:
 	case MT6397_CHIP_ID:
-		pmic->int_con[0] = MT6397_INT_CON0;
-		pmic->int_con[1] = MT6397_INT_CON1;
-		pmic->int_status[0] = MT6397_INT_STATUS0;
-		pmic->int_status[1] = MT6397_INT_STATUS1;
-		ret = mt6397_irq_init(pmic);
-		if (ret)
-			return ret;
-
 		ret = devm_mfd_add_devices(&pdev->dev, -1, mt6397_devs,
 					   ARRAY_SIZE(mt6397_devs), NULL,
 					   0, pmic->irq_domain);
 		break;
 
 	default:
-		dev_err(&pdev->dev, "unsupported chip: %d\n", id);
+		dev_err(&pdev->dev, "unsupported chip: %d\n", pmic->chip_id);
 		return -ENODEV;
 	}
 
@@ -205,9 +215,15 @@ static int mt6397_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id mt6397_of_match[] = {
-	{ .compatible = "mediatek,mt6397" },
-	{ .compatible = "mediatek,mt6323" },
-	{ }
+	{
+		.compatible = "mediatek,mt6323",
+		.data = &mt6323_core,
+	}, {
+		.compatible = "mediatek,mt6397",
+		.data = &mt6397_core,
+	}, {
+		/* sentinel */
+	}
 };
 MODULE_DEVICE_TABLE(of, mt6397_of_match);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
