Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F07D9A660
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 05:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOZJLpr5A4Y0TYpdw0ooeCl7wuvPdR9t8xrL+k8qqJ0=; b=msqw3LIjEefg9/
	F6grWlJ75yVzpbE3bIzAVpFFYE81EJrA+YKIUL0gypGCY0UbO2nT4Nqrm+vU4Z006pEp7/2sDs5Dy
	AbltJf4Jzc6CAXdAXJ1EoxnKH+tEg92HfDAGpnmVvwsvxWP+jgdPLveV8ksRy5C9JikTtoFyhQggw
	mxG8gXZqv6TPvq/yOEJaNCdQbraGapz/kGfXZcmAgHSvX0pTLm9JZQU3dhmBLzf1gO9sja7HRTOmm
	5ZUhF6Dc94jCJz7Bv/kfeyfmKUmdug389ungq3Tu3bR6gIo9iRqjUrJerbOY3EseTQrIqkkfZkiOz
	s6axxZ8kHiZHkIoxXF4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i10ZW-0001kw-Az; Fri, 23 Aug 2019 03:49:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i10Wy-000899-2K; Fri, 23 Aug 2019 03:46:32 +0000
X-UUID: 12af4c5f998a48eaa832b69e564c47bf-20190822
X-UUID: 12af4c5f998a48eaa832b69e564c47bf-20190822
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2120510688; Thu, 22 Aug 2019 19:45:43 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 20:45:42 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 11:45:40 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 23 Aug 2019 11:45:35 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH v5 07/10] regulator: mt6358: Add support for MT6358 regulator
Date: Fri, 23 Aug 2019 11:45:28 +0800
Message-ID: <1566531931-9772-8-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_204628_389171_1A5C5043 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 Alessandro Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MT6358 is a regulator found on boards based on MediaTek MT8183 and
probably other SoCs. It is a so called pmic and connects as a slave to
SoC using SPI, wrapped inside the pmic-wrapper.

Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 drivers/regulator/Kconfig                  |   9 +
 drivers/regulator/Makefile                 |   1 +
 drivers/regulator/mt6358-regulator.c       | 549 +++++++++++++++++++++++++++++
 include/linux/regulator/mt6358-regulator.h |  56 +++
 4 files changed, 615 insertions(+)
 create mode 100644 drivers/regulator/mt6358-regulator.c
 create mode 100644 include/linux/regulator/mt6358-regulator.h

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index b57093d..1337623 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -618,6 +618,15 @@ config REGULATOR_MT6323
 	  This driver supports the control of different power rails of device
 	  through regulator interface.
 
+config REGULATOR_MT6358
+	tristate "MediaTek MT6358 PMIC"
+	depends on MFD_MT6397
+	help
+	  Say y here to select this option to enable the power regulator of
+	  MediaTek MT6358 PMIC.
+	  This driver supports the control of different power rails of device
+	  through regulator interface.
+
 config REGULATOR_MT6380
 	tristate "MediaTek MT6380 PMIC"
 	depends on MTK_PMIC_WRAP
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index eef73b5..9fcc40e 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -79,6 +79,7 @@ obj-$(CONFIG_REGULATOR_MC13XXX_CORE) +=  mc13xxx-regulator-core.o
 obj-$(CONFIG_REGULATOR_MCP16502) += mcp16502.o
 obj-$(CONFIG_REGULATOR_MT6311) += mt6311-regulator.o
 obj-$(CONFIG_REGULATOR_MT6323)	+= mt6323-regulator.o
+obj-$(CONFIG_REGULATOR_MT6358)	+= mt6358-regulator.o
 obj-$(CONFIG_REGULATOR_MT6380)	+= mt6380-regulator.o
 obj-$(CONFIG_REGULATOR_MT6397)	+= mt6397-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_RPM) += qcom_rpm-regulator.o
