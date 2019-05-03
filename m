Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD13212AA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0RM5irrR6xkU35fllysmQN1usdrCrfOCfOLf+1/Plc=; b=OX0FlG2QgsqS0r
	/6l/1v35SyAzpqCTUIxEvx0KkZP/lLlJn8hAY7b2wS36JIbpZhsYBxH7Td6h3UiAjRWQAU37dChiS
	Ah8XM8Jbu4cM4FZjnyAUGGMJ8UypEgOugCPOQ7bazozvZDToBFHI8quPKwJ74y1HdEqEk4sMfsZKO
	SxzT9YvjwqeUlQFVofw1y3sh23Xahcwejzq8IFcSeXkHfDTS1XSu0z+ibiM4xwt+4+dwkwNdJKOJ8
	qchyixHIEVGCj0lyhycLKbSEIgivAbDOMF4+uT9kKmbfmgRjpJ4cNGzzWYeQ2LpGVAyF1q8NuvsWi
	Uh6D+jXx4YZeeDf+tjnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUZb-0002QL-7s; Fri, 03 May 2019 09:33:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUYn-0001Lw-7n; Fri, 03 May 2019 09:32:57 +0000
X-UUID: bea40977483d44f2aedaab6059c2e3b2-20190503
X-UUID: bea40977483d44f2aedaab6059c2e3b2-20190503
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1255753870; Fri, 03 May 2019 01:32:43 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 May 2019 02:32:42 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 May 2019 17:32:39 +0800
Received: from mtkslt302.mediatek.inc (10.21.14.115) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 3 May 2019 17:32:39 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 02/10] mfd: mt6397: extract irq related code from core
 driver
Date: Fri, 3 May 2019 17:31:09 +0800
Message-ID: <20190503093117.54830-3-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9C1D1238F0CB930D99A6DBC032E3B09BBDE3C3BDA8A22CCB9405583C5DF05A2D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_023253_882943_BA5D7F0B 
X-CRM114-Status: GOOD (  19.63  )
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

In order to support different types of irq design, we decide to add
separate irq drivers for different design and keep mt6397 mfd core
simple and reusable to all generations of PMICs so far.

Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 drivers/mfd/Makefile            |   3 +-
 drivers/mfd/mt6397-core.c       | 146 --------------------------
 drivers/mfd/mt6397-irq.c        | 181 ++++++++++++++++++++++++++++++++
 include/linux/mfd/mt6397/core.h |   9 ++
 4 files changed, 192 insertions(+), 147 deletions(-)
 create mode 100644 drivers/mfd/mt6397-irq.c

diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index b4569ed7f3f3..ab1e228b5a2f 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -234,7 +234,8 @@ obj-$(CONFIG_INTEL_SOC_PMIC)	+= intel-soc-pmic.o
 obj-$(CONFIG_INTEL_SOC_PMIC_BXTWC)	+= intel_soc_pmic_bxtwc.o
 obj-$(CONFIG_INTEL_SOC_PMIC_CHTWC)	+= intel_soc_pmic_chtwc.o
 obj-$(CONFIG_INTEL_SOC_PMIC_CHTDC_TI)	+= intel_soc_pmic_chtdc_ti.o
-obj-$(CONFIG_MFD_MT6397)	+= mt6397-core.o
+mt6397-objs	:= mt6397-core.o mt6397-irq.o
+obj-$(CONFIG_MFD_MT6397)	+= mt6397.o
 
 obj-$(CONFIG_MFD_ALTERA_A10SR)	+= altera-a10sr.o
 obj-$(CONFIG_MFD_STPMIC1)	+= stpmic1.o
diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index c9393bc86743..c80f0449fe7e 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -26,10 +26,6 @@
 #define MT6397_RTC_BASE		0xe000
 #define MT6397_RTC_SIZE		0x3e
 
