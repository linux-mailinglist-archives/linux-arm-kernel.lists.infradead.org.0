Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36E61AB33
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 10:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Afdhs7SgtJD1r1LobYKRJMUb9vqCleLeoHJNMX7yWms=; b=KNexsnU3pIOaWCYJJ2uLd0nOFp
	SLPKmfv4KnFIBy2M6LxK4qnGj0RCCKXg4O0mkUtX1lR0H3V347oPoSlHj8pEXhr7Ut7v6SQNzYUzk
	mtlMu8evMG9IArM3oXe0HgukCveZxmtyBZQwbORSlM6tLOla9NLOxIB7k2q60qqz9OmNjBzPYylB/
	NOA869TVLNKDFG1rX5agy966s8Pg0+d4z1FVwwTikmnoOKBiHjetMHCQRWyCfh19BXrmPd+s54q+k
	Ucr8jBEKv1AaYNVw8U96xiaxnG08VD7EyKm6h+ubI5FEKbSnVRtN53BF8R+JscaoRFjlvIcDQjcq/
	RAExmsOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPjor-0001RG-4g; Sun, 12 May 2019 08:26:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPjoP-00011i-7b
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 08:26:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id g9so4878969plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 01:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ImIxo96e/TLXTEsAKF8nQi9ONSCihjaX0r3f7v2+7hM=;
 b=X6hqS7CVylH0jKnw2+BQHBLV5+Xe7RWLxXQ3VHfNxHnW9c8XJEnipUPuQGRmZ/ZPJF
 6lf+YXXvFsYQUgu7aitAJKecSCBoDqr/6cBo0ILLYxsPLlOJTX/ev1yQbiWNOnuUzaX4
 97h1416NXcNFK59FoLHInPyc59dYQbOJnZJpxXWaxJ/oTgeRkJPIkPgmHAxXKeY39m8V
 Y0b8VQj1xoKF18XrhAqR/sjXHQ2uWmHGKDXR/OXmT3BLli13QZMA9rWJEuuI73cXHbW3
 VAWWEGxUORLxQzOG9vbhWHEYtPwLHch07zta3weCrfm2MUX6hBnIX6N4ZlRo5h+wCdjE
 /eEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ImIxo96e/TLXTEsAKF8nQi9ONSCihjaX0r3f7v2+7hM=;
 b=TGUh5acFnoVxPrAubsZwtLJ+V+BlnmMJYVQdkH4HrW6C/Mxo/jpdMDga4wXdhl6Cje
 ns88Aob4Ir0n/IlGeQKlqW5cg62yIJx3VWO2hIZa+sLd58JrXfSJfXc+wi2wD5l8FkKT
 3MRth9fWcpm94JoP5oJt+ZI7Jn8InfnnLHFNM9p3TyLVFhuOExSNrKfItR9LUAfx65UU
 +UDq8TcNOZSVKTUYC2782mUkWHndAPwMotx/0Zwy/tsXtbW6OPkHEEalgiwXIMo7+dvL
 mAAtYWbnpBX8ROlyQHJrEorVMjXcFlj/vSz70HpZ1dRvIvrX8oAfl0/2VNDy28BUBskj
 EnKw==
X-Gm-Message-State: APjAAAWSaVUGANJp6CelkyDtMbNc0P/LDlD2qFGVV4ptrzc9U4UGiyWn
 gE40nR0lhIAcASwY1tU3FTU=
X-Google-Smtp-Source: APXvYqx47LQzalvei8h4/qiy119ql9x6sQuURKx2ecfysJaIKKDvYJmD7pLLDMXO0tTsy9jqkSoByQ==
X-Received: by 2002:a17:902:7082:: with SMTP id
 z2mr1633891plk.176.1557649584411; 
 Sun, 12 May 2019 01:26:24 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id b18sm17092511pfp.32.2019.05.12.01.26.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 May 2019 01:26:23 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: tiny.windzz@gmail.com, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, catalin.marinas@arm.com,
 will.deacon@arm.com, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com, andy.gross@linaro.org,
 olof@lixom.net, bjorn.andersson@linaro.org, jagan@amarulasolutions.com,
 marc.w.gonzalez@free.fr, stefan.wahren@i2se.com,
 enric.balletbo@collabora.com
