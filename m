Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE724FCE8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rIY4xJgqJL8lj0pO1UNqtUo1dyMmNIjigHEyzP7811w=; b=fGilZgCIJNwKa88gWy3oc1/2+s
	71/2sGQRo6KB4K07iilf6XF9PduR3m7rxabcWPAHP+636YStHoBFldBX2b+uxGBljIX/GxGPcsMqh
	7fTf1D3im6or1Eq60qSqOdk6VN099mhR/p2FXaFE10yPsJGRebu8sxeEYtXiJ1GoLUhT+yI1UZzMr
	Bqh1xyQcGL2ILBNALeKMwFEMESZv3B0ly8cjEl8VoTAFkz9RY1yzyQ7uepLyCLxFDC99bk5FAprgm
	sVbVjLbby/XbThCzZK6xkaMsKSwtq+nBjIoBdpLZvW6HlFXZuLxquC7ztcxM1QAx1Q/3If6RKEgqH
	y/QrgL2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5Zy-0002oI-5X; Sun, 23 Jun 2019 16:42:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZG-0002UT-PA
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so5771651pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zPNVR7pGpaDNHjObNtKjy5ol22Mjb0O+wvgCUguxj4M=;
 b=FatigfnLmHqFsL7YC0OQ1HJ09wRzljDgz0ZqDWEAnXr0a3vmMXZp7k7MgxED2pGUQv
 bbeclohb1iPALVvJbPWB7W2dfGv3UQyp6KtYw3dTWRohnkUZklF137GbAvVzVMG78Q4c
 FDts9QzbCnnkdIbP6s9SqkQ/cTBk0Exrbq07QYXHEOvEMzMJRyGefHl4+ktWvJufJA7a
 yZgKStRtgohOl66zrWb5/+Pou4hqqTZvi47/rxkYWaPCoWaAEhIJGZpZnBUZC6EKYNTO
 QqvHl3wRfNUcvsP4TYNxFpNOAWAjkhlYvqbr2MNg7Y03URYku9PA3Z3mkQj4TcRmJcQp
 t1cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zPNVR7pGpaDNHjObNtKjy5ol22Mjb0O+wvgCUguxj4M=;
 b=DUKdGQDH4teIW1uyyACjzoTG5Z3W8eMPP3FQlKRmllMv9d8ZC44juhmctBzTKRD7tl
 4egWG8zkdwQkiU5xRIopxBfkvtipg5XtUXK/0efsLPT8F66Qv+XXN1HnbRSwv4UOzynd
 K8K9RUlKbfIRXyNvBpLsC3JZ8OWIUzPMOYrJr86meN9vJAO+lzJ1OKRL98Gem9H1prlC
 +hVZCtu5k9WSt8+ftrdno323G5kmbXFDzUZYibFoCQeca/gEvKpe75gG6R/1xcLM/dtu
 LwgbygwQ4gAvetRgBNIrslSwZ1+mmJmGvgyeejwHoVvZDuRfHVMi10cwYQvIOZYiXWMt
 dDwg==
X-Gm-Message-State: APjAAAW1DxE6ibIuBDcp5eNFFpKADp0ACUYzNek++yV/5JBVSOL4veJ7
 5mzL4MV8TwYI4a6DMB1BNEA=
X-Google-Smtp-Source: APXvYqzgXXB5mStrhkzan4KG83X85VVzIkYWjQhk0oUFo284KlLsFL8+4uVLRmeHxQx2CDuv77AJHg==
X-Received: by 2002:a17:90a:7f02:: with SMTP id
 k2mr19641473pjl.78.1561308133116; 
 Sun, 23 Jun 2019 09:42:13 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id y185sm8560343pfy.110.2019.06.23.09.42.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:12 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 01/11] thermal: sun8i: add thermal driver for h6
