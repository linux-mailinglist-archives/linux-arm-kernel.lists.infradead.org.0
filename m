Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F5B1EDDA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 09:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KvKfgKKTtpL9icvH6frqK50RdFdQx/9e18UPbCM6gGE=; b=frv
	EtJe3P0/1meHqPOTtnLuhIJ+sjDLB8LxYYv4ZvnE2Zwj6I8bUNBHDWuSwVjQcpXuBY/hU4axseVEx
	qeb77YbcL7CdWfr6N1xaqj3ilIG7d7rb1GNTh91vuD4pordz3dA5QBxDYXyhJ54mcJcuIaWOfixj3
	DWRdAiw1s7TPIhCl5AsF7UyJZ3nh+o/qrj4lsOp/oRv3U+SLyz0W92G/2XGoirtW8lMBkBhTk/HEm
	gNhY8mHNIyoe1my7sMzvZtyPR4bsoSExwBKiqbtgQrlSSbx9tt1CIpRQL8CQFLROH6S/etCi7lLUx
	C0ntO+7aHhv4E0CmUfpJztx/duQ+psQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgjxj-0007uy-O0; Thu, 04 Jun 2020 07:06:51 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgjxZ-0007u8-Kn; Thu, 04 Jun 2020 07:06:45 +0000
Received: by mail-pj1-x1042.google.com with SMTP id fs4so754396pjb.5;
 Thu, 04 Jun 2020 00:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cZi1z4InaeGQHSr9+JCpTt+XTkIpqQoVZlJEiQdMab4=;
 b=Yj2pxnAu0gUSjt/SYiDjMSwHh+NQ+aRwgkSot+Kv89aPUOYH3c4gTaWG3P0Mv8twQR
 l3MGWTOa/L3GZNTQRC/pTGMYBNcleRA2xfPTQxKz3czs8SNBhnVEnUzYzljpDEO1aESD
 MxbzRIFJE0FPjqa85AAmiY5psBzqK+jXH+PX2l63YatRgLYH9LtZdCh4839wdIVCgMX5
 6xZegaq3G7OGXULEm+zjGteDBZwcIit02S44T6xk1QGQ+zR5kjXPs6qtXtALF0N7d5IG
 sZzEVKJnAys4oNLzNG79gLvbr6Mxf4EzIHMqFIi0zmkV+d76jC0d2KSphDlXlchzNtF+
 d9Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cZi1z4InaeGQHSr9+JCpTt+XTkIpqQoVZlJEiQdMab4=;
 b=byWhhLT34A6CokKOsMidvfoKPOa2Y3ooqEqHOJJszZWLAtx/+Sw06y8KNtYGM0Sw2r
 bZvBJ7k4aZiLEvbVvWI6JhUfDXAdG8JuBOfFemmkRN5J406juoU6Y7ILTg2N2rWLK0ln
 7VE7F3ZkvPIrxWn3q0Cy71xo1AZSucWJu2zU85X4ID4fLrFUNp9bkPOMgarPs98PuibC
 M3UHilSdzyzLcWR44HwYeNc8FCnMtVFnKtHVD9xE4GyCQ2uQg/a3OUo9Cxlk0MQjebhS
 LhrDN6Pjb2eF+LUpMN8dX6+IuCQeNy5UUUa7mnt8EV06HLaOQ42fbTj9MKdL8gbWB61I
 Dc3w==
X-Gm-Message-State: AOAM533nngmjJDfb9qAHMY3gQO3I7NNuHjaetFQrk8h98OJTQUnC/Huy
 kRp08CDs6yB9BdnUYK/KIuu5oUTmkH4=
X-Google-Smtp-Source: ABdhPJwjGMBLnibgkt344iBO1LPf8yJCncZWrQZRBSZVGkdb0PseROS9sSZ65tvsnQdyQtCQb5AcvA==
X-Received: by 2002:a17:90b:1246:: with SMTP id
 gx6mr4343044pjb.146.1591254400869; 
 Thu, 04 Jun 2020 00:06:40 -0700 (PDT)
Received: from localhost.localdomain ([2402:7500:423:4ec5:e9c9:abd8:b2f5:5149])
 by smtp.gmail.com with ESMTPSA id m18sm3585901pfo.173.2020.06.04.00.06.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jun 2020 00:06:40 -0700 (PDT)
From: Gene Chen <gene.chen.richtek@gmail.com>
To: matthias.bgg@gmail.com
Subject: [PATCH] regulator: mt6360: Add support for MT6360 regulator
Date: Thu,  4 Jun 2020 15:06:27 +0800
Message-Id: <1591254387-10304-1-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_000642_805591_EDC5D506 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: gene_chen@richtek.com, lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 cy_huang@richtek.com, benjamin.chao@mediatek.com, broonie@kernel.org,
 linux-mediatek@lists.infradead.org, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gene Chen <gene_chen@richtek.com>

