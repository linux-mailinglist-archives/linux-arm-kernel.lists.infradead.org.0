Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DEA83238
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=veagwhJV+Nsxqq3dJNeTEexlly3xOp4K6gUvGVUXuTU=; b=rowH9uCwWedMPc0wxdzyRTPxKY
	Vu+x1WnOKBN/mydw7sRbb4uICf/M8VdzplX+GfLrhaBUD4NrfRWIDYVf2UkVxPJJ3fV/zZRKzu6MQ
	l5OHzBJQquTIkDZ4t6nke2tNGQ6v9SEzGO4m/3yziAXaWxWZkC4G3wf9T9O6iZ7EG+tVy6SKDLGzI
	ZdNcdttpRhmIChd7XAhxY7aMwSCSiR6su1tM3FgEOaz0FGXj11g4E2DS4hV/i3tYxWd6b9hiIB2aL
	9Ik6ZxFDrYnprWXMjQGPHt/AZXcZ2Zbm3BBtV2SHwkFL5+Yleo1OpWpJfyaoqVEg17USqv2fBMg9E
	U44BH8DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzAX-0001KE-07; Tue, 06 Aug 2019 13:06:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huz9O-0000K2-9o
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:05:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id r1so87796649wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 06:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XpuZkkEr4/E1fLajnLLj8hhoKOa6kl91KbDCambRcZo=;
 b=Xc03wMxhO07fS3kgXEqIiLcfZL3hySLg+2Dj3ggZ842/9L1c72y3rbnEC+bANb7qpw
 baqB7BEO5JKzhGgZYP5olNEez0riSMd6e2Gs46kZCweCAXb37mmbV7D+wVtbKKrAVT93
 bk1eEyHWuRbZ1pJVHr6rYsXJz1NzHDKoW+yfC50FrlnfutZd8v9CdzqYaaTikuckseoW
 kjj7GFsLijSvEmxYrEOwZmhaQISavsC5O/aa9rkCAYiU8xHR9wtVeRHSK1sVOD/RxlUo
 yXwmBD9UzTzmhAK9UW7XK2EBqfDyCImwqaR/vqxzUG4X00BF36LOTkDttetD3JR99390
 WR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XpuZkkEr4/E1fLajnLLj8hhoKOa6kl91KbDCambRcZo=;
 b=eiZ+nSLlzUtUJ1Yw/k/7PfOhLJ0+f4rmeGYRs5C2P5KXiIgx5rF+L4LoE85EVOY0Hj
 wViSyioWmSxsPCLx7h0PX4vJ7j0vJxFtCPiqQDajrEND2VmYQ0tX2qWqyuntNVTtpqQI
 Ub1u6cKqVzwt4DHr1NGsOjKGWmvs93fNYEe4cVjMnCB2eBHoJahlEdDJpvMuM3xX7Nb6
 YWYtdjpqEfJ+UqlVWgoiBvIycf/Pr+U9TKImDmnSjztw7WPAjFbSgzRZIa3kv/nAbE/E
 Xy3IgfTHdFYM71ItzeVuCc/DHAomKTBTmMJP8wbdYJBv3tIhXQB8sBNWytGTqrBZdD2F
 v7gA==
X-Gm-Message-State: APjAAAUU0wU1PpoKDZdYsafn/W3STOXpDvF5jIsUfQwZjTUblRk7nXgE
 FH77mQ3I0kz4q7Pr0B6SqVwN9A==
X-Google-Smtp-Source: APXvYqwXKj5hOuFRAG0Bh6fnpIG4Lv4H51efaRjM+V7sP9GwGumbPzPEtEicc3IKuIw2b8gf2SQbSw==
X-Received: by 2002:adf:f812:: with SMTP id s18mr5224531wrp.32.1565096712849; 
 Tue, 06 Aug 2019 06:05:12 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id j33sm201888738wre.42.2019.08.06.06.05.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 06:05:12 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH v3 2/6] thermal: amlogic: Add thermal driver to support G12
 SoCs
Date: Tue,  6 Aug 2019 15:05:02 +0200
Message-Id: <20190806130506.8753-3-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806130506.8753-1-glaroque@baylibre.com>
References: <20190806130506.8753-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_060514_367828_7256B0D7 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic G12A and G12B SoCs integrate two thermal sensors
with the same design.
One is located close to the DDR controller and the other one is
located close to the PLLs (between the CPU and GPU).

The calibration data for each of the thermal sensors instance is
stored in a different location within the AO region.

Implement reading the temperature from each thermal sensor.

