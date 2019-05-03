Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F07A12AAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3z9j15YTW5CY/kYDV77/YqosVDVDz1eeWTi8XCo+egA=; b=SXFVL5KMEpzhqE
	P6DD5cdg1V2kfe9JV5gIUw6nvG07d1VTYHz5KGhFhp5yK81+uD0ipRhmtEqme+FKFPE3X+BwZu9ZK
	uRI2CgHCCvy4LKmaVbCdllrIMgPyk3BeCfTYYY7tlvCEwSEsocTy8oXi/pI890kbWrSuUTBrQM7uu
	DbjViROk4DaEnkPRaMlfcpdrQV6o0/0HOFaL/MuuTPxwSHnmImTve3UB9+vzj/2qQtnN5oHmk+AiI
	1kRO82s8hRMPT1r28QlIKCosqr6MeiU6Pzz3nPTT/pJk24ERiekr9YSOrxjfQML/wtXE/d7FW3SUe
	rUn9ulr8tytH0V35OG0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUZl-0002oJ-2Z; Fri, 03 May 2019 09:33:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUYp-0001LH-OY; Fri, 03 May 2019 09:32:58 +0000
X-UUID: 21d663a3200b46dea34953dd80d0300b-20190503
X-UUID: 21d663a3200b46dea34953dd80d0300b-20190503
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 240797573; Fri, 03 May 2019 01:32:43 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 May 2019 02:32:41 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 May 2019 17:32:40 +0800
Received: from mtkslt302.mediatek.inc (10.21.14.115) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 3 May 2019 17:32:40 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 03/10] mfd: mt6397: modify suspend/resume behavior
Date: Fri, 3 May 2019 17:31:10 +0800
Message-ID: <20190503093117.54830-4-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 61EBBF2BCD1705BD69145CF72B24886C465F70180C476E8F381513D85FF0DDC52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_023255_904197_6E300926 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some pmics don't need backup interrupt settings, so we change to use
pm notifier for the pmics which are necessary to store settings.

Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 drivers/mfd/mt6397-core.c       | 89 ++++++++++++++-------------------
 drivers/mfd/mt6397-irq.c        | 33 ++++++++++++
 include/linux/mfd/mt6397/core.h |  3 ++
 3 files changed, 73 insertions(+), 52 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index c80f0449fe7e..719687a341de 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -12,7 +12,6 @@
  * GNU General Public License for more details.
  */
 
-#include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
@@ -90,40 +89,27 @@ static const struct mfd_cell mt6397_devs[] = {
 	}
 };
 
-#ifdef CONFIG_PM_SLEEP
-static int mt6397_irq_suspend(struct device *dev)
-{
-	struct mt6397_chip *chip = dev_get_drvdata(dev);
-
-	regmap_write(chip->regmap, chip->int_con[0], chip->wake_mask[0]);
-	regmap_write(chip->regmap, chip->int_con[1], chip->wake_mask[1]);
-
-	enable_irq_wake(chip->irq);
-
-	return 0;
-}
-
-static int mt6397_irq_resume(struct device *dev)
-{
-	struct mt6397_chip *chip = dev_get_drvdata(dev);
-
-	regmap_write(chip->regmap, chip->int_con[0], chip->irq_masks_cur[0]);
-	regmap_write(chip->regmap, chip->int_con[1], chip->irq_masks_cur[1]);
-
-	disable_irq_wake(chip->irq);
+struct chip_data {
+	u32 cid_addr;
+	u32 cid_shift;
+};
 
-	return 0;
-}
-#endif
+static const struct chip_data mt6323_core = {
+	.cid_addr = MT6323_CID,
+	.cid_shift = 0,
+};
 