Subject: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Date: Sun, 12 May 2019 04:26:13 -0400
Message-Id: <20190512082614.9045-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190512082614.9045-1-tiny.windzz@gmail.com>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_012625_277786_18C1BCB6 
X-CRM114-Status: GOOD (  24.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the support for allwinner thermal sensor, within
allwinner SoC. It will register sensors for thermal framework
and use device tree to bind cooling device.

Based on driver code found here:
https://megous.com/git/linux and https://github.com/Allwinner-Homlet/H6-BSP4.9-linux

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 MAINTAINERS                      |   7 +
 drivers/thermal/Kconfig          |  14 ++
 drivers/thermal/Makefile         |   1 +
 drivers/thermal/sun50i_thermal.c | 357 +++++++++++++++++++++++++++++++
 4 files changed, 379 insertions(+)
 create mode 100644 drivers/thermal/sun50i_thermal.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 3c65228e93c5..8da56582e72a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -674,6 +674,13 @@ L:	linux-crypto@vger.kernel.org
 S:	Maintained
 F:	drivers/crypto/sunxi-ss/
 
+ALLWINNER THERMAL DRIVER
+M:	Yangtao Li <tiny.windzz@gmail.com>
+L:	linux-pm@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
+F:	drivers/thermal/sun50i_thermal.c
+
 ALLWINNER VPU DRIVER
 M:	Maxime Ripard <maxime.ripard@bootlin.com>
 M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index 653aa27a25a4..2a8d1c98c6ca 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -252,6 +252,20 @@ config SPEAR_THERMAL
 	  Enable this to plug the SPEAr thermal sensor driver into the Linux
 	  thermal framework.
 
+config SUN50I_THERMAL
+	tristate "Allwinner sun50i thermal driver"
+	depends on ARCH_SUNXI || COMPILE_TEST
+	depends on HAS_IOMEM
+	depends on NVMEM
+	depends on OF
+	depends on RESET_CONTROLLER
+	help
+	  Support for the sun50i thermal sensor driver into the Linux thermal
+	  framework.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called sun50i-thermal.
+
 config ROCKCHIP_THERMAL
 	tristate "Rockchip thermal driver"
 	depends on ARCH_ROCKCHIP || COMPILE_TEST
diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index 486d682be047..a09b30b90003 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -30,6 +30,7 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
 # platform thermal drivers
 obj-y				+= broadcom/
 obj-$(CONFIG_SPEAR_THERMAL)	+= spear_thermal.o
+obj-$(CONFIG_SUN50I_THERMAL)	+= sun50i_thermal.o
 obj-$(CONFIG_ROCKCHIP_THERMAL)	+= rockchip_thermal.o
 obj-$(CONFIG_RCAR_THERMAL)	+= rcar_thermal.o
 obj-$(CONFIG_RCAR_GEN3_THERMAL)	+= rcar_gen3_thermal.o
diff --git a/drivers/thermal/sun50i_thermal.c b/drivers/thermal/sun50i_thermal.c
new file mode 100644
index 000000000000..3bdb3677b3d4
--- /dev/null
+++ b/drivers/thermal/sun50i_thermal.c
@@ -0,0 +1,357 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Thermal sensor driver for Allwinner SOC
+ * Copyright (C) 2019 Yangtao Li
+ *
+ * Based on the work of Icenowy Zheng <icenowy@aosc.io>
+ * Based on the work of Ondrej Jirman <megous@megous.com>
+ * Based on the work of Josef Gajdusek <atx@atx.name>
+ */
+
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+#include <linux/slab.h>
+#include <linux/thermal.h>
+
+#define MAX_SENSOR_NUM	4
+
+#define FT_TEMP_MASK				GENMASK(11, 0)
+#define TEMP_CALIB_MASK				GENMASK(11, 0)
+#define TEMP_TO_REG				672
+#define CALIBRATE_DEFAULT			0x800
+
+#define SUN50I_THS_CTRL0			0x00
+#define SUN50I_H6_THS_ENABLE			0x04
+#define SUN50I_H6_THS_PC			0x08
+#define SUN50I_H6_THS_MFC			0x30
+#define SUN50I_H6_TEMP_CALIB			0xa0
+#define SUN50I_H6_TEMP_DATA			0xc0
+
+#define SUN50I_THS_CTRL0_T_ACQ(x)		((GENMASK(15, 0) & (x)) << 16)
+#define SUN50I_THS_FILTER_EN			BIT(2)
+#define SUN50I_THS_FILTER_TYPE(x)		(GENMASK(1, 0) & (x))
+#define SUN50I_H6_THS_PC_TEMP_PERIOD(x)		((GENMASK(19, 0) & (x)) << 12)
+
+/* millidegree celsius */
+#define SUN50I_H6_FT_DEVIATION			7000
+
+struct tsens_device;
+
+struct tsensor {
+	struct tsens_device		*tmdev;
+	struct thermal_zone_device	*tzd;
+	int				id;
+};
+
+struct sun50i_thermal_chip {
+	int	sensor_num;
+	int	offset;
+	int	scale;
+	int	ft_deviation;
+	int	temp_calib_base;
+	int	temp_data_base;
+	int	(*enable)(struct tsens_device *tmdev);
+	int	(*disable)(struct tsens_device *tmdev);
+};
+
+
+struct tsens_device {
+	const struct sun50i_thermal_chip	*chip;
+	struct device				*dev;
+	struct regmap				*regmap;
+	struct reset_control			*reset;
+	struct clk				*bus_clk;
+	struct tsensor				sensor[MAX_SENSOR_NUM];
+};
+
+/* Temp Unit: millidegree Celsius */
+static int tsens_reg2temp(struct tsens_device *tmdev,
+			      int reg)
+{
+	return (reg + tmdev->chip->offset) * tmdev->chip->scale;
+}
+
+static int tsens_get_temp(void *data, int *temp)
+{
+	struct tsensor *s = data;
+	struct tsens_device *tmdev = s->tmdev;
+	int val;
+
+	regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
+		    0x4 * s->id, &val);
+
+	if (unlikely(val == 0))
+		return -EBUSY;
+
+	*temp = tsens_reg2temp(tmdev, val);
+	if (tmdev->chip->ft_deviation)
+		*temp += tmdev->chip->ft_deviation;
+
+	return 0;
+}
+
+static const struct thermal_zone_of_device_ops tsens_ops = {
+	.get_temp = tsens_get_temp,
+};
+
+static const struct regmap_config config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.fast_io = true,
+};
+
+static int tsens_init(struct tsens_device *tmdev)
+{
+	struct device *dev = tmdev->dev;
+	struct platform_device *pdev = to_platform_device(dev);
+	struct resource *mem;
+	void __iomem *base;
+
+	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap_resource(dev, mem);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	tmdev->regmap = devm_regmap_init_mmio_clk(dev, "bus",
+						  base,
+						  &config);
+	if (IS_ERR(tmdev->regmap))
+		return PTR_ERR(tmdev->regmap);
+
+	tmdev->reset = devm_reset_control_get(dev, "bus");
+	if (IS_ERR(tmdev->reset))
+		return PTR_ERR(tmdev->reset);
+
+	tmdev->bus_clk = devm_clk_get(&pdev->dev, "bus");
+	if (IS_ERR(tmdev->bus_clk))
+		return PTR_ERR(tmdev->bus_clk);
+
+	return 0;
+}
+
+/*
+ * Even if the external calibration data stored in sid is not accessible,
+ * the THS hardware can still work, although the data won't be so accurate.
+ * The default value of calibration register is 0x800 for every sensor,
+ * and the calibration value is usually 0x7xx or 0x8xx, so they won't be
+ * away from the default value for a lot.
+ *
+ * So here we do not return error if the calibartion data is
+ * not available, except the probe needs deferring.
+ */
+static int tsens_calibrate(struct tsens_device *tmdev)
+{
+	struct nvmem_cell *calcell;
+	struct device *dev = tmdev->dev;
+	u16 *caldata;
+	size_t callen;
+	int ft_temp;
+	int i = 0;
+
+	calcell = devm_nvmem_cell_get(dev, "calib");
+	if (IS_ERR(calcell)) {
+		if (PTR_ERR(calcell) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+
+		goto out;
+	}
+
+	caldata = nvmem_cell_read(calcell, &callen);
+	if (IS_ERR(caldata))
+		goto out;
+
+	if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num)
+		goto out_free;
+
+	/*
+	 * The calbration data on H6 is stored as temperature-value
+	 * pair when being filled at factory test stage.
+	 * The unit of stored FT temperature is 0.1 degreee celusis.
+	 */
+	ft_temp = caldata[0] & FT_TEMP_MASK;
+
+	for (; i < tmdev->chip->sensor_num; i++) {
+		int reg = (int)caldata[i + 1];
+		int sensor_temp = tsens_reg2temp(tmdev, reg);
+		int delta, cdata, calib_offest;
+
+		/*
+		 * To calculate the calibration value:
+		 *
+		 * X(in Celsius) = Ts - ft_temp
+		 * delta = X * 10000 / TEMP_TO_REG
+		 * cdata = CALIBRATE_DEFAULT - delta
+		 *
+		 * cdata: calibration value
+		 */
+		delta = (sensor_temp - ft_temp * 100) * 10 / TEMP_TO_REG;
+		cdata = CALIBRATE_DEFAULT - delta;
+		if (cdata & ~TEMP_CALIB_MASK) {
+			dev_warn(dev, "sensor%d calibration value error", i);
+
+			continue;
+		}
+
+		calib_offest = tmdev->chip->temp_calib_base + (i / 2) * 0x4;
+
+		if (i % 2) {
+			int val;
+
+			regmap_read(tmdev->regmap, calib_offest, &val);
+			val = (val & TEMP_CALIB_MASK) | (cdata << 16);
+			regmap_write(tmdev->regmap, calib_offest, val);
+		} else
+			regmap_write(tmdev->regmap, calib_offest, cdata);
+	}
+
+out_free:
+	kfree(caldata);
+out:
+	return 0;
+}
+
+static int tsens_register(struct tsens_device *tmdev)
+{
+	struct thermal_zone_device *tzd;
+	int i = 0;
+
+	for (; i < tmdev->chip->sensor_num; i++) {
+		tmdev->sensor[i].tmdev = tmdev;
+		tmdev->sensor[i].id = i;
+		tmdev->sensor[i].tzd = devm_thermal_zone_of_sensor_register(
+					tmdev->dev, i, &tmdev->sensor[i],
+					&tsens_ops);
+		if (IS_ERR(tmdev->sensor[i].tzd))
+			return PTR_ERR(tzd);
+	}
+
+	return 0;
+}
+
+static int tsens_probe(struct platform_device *pdev)
+{
+	struct tsens_device *tmdev;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	tmdev = devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
+	if (!tmdev)
+		return -ENOMEM;
+
+	tmdev->dev = dev;
+	tmdev->chip = of_device_get_match_data(&pdev->dev);
+	if (!tmdev->chip)
+		return -EINVAL;
+
+	ret = tsens_init(tmdev);
+	if (ret)
+		return ret;
+
+	ret = tsens_register(tmdev);
+	if (ret)
+		return ret;
+
+	ret = tmdev->chip->enable(tmdev);
+	if (ret)
+		return ret;
+
+	platform_set_drvdata(pdev, tmdev);
+
+	return ret;
+}
+
+static int tsens_remove(struct platform_device *pdev)
+{
+	struct tsens_device *tmdev = platform_get_drvdata(pdev);
+
+	tmdev->chip->disable(tmdev);
+
+	return 0;
+}
+
+static int sun50i_thermal_enable(struct tsens_device *tmdev)
+{
+	int ret, val;
+
+	ret = reset_control_deassert(tmdev->reset);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(tmdev->bus_clk);
+	if (ret)
+		goto assert_reset;
+
+	ret = tsens_calibrate(tmdev);
+	if (ret)
+		return ret;
+
+	/*
+	 * clkin = 24MHz
+	 * T acquire = clkin / (SUN50I_THS_CTRL0_T_ACQ + 1)
+	 *           = 20us
+	 */
+	regmap_write(tmdev->regmap, SUN50I_THS_CTRL0,
+		     SUN50I_THS_CTRL0_T_ACQ(479));
+	/* average over 4 samples */
+	regmap_write(tmdev->regmap, SUN50I_H6_THS_MFC,
+		     SUN50I_THS_FILTER_EN |
+		     SUN50I_THS_FILTER_TYPE(1));
+	/* period = (SUN50I_H6_THS_PC_TEMP_PERIOD + 1) * 4096 / clkin; ~10ms */
+	regmap_write(tmdev->regmap, SUN50I_H6_THS_PC,
+		     SUN50I_H6_THS_PC_TEMP_PERIOD(58));
+	/* enable sensor */
+	val = GENMASK(tmdev->chip->sensor_num - 1, 0);
+	regmap_write(tmdev->regmap, SUN50I_H6_THS_ENABLE, val);
+
+	return 0;
+
+assert_reset:
+	reset_control_assert(tmdev->reset);
+
+	return ret;
+}
+
+static int sun50i_thermal_disable(struct tsens_device *tmdev)
+{
+	clk_disable_unprepare(tmdev->bus_clk);
+	reset_control_assert(tmdev->reset);
+
+	return 0;
+}
+
+static const struct sun50i_thermal_chip sun50i_h6_ths = {
+	.sensor_num = 2,
+	.offset = -2794,
+	.scale = -67,
+	.ft_deviation = SUN50I_H6_FT_DEVIATION,
+	.temp_calib_base = SUN50I_H6_TEMP_CALIB,
+	.temp_data_base = SUN50I_H6_TEMP_DATA,
+	.enable = sun50i_thermal_enable,
+	.disable = sun50i_thermal_disable,
+};
+
+static const struct of_device_id of_tsens_match[] = {
+	{ .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, of_tsens_match);
+
+static struct platform_driver tsens_driver = {
+	.probe = tsens_probe,
+	.remove = tsens_remove,
+	.driver = {
+		.name = "sun50i-thermal",
+		.of_match_table = of_tsens_match,
+	},
+};
+module_platform_driver(tsens_driver);
+
+MODULE_DESCRIPTION("Thermal sensor driver for Allwinner SOC");
+MODULE_LICENSE("GPL v2");
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