The IP block has more functionality, which may be added to this driver
in the future:
- chip reset when the temperature exceeds a configurable threshold
- up to four interrupts when the temperature has risen above a
configurable threshold
- up to four interrupts when the temperature has fallen below a
configurable threshold

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 drivers/thermal/Kconfig           |  11 +
 drivers/thermal/Makefile          |   1 +
 drivers/thermal/amlogic_thermal.c | 336 ++++++++++++++++++++++++++++++
 3 files changed, 348 insertions(+)
 create mode 100644 drivers/thermal/amlogic_thermal.c

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index 9966364a6deb..0f31bb4bc372 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -348,6 +348,17 @@ config MTK_THERMAL
 	  Enable this option if you want to have support for thermal management
 	  controller present in Mediatek SoCs
 
+config AMLOGIC_THERMAL
+	tristate "Amlogic Thermal Support"
+	default ARCH_MESON
+	depends on OF && ARCH_MESON
+	help
+	  If you say yes here you get support for Amlogic Thermal
+	  for G12 SoC Family.
+
+	  This driver can also be built as a module. If so, the module will
+	  be called amlogic_thermal.
+
 menu "Intel thermal drivers"
 depends on X86 || X86_INTEL_QUARK || COMPILE_TEST
 source "drivers/thermal/intel/Kconfig"
diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index 74a37c7f847a..baeb70bf0568 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -54,3 +54,4 @@ obj-$(CONFIG_MTK_THERMAL)	+= mtk_thermal.o
 obj-$(CONFIG_GENERIC_ADC_THERMAL)	+= thermal-generic-adc.o
 obj-$(CONFIG_ZX2967_THERMAL)	+= zx2967_thermal.o
 obj-$(CONFIG_UNIPHIER_THERMAL)	+= uniphier_thermal.o