-static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_irq_suspend,
-			mt6397_irq_resume);
+static const struct chip_data mt6397_core = {
+	.cid_addr = MT6397_CID,
+	.cid_shift = 0,
+};
 
 static int mt6397_probe(struct platform_device *pdev)
 {
 	int ret;
 	unsigned int id;
 	struct mt6397_chip *pmic;
+	const struct chip_data *pmic_core;
 
 	pmic = devm_kzalloc(&pdev->dev, sizeof(*pmic), GFP_KERNEL);
 	if (!pmic)
@@ -139,28 +125,30 @@ static int mt6397_probe(struct platform_device *pdev)
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
@@ -168,21 +156,13 @@ static int mt6397_probe(struct platform_device *pdev)
 
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
 
@@ -195,9 +175,15 @@ static int mt6397_probe(struct platform_device *pdev)
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
 
@@ -212,7 +198,6 @@ static struct platform_driver mt6397_driver = {
 	.driver = {
 		.name = "mt6397",
 		.of_match_table = of_match_ptr(mt6397_of_match),
-		.pm = &mt6397_pm_ops,
 	},
 	.id_table = mt6397_id,
 };
diff --git a/drivers/mfd/mt6397-irq.c b/drivers/mfd/mt6397-irq.c
index b2d3ce1f3115..669e93df54ef 100644
--- a/drivers/mfd/mt6397-irq.c
+++ b/drivers/mfd/mt6397-irq.c
@@ -9,6 +9,7 @@
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/suspend.h>
 #include <linux/mfd/mt6323/core.h>
 #include <linux/mfd/mt6323/registers.h>
 #include <linux/mfd/mt6397/core.h>
@@ -128,6 +129,36 @@ static const struct irq_domain_ops mt6397_irq_domain_ops = {
 	.map = mt6397_irq_domain_map,
 };
 
+static int mt6397_irq_pm_notifier(struct notifier_block *notifier,
+				  unsigned long pm_event, void *unused)
+{
+	struct mt6397_chip *chip =
+		container_of(notifier, struct mt6397_chip, pm_nb);
+
+	switch (pm_event) {
+	case PM_SUSPEND_PREPARE:
+		regmap_write(chip->regmap,
+			     chip->int_con[0], chip->wake_mask[0]);
+		regmap_write(chip->regmap,
+			     chip->int_con[1], chip->wake_mask[1]);
+		enable_irq_wake(chip->irq);
+		break;
+
+	case PM_POST_SUSPEND:
+		regmap_write(chip->regmap,
+			     chip->int_con[0], chip->irq_masks_cur[0]);
+		regmap_write(chip->regmap,
+			     chip->int_con[1], chip->irq_masks_cur[1]);
+		disable_irq_wake(chip->irq);
+		break;
+
+	default:
+		break;
+	}
+
+	return NOTIFY_DONE;
+}
+
 int mt6397_irq_init(struct mt6397_chip *chip)
 {
 	int ret;
@@ -159,6 +190,7 @@ int mt6397_irq_init(struct mt6397_chip *chip)
 	regmap_write(chip->regmap, chip->int_con[0], 0x0);
 	regmap_write(chip->regmap, chip->int_con[1], 0x0);
 
+	chip->pm_nb.notifier_call = mt6397_irq_pm_notifier;
 	chip->irq_domain = irq_domain_add_linear(chip->dev->of_node,
 						 MT6397_IRQ_NR,
 						 &mt6397_irq_domain_ops,
@@ -177,5 +209,6 @@ int mt6397_irq_init(struct mt6397_chip *chip)
 		return ret;
 	}
 
+	register_pm_notifier(&chip->pm_nb);
 	return 0;
 }
diff --git a/include/linux/mfd/mt6397/core.h b/include/linux/mfd/mt6397/core.h
index 93f9f5235575..0cb5d4b0895b 100644
--- a/include/linux/mfd/mt6397/core.h
+++ b/include/linux/mfd/mt6397/core.h
@@ -15,6 +15,8 @@
 #ifndef __MFD_MT6397_CORE_H__
 #define __MFD_MT6397_CORE_H__
 
+#include <linux/notifier.h>
+
 enum chip_id {
 	MT6323_CHIP_ID = 0x23,
 	MT6391_CHIP_ID = 0x91,
@@ -60,6 +62,7 @@ enum mt6397_irq_numbers {
 struct mt6397_chip {
 	struct device *dev;
 	struct regmap *regmap;
+	struct notifier_block pm_nb;
 	int irq;
 	struct irq_domain *irq_domain;
 	struct mutex irqlock;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
