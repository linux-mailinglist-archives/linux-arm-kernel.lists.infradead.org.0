Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3722D81195
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 07:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PuwFGAEAhLzSAMTPoQTjgmIE4m587Oj66sgFC3dSSY=; b=Z1CTatGrs5gcOa
	8VLCkpilOcJ4+sSAaMi9kbCa/rww6Cye/xP48rWmBtHVuj/EPfWG7LoM0jXgz6JDGgCoXdaqTWQZc
	RJZp7Z/+KrdjgMv2aIkAMSwK8Z9B4hyZdSDqHDMvUoCbG0h+zvGkWZNwivuKL2rpEReAYbPFL6lcc
	ib4IJAZPsrwVjmGtiAU8MDTGVz23+u6STWcGklYjHNTKFQ9uMPS82B9BOdm7VQ2yJ4w8QG+tz7G4X
	bRCsM6jU0Y0JDF70Ldh6RiOdwkBDca6DAQ1Cp0Hv7aXaOe86aj371uebArKsgxkg37+4OxiLobSu5
	yR2Gn8OpTHwdDZQfgYUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huVVr-0002Wb-GD; Mon, 05 Aug 2019 05:26:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huVSb-00070W-5l; Mon, 05 Aug 2019 05:23:06 +0000
X-UUID: 1e546b4fceb04c73a76d48be91470d12-20190804
X-UUID: 1e546b4fceb04c73a76d48be91470d12-20190804
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1512624293; Sun, 04 Aug 2019 21:22:57 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 4 Aug 2019 22:22:56 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 5 Aug 2019 13:22:42 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 5 Aug 2019 13:22:42 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH v4 03/10] mfd: mt6397: modify suspend/resume behavior
Date: Mon, 5 Aug 2019 13:21:51 +0800
Message-ID: <1564982518-32163-4-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 80ACD00008461D827E9598721687A43049042773A393F161012BD8D9EA4927502000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_222305_304524_628DDB9E 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Kate Stewart <kstewart@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-mediatek@lists.infradead.org, Allison Randal <allison@lohutok.net>,
 linux-rtc@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some pmics don't need backup interrupt settings, so we change to use
pm notifier for the pmics which are necessary to store settings.

Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 drivers/mfd/mt6397-core.c       | 89 +++++++++++++++++------------------------
 drivers/mfd/mt6397-irq.c        | 33 +++++++++++++++
 include/linux/mfd/mt6397/core.h |  3 ++
 3 files changed, 73 insertions(+), 52 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 93c8881..8f94187 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -4,7 +4,6 @@
  * Author: Flora Fu, MediaTek
  */
 
-#include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
@@ -82,40 +81,27 @@ static const struct mfd_cell mt6397_devs[] = {
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
@@ -131,28 +117,30 @@ static int mt6397_probe(struct platform_device *pdev)
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
@@ -160,21 +148,13 @@ static int mt6397_probe(struct platform_device *pdev)
 
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
 
@@ -187,9 +167,15 @@ static int mt6397_probe(struct platform_device *pdev)
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
 
@@ -204,7 +190,6 @@ static struct platform_driver mt6397_driver = {
 	.driver = {
 		.name = "mt6397",
 		.of_match_table = of_match_ptr(mt6397_of_match),
-		.pm = &mt6397_pm_ops,
 	},
 	.id_table = mt6397_id,
 };
diff --git a/drivers/mfd/mt6397-irq.c b/drivers/mfd/mt6397-irq.c
index b2d3ce1..669e93d 100644
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
index 9320c2a..23e21da 100644
--- a/include/linux/mfd/mt6397/core.h
+++ b/include/linux/mfd/mt6397/core.h
@@ -7,6 +7,8 @@
 #ifndef __MFD_MT6397_CORE_H__
 #define __MFD_MT6397_CORE_H__
 
+#include <linux/notifier.h>
+
 enum chip_id {
 	MT6323_CHIP_ID = 0x23,
 	MT6391_CHIP_ID = 0x91,
@@ -52,6 +54,7 @@ enum mt6397_irq_numbers {
 struct mt6397_chip {
 	struct device *dev;
 	struct regmap *regmap;
+	struct notifier_block pm_nb;
 	int irq;
 	struct irq_domain *irq_domain;
 	struct mutex irqlock;
-- 
2.6.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