Add MT6360 regulator driver include 2-channel buck and
6-channel ldo

Signed-off-by: Gene Chen <gene_chen@richtek.com>
base-commit: 098c4adf249c198519a4abebe482b1e6b8c50e47
---
 drivers/regulator/Kconfig            |  10 +
 drivers/regulator/Makefile           |   1 +
 drivers/regulator/mt6360-regulator.c | 571 +++++++++++++++++++++++++++++++++++
 include/linux/mfd/mt6360.h           |   5 +
 4 files changed, 587 insertions(+)
 create mode 100644 drivers/regulator/mt6360-regulator.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index f4b72cb..05a3b14 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -680,6 +680,16 @@ config REGULATOR_MT6358
 	  This driver supports the control of different power rails of device
 	  through regulator interface.
 
+config REGULATOR_MT6360
+	tristate "MT6360 SubPMIC Regulator"
+	depends on MFD_MT6360
+	select CRC8
+	help
+	  Say Y here to enable MT6360 regulator support.
+	  This is support MT6360 PMIC/LDO part include
+	  2-channel buck with Thermal Shutdown and Overlord Protection
+	  6-channel High PSRR and Low Dropout LDO.
+
 config REGULATOR_MT6380
 	tristate "MediaTek MT6380 PMIC"
 	depends on MTK_PMIC_WRAP
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 6610ee0..1137af0 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -85,6 +85,7 @@ obj-$(CONFIG_REGULATOR_MPQ7920) += mpq7920.o
 obj-$(CONFIG_REGULATOR_MT6311) += mt6311-regulator.o
 obj-$(CONFIG_REGULATOR_MT6323)	+= mt6323-regulator.o
 obj-$(CONFIG_REGULATOR_MT6358)	+= mt6358-regulator.o
+obj-$(CONFIG_REGULATOR_MT6360) += mt6360-regulator.o
 obj-$(CONFIG_REGULATOR_MT6380)	+= mt6380-regulator.o
 obj-$(CONFIG_REGULATOR_MT6397)	+= mt6397-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_RPM) += qcom_rpm-regulator.o