Date: Sun, 23 Jun 2019 12:41:56 -0400
Message-Id: <20190623164206.7467-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094214_819755_2FC4E707 
X-CRM114-Status: GOOD (  28.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the support for allwinner thermal sensor, within
allwinner SoC. It will register sensors for thermal framework
and use device tree to bind cooling device.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 MAINTAINERS                     |   7 +
 drivers/thermal/Kconfig         |  14 ++
 drivers/thermal/Makefile        |   1 +
 drivers/thermal/sun8i_thermal.c | 405 ++++++++++++++++++++++++++++++++
 4 files changed, 427 insertions(+)
 create mode 100644 drivers/thermal/sun8i_thermal.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 36a84614d6c3..67e7fcfaded2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -674,6 +674,13 @@ L:	linux-crypto@vger.kernel.org
 S:	Maintained
 F:	drivers/crypto/sunxi-ss/
 
+ALLWINNER THERMAL DRIVER
+M:	Yangtao Li <tiny.windzz@gmail.com>
+L:	linux-pm@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
+F:	drivers/thermal/sun8i_thermal.c
+
 ALLWINNER VPU DRIVER
 M:	Maxime Ripard <maxime.ripard@bootlin.com>
 M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index 9966364a6deb..f8b73b32b92d 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -262,6 +262,20 @@ config SPEAR_THERMAL
 	  Enable this to plug the SPEAr thermal sensor driver into the Linux
 	  thermal framework.
 
+config SUN8I_THERMAL
+	tristate "Allwinner sun8i thermal driver"
+	depends on ARCH_SUNXI || COMPILE_TEST
+	depends on HAS_IOMEM
+	depends on NVMEM
+	depends on OF
+	depends on RESET_CONTROLLER
+	help
+	  Support for the sun8i thermal sensor driver into the Linux thermal
+	  framework.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called sun8i-thermal.
+
 config ROCKCHIP_THERMAL
 	tristate "Rockchip thermal driver"
 	depends on ARCH_ROCKCHIP || COMPILE_TEST
diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index 74a37c7f847a..fa6f8b206281 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -31,6 +31,7 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
 obj-y				+= broadcom/
 obj-$(CONFIG_THERMAL_MMIO)		+= thermal_mmio.o
 obj-$(CONFIG_SPEAR_THERMAL)	+= spear_thermal.o
+obj-$(CONFIG_SUN8I_THERMAL)     += sun8i_thermal.o
 obj-$(CONFIG_ROCKCHIP_THERMAL)	+= rockchip_thermal.o
 obj-$(CONFIG_RCAR_THERMAL)	+= rcar_thermal.o
 obj-$(CONFIG_RCAR_GEN3_THERMAL)	+= rcar_gen3_thermal.o
diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
new file mode 100644
index 000000000000..d6918c62682b
--- /dev/null
+++ b/drivers/thermal/sun8i_thermal.c
@@ -0,0 +1,405 @@
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
+#include <linux/interrupt.h>
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
+#define SUN50I_H6_SENSOR_NUM	2
+#define SUN50I_H6_OFFSET	-2794
+#define SUN50I_H6_SCALE		-67
+
+#define FT_TEMP_MASK				GENMASK(11, 0)
+#define TEMP_CALIB_MASK				GENMASK(11, 0)
+#define TEMP_TO_REG				672
+#define CALIBRATE_DEFAULT			0x800
+
+#define SUN50I_THS_CTRL0			0x00
+#define SUN50I_H6_THS_ENABLE			0x04
+#define SUN50I_H6_THS_PC			0x08
+#define SUN50I_H6_THS_DIC			0x10
+#define SUN50I_H6_THS_DIS			0x20
+#define SUN50I_H6_THS_MFC			0x30
+#define SUN50I_H6_THS_TEMP_CALIB		0xa0
+#define SUN50I_H6_THS_TEMP_DATA			0xc0
+
+#define SUN50I_THS_CTRL0_T_ACQ(x)		((GENMASK(15, 0) & (x)) << 16)
+#define SUN50I_THS_FILTER_EN			BIT(2)
+#define SUN50I_THS_FILTER_TYPE(x)		(GENMASK(1, 0) & (x))
+#define SUN50I_H6_THS_PC_TEMP_PERIOD(x)		((GENMASK(19, 0) & (x)) << 12)
+#define SUN50I_H6_THS_DATA_IRQ_STS(x)		BIT(x)
+
+/* millidegree celsius */
+#define SUN50I_H6_FT_DEVIATION			7000
+
+struct ths_device;
+
+struct tsensor {
+	struct ths_device		*tmdev;
+	struct thermal_zone_device	*tzd;
+	int				id;
+};
+
+struct ths_device {
+	struct device				*dev;
+	struct regmap				*regmap;
+	struct reset_control			*reset;
+	struct clk				*bus_clk;
+	struct tsensor				sensor[MAX_SENSOR_NUM];
+};
+
+/* Temp Unit: millidegree Celsius */
+static int sun8i_ths_reg2temp(struct ths_device *tmdev,
+			      int reg)
+{
+	return (reg + SUN50I_H6_OFFSET) * SUN50I_H6_SCALE;
+}
+
+static int sun8i_ths_get_temp(void *data, int *temp)
+{
+	struct tsensor *s = data;
+	struct ths_device *tmdev = s->tmdev;
+	int val;
+
+	regmap_read(tmdev->regmap, SUN50I_H6_THS_TEMP_DATA +
+		    0x4 * s->id, &val);
+
+	/* ths have no data yet */
+	if (!val)
+		return -EBUSY;
+
+	*temp = sun8i_ths_reg2temp(tmdev, val);
+	/*
+	 * XX - According to the original sdk, there are some platforms(rarely)
+	 * that add a fixed offset value after calculating the temperature
+	 * value. We can't simply put it on the formula for calculating the
+	 * temperature above, because the formula for calculating the
+	 * temperature above is also used when the sensor is calibrated. If
+	 * do this, the correct calibration formula is hard to know.
+	 */
+	*temp += SUN50I_H6_FT_DEVIATION;
+
+	return 0;
+}
+
+static const struct thermal_zone_of_device_ops ths_ops = {
+	.get_temp = sun8i_ths_get_temp,
+};
+
+static const struct regmap_config config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.fast_io = true,
+};
+
+static irqreturn_t sun50i_h6_irq_thread(int irq, void *data)
+{
+	struct ths_device *tmdev = data;
+	int i, state;
+
+	regmap_read(tmdev->regmap, SUN50I_H6_THS_DIS, &state);
+
+	for (i = 0; i < SUN50I_H6_SENSOR_NUM; i++) {
+
+		if (state & SUN50I_H6_THS_DATA_IRQ_STS(i)) {
+			/* clear data irq pending */
+			regmap_write(tmdev->regmap, SUN50I_H6_THS_DIS,
+				     SUN50I_H6_THS_DATA_IRQ_STS(i));
+
+			thermal_zone_device_update(tmdev->sensor[i].tzd,
+						   THERMAL_EVENT_UNSPECIFIED);
+		}
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int sun50i_ths_calibrate(struct ths_device *tmdev)
+{
+	struct nvmem_cell *calcell;
+	struct device *dev = tmdev->dev;
+	u16 *caldata;
+	size_t callen;
+	int ft_temp;
+	int i, ret = 0;
+
+	calcell = devm_nvmem_cell_get(dev, "calib");
+	if (IS_ERR(calcell)) {
+		if (PTR_ERR(calcell) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		/*
+		 * Even if the external calibration data stored in sid is
+		 * not accessible, the THS hardware can still work, although
+		 * the data won't be so accurate.
+		 *
+		 * The default value of calibration register is 0x800 for
+		 * every sensor, and the calibration value is usually 0x7xx
+		 * or 0x8xx, so they won't be away from the default value
+		 * for a lot.
+		 *
+		 * So here we do not return error if the calibartion data is
+		 * not available, except the probe needs deferring.
+		 */
+		goto out;
+	}
+
+	caldata = nvmem_cell_read(calcell, &callen);
+	if (IS_ERR(caldata)) {
+		ret = PTR_ERR(caldata);
+		goto out;
+	}
+
+	if (!caldata[0] || callen < 2 + 2 * SUN50I_H6_SENSOR_NUM) {
+		ret = -EINVAL;
+		goto out_free;
+	}
+
+	/*
+	 * efuse layout:
+	 *
+	 *	0   11  16	 32
+	 *	+-------+-------+-------+
+	 *	|temp|  |sensor0|sensor1|
+	 *	+-------+-------+-------+
+	 *
+	 * The calibration data on the H6 is the ambient temperature and
+	 * sensor values that are filled during the factory test stage.
+	 *
+	 * The unit of stored FT temperature is 0.1 degreee celusis.
+	 * Through the stored ambient temperature and the data read
+	 * by the sensor, after a certain calculation, the calibration
+	 * value to be compensated can be obtained.
+	 */
+	ft_temp = caldata[0] & FT_TEMP_MASK;
+
+	for (i = 0; i < SUN50I_H6_SENSOR_NUM; i++) {
+		int reg = (int)caldata[i + 1];
+		int sensor_temp = sun8i_ths_reg2temp(tmdev, reg);
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
+			/*
+			 * Calibration value more than 12-bit, but calibration
+			 * register is 12-bit. In this case, ths hardware can
+			 * still work without calibration, although the data
+			 * won't be so accurate.
+			 */
+			dev_warn(dev, "sensor%d is not calibrated.\n", i);
+
+			continue;
+		}
+
+		calib_offest = SUN50I_H6_THS_TEMP_CALIB + (i / 2) * 0x4;
+
+		if (i % 2) {
+			int val;
+
+			regmap_read(tmdev->regmap, calib_offest, &val);
+			val = (val & TEMP_CALIB_MASK) | (cdata << 16);
+			regmap_write(tmdev->regmap, calib_offest, val);
+		} else {
+			regmap_write(tmdev->regmap, calib_offest, cdata);
+		}
+	}
+
+out_free:
+	kfree(caldata);
+out:
+	return ret;
+}
+
+static int sun8i_ths_resource_init(struct ths_device *tmdev)
+{
+	struct device *dev = tmdev->dev;
+	struct platform_device *pdev = to_platform_device(dev);
+	struct resource *mem;
+	void __iomem *base;
+	int ret;
+
+	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap_resource(dev, mem);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	tmdev->regmap = devm_regmap_init_mmio(dev, base, &config);
+	if (IS_ERR(tmdev->regmap))
+		return PTR_ERR(tmdev->regmap);
+
+	tmdev->reset = devm_reset_control_get(dev, 0);
+	if (IS_ERR(tmdev->reset))
+		return PTR_ERR(tmdev->reset);
+
+	tmdev->bus_clk = devm_clk_get(&pdev->dev, "bus");
+	if (IS_ERR(tmdev->bus_clk))
+		return PTR_ERR(tmdev->bus_clk);
+
+	ret = reset_control_deassert(tmdev->reset);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(tmdev->bus_clk);
+	if (ret)
+		goto assert_reset;
+
+	ret = sun50i_ths_calibrate(tmdev);
+	if (ret)
+		goto bus_disable;
+
+	return 0;
+
+bus_disable:
+	clk_disable_unprepare(tmdev->bus_clk);
+assert_reset:
+	reset_control_assert(tmdev->reset);
+
+	return ret;
+}
+
+static int sun50i_thermal_init(struct ths_device *tmdev)
+{
+	int val;
+
+	/*
+	 * clkin = 24MHz
+	 * T acquire = clkin / (x + 1)
+	 *           = 20us
+	 */
+	regmap_write(tmdev->regmap, SUN50I_THS_CTRL0,
+		     SUN50I_THS_CTRL0_T_ACQ(479));
+	/* average over 4 samples */
+	regmap_write(tmdev->regmap, SUN50I_H6_THS_MFC,
+		     SUN50I_THS_FILTER_EN |
+		     SUN50I_THS_FILTER_TYPE(1));
+	/* period = (x + 1) * 4096 / clkin; ~10ms */
+	regmap_write(tmdev->regmap, SUN50I_H6_THS_PC,
+		     SUN50I_H6_THS_PC_TEMP_PERIOD(58));
+	/* enable sensor */
+	val = GENMASK(SUN50I_H6_SENSOR_NUM - 1, 0);
+	regmap_write(tmdev->regmap, SUN50I_H6_THS_ENABLE, val);
+	/* thermal data interrupt enable */
+	val = GENMASK(SUN50I_H6_SENSOR_NUM - 1, 0);
+	regmap_write(tmdev->regmap, SUN50I_H6_THS_DIC, val);
+
+	return 0;
+}
+
+static int sun8i_ths_register(struct ths_device *tmdev)
+{
+	struct thermal_zone_device *tzd;
+	int i;
+
+	for (i = 0; i < SUN50I_H6_SENSOR_NUM; i++) {
+		tmdev->sensor[i].tmdev = tmdev;
+		tmdev->sensor[i].id = i;
+		tmdev->sensor[i].tzd =
+			devm_thermal_zone_of_sensor_register(tmdev->dev,
+							     i,
+							     &tmdev->sensor[i],
+							     &ths_ops);
+		if (IS_ERR(tmdev->sensor[i].tzd))
+			return PTR_ERR(tzd);
+	}
+
+	return 0;
+}
+
+static int sun8i_ths_probe(struct platform_device *pdev)
+{
+	struct ths_device *tmdev;
+	struct device *dev = &pdev->dev;
+	int ret, irq;
+
+	tmdev = devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
+	if (!tmdev)
+		return -ENOMEM;
+
+	tmdev->dev = dev;
+	platform_set_drvdata(pdev, tmdev);
+
+	ret = sun8i_ths_resource_init(tmdev);
+	if (ret)
+		return ret;
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return irq;
+
+	ret = sun50i_thermal_init(tmdev);
+	if (ret)
+		return ret;
+
+	ret = sun8i_ths_register(tmdev);
+	if (ret)
+		return ret;
+
+	/*
+	 * Avoid entering the interrupt handler, the thermal device is not
+	 * registered yet, we deffer the registration of the interrupt to
+	 * the end.
+	 */
+	ret = devm_request_threaded_irq(dev, irq, NULL,
+					sun50i_h6_irq_thread,
+					IRQF_ONESHOT, "ths", tmdev);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+static int sun8i_ths_remove(struct platform_device *pdev)
+{
+	struct ths_device *tmdev = platform_get_drvdata(pdev);
+
+	clk_disable_unprepare(tmdev->bus_clk);
+	reset_control_assert(tmdev->reset);
+
+	return 0;
+}
+
+static const struct of_device_id of_ths_match[] = {
+	{ .compatible = "allwinner,sun50i-h6-ths"},
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, of_ths_match);
+
+static struct platform_driver ths_driver = {
+	.probe = sun8i_ths_probe,
+	.remove = sun8i_ths_remove,
+	.driver = {
+		.name = "sun8i-thermal",
+		.of_match_table = of_ths_match,
+	},
+};
+module_platform_driver(ths_driver);
+
+MODULE_DESCRIPTION("Thermal sensor driver for Allwinner SOC");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