diff --git a/drivers/regulator/mt6358-regulator.c b/drivers/regulator/mt6358-regulator.c
new file mode 100644
index 0000000..ba42682
--- /dev/null
+++ b/drivers/regulator/mt6358-regulator.c
@@ -0,0 +1,549 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2019 MediaTek Inc.
+
+#include <linux/mfd/mt6358/registers.h>
+#include <linux/mfd/mt6397/core.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/machine.h>
+#include <linux/regulator/mt6358-regulator.h>
+#include <linux/regulator/of_regulator.h>
+
+#define MT6358_BUCK_MODE_AUTO	0
+#define MT6358_BUCK_MODE_FORCE_PWM	1
+
+/*
+ * MT6358 regulators' information
+ *
+ * @desc: standard fields of regulator description.
+ * @qi: Mask for query enable signal status of regulators
+ */
+struct mt6358_regulator_info {
+	struct regulator_desc desc;
+	u32 status_reg;
+	u32 qi;
+	const u32 *index_table;
+	unsigned int n_table;
+	u32 vsel_shift;
+	u32 da_vsel_reg;
+	u32 da_vsel_mask;
+	u32 da_vsel_shift;
+	u32 modeset_reg;
+	u32 modeset_mask;
+	u32 modeset_shift;
+};
+
+#define MT6358_BUCK(match, vreg, min, max, step,		\
+	volt_ranges, vosel_mask, _da_vsel_reg, _da_vsel_mask,	\
+	_da_vsel_shift, _modeset_reg, _modeset_shift)		\
+[MT6358_ID_##vreg] = {	\
+	.desc = {	\
+		.name = #vreg,	\
+		.of_match = of_match_ptr(match),	\
+		.ops = &mt6358_volt_range_ops,	\
+		.type = REGULATOR_VOLTAGE,	\
+		.id = MT6358_ID_##vreg,		\
+		.owner = THIS_MODULE,		\
+		.n_voltages = ((max) - (min)) / (step) + 1,	\
+		.linear_ranges = volt_ranges,		\
+		.n_linear_ranges = ARRAY_SIZE(volt_ranges),	\
+		.vsel_reg = MT6358_BUCK_##vreg##_ELR0,	\
+		.vsel_mask = vosel_mask,	\
+		.enable_reg = MT6358_BUCK_##vreg##_CON0,	\
+		.enable_mask = BIT(0),	\
+		.of_map_mode = mt6358_map_mode,	\
+	},	\
+	.status_reg = MT6358_BUCK_##vreg##_DBG1,	\
+	.qi = BIT(0),	\
+	.da_vsel_reg = _da_vsel_reg,	\
+	.da_vsel_mask = _da_vsel_mask,	\
+	.da_vsel_shift = _da_vsel_shift,	\
+	.modeset_reg = _modeset_reg,	\
+	.modeset_mask = BIT(_modeset_shift),	\
+	.modeset_shift = _modeset_shift	\
+}
+
+#define MT6358_LDO(match, vreg, ldo_volt_table,	\
+	ldo_index_table, enreg, enbit, vosel,	\
+	vosel_mask, vosel_shift)	\
+[MT6358_ID_##vreg] = {	\
+	.desc = {	\
+		.name = #vreg,	\
+		.of_match = of_match_ptr(match),	\
+		.ops = &mt6358_volt_table_ops,	\
+		.type = REGULATOR_VOLTAGE,	\
+		.id = MT6358_ID_##vreg,	\
+		.owner = THIS_MODULE,	\
+		.n_voltages = ARRAY_SIZE(ldo_volt_table),	\
+		.volt_table = ldo_volt_table,	\
+		.vsel_reg = vosel,	\
+		.vsel_mask = vosel_mask,	\
+		.enable_reg = enreg,	\
+		.enable_mask = BIT(enbit),	\
+	},	\
+	.status_reg = MT6358_LDO_##vreg##_CON1,	\
+	.qi = BIT(15),	\
+	.index_table = ldo_index_table,	\
+	.n_table = ARRAY_SIZE(ldo_index_table),	\
+	.vsel_shift = vosel_shift,	\
+}
+
+#define MT6358_LDO1(match, vreg, min, max, step,	\
+	volt_ranges, _da_vsel_reg, _da_vsel_mask,	\
+	_da_vsel_shift, vosel, vosel_mask)	\
+[MT6358_ID_##vreg] = {	\
+	.desc = {	\
+		.name = #vreg,	\
+		.of_match = of_match_ptr(match),	\
+		.ops = &mt6358_volt_range_ops,	\
+		.type = REGULATOR_VOLTAGE,	\
+		.id = MT6358_ID_##vreg,	\
+		.owner = THIS_MODULE,	\
+		.n_voltages = ((max) - (min)) / (step) + 1,	\
+		.linear_ranges = volt_ranges,	\
+		.n_linear_ranges = ARRAY_SIZE(volt_ranges),	\
+		.vsel_reg = vosel,	\
+		.vsel_mask = vosel_mask,	\
+		.enable_reg = MT6358_LDO_##vreg##_CON0,	\
+		.enable_mask = BIT(0),	\
+	},	\
+	.da_vsel_reg = _da_vsel_reg,	\
+	.da_vsel_mask = _da_vsel_mask,	\
+	.da_vsel_shift = _da_vsel_shift,	\
+	.status_reg = MT6358_LDO_##vreg##_DBG1,	\
+	.qi = BIT(0),	\
+}
+
+#define MT6358_REG_FIXED(match, vreg,	\
+	enreg, enbit, volt)	\
+[MT6358_ID_##vreg] = {	\
+	.desc = {	\
+		.name = #vreg,	\
+		.of_match = of_match_ptr(match),	\
+		.ops = &mt6358_volt_fixed_ops,	\
+		.type = REGULATOR_VOLTAGE,	\
+		.id = MT6358_ID_##vreg,	\
+		.owner = THIS_MODULE,	\
+		.n_voltages = 1,	\
+		.enable_reg = enreg,	\
+		.enable_mask = BIT(enbit),	\
+		.min_uV = volt,	\
+	},	\
+	.status_reg = MT6358_LDO_##vreg##_CON1,	\
+	.qi = BIT(15),							\
+}
+
+static const struct regulator_linear_range buck_volt_range1[] = {
+	REGULATOR_LINEAR_RANGE(500000, 0, 0x7f, 6250),
+};
+
+static const struct regulator_linear_range buck_volt_range2[] = {
+	REGULATOR_LINEAR_RANGE(500000, 0, 0x7f, 12500),
+};
+
+static const struct regulator_linear_range buck_volt_range3[] = {
+	REGULATOR_LINEAR_RANGE(500000, 0, 0x3f, 50000),
+};
+
+static const struct regulator_linear_range buck_volt_range4[] = {
+	REGULATOR_LINEAR_RANGE(1000000, 0, 0x7f, 12500),
+};
+
+static const u32 vdram2_voltages[] = {
+	600000, 1800000,
+};
+
+static const u32 vsim_voltages[] = {
+	1700000, 1800000, 2700000, 3000000, 3100000,
+};
+
+static const u32 vibr_voltages[] = {
+	1200000, 1300000, 1500000, 1800000,
+	2000000, 2800000, 3000000, 3300000,
+};
+
+static const u32 vusb_voltages[] = {
+	3000000, 3100000,
+};
+
+static const u32 vcamd_voltages[] = {
+	900000, 1000000, 1100000, 1200000,
+	1300000, 1500000, 1800000,
+};
+
+static const u32 vefuse_voltages[] = {
+	1700000, 1800000, 1900000,
+};
+
+static const u32 vmch_vemc_voltages[] = {
+	2900000, 3000000, 3300000,
+};
+
+static const u32 vcama_voltages[] = {
+	1800000, 2500000, 2700000,
+	2800000, 2900000, 3000000,
+};
+
+static const u32 vcn33_bt_wifi_voltages[] = {
+	3300000, 3400000, 3500000,
+};
+
+static const u32 vmc_voltages[] = {
+	1800000, 2900000, 3000000, 3300000,
+};
+
+static const u32 vldo28_voltages[] = {
+	2800000, 3000000,
+};
+
+static const u32 vdram2_idx[] = {
+	0, 12,
+};
+
+static const u32 vsim_idx[] = {
+	3, 4, 8, 11, 12,
+};
+
+static const u32 vibr_idx[] = {
+	0, 1, 2, 4, 5, 9, 11, 13,
+};
+
+static const u32 vusb_idx[] = {
+	3, 4,
+};
+
+static const u32 vcamd_idx[] = {
+	3, 4, 5, 6, 7, 9, 12,
+};
+
+static const u32 vefuse_idx[] = {
+	11, 12, 13,
+};
+
+static const u32 vmch_vemc_idx[] = {
+	2, 3, 5,
+};
+
+static const u32 vcama_idx[] = {
+	0, 7, 9, 10, 11, 12,
+};
+
+static const u32 vcn33_bt_wifi_idx[] = {
+	1, 2, 3,
+};
+
+static const u32 vmc_idx[] = {
+	4, 10, 11, 13,
+};
+
+static const u32 vldo28_idx[] = {
+	1, 3,
+};
+
+static unsigned int mt6358_map_mode(unsigned int mode)
+{
+	return mode == MT6358_BUCK_MODE_AUTO ?
+		REGULATOR_MODE_NORMAL : REGULATOR_MODE_FAST;
+}
+
+static int mt6358_set_voltage_sel(struct regulator_dev *rdev,
+				  unsigned int selector)
+{
+	int idx, ret;
+	const u32 *pvol;
+	struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
+
+	pvol = info->index_table;
+
+	idx = pvol[selector];
+	ret = regmap_update_bits(rdev->regmap, info->desc.vsel_reg,
+				 info->desc.vsel_mask,
+				 idx << info->vsel_shift);
+
+	return ret;
+}
+
+static int mt6358_get_voltage_sel(struct regulator_dev *rdev)
+{
+	int idx, ret;
+	u32 selector;
+	struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
+	const u32 *pvol;
+
+	ret = regmap_read(rdev->regmap, info->desc.vsel_reg, &selector);
+	if (ret != 0) {
+		dev_info(&rdev->dev,
+			 "Failed to get mt6358 %s vsel reg: %d\n",
+			 info->desc.name, ret);
+		return ret;
+	}
+
+	selector = (selector & info->desc.vsel_mask) >> info->vsel_shift;
+	pvol = info->index_table;
+	for (idx = 0; idx < info->desc.n_voltages; idx++) {
+		if (pvol[idx] == selector)
+			return idx;
+	}
+
+	return -EINVAL;
+}
+
+static int mt6358_get_buck_voltage_sel(struct regulator_dev *rdev)
+{
+	int ret, regval;
+	struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
+
+	ret = regmap_read(rdev->regmap, info->da_vsel_reg, &regval);
+	if (ret != 0) {
+		dev_err(&rdev->dev,
+			"Failed to get mt6358 Buck %s vsel reg: %d\n",
+			info->desc.name, ret);
+		return ret;
+	}
+
+	ret = (regval >> info->da_vsel_shift) & info->da_vsel_mask;
+
+	return ret;
+}
+
+static int mt6358_get_status(struct regulator_dev *rdev)
+{
+	int ret;
+	u32 regval;
+	struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
+
+	ret = regmap_read(rdev->regmap, info->status_reg, &regval);
+	if (ret != 0) {
+		dev_info(&rdev->dev, "Failed to get enable reg: %d\n", ret);
+		return ret;
+	}
+
+	return (regval & info->qi) ? REGULATOR_STATUS_ON : REGULATOR_STATUS_OFF;
+}
+
+static int mt6358_regulator_set_mode(struct regulator_dev *rdev,
+				     unsigned int mode)
+{
+	struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
+	int val;
+
+	switch (mode) {
+	case REGULATOR_MODE_FAST:
+		val = MT6358_BUCK_MODE_FORCE_PWM;
+		break;
+	case REGULATOR_MODE_NORMAL:
+		val = MT6358_BUCK_MODE_AUTO;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	dev_dbg(&rdev->dev, "mt6358 buck set_mode %#x, %#x, %#x, %#x\n",
+		info->modeset_reg, info->modeset_mask,
+		info->modeset_shift, val);
+
+	val <<= info->modeset_shift;
+
+	return regmap_update_bits(rdev->regmap, info->modeset_reg,
+				  info->modeset_mask, val);
+}
+
+static unsigned int mt6358_regulator_get_mode(struct regulator_dev *rdev)
+{
+	struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
+	int ret, regval;
+
+	ret = regmap_read(rdev->regmap, info->modeset_reg, &regval);
+	if (ret != 0) {
+		dev_err(&rdev->dev,
+			"Failed to get mt6358 buck mode: %d\n", ret);
+		return ret;
+	}
+
+	switch ((regval & info->modeset_mask) >> info->modeset_shift) {
+	case MT6358_BUCK_MODE_AUTO:
+		return REGULATOR_MODE_NORMAL;
+	case MT6358_BUCK_MODE_FORCE_PWM:
+		return REGULATOR_MODE_FAST;
+	default:
+		return -EINVAL;
+	}
+}
+
+static const struct regulator_ops mt6358_volt_range_ops = {
+	.list_voltage = regulator_list_voltage_linear_range,
+	.map_voltage = regulator_map_voltage_linear_range,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = mt6358_get_buck_voltage_sel,
+	.set_voltage_time_sel = regulator_set_voltage_time_sel,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.get_status = mt6358_get_status,
+	.set_mode = mt6358_regulator_set_mode,
+	.get_mode = mt6358_regulator_get_mode,
+};
+
+static const struct regulator_ops mt6358_volt_table_ops = {
+	.list_voltage = regulator_list_voltage_table,
+	.map_voltage = regulator_map_voltage_iterate,
+	.set_voltage_sel = mt6358_set_voltage_sel,
+	.get_voltage_sel = mt6358_get_voltage_sel,
+	.set_voltage_time_sel = regulator_set_voltage_time_sel,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.get_status = mt6358_get_status,
+};
+
+static const struct regulator_ops mt6358_volt_fixed_ops = {
+	.list_voltage = regulator_list_voltage_linear,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.get_status = mt6358_get_status,
+};
+
+/* The array is indexed by id(MT6358_ID_XXX) */
+static struct mt6358_regulator_info mt6358_regulators[] = {
+	MT6358_BUCK("buck_vdram1", VDRAM1, 500000, 2087500, 12500,
+		    buck_volt_range2, 0x7f, MT6358_BUCK_VDRAM1_DBG0, 0x7f,
+		    0, MT6358_VDRAM1_ANA_CON0, 8),
+	MT6358_BUCK("buck_vcore", VCORE, 500000, 1293750, 6250,
+		    buck_volt_range1, 0x7f, MT6358_BUCK_VCORE_DBG0, 0x7f,
+		    0, MT6358_VCORE_VGPU_ANA_CON0, 1),
+	MT6358_BUCK("buck_vpa", VPA, 500000, 3650000, 50000,
+		    buck_volt_range3, 0x3f, MT6358_BUCK_VPA_DBG0, 0x3f, 0,
+		    MT6358_VPA_ANA_CON0, 3),
+	MT6358_BUCK("buck_vproc11", VPROC11, 500000, 1293750, 6250,
+		    buck_volt_range1, 0x7f, MT6358_BUCK_VPROC11_DBG0, 0x7f,
+		    0, MT6358_VPROC_ANA_CON0, 1),
+	MT6358_BUCK("buck_vproc12", VPROC12, 500000, 1293750, 6250,
+		    buck_volt_range1, 0x7f, MT6358_BUCK_VPROC12_DBG0, 0x7f,
+		    0, MT6358_VPROC_ANA_CON0, 2),
+	MT6358_BUCK("buck_vgpu", VGPU, 500000, 1293750, 6250,
+		    buck_volt_range1, 0x7f, MT6358_BUCK_VGPU_ELR0, 0x7f, 0,
+		    MT6358_VCORE_VGPU_ANA_CON0, 2),
+	MT6358_BUCK("buck_vs2", VS2, 500000, 2087500, 12500,
+		    buck_volt_range2, 0x7f, MT6358_BUCK_VS2_DBG0, 0x7f, 0,
+		    MT6358_VS2_ANA_CON0, 8),
+	MT6358_BUCK("buck_vmodem", VMODEM, 500000, 1293750, 6250,
+		    buck_volt_range1, 0x7f, MT6358_BUCK_VMODEM_DBG0, 0x7f,
+		    0, MT6358_VMODEM_ANA_CON0, 8),
+	MT6358_BUCK("buck_vs1", VS1, 1000000, 2587500, 12500,
+		    buck_volt_range4, 0x7f, MT6358_BUCK_VS1_DBG0, 0x7f, 0,
+		    MT6358_VS1_ANA_CON0, 8),
+	MT6358_REG_FIXED("ldo_vrf12", VRF12,
+			 MT6358_LDO_VRF12_CON0, 0, 1200000),
+	MT6358_REG_FIXED("ldo_vio18", VIO18,
+			 MT6358_LDO_VIO18_CON0, 0, 1800000),
+	MT6358_REG_FIXED("ldo_vcamio", VCAMIO,
+			 MT6358_LDO_VCAMIO_CON0, 0, 1800000),
+	MT6358_REG_FIXED("ldo_vcn18", VCN18, MT6358_LDO_VCN18_CON0, 0, 1800000),
+	MT6358_REG_FIXED("ldo_vfe28", VFE28, MT6358_LDO_VFE28_CON0, 0, 2800000),
+	MT6358_REG_FIXED("ldo_vcn28", VCN28, MT6358_LDO_VCN28_CON0, 0, 2800000),
+	MT6358_REG_FIXED("ldo_vxo22", VXO22, MT6358_LDO_VXO22_CON0, 0, 2200000),
+	MT6358_REG_FIXED("ldo_vaux18", VAUX18,
+			 MT6358_LDO_VAUX18_CON0, 0, 1800000),
+	MT6358_REG_FIXED("ldo_vbif28", VBIF28,
+			 MT6358_LDO_VBIF28_CON0, 0, 2800000),
+	MT6358_REG_FIXED("ldo_vio28", VIO28, MT6358_LDO_VIO28_CON0, 0, 2800000),
+	MT6358_REG_FIXED("ldo_va12", VA12, MT6358_LDO_VA12_CON0, 0, 1200000),
+	MT6358_REG_FIXED("ldo_vrf18", VRF18, MT6358_LDO_VRF18_CON0, 0, 1800000),
+	MT6358_REG_FIXED("ldo_vaud28", VAUD28,
+			 MT6358_LDO_VAUD28_CON0, 0, 2800000),
+	MT6358_LDO("ldo_vdram2", VDRAM2, vdram2_voltages, vdram2_idx,
+		   MT6358_LDO_VDRAM2_CON0, 0, MT6358_LDO_VDRAM2_ELR0, 0x10, 0),
+	MT6358_LDO("ldo_vsim1", VSIM1, vsim_voltages, vsim_idx,
+		   MT6358_LDO_VSIM1_CON0, 0, MT6358_VSIM1_ANA_CON0, 0xf00, 8),
+	MT6358_LDO("ldo_vibr", VIBR, vibr_voltages, vibr_idx,
+		   MT6358_LDO_VIBR_CON0, 0, MT6358_VIBR_ANA_CON0, 0xf00, 8),
+	MT6358_LDO("ldo_vusb", VUSB, vusb_voltages, vusb_idx,
+		   MT6358_LDO_VUSB_CON0_0, 0, MT6358_VUSB_ANA_CON0, 0x700, 8),
+	MT6358_LDO("ldo_vcamd", VCAMD, vcamd_voltages, vcamd_idx,
+		   MT6358_LDO_VCAMD_CON0, 0, MT6358_VCAMD_ANA_CON0, 0xf00, 8),
+	MT6358_LDO("ldo_vefuse", VEFUSE, vefuse_voltages, vefuse_idx,
+		   MT6358_LDO_VEFUSE_CON0, 0, MT6358_VEFUSE_ANA_CON0, 0xf00, 8),
+	MT6358_LDO("ldo_vmch", VMCH, vmch_vemc_voltages, vmch_vemc_idx,
+		   MT6358_LDO_VMCH_CON0, 0, MT6358_VMCH_ANA_CON0, 0x700, 8),
+	MT6358_LDO("ldo_vcama1", VCAMA1, vcama_voltages, vcama_idx,
+		   MT6358_LDO_VCAMA1_CON0, 0, MT6358_VCAMA1_ANA_CON0, 0xf00, 8),
+	MT6358_LDO("ldo_vemc", VEMC, vmch_vemc_voltages, vmch_vemc_idx,
+		   MT6358_LDO_VEMC_CON0, 0, MT6358_VEMC_ANA_CON0, 0x700, 8),
+	MT6358_LDO("ldo_vcn33_bt", VCN33_BT, vcn33_bt_wifi_voltages,
+		   vcn33_bt_wifi_idx, MT6358_LDO_VCN33_CON0_0,
+		   0, MT6358_VCN33_ANA_CON0, 0x300, 8),
+	MT6358_LDO("ldo_vcn33_wifi", VCN33_WIFI, vcn33_bt_wifi_voltages,
+		   vcn33_bt_wifi_idx, MT6358_LDO_VCN33_CON0_1,
+		   0, MT6358_VCN33_ANA_CON0, 0x300, 8),
+	MT6358_LDO("ldo_vcama2", VCAMA2, vcama_voltages, vcama_idx,
+		   MT6358_LDO_VCAMA2_CON0, 0, MT6358_VCAMA2_ANA_CON0, 0xf00, 8),
+	MT6358_LDO("ldo_vmc", VMC, vmc_voltages, vmc_idx,
+		   MT6358_LDO_VMC_CON0, 0, MT6358_VMC_ANA_CON0, 0xf00, 8),
+	MT6358_LDO("ldo_vldo28", VLDO28, vldo28_voltages, vldo28_idx,
+		   MT6358_LDO_VLDO28_CON0_0, 0,
+		   MT6358_VLDO28_ANA_CON0, 0x300, 8),
+	MT6358_LDO("ldo_vsim2", VSIM2, vsim_voltages, vsim_idx,
+		   MT6358_LDO_VSIM2_CON0, 0, MT6358_VSIM2_ANA_CON0, 0xf00, 8),
+	MT6358_LDO1("ldo_vsram_proc11", VSRAM_PROC11, 500000, 1293750, 6250,
+		    buck_volt_range1, MT6358_LDO_VSRAM_PROC11_DBG0, 0x7f, 8,
+		    MT6358_LDO_VSRAM_CON0, 0x7f),
+	MT6358_LDO1("ldo_vsram_others", VSRAM_OTHERS, 500000, 1293750, 6250,
+		    buck_volt_range1, MT6358_LDO_VSRAM_OTHERS_DBG0, 0x7f, 8,
+		    MT6358_LDO_VSRAM_CON2, 0x7f),
+	MT6358_LDO1("ldo_vsram_gpu", VSRAM_GPU, 500000, 1293750, 6250,
+		    buck_volt_range1, MT6358_LDO_VSRAM_GPU_DBG0, 0x7f, 8,
+		    MT6358_LDO_VSRAM_CON3, 0x7f),
+	MT6358_LDO1("ldo_vsram_proc12", VSRAM_PROC12, 500000, 1293750, 6250,
+		    buck_volt_range1, MT6358_LDO_VSRAM_PROC12_DBG0, 0x7f, 8,
+		    MT6358_LDO_VSRAM_CON1, 0x7f),
+};
+
+static int mt6358_regulator_probe(struct platform_device *pdev)
+{
+	struct mt6397_chip *mt6397 = dev_get_drvdata(pdev->dev.parent);
+	struct regulator_config config = {};
+	struct regulator_dev *rdev;
+	int i;
+
+	for (i = 0; i < MT6358_MAX_REGULATOR; i++) {
+		config.dev = &pdev->dev;
+		config.driver_data = &mt6358_regulators[i];
+		config.regmap = mt6397->regmap;
+
+		rdev = devm_regulator_register(&pdev->dev,
+					       &mt6358_regulators[i].desc,
+					       &config);
+		if (IS_ERR(rdev)) {
+			dev_err(&pdev->dev, "failed to register %s\n",
+				mt6358_regulators[i].desc.name);
+			return PTR_ERR(rdev);
+		}
+	}
+
+	return 0;
+}
+
+static const struct platform_device_id mt6358_platform_ids[] = {
+	{"mt6358-regulator", 0},
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(platform, mt6358_platform_ids);
+
+static struct platform_driver mt6358_regulator_driver = {
+	.driver = {
+		.name = "mt6358-regulator",
+	},
+	.probe = mt6358_regulator_probe,
+	.id_table = mt6358_platform_ids,
+};
+
+module_platform_driver(mt6358_regulator_driver);
+
+MODULE_AUTHOR("Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>");
+MODULE_DESCRIPTION("Regulator Driver for MediaTek MT6358 PMIC");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/regulator/mt6358-regulator.h b/include/linux/regulator/mt6358-regulator.h
new file mode 100644
index 0000000..1cc3049
--- /dev/null
+++ b/include/linux/regulator/mt6358-regulator.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef __LINUX_REGULATOR_MT6358_H
+#define __LINUX_REGULATOR_MT6358_H
+
+enum {
+	MT6358_ID_VDRAM1 = 0,
+	MT6358_ID_VCORE,
+	MT6358_ID_VPA,
+	MT6358_ID_VPROC11,
+	MT6358_ID_VPROC12,
+	MT6358_ID_VGPU,
+	MT6358_ID_VS2,
+	MT6358_ID_VMODEM,
+	MT6358_ID_VS1,
+	MT6358_ID_VDRAM2 = 9,
+	MT6358_ID_VSIM1,
+	MT6358_ID_VIBR,
+	MT6358_ID_VRF12,
+	MT6358_ID_VIO18,
+	MT6358_ID_VUSB,
+	MT6358_ID_VCAMIO,
+	MT6358_ID_VCAMD,
+	MT6358_ID_VCN18,
+	MT6358_ID_VFE28,
+	MT6358_ID_VSRAM_PROC11,
+	MT6358_ID_VCN28,
+	MT6358_ID_VSRAM_OTHERS,
+	MT6358_ID_VSRAM_GPU,
+	MT6358_ID_VXO22,
+	MT6358_ID_VEFUSE,
+	MT6358_ID_VAUX18,
+	MT6358_ID_VMCH,
+	MT6358_ID_VBIF28,
+	MT6358_ID_VSRAM_PROC12,
+	MT6358_ID_VCAMA1,
+	MT6358_ID_VEMC,
+	MT6358_ID_VIO28,
+	MT6358_ID_VA12,
+	MT6358_ID_VRF18,
+	MT6358_ID_VCN33_BT,
+	MT6358_ID_VCN33_WIFI,
+	MT6358_ID_VCAMA2,
+	MT6358_ID_VMC,
+	MT6358_ID_VLDO28,
+	MT6358_ID_VAUD28,
+	MT6358_ID_VSIM2,
+	MT6358_ID_RG_MAX,
+};
+
+#define MT6358_MAX_REGULATOR	MT6358_ID_RG_MAX
+
+#endif /* __LINUX_REGULATOR_MT6358_H */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