+obj-$(CONFIG_AMLOGIC_THERMAL)     += amlogic_thermal.o
diff --git a/drivers/thermal/amlogic_thermal.c b/drivers/thermal/amlogic_thermal.c
new file mode 100644
index 000000000000..672d11abd8c7
--- /dev/null
+++ b/drivers/thermal/amlogic_thermal.c
@@ -0,0 +1,336 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Amlogic Thermal Sensor Driver
+ *
+ * Copyright (C) 2017 Huan Biao <huan.biao@amlogic.com>
+ * Copyright (C) 2019 Guillaume La Roque <glaroque@baylibre.com>
+ *
+ * Register value to celsius temperature formulas:
+ *	Read_Val	    m * U
+ * U = ---------, Uptat = ---------
+ *	2^16		  1 + n * U
+ *
+ * Temperature = A * ( Uptat + u_efuse / 2^16 )- B
+ *
+ *  A B m n : calibration parameters
+ *  u_efuse : fused calibration value, it's a signed 16 bits value
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/thermal.h>
+
+#include "thermal_core.h"
+
+#define TSENSOR_CFG_REG1			0x4
+	#define TSENSOR_CFG_REG1_RSET_VBG	BIT(12)
+	#define TSENSOR_CFG_REG1_RSET_ADC	BIT(11)
+	#define TSENSOR_CFG_REG1_VCM_EN		BIT(10)
+	#define TSENSOR_CFG_REG1_VBG_EN		BIT(9)
+	#define TSENSOR_CFG_REG1_OUT_CTL	BIT(6)
+	#define TSENSOR_CFG_REG1_FILTER_EN	BIT(5)
+	#define TSENSOR_CFG_REG1_DEM_EN		BIT(3)
+	#define TSENSOR_CFG_REG1_CH_SEL		GENMASK(1, 0)
+	#define TSENSOR_CFG_REG1_ENABLE		\
+		(TSENSOR_CFG_REG1_FILTER_EN |	\
+		 TSENSOR_CFG_REG1_VCM_EN |	\
+		 TSENSOR_CFG_REG1_VBG_EN |	\
+		 TSENSOR_CFG_REG1_DEM_EN |	\
+		 TSENSOR_CFG_REG1_CH_SEL)
+
+#define TSENSOR_STAT0			0x40
+
+#define TSENSOR_STAT9			0x64
+
+#define TSENSOR_READ_TEMP_MASK		GENMASK(15, 0)
+#define TSENSOR_TEMP_MASK		GENMASK(11, 0)
+
+#define TSENSOR_TRIM_SIGN_MASK		BIT(15)
+#define TSENSOR_TRIM_TEMP_MASK		GENMASK(14, 0)
+#define TSENSOR_TRIM_VERSION_MASK	GENMASK(31, 24)
+
+#define TSENSOR_TRIM_VERSION(_version)	\
+	FIELD_GET(TSENSOR_TRIM_VERSION_MASK, _version)
+
+#define TSENSOR_TRIM_CALIB_VALID_MASK	(GENMASK(3, 2) | BIT(7))
+
+#define TSENSOR_CALIB_OFFSET	1
+#define TSENSOR_CALIB_SHIFT	4
+
+/**
+ * struct amlogic_thermal_soc_calib_data
+ * @A, B, m, n: calibration parameters
+ * This structure is required for configuration of amlogic thermal driver.
+ */
+struct amlogic_thermal_soc_calib_data {
+	int A;
+	int B;
+	int m;
+	int n;
+};
+
+/**
+ * struct amlogic_thermal_data
+ * @u_efuse_off: register offset to read fused calibration value
+ * @soc: calibration parameters structure pointer
+ * @regmap_config: regmap config for the device
+ * This structure is required for configuration of amlogic thermal driver.
+ */
+struct amlogic_thermal_data {
+	int u_efuse_off;
+	const struct amlogic_thermal_soc_calib_data *calibration_parameters;
+	const struct regmap_config *regmap_config;
+};
+
+struct amlogic_thermal {
+	struct platform_device *pdev;
+	const struct amlogic_thermal_data *data;
+	struct regmap *regmap;
+	struct regmap *sec_ao_map;
+	struct clk *clk;
+	struct thermal_zone_device *tzd;
+	u32 trim_info;
+	void __iomem *base;
+};
+
+/*
+ * Calculate a temperature value from a temperature code.
+ * The unit of the temperature is degree milliCelsius.
+ */
+static int amlogic_thermal_code_to_millicelsius(struct amlogic_thermal *pdata,
+						int temp_code)
+{
+	const struct amlogic_thermal_soc_calib_data *param =
+					pdata->data->calibration_parameters;
+	int temp;
+	s64 factor, Uptat, uefuse;
+
+	uefuse = pdata->trim_info & TSENSOR_TRIM_SIGN_MASK ?
+			     ~(pdata->trim_info & TSENSOR_TRIM_TEMP_MASK) + 1 :
+			     (pdata->trim_info & TSENSOR_TRIM_TEMP_MASK);
+
+	factor = param->n * temp_code;
+	factor = div_s64(factor, 100);
+
+	Uptat = temp_code * param->m;
+	Uptat = div_s64(Uptat, 100);
+	Uptat = Uptat * BIT(16);
+	Uptat = div_s64(Uptat, BIT(16) + factor);
+
+	temp = (Uptat + uefuse) * param->A;
+	temp = div_s64(temp, BIT(16));
+	temp = (temp - param->B) * 100;
+
+	return temp;
+}
+
+static int amlogic_thermal_initialize(struct amlogic_thermal *pdata)
+{
+	int ret = 0;
+	int ver;
+
+	regmap_read(pdata->sec_ao_map, pdata->data->u_efuse_off,
+		    &pdata->trim_info);
+
+	ver = TSENSOR_TRIM_VERSION(pdata->trim_info);
+
+	if ((ver & TSENSOR_TRIM_CALIB_VALID_MASK) == 0) {
+		ret = -EINVAL;
+		dev_err(&pdata->pdev->dev,
+			"tsensor thermal calibration not supported: 0x%x!\n",
+			ver);
+	}
+
+	return ret;
+}
+
+static int amlogic_thermal_enable(struct amlogic_thermal *data)
+{
+	int ret;
+
+	ret = clk_prepare_enable(data->clk);
+	if (ret)
+		return ret;
+	regmap_update_bits(data->regmap, TSENSOR_CFG_REG1,
+			   TSENSOR_CFG_REG1_ENABLE, TSENSOR_CFG_REG1_ENABLE);
+
+	return 0;
+}
+
+static int amlogic_thermal_disable(struct amlogic_thermal *data)
+{
+	regmap_update_bits(data->regmap, TSENSOR_CFG_REG1,
+			   TSENSOR_CFG_REG1_ENABLE, 0);
+	clk_disable_unprepare(data->clk);
+
+	return 0;
+}
+
+static int amlogic_thermal_get_temp(void *data, int *temp)
+{
+	unsigned int tval;
+	struct amlogic_thermal *pdata = data;
+
+	if (!data)
+		return -EINVAL;
+
+	regmap_read(pdata->regmap, TSENSOR_STAT0, &tval);
+	*temp =
+	   amlogic_thermal_code_to_millicelsius(pdata,
+						tval & TSENSOR_READ_TEMP_MASK);
+
+	return 0;
+}
+
+static const struct thermal_zone_of_device_ops amlogic_thermal_ops = {
+	.get_temp	= amlogic_thermal_get_temp,
+};
+
+static const struct regmap_config amlogic_thermal_regmap_config_g12 = {
+	.reg_bits = 8,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = TSENSOR_STAT9,
+};
+
+static const struct amlogic_thermal_soc_calib_data amlogic_thermal_g12 = {
+	.A = 9411,
+	.B = 3159,
+	.m = 424,
+	.n = 324,
+};
+
+static const struct amlogic_thermal_data amlogic_thermal_g12_cpu_param = {
+	.u_efuse_off = 0x128,
+	.calibration_parameters = &amlogic_thermal_g12,
+	.regmap_config = &amlogic_thermal_regmap_config_g12,
+};
+
+static const struct amlogic_thermal_data amlogic_thermal_g12_ddr_param = {
+	.u_efuse_off = 0xf0,
+	.calibration_parameters = &amlogic_thermal_g12,
+	.regmap_config = &amlogic_thermal_regmap_config_g12,
+};
+
+static const struct of_device_id of_amlogic_thermal_match[] = {
+	{
+		.compatible = "amlogic,g12-ddr-thermal",
+		.data = &amlogic_thermal_g12_ddr_param,
+	},
+	{
+		.compatible = "amlogic,g12-cpu-thermal",
+		.data = &amlogic_thermal_g12_cpu_param,
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, of_amlogic_thermal_match);
+
+static int amlogic_thermal_probe(struct platform_device *pdev)
+{
+	struct amlogic_thermal *pdata;
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+	int ret;
+
+	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
+	if (!pdata)
+		return -ENOMEM;
+
+	pdata->data = of_device_get_match_data(dev);
+	pdata->pdev = pdev;
+	platform_set_drvdata(pdev, pdata);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	pdata->base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(pdata->base)) {
+		dev_err(dev, "failed to get io address\n");
+		return PTR_ERR(pdata->base);
+	}
+
+	pdata->regmap = devm_regmap_init_mmio(dev, pdata->base,
+					      pdata->data->regmap_config);
+	if (IS_ERR(pdata->regmap))
+		return PTR_ERR(pdata->regmap);
+
+	pdata->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(pdata->clk)) {
+		if (PTR_ERR(pdata->clk) != -EPROBE_DEFER)
+			dev_err(dev, "failed to get clock\n");
+		return PTR_ERR(pdata->clk);
+	}
+
+	pdata->sec_ao_map = syscon_regmap_lookup_by_phandle
+		(pdev->dev.of_node, "amlogic,ao-secure");
+	if (IS_ERR(pdata->sec_ao_map)) {
+		dev_err(dev, "syscon regmap lookup failed.\n");
+		return PTR_ERR(pdata->sec_ao_map);
+	}
+
+	pdata->tzd = devm_thermal_zone_of_sensor_register(&pdev->dev,
+							  0,
+							  pdata,
+							  &amlogic_thermal_ops);
+	if (IS_ERR(pdata->tzd)) {
+		ret = PTR_ERR(pdata->tzd);
+		dev_err(dev, "Failed to register tsensor: %d\n", ret);
+		return PTR_ERR(pdata->tzd);
+	}
+
+	ret = amlogic_thermal_initialize(pdata);
+	if (ret)
+		return ret;
+
+	ret = amlogic_thermal_enable(pdata);
+	if (ret)
+		clk_disable_unprepare(pdata->clk);
+
+	return ret;
+}
+
+static int amlogic_thermal_remove(struct platform_device *pdev)
+{
+	struct amlogic_thermal *data = platform_get_drvdata(pdev);
+
+	return amlogic_thermal_disable(data);
+}
+
+static int __maybe_unused amlogic_thermal_suspend(struct device *dev)
+{
+	struct amlogic_thermal *data = dev_get_drvdata(dev);
+
+	return amlogic_thermal_disable(data);
+}
+
+static int __maybe_unused amlogic_thermal_resume(struct device *dev)
+{
+	struct amlogic_thermal *data = dev_get_drvdata(dev);
+
+	return amlogic_thermal_enable(data);
+}
+
+static SIMPLE_DEV_PM_OPS(amlogic_thermal_pm_ops,
+			 amlogic_thermal_suspend, amlogic_thermal_resume);
+
+static struct platform_driver amlogic_thermal_driver = {
+	.driver = {
+		.name		= "amlogic_thermal",
+		.pm		= &amlogic_thermal_pm_ops,
+		.of_match_table = of_amlogic_thermal_match,
+	},
+	.probe	= amlogic_thermal_probe,
+	.remove	= amlogic_thermal_remove,
+};
+
+module_platform_driver(amlogic_thermal_driver);
+
+MODULE_AUTHOR("Guillaume La Roque <glaroque@baylibre.com>");
+MODULE_DESCRIPTION("Amlogic thermal driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