diff --git a/drivers/regulator/mt6360-regulator.c b/drivers/regulator/mt6360-regulator.c
new file mode 100644
index 0000000..f0d878b
--- /dev/null
+++ b/drivers/regulator/mt6360-regulator.c
@@ -0,0 +1,571 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ *
+ * Author: Gene Chen <gene_chen@richtek.com>
+ */
+
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/i2c.h>
+#include <linux/platform_device.h>
+#include <linux/of_device.h>
+#include <linux/crc8.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/machine.h>
+
+#include <linux/mfd/mt6360.h>
+
+enum {
+	MT6360_PMIC_BUCK1 = 0,
+	MT6360_PMIC_BUCK2,
+	MT6360_PMIC_LDO6,
+	MT6360_PMIC_LDO7,
+};
+
+enum {
+	MT6360_LDO_LDO1 = 0,
+	MT6360_LDO_LDO2,
+	MT6360_LDO_LDO3,
+	MT6360_LDO_LDO5,
+};
+
+#define MT6360_MAX_REGULATOR		(4)
+
+/* PMIC register defininition */
+#define MT6360_PMIC_BUCK1_VOSEL		(0x10)
+#define MT6360_PMIC_BUCK1_EN_CTRL2	(0x17)
+#define MT6360_PMIC_BUCK2_VOSEL		(0x20)
+#define MT6360_PMIC_BUCK2_EN_CTRL2	(0x27)
+#define MT6360_PMIC_LDO7_EN_CTRL2	(0x31)
+#define MT6360_PMIC_LDO7_CTRL3		(0x35)
+#define MT6360_PMIC_LDO6_EN_CTRL2	(0x37)
+#define MT6360_PMIC_LDO6_CTRL3		(0x3B)
+#define MT6360_PMIC_REGMAX		(0x3C)
+
+/* LDO register defininition */
+#define MT6360_LDO_LDO3_EN_CTRL2	(0x05)
+#define MT6360_LDO_LDO3_CTRL3		(0x09)
+#define MT6360_LDO_LDO5_EN_CTRL2	(0x0B)
+#define MT6360_LDO_LDO5_CTRL0		(0x0C)
+#define MT6360_LDO_LDO5_CTRL3		(0x0F)
+#define MT6360_LDO_LDO2_EN_CTRL2	(0x11)
+#define MT6360_LDO_LDO2_CTRL3		(0x15)
+#define MT6360_LDO_LDO1_EN_CTRL2	(0x17)
+#define MT6360_LDO_LDO1_CTRL3		(0x1B)
+#define MT6360_LDO_REGMAX		(0x1C)
+
+#define MT6360_OPMODE_LP		(2)
+#define MT6360_OPMODE_ULP		(3)
+#define MT6360_OPMODE_NORMAL		(0)
+
+struct mt6360_regulator_desc {
+	const struct regulator_desc desc;
+	unsigned int control_reg;
+	unsigned int mode_set_mask;
+	unsigned int mode_get_mask;
+};
+
+struct mt6360_regulator_devdata {
+	int i2c_idx;
+	const struct regmap_config *regmap_config;
+	const struct mt6360_regulator_desc *reg_descs;
+	int num_reg_descs;
+	const struct mt6360_pmu_irq_desc *irq_descs;
+	int num_irq_descs;
+};
+
+struct mt6360_regulator_data {
+	struct i2c_client *i2c;
+	struct device *dev;
+	struct regulator_dev *rdev[MT6360_MAX_REGULATOR];
+	struct regmap *regmap;
+	unsigned int chip_rev;
+	u8 crc8_table[CRC8_TABLE_SIZE];
+};
+
+#define MT6360_REGU_IRQH(_name, _rid, _event) \
+static irqreturn_t mt6360_pmu_##_name##_handler(int irq, void *data) \
+{ \
+	struct mt6360_regulator_data *mrd = data; \
+	dev_warn(mrd->dev, "%s\n", __func__); \
+	regulator_notifier_call_chain(mrd->rdev[_rid], _event, NULL); \
+	return IRQ_HANDLED; \
+}
+
+#define MT6360_REGU_IRQ(_name) { #_name, mt6360_pmu_##_name##_handler }
+
+/* PMIC irqs */
+MT6360_REGU_IRQH(buck1_pgb_evt, MT6360_PMIC_BUCK1, REGULATOR_EVENT_FAIL)
+MT6360_REGU_IRQH(buck1_oc_evt, MT6360_PMIC_BUCK1, REGULATOR_EVENT_OVER_CURRENT)
+MT6360_REGU_IRQH(buck1_ov_evt,
+		 MT6360_PMIC_BUCK1, REGULATOR_EVENT_REGULATION_OUT)
+MT6360_REGU_IRQH(buck1_uv_evt, MT6360_PMIC_BUCK1, REGULATOR_EVENT_UNDER_VOLTAGE)
+MT6360_REGU_IRQH(buck2_pgb_evt, MT6360_PMIC_BUCK2, REGULATOR_EVENT_FAIL)
+MT6360_REGU_IRQH(buck2_oc_evt, MT6360_PMIC_BUCK2, REGULATOR_EVENT_OVER_CURRENT)
+MT6360_REGU_IRQH(buck2_ov_evt,
+		 MT6360_PMIC_BUCK2, REGULATOR_EVENT_REGULATION_OUT)
+MT6360_REGU_IRQH(buck2_uv_evt, MT6360_PMIC_BUCK2, REGULATOR_EVENT_UNDER_VOLTAGE)
+MT6360_REGU_IRQH(ldo6_oc_evt, MT6360_PMIC_LDO6, REGULATOR_EVENT_OVER_CURRENT)
+MT6360_REGU_IRQH(ldo7_oc_evt, MT6360_PMIC_LDO7, REGULATOR_EVENT_OVER_CURRENT)
+MT6360_REGU_IRQH(ldo6_pgb_evt, MT6360_PMIC_LDO6, REGULATOR_EVENT_FAIL)
+MT6360_REGU_IRQH(ldo7_pgb_evt, MT6360_PMIC_LDO7, REGULATOR_EVENT_FAIL)
+
+/* LDO irqs */
+MT6360_REGU_IRQH(ldo1_oc_evt, MT6360_LDO_LDO1, REGULATOR_EVENT_OVER_CURRENT)
+MT6360_REGU_IRQH(ldo2_oc_evt, MT6360_LDO_LDO2, REGULATOR_EVENT_OVER_CURRENT)
+MT6360_REGU_IRQH(ldo3_oc_evt, MT6360_LDO_LDO3, REGULATOR_EVENT_OVER_CURRENT)
+MT6360_REGU_IRQH(ldo5_oc_evt, MT6360_LDO_LDO5, REGULATOR_EVENT_OVER_CURRENT)
+MT6360_REGU_IRQH(ldo1_pgb_evt, MT6360_LDO_LDO1, REGULATOR_EVENT_FAIL)
+MT6360_REGU_IRQH(ldo2_pgb_evt, MT6360_LDO_LDO2, REGULATOR_EVENT_FAIL)
+MT6360_REGU_IRQH(ldo3_pgb_evt, MT6360_LDO_LDO3, REGULATOR_EVENT_FAIL)
+MT6360_REGU_IRQH(ldo5_pgb_evt, MT6360_LDO_LDO5, REGULATOR_EVENT_FAIL)
+
+static const struct mt6360_pmu_irq_desc mt6360_pmic_irq_descs[] = {
+	MT6360_REGU_IRQ(buck1_pgb_evt),
+	MT6360_REGU_IRQ(buck1_oc_evt),
+	MT6360_REGU_IRQ(buck1_ov_evt),
+	MT6360_REGU_IRQ(buck1_uv_evt),
+	MT6360_REGU_IRQ(buck2_pgb_evt),
+	MT6360_REGU_IRQ(buck2_oc_evt),
+	MT6360_REGU_IRQ(buck2_ov_evt),
+	MT6360_REGU_IRQ(buck2_uv_evt),
+	MT6360_REGU_IRQ(ldo6_oc_evt),
+	MT6360_REGU_IRQ(ldo7_oc_evt),
+	MT6360_REGU_IRQ(ldo6_pgb_evt),
+	MT6360_REGU_IRQ(ldo7_pgb_evt),
+};
+
+static const struct mt6360_pmu_irq_desc mt6360_ldo_irq_descs[] = {
+	MT6360_REGU_IRQ(ldo1_oc_evt),
+	MT6360_REGU_IRQ(ldo2_oc_evt),
+	MT6360_REGU_IRQ(ldo3_oc_evt),
+	MT6360_REGU_IRQ(ldo5_oc_evt),
+	MT6360_REGU_IRQ(ldo1_pgb_evt),
+	MT6360_REGU_IRQ(ldo2_pgb_evt),
+	MT6360_REGU_IRQ(ldo3_pgb_evt),
+	MT6360_REGU_IRQ(ldo5_pgb_evt),
+};
+
+static int mt6360_regulator_irq_register(struct platform_device *pdev,
+				       struct mt6360_regulator_devdata *devdata)
+{
+	const struct mt6360_pmu_irq_desc *irq_desc;
+	int i, irq, ret;
+
+	for (i = 0; i < devdata->num_irq_descs; i++) {
+		irq_desc = devdata->irq_descs + i;
+		if (unlikely(!irq_desc->name))
+			continue;
+		irq = platform_get_irq_byname(pdev, irq_desc->name);
+		if (irq < 0)
+			continue;
+		ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
+						irq_desc->irq_handler,
+						IRQF_TRIGGER_FALLING,
+						irq_desc->name,
+						platform_get_drvdata(pdev));
+		if (ret < 0) {
+			dev_err(&pdev->dev,
+				"request %s irq fail\n", irq_desc->name);
+			return ret;
+		}
+	}
+	return 0;
+}
+
+static int mt6360_regulator_set_mode(
+				  struct regulator_dev *rdev, unsigned int mode)
+{
+	const struct mt6360_regulator_desc *desc =
+			       (const struct mt6360_regulator_desc *)rdev->desc;
+	int shift = ffs(desc->mode_set_mask) - 1, ret;
+	unsigned int val;
+
+	if (!mode)
+		return -EINVAL;
+	switch (1 << (ffs(mode) - 1)) {
+	case REGULATOR_MODE_NORMAL:
+		val = MT6360_OPMODE_NORMAL;
+		break;
+	case REGULATOR_MODE_STANDBY:
+		val = MT6360_OPMODE_ULP;
+		break;
+	case REGULATOR_MODE_IDLE:
+		val = MT6360_OPMODE_LP;
+		break;
+	default:
+		return -ENOTSUPP;
+	}
+	ret = regmap_update_bits(rdev->regmap, desc->control_reg,
+				 desc->mode_set_mask, val << shift);
+	if (ret < 0) {
+		dev_err(&rdev->dev, "%s: fail (%d)\n", __func__, ret);
+		return ret;
+	}
+	return 0;
+}
+
+static unsigned int mt6360_regulator_get_mode(struct regulator_dev *rdev)
+{
+	const struct mt6360_regulator_desc *desc =
+			       (const struct mt6360_regulator_desc *)rdev->desc;
+	int shift = ffs(desc->mode_get_mask) - 1, ret;
+	unsigned int val = 0;
+
+	ret = regmap_read(rdev->regmap, desc->control_reg, &val);
+	if (ret < 0)
+		return ret;
+	val &= desc->mode_get_mask;
+	val >>= shift;
+	switch (val) {
+	case MT6360_OPMODE_LP:
+		ret = REGULATOR_MODE_IDLE;
+		break;
+	case MT6360_OPMODE_ULP:
+		ret = REGULATOR_MODE_STANDBY;
+		break;
+	case MT6360_OPMODE_NORMAL:
+		ret = REGULATOR_MODE_NORMAL;
+		break;
+	default:
+		ret = 0;
+	}
+	return ret;
+}
+
+static unsigned int mt6360_regulator_of_map_mode(unsigned int hw_mode)
+{
+	unsigned int trans_mode = 0;
+
+	switch (hw_mode) {
+	case MT6360_OPMODE_NORMAL:
+		trans_mode = REGULATOR_MODE_NORMAL;
+		break;
+	case MT6360_OPMODE_LP:
+		trans_mode = REGULATOR_MODE_IDLE;
+		break;
+	case MT6360_OPMODE_ULP:
+		trans_mode = REGULATOR_MODE_STANDBY;
+		break;
+	}
+	return trans_mode;
+}
+
+static const struct regulator_ops mt6360_pmic_regulator_ops = {
+	.list_voltage = regulator_list_voltage_linear,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.set_mode = mt6360_regulator_set_mode,
+	.get_mode = mt6360_regulator_get_mode,
+};
+
+#define MT6360_PMIC_DESC(_name, _min, _stp, _cnt, _vreg, _vmask, \
+			 _enreg, _enmask, _ctrlreg, _modesmask, _modegmask) \
+{									\
+	.desc = {							\
+		.name = #_name,						\
+		.id =  MT6360_PMIC_##_name,				\
+		.owner = THIS_MODULE,					\
+		.ops = &mt6360_pmic_regulator_ops,			\
+		.of_match = of_match_ptr(#_name),			\
+		.min_uV = _min,						\
+		.uV_step = _stp,					\
+		.n_voltages = _cnt,					\
+		.type = REGULATOR_VOLTAGE,				\
+		.vsel_reg = _vreg,					\
+		.vsel_mask = _vmask,					\
+		.enable_reg = _enreg,					\
+		.enable_mask = _enmask,					\
+		.of_map_mode = mt6360_regulator_of_map_mode,		\
+	},								\
+	.control_reg = _ctrlreg,					\
+	.mode_set_mask = _modesmask,					\
+	.mode_get_mask = _modegmask,					\
+}
+
+static const struct mt6360_regulator_desc mt6360_pmic_descs[] =  {
+	MT6360_PMIC_DESC(BUCK1, 300000, 5000, 201, MT6360_PMIC_BUCK1_VOSEL,
+			 0xff, MT6360_PMIC_BUCK1_EN_CTRL2, 0x40,
+			 MT6360_PMIC_BUCK1_EN_CTRL2, 0x30, 0x03),
+	MT6360_PMIC_DESC(BUCK2, 300000, 5000, 201, MT6360_PMIC_BUCK2_VOSEL,
+			 0xff, MT6360_PMIC_BUCK2_EN_CTRL2, 0x40,
+			 MT6360_PMIC_BUCK2_EN_CTRL2, 0x30, 0x03),
+	MT6360_PMIC_DESC(LDO6, 500000, 10000, 161, MT6360_PMIC_LDO6_CTRL3,
+			 0xff, MT6360_PMIC_LDO6_EN_CTRL2, 0x40,
+			 MT6360_PMIC_LDO6_EN_CTRL2, 0x30, 0x03),
+	MT6360_PMIC_DESC(LDO7, 500000, 10000, 161, MT6360_PMIC_LDO7_CTRL3,
+			 0xff, MT6360_PMIC_LDO7_EN_CTRL2, 0x40,
+			 MT6360_PMIC_LDO7_EN_CTRL2, 0x30, 0x03),
+};
+
+static const struct regulator_ops mt6360_ldo_regulator_ops = {
+	.list_voltage = regulator_list_voltage_linear_range,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.set_mode = mt6360_regulator_set_mode,
+	.get_mode = mt6360_regulator_get_mode,
+};
+
+static const struct regulator_linear_range ldo_volt_ranges1[] = {
+	REGULATOR_LINEAR_RANGE(1200000, 0x00, 0x09, 10000),
+	REGULATOR_LINEAR_RANGE(1300000, 0x0a, 0x10, 0),
+	REGULATOR_LINEAR_RANGE(1310000, 0x11, 0x19, 10000),
+	REGULATOR_LINEAR_RANGE(1400000, 0x1a, 0x1f, 0),
+	REGULATOR_LINEAR_RANGE(1500000, 0x20, 0x29, 10000),
+	REGULATOR_LINEAR_RANGE(1600000, 0x2a, 0x2f, 0),
+	REGULATOR_LINEAR_RANGE(1700000, 0x30, 0x39, 10000),
+	REGULATOR_LINEAR_RANGE(1800000, 0x3a, 0x40, 0),
+	REGULATOR_LINEAR_RANGE(1810000, 0x41, 0x49, 10000),
+	REGULATOR_LINEAR_RANGE(1900000, 0x4a, 0x4f, 0),
+	REGULATOR_LINEAR_RANGE(2000000, 0x50, 0x59, 10000),
+	REGULATOR_LINEAR_RANGE(2100000, 0x5a, 0x60, 0),
+	REGULATOR_LINEAR_RANGE(2110000, 0x61, 0x69, 10000),
+	REGULATOR_LINEAR_RANGE(2200000, 0x6a, 0x70, 0),
+	REGULATOR_LINEAR_RANGE(2210000, 0x71, 0x79, 10000),
+	REGULATOR_LINEAR_RANGE(2300000, 0x7a, 0x7f, 0),
+	REGULATOR_LINEAR_RANGE(2700000, 0x80, 0x89, 10000),
+	REGULATOR_LINEAR_RANGE(2800000, 0x8a, 0x90, 0),
+	REGULATOR_LINEAR_RANGE(2810000, 0x91, 0x99, 10000),
+	REGULATOR_LINEAR_RANGE(2900000, 0x9a, 0xa0, 0),
+	REGULATOR_LINEAR_RANGE(2910000, 0xa1, 0xa9, 10000),
+	REGULATOR_LINEAR_RANGE(3000000, 0xaa, 0xb0, 0),
+	REGULATOR_LINEAR_RANGE(3010000, 0xb1, 0xb9, 10000),
+	REGULATOR_LINEAR_RANGE(3100000, 0xba, 0xc0, 0),
+	REGULATOR_LINEAR_RANGE(3110000, 0xc1, 0xc9, 10000),
+	REGULATOR_LINEAR_RANGE(3200000, 0xca, 0xcf, 0),
+	REGULATOR_LINEAR_RANGE(3300000, 0xd0, 0xd9, 10000),
+	REGULATOR_LINEAR_RANGE(3400000, 0xda, 0xe0, 0),
+	REGULATOR_LINEAR_RANGE(3410000, 0xe1, 0xe9, 10000),
+	REGULATOR_LINEAR_RANGE(3500000, 0xea, 0xf0, 0),
+	REGULATOR_LINEAR_RANGE(3510000, 0xf1, 0xf9, 10000),
+	REGULATOR_LINEAR_RANGE(3600000, 0xfa, 0xff, 0),
+};
+
+static const struct regulator_linear_range ldo_volt_ranges2[] = {
+	REGULATOR_LINEAR_RANGE(2700000, 0x00, 0x09, 10000),
+	REGULATOR_LINEAR_RANGE(2800000, 0x0a, 0x10, 0),
+	REGULATOR_LINEAR_RANGE(2810000, 0x11, 0x19, 10000),
+	REGULATOR_LINEAR_RANGE(2900000, 0x1a, 0x20, 0),
+	REGULATOR_LINEAR_RANGE(2910000, 0x21, 0x29, 10000),
+	REGULATOR_LINEAR_RANGE(3000000, 0x2a, 0x30, 0),
+	REGULATOR_LINEAR_RANGE(3010000, 0x31, 0x39, 10000),
+	REGULATOR_LINEAR_RANGE(3100000, 0x3a, 0x40, 0),
+	REGULATOR_LINEAR_RANGE(3110000, 0x41, 0x49, 10000),
+	REGULATOR_LINEAR_RANGE(3200000, 0x4a, 0x4f, 0),
+	REGULATOR_LINEAR_RANGE(3300000, 0x50, 0x59, 10000),
+	REGULATOR_LINEAR_RANGE(3400000, 0x5a, 0x60, 0),
+	REGULATOR_LINEAR_RANGE(3410000, 0x61, 0x69, 10000),
+	REGULATOR_LINEAR_RANGE(3500000, 0x6a, 0x70, 0),
+	REGULATOR_LINEAR_RANGE(3510000, 0x71, 0x79, 10000),
+	REGULATOR_LINEAR_RANGE(3600000, 0x7a, 0x7f, 0),
+};
+
+#define MT6360_LDO_DESC(_name, _vranges, _vcnt, _vreg, _vmask, _enreg, \
+		      _enmask, _ctrlreg, _modesmask, _modegmask, _offon_delay) \
+{									\
+	.desc = {							\
+		.name = #_name,						\
+		.id =  MT6360_LDO_##_name,				\
+		.owner = THIS_MODULE,					\
+		.ops = &mt6360_ldo_regulator_ops,			\
+		.of_match = of_match_ptr(#_name),			\
+		.linear_ranges = _vranges,				\
+		.n_linear_ranges = ARRAY_SIZE(_vranges),		\
+		.n_voltages = _vcnt,					\
+		.type = REGULATOR_VOLTAGE,				\
+		.vsel_reg = _vreg,					\
+		.vsel_mask = _vmask,					\
+		.enable_reg = _enreg,					\
+		.enable_mask = _enmask,					\
+		.off_on_delay = _offon_delay,				\
+		.of_map_mode = mt6360_regulator_of_map_mode,		\
+	},								\
+	.control_reg = _ctrlreg,					\
+	.mode_set_mask = _modesmask,					\
+	.mode_get_mask = _modegmask,					\
+}
+
+static const struct mt6360_regulator_desc mt6360_ldo_descs[] =  {
+	MT6360_LDO_DESC(LDO1, ldo_volt_ranges1, 256, MT6360_LDO_LDO1_CTRL3,
+			0xff, MT6360_LDO_LDO1_EN_CTRL2, 0x40,
+			MT6360_LDO_LDO1_EN_CTRL2, 0x30, 0x03, 0),
+	MT6360_LDO_DESC(LDO2, ldo_volt_ranges1, 256, MT6360_LDO_LDO2_CTRL3,
+			0xff, MT6360_LDO_LDO2_EN_CTRL2, 0x40,
+			MT6360_LDO_LDO2_EN_CTRL2, 0x30, 0x03, 0),
+	MT6360_LDO_DESC(LDO3, ldo_volt_ranges1, 256, MT6360_LDO_LDO3_CTRL3,
+			0xff, MT6360_LDO_LDO3_EN_CTRL2, 0x40,
+			MT6360_LDO_LDO3_EN_CTRL2, 0x30, 0x03, 100),
+	MT6360_LDO_DESC(LDO5, ldo_volt_ranges2, 128, MT6360_LDO_LDO5_CTRL3,
+			0xff, MT6360_LDO_LDO5_EN_CTRL2, 0x40,
+			MT6360_LDO_LDO5_EN_CTRL2, 0x30, 0x03, 100),
+};
+
+static int mt6360_regulator_reg_write(void *context,
+				      unsigned int reg, unsigned int val)
+{
+	struct mt6360_regulator_data *mrd = context;
+	u8 chunk[4] = {0};
+
+	/* chunk 0 ->i2c addr, 1 -> reg_addr, 2 -> reg_val 3-> crc8 */
+	chunk[0] = (mrd->i2c->addr & 0x7f) << 1;
+	chunk[1] = reg & 0x3f;
+	chunk[2] = (u8)val;
+	chunk[3] = crc8(mrd->crc8_table, chunk, 3, 0);
+	/* also dummy one byte */
+	return i2c_smbus_write_i2c_block_data(mrd->i2c, chunk[1], 3, chunk + 2);
+}
+
+static int mt6360_regulator_reg_read(void *context,
+				     unsigned int reg, unsigned int *val)
+{
+	struct mt6360_regulator_data *mrd = context;
+	u8 chunk[5] = {0};
+	int ret;
+
+	/* chunk 0->i2c addr, 1->reg_addr, 2->reg_val, 3->crc8, 4->crck */
+	chunk[0] = ((mrd->i2c->addr & 0x7f) << 1) + 1;
+	chunk[1] = reg & 0x3f;
+	ret =  i2c_smbus_read_i2c_block_data(mrd->i2c, chunk[1], 2, chunk + 2);
+	if (ret < 0)
+		return ret;
+	chunk[4] = crc8(mrd->crc8_table, chunk, 3, 0);
+	if (chunk[3] != chunk[4])
+		return -EINVAL;
+	*val = chunk[2];
+	return 0;
+}
+
+static const struct regmap_config mt6360_pmic_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.reg_read = mt6360_regulator_reg_read,
+	.reg_write = mt6360_regulator_reg_write,
+	.max_register = MT6360_PMIC_REGMAX,
+	.use_single_read = true,
+	.use_single_write = true,
+};
+
+static const struct regmap_config mt6360_ldo_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.reg_read = mt6360_regulator_reg_read,
+	.reg_write = mt6360_regulator_reg_write,
+	.max_register = MT6360_LDO_REGMAX,
+	.use_single_read = true,
+	.use_single_write = true,
+};
+
+static const struct mt6360_regulator_devdata mt6360_pmic_devdata = {
+	.i2c_idx = MT6360_SLAVE_PMIC,
+	.regmap_config = &mt6360_pmic_regmap_config,
+	.reg_descs = mt6360_pmic_descs,
+	.num_reg_descs = ARRAY_SIZE(mt6360_pmic_descs),
+	.irq_descs = mt6360_pmic_irq_descs,
+	.num_irq_descs = ARRAY_SIZE(mt6360_pmic_irq_descs),
+};
+
+static const struct mt6360_regulator_devdata mt6360_ldo_devdata = {
+	.i2c_idx = MT6360_SLAVE_LDO,
+	.regmap_config = &mt6360_ldo_regmap_config,
+	.reg_descs = mt6360_ldo_descs,
+	.num_reg_descs = ARRAY_SIZE(mt6360_ldo_descs),
+	.irq_descs = mt6360_ldo_irq_descs,
+	.num_irq_descs = ARRAY_SIZE(mt6360_ldo_irq_descs),
+};
+
+static const struct of_device_id __maybe_unused mt6360_regulator_of_id[] = {
+	{
+		.compatible = "mediatek,mt6360_pmic",
+		.data = (void *)&mt6360_pmic_devdata,
+	},
+	{
+		.compatible = "mediatek,mt6360_ldo",
+		.data = (void *)&mt6360_ldo_devdata,
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, mt6360_regulator_of_id);
+
+static int mt6360_regulator_probe(struct platform_device *pdev)
+{
+	struct mt6360_pmu_data *pmu_data = dev_get_drvdata(pdev->dev.parent);
+	struct mt6360_regulator_devdata *devdata;
+	struct mt6360_regulator_data *mrd;
+	struct regulator_config config = {};
+	const struct of_device_id *match;
+	const struct platform_device_id *id;
+	int i, ret;
+
+	mrd = devm_kzalloc(&pdev->dev, sizeof(*mrd), GFP_KERNEL);
+	if (!mrd)
+		return -ENOMEM;
+
+	if (pdev->dev.of_node) {
+		match = of_match_device(
+			      of_match_ptr(mt6360_regulator_of_id), &pdev->dev);
+		if (!match) {
+			dev_err(&pdev->dev, "no match device id\n");
+			return -EINVAL;
+		}
+		devdata = (struct mt6360_regulator_devdata *)match->data;
+	} else {
+		id = platform_get_device_id(pdev);
+		devdata = (struct mt6360_regulator_devdata *)id->driver_data;
+	}
+
+	mrd->i2c = pmu_data->i2c[devdata->i2c_idx];
+	mrd->dev = &pdev->dev;
+	mrd->chip_rev = pmu_data->chip_rev;
+	crc8_populate_msb(mrd->crc8_table, 0x7);
+	platform_set_drvdata(pdev, mrd);
+
+	mrd->regmap = devm_regmap_init(&(mrd->i2c->dev),
+				       NULL, mrd, devdata->regmap_config);
+	if (IS_ERR(mrd->regmap)) {
+		dev_err(&pdev->dev, "Failed to register regmap\n");
+		return PTR_ERR(mrd->regmap);
+	}
+
+	config.dev = &pdev->dev;
+	config.driver_data = mrd;
+	config.regmap = mrd->regmap;
+
+	for (i = 0; i < devdata->num_reg_descs; i++) {
+		mrd->rdev[i] = devm_regulator_register(&pdev->dev,
+					&(devdata->reg_descs[i].desc), &config);
+		if (IS_ERR(mrd->rdev[i])) {
+			dev_err(&pdev->dev,
+				"Failed to register  %d regulaotr\n", i);
+			return PTR_ERR(mrd->rdev[i]);
+		}
+	}
+
+	ret = mt6360_regulator_irq_register(pdev, devdata);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Failed to register irqs\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static struct platform_driver mt6360_regulator_driver = {
+	.driver = {
+		.name = "mt6360_regulator",
+		.of_match_table = of_match_ptr(mt6360_regulator_of_id),
+	},
+	.probe = mt6360_regulator_probe,
+};
+module_platform_driver(mt6360_regulator_driver);
+
+MODULE_AUTHOR("Gene Chen <gene_chen@richtek.com>");
+MODULE_DESCRIPTION("MT6360 Regulator Driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/mfd/mt6360.h b/include/linux/mfd/mt6360.h
index ea13040..495dfa8 100644
--- a/include/linux/mfd/mt6360.h
+++ b/include/linux/mfd/mt6360.h
@@ -29,6 +29,11 @@ struct mt6360_pmu_data {
 	unsigned int chip_rev;
 };
 
+struct mt6360_pmu_irq_desc {
+	const char *name;
+	irq_handler_t irq_handler;
+};
+
 /* PMU register defininition */
 #define MT6360_PMU_DEV_INFO			(0x00)
 #define MT6360_PMU_CORE_CTRL1			(0x01)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