-#define MT6323_CHIP_ID		0x23
-#define MT6391_CHIP_ID		0x91
-#define MT6397_CHIP_ID		0x97
-
 static const struct resource mt6397_rtc_resources[] = {
 	{
 		.start = MT6397_RTC_BASE,
@@ -94,148 +90,6 @@ static const struct mfd_cell mt6397_devs[] = {
 	}
 };
 
-static void mt6397_irq_lock(struct irq_data *data)
-{
-	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
-
-	mutex_lock(&mt6397->irqlock);
-}
-
-static void mt6397_irq_sync_unlock(struct irq_data *data)
-{
-	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
-
-	regmap_write(mt6397->regmap, mt6397->int_con[0],
-		     mt6397->irq_masks_cur[0]);
-	regmap_write(mt6397->regmap, mt6397->int_con[1],
-		     mt6397->irq_masks_cur[1]);
-
-	mutex_unlock(&mt6397->irqlock);
-}
-
-static void mt6397_irq_disable(struct irq_data *data)
-{
-	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
-	int shift = data->hwirq & 0xf;
-	int reg = data->hwirq >> 4;
-
-	mt6397->irq_masks_cur[reg] &= ~BIT(shift);
-}
-
-static void mt6397_irq_enable(struct irq_data *data)
-{
-	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
-	int shift = data->hwirq & 0xf;
-	int reg = data->hwirq >> 4;
-
-	mt6397->irq_masks_cur[reg] |= BIT(shift);
-}
-
-#ifdef CONFIG_PM_SLEEP
-static int mt6397_irq_set_wake(struct irq_data *irq_data, unsigned int on)
-{
-	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(irq_data);
-	int shift = irq_data->hwirq & 0xf;
-	int reg = irq_data->hwirq >> 4;
-
-	if (on)
-		mt6397->wake_mask[reg] |= BIT(shift);
-	else
-		mt6397->wake_mask[reg] &= ~BIT(shift);
-
-	return 0;
-}
-#else
-#define mt6397_irq_set_wake NULL
-#endif
-
-static struct irq_chip mt6397_irq_chip = {
-	.name = "mt6397-irq",
-	.irq_bus_lock = mt6397_irq_lock,
-	.irq_bus_sync_unlock = mt6397_irq_sync_unlock,
-	.irq_enable = mt6397_irq_enable,
-	.irq_disable = mt6397_irq_disable,
-	.irq_set_wake = mt6397_irq_set_wake,
-};
-
-static void mt6397_irq_handle_reg(struct mt6397_chip *mt6397, int reg,
-		int irqbase)
-{
-	unsigned int status;
-	int i, irq, ret;
-
-	ret = regmap_read(mt6397->regmap, reg, &status);
-	if (ret) {
-		dev_err(mt6397->dev, "Failed to read irq status: %d\n", ret);
-		return;
-	}
-
-	for (i = 0; i < 16; i++) {
-		if (status & BIT(i)) {
-			irq = irq_find_mapping(mt6397->irq_domain, irqbase + i);
-			if (irq)
-				handle_nested_irq(irq);
-		}
-	}
-
-	regmap_write(mt6397->regmap, reg, status);
-}
-
-static irqreturn_t mt6397_irq_thread(int irq, void *data)
-{
-	struct mt6397_chip *mt6397 = data;
-
-	mt6397_irq_handle_reg(mt6397, mt6397->int_status[0], 0);
-	mt6397_irq_handle_reg(mt6397, mt6397->int_status[1], 16);
-
-	return IRQ_HANDLED;
-}
-
-static int mt6397_irq_domain_map(struct irq_domain *d, unsigned int irq,
-					irq_hw_number_t hw)
-{
-	struct mt6397_chip *mt6397 = d->host_data;
-
-	irq_set_chip_data(irq, mt6397);
-	irq_set_chip_and_handler(irq, &mt6397_irq_chip, handle_level_irq);
-	irq_set_nested_thread(irq, 1);
-	irq_set_noprobe(irq);
-
-	return 0;
-}
-
-static const struct irq_domain_ops mt6397_irq_domain_ops = {
-	.map = mt6397_irq_domain_map,
-};
-
-static int mt6397_irq_init(struct mt6397_chip *mt6397)
-{
-	int ret;
-
-	mutex_init(&mt6397->irqlock);
-
-	/* Mask all interrupt sources */
-	regmap_write(mt6397->regmap, mt6397->int_con[0], 0x0);
-	regmap_write(mt6397->regmap, mt6397->int_con[1], 0x0);
-
-	mt6397->irq_domain = irq_domain_add_linear(mt6397->dev->of_node,
-		MT6397_IRQ_NR, &mt6397_irq_domain_ops, mt6397);
-	if (!mt6397->irq_domain) {
-		dev_err(mt6397->dev, "could not create irq domain\n");
-		return -ENOMEM;
-	}
-
-	ret = devm_request_threaded_irq(mt6397->dev, mt6397->irq, NULL,
-		mt6397_irq_thread, IRQF_ONESHOT, "mt6397-pmic", mt6397);
-	if (ret) {
-		dev_err(mt6397->dev, "failed to register irq=%d; err: %d\n",
-			mt6397->irq, ret);
-		return ret;
-	}
-
-	return 0;
-}
-
 #ifdef CONFIG_PM_SLEEP
 static int mt6397_irq_suspend(struct device *dev)
 {
diff --git a/drivers/mfd/mt6397-irq.c b/drivers/mfd/mt6397-irq.c
new file mode 100644
index 000000000000..b2d3ce1f3115
--- /dev/null
+++ b/drivers/mfd/mt6397-irq.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2019 MediaTek Inc.
+
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_irq.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/mfd/mt6323/core.h>
+#include <linux/mfd/mt6323/registers.h>
+#include <linux/mfd/mt6397/core.h>
+#include <linux/mfd/mt6397/registers.h>
+
+static void mt6397_irq_lock(struct irq_data *data)
+{
+	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
+
+	mutex_lock(&mt6397->irqlock);
+}
+
+static void mt6397_irq_sync_unlock(struct irq_data *data)
+{
+	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
+
+	regmap_write(mt6397->regmap, mt6397->int_con[0],
+		     mt6397->irq_masks_cur[0]);
+	regmap_write(mt6397->regmap, mt6397->int_con[1],
+		     mt6397->irq_masks_cur[1]);
+
+	mutex_unlock(&mt6397->irqlock);
+}
+
+static void mt6397_irq_disable(struct irq_data *data)
+{
+	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
+	int shift = data->hwirq & 0xf;
+	int reg = data->hwirq >> 4;
+
+	mt6397->irq_masks_cur[reg] &= ~BIT(shift);
+}
+
+static void mt6397_irq_enable(struct irq_data *data)
+{
+	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
+	int shift = data->hwirq & 0xf;
+	int reg = data->hwirq >> 4;
+
+	mt6397->irq_masks_cur[reg] |= BIT(shift);
+}
+
+#ifdef CONFIG_PM_SLEEP
+static int mt6397_irq_set_wake(struct irq_data *irq_data, unsigned int on)
+{
+	struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(irq_data);
+	int shift = irq_data->hwirq & 0xf;
+	int reg = irq_data->hwirq >> 4;
+
+	if (on)
+		mt6397->wake_mask[reg] |= BIT(shift);
+	else
+		mt6397->wake_mask[reg] &= ~BIT(shift);
+
+	return 0;
+}
+#else
+#define mt6397_irq_set_wake NULL
+#endif
+
+static struct irq_chip mt6397_irq_chip = {
+	.name = "mt6397-irq",
+	.irq_bus_lock = mt6397_irq_lock,
+	.irq_bus_sync_unlock = mt6397_irq_sync_unlock,
+	.irq_enable = mt6397_irq_enable,
+	.irq_disable = mt6397_irq_disable,
+	.irq_set_wake = mt6397_irq_set_wake,
+};
+
+static void mt6397_irq_handle_reg(struct mt6397_chip *mt6397, int reg,
+				  int irqbase)
+{
+	unsigned int status;
+	int i, irq, ret;
+
+	ret = regmap_read(mt6397->regmap, reg, &status);
+	if (ret) {
+		dev_err(mt6397->dev, "Failed to read irq status: %d\n", ret);
+		return;
+	}
+
+	for (i = 0; i < 16; i++) {
+		if (status & BIT(i)) {
+			irq = irq_find_mapping(mt6397->irq_domain, irqbase + i);
+			if (irq)
+				handle_nested_irq(irq);
+		}
+	}
+
+	regmap_write(mt6397->regmap, reg, status);
+}
+
+static irqreturn_t mt6397_irq_thread(int irq, void *data)
+{
+	struct mt6397_chip *mt6397 = data;
+
+	mt6397_irq_handle_reg(mt6397, mt6397->int_status[0], 0);
+	mt6397_irq_handle_reg(mt6397, mt6397->int_status[1], 16);
+
+	return IRQ_HANDLED;
+}
+
+static int mt6397_irq_domain_map(struct irq_domain *d, unsigned int irq,
+				 irq_hw_number_t hw)
+{
+	struct mt6397_chip *mt6397 = d->host_data;
+
+	irq_set_chip_data(irq, mt6397);
+	irq_set_chip_and_handler(irq, &mt6397_irq_chip, handle_level_irq);
+	irq_set_nested_thread(irq, 1);
+	irq_set_noprobe(irq);
+
+	return 0;
+}
+
+static const struct irq_domain_ops mt6397_irq_domain_ops = {
+	.map = mt6397_irq_domain_map,
+};
+
+int mt6397_irq_init(struct mt6397_chip *chip)
+{
+	int ret;
+
+	mutex_init(&chip->irqlock);
+
+	switch (chip->chip_id) {
+	case MT6323_CHIP_ID:
+		chip->int_con[0] = MT6323_INT_CON0;
+		chip->int_con[1] = MT6323_INT_CON1;
+		chip->int_status[0] = MT6323_INT_STATUS0;
+		chip->int_status[1] = MT6323_INT_STATUS1;
+		break;
+
+	case MT6391_CHIP_ID:
+	case MT6397_CHIP_ID:
+		chip->int_con[0] = MT6397_INT_CON0;
+		chip->int_con[1] = MT6397_INT_CON1;
+		chip->int_status[0] = MT6397_INT_STATUS0;
+		chip->int_status[1] = MT6397_INT_STATUS1;
+		break;
+
+	default:
+		dev_err(chip->dev, "unsupported chip: 0x%x\n", chip->chip_id);
+		return -ENODEV;
+	}
+
+	/* Mask all interrupt sources */
+	regmap_write(chip->regmap, chip->int_con[0], 0x0);
+	regmap_write(chip->regmap, chip->int_con[1], 0x0);
+
+	chip->irq_domain = irq_domain_add_linear(chip->dev->of_node,
+						 MT6397_IRQ_NR,
+						 &mt6397_irq_domain_ops,
+						 chip);
+	if (!chip->irq_domain) {
+		dev_err(chip->dev, "could not create irq domain\n");
+		return -ENOMEM;
+	}
+
+	ret = devm_request_threaded_irq(chip->dev, chip->irq, NULL,
+					mt6397_irq_thread, IRQF_ONESHOT,
+					"mt6397-pmic", chip);
+	if (ret) {
+		dev_err(chip->dev, "failed to register irq=%d; err: %d\n",
+			chip->irq, ret);
+		return ret;
+	}
+
+	return 0;
+}
diff --git a/include/linux/mfd/mt6397/core.h b/include/linux/mfd/mt6397/core.h
index d678f526e498..93f9f5235575 100644
--- a/include/linux/mfd/mt6397/core.h
+++ b/include/linux/mfd/mt6397/core.h
@@ -15,6 +15,12 @@
 #ifndef __MFD_MT6397_CORE_H__
 #define __MFD_MT6397_CORE_H__
 
+enum chip_id {
+	MT6323_CHIP_ID = 0x23,
+	MT6391_CHIP_ID = 0x91,
+	MT6397_CHIP_ID = 0x97,
+};
+
 enum mt6397_irq_numbers {
 	MT6397_IRQ_SPKL_AB = 0,
 	MT6397_IRQ_SPKR_AB,
@@ -62,6 +68,9 @@ struct mt6397_chip {
 	u16 irq_masks_cache[2];
 	u16 int_con[2];
 	u16 int_status[2];
+	u16 chip_id;
 };
 
+int mt6397_irq_init(struct mt6397_chip *chip);
+
 #endif /* __MFD_MT6397_CORE_H__ */
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
