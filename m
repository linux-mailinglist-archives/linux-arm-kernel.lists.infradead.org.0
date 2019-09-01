Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4540A4C29
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 23:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64x/oaO9iR3cF373pCb52zBnv7PQxZ6megyimCMXVaE=; b=HJT5XnzubRsaTa
	VWv7o/yKxl3vfYyCQkNIaCbtHUfnNZwMnr4enxJTyvfPQn3RfeD+XtoKgjScj1dMvrNNGAiqu70UL
	BVGR1ixhna3GhBHm06A14m9WCWvKvKsaJS9kkm469zdxGEodSpNvPP1Vn4Wo3TihnoYv441tnoQ7c
	0N/nWFJ1RfB97c1braYW3Fnf9a7ZBz8+dzHJ7WlmZk7m8B1Ckvd7RWpJexOQvkgQwPQ2icz5dkerh
	9H5X9MpC+QBatAzwI3lWXfekfX3zLuu3TWqoe/2cUwwAfg//slYifkJae5oQ+ft1Gx/UvmyLbSHxZ
	t7looTA+WMp1Al22e0iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4X1R-0003Ba-L9; Sun, 01 Sep 2019 21:04:29 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4X1F-0003Am-GQ
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 21:04:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1567371853; bh=qtLM+t5SGCemrSRsWJ/oDMWbs/OBXyriPG03WwIYeH4=;
 h=Date:From:To:Cc:Subject:References:From;
 b=pR+S9qpuFTIdANhj6Vq+zZ6GGI4z54OsLUJxWMKc3e7yOkj+fogzovvmHB00OP+wl
 +/z3bP6cqqCa36vDjLSUm4RrK21kqZE9cwtHkRTtWK2NCyEf/CGVfOXQXjonhEFxZT
 TnymfX1ANTYfcKhELvSIQNWG6agSs7voUcQoYOJw=
Date: Sun, 1 Sep 2019 23:04:13 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v5 01/18] thermal: sun8i: add thermal driver for h6
Message-ID: <20190901210413.zvjbfemloh3rwukb@core.my.home>
Mail-Followup-To: Yangtao Li <tiny.windzz@gmail.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, maxime.ripard@bootlin.com, wens@csie.org,
 mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190810052829.6032-2-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_140418_040053_8E54BB28 
X-CRM114-Status: GOOD (  33.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 maxime.ripard@bootlin.com, gregkh@linuxfoundation.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 wens@csie.org, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 mchehab+samsung@kernel.org, rui.zhang@intel.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Sat, Aug 10, 2019 at 05:28:12AM +0000, Yangtao Li wrote:
> This patch adds the support for allwinner thermal sensor, within
> allwinner SoC. It will register sensors for thermal framework
> and use device tree to bind cooling device.

I've tested this driver on H6 SoC, and it reports temperatures that are
way too high. It overestimates temperature by around 15-25=B0C.

I'm measuring the SoC temperature with IR thermometer (it reports temperatu=
res
slightly lower than real ones 2-3=B0C, when measuring black surfaces).

I've found out that ORing 0x2f to SUN50I_THS_CTRL0 will correct this.

This value is undocummented, but present in BSP:

See: https://megous.com/git/linux/tree/drivers/thermal/sunxi_thermal/sunxi_=
thermal_sensor/sunxi_ths_driver.h?h=3Dh6-4.9-bsp#n561

With this value set, the driver reports values 7=B0C above package temperat=
ure,
which seems about right.

regards,
	o.

> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  MAINTAINERS                     |   7 +
>  drivers/thermal/Kconfig         |  14 ++
>  drivers/thermal/Makefile        |   1 +
>  drivers/thermal/sun8i_thermal.c | 399 ++++++++++++++++++++++++++++++++
>  4 files changed, 421 insertions(+)
>  create mode 100644 drivers/thermal/sun8i_thermal.c
> =

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 47800d32cfbc..89dc43f4064d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -682,6 +682,13 @@ L:	linux-crypto@vger.kernel.org
>  S:	Maintained
>  F:	drivers/crypto/sunxi-ss/
>  =

> +ALLWINNER THERMAL DRIVER
> +M:	Yangtao Li <tiny.windzz@gmail.com>
> +L:	linux-pm@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> +F:	drivers/thermal/sun8i_thermal.c
> +
>  ALLWINNER VPU DRIVER
>  M:	Maxime Ripard <maxime.ripard@bootlin.com>
>  M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> index 9966364a6deb..f8b73b32b92d 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -262,6 +262,20 @@ config SPEAR_THERMAL
>  	  Enable this to plug the SPEAr thermal sensor driver into the Linux
>  	  thermal framework.
>  =

> +config SUN8I_THERMAL
> +	tristate "Allwinner sun8i thermal driver"
> +	depends on ARCH_SUNXI || COMPILE_TEST
> +	depends on HAS_IOMEM
> +	depends on NVMEM
> +	depends on OF
> +	depends on RESET_CONTROLLER
> +	help
> +	  Support for the sun8i thermal sensor driver into the Linux thermal
> +	  framework.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called sun8i-thermal.
> +
>  config ROCKCHIP_THERMAL
>  	tristate "Rockchip thermal driver"
>  	depends on ARCH_ROCKCHIP || COMPILE_TEST
> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
> index 74a37c7f847a..fa6f8b206281 100644
> --- a/drivers/thermal/Makefile
> +++ b/drivers/thermal/Makefile
> @@ -31,6 +31,7 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) +=3D devfreq_cool=
ing.o
>  obj-y				+=3D broadcom/
>  obj-$(CONFIG_THERMAL_MMIO)		+=3D thermal_mmio.o
>  obj-$(CONFIG_SPEAR_THERMAL)	+=3D spear_thermal.o
> +obj-$(CONFIG_SUN8I_THERMAL)     +=3D sun8i_thermal.o
>  obj-$(CONFIG_ROCKCHIP_THERMAL)	+=3D rockchip_thermal.o
>  obj-$(CONFIG_RCAR_THERMAL)	+=3D rcar_thermal.o
>  obj-$(CONFIG_RCAR_GEN3_THERMAL)	+=3D rcar_gen3_thermal.o
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_ther=
mal.c
> new file mode 100644
> index 000000000000..2ce36fa3fec3
> --- /dev/null
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -0,0 +1,399 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Thermal sensor driver for Allwinner SOC
> + * Copyright (C) 2019 Yangtao Li
> + *
> + * Based on the work of Icenowy Zheng <icenowy@aosc.io>
> + * Based on the work of Ondrej Jirman <megous@megous.com>
> + * Based on the work of Josef Gajdusek <atx@atx.name>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/device.h>
> +#include <linux/interrupt.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-consumer.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +#include <linux/thermal.h>
> +
> +#define MAX_SENSOR_NUM	4
> +
> +#define SUN50I_H6_SENSOR_NUM	2
> +#define SUN50I_H6_OFFSET	-2794
> +#define SUN50I_H6_SCALE		-67
> +
> +#define FT_TEMP_MASK				GENMASK(11, 0)
> +#define TEMP_CALIB_MASK				GENMASK(11, 0)
> +#define TEMP_TO_REG				672
> +#define CALIBRATE_DEFAULT			0x800
> +
> +#define SUN50I_THS_CTRL0			0x00
> +#define SUN50I_H6_THS_ENABLE			0x04
> +#define SUN50I_H6_THS_PC			0x08
> +#define SUN50I_H6_THS_DIC			0x10
> +#define SUN50I_H6_THS_DIS			0x20
> +#define SUN50I_H6_THS_MFC			0x30
> +#define SUN50I_H6_THS_TEMP_CALIB		0xa0
> +#define SUN50I_H6_THS_TEMP_DATA			0xc0
> +
> +#define SUN50I_THS_CTRL0_T_ACQ(x)		((GENMASK(15, 0) & (x)) << 16)
> +#define SUN50I_THS_FILTER_EN			BIT(2)
> +#define SUN50I_THS_FILTER_TYPE(x)		(GENMASK(1, 0) & (x))
> +#define SUN50I_H6_THS_PC_TEMP_PERIOD(x)		((GENMASK(19, 0) & (x)) << 12)
> +#define SUN50I_H6_THS_DATA_IRQ_STS(x)		BIT(x)
> +
> +/* millidegree celsius */
> +#define SUN50I_H6_FT_DEVIATION			7000
> +
> +struct ths_device;
> +
> +struct tsensor {
> +	struct ths_device		*tmdev;
> +	struct thermal_zone_device	*tzd;
> +	int				id;
> +};
> +
> +struct ths_device {
> +	struct device				*dev;
> +	struct regmap				*regmap;
> +	struct reset_control			*reset;
> +	struct clk				*bus_clk;
> +	struct tsensor				sensor[MAX_SENSOR_NUM];
> +};
> +
> +/* Temp Unit: millidegree Celsius */
> +static int sun8i_ths_reg2temp(struct ths_device *tmdev,
> +			      int reg)
> +{
> +	return (reg + SUN50I_H6_OFFSET) * SUN50I_H6_SCALE;
> +}
> +
> +static int sun8i_ths_get_temp(void *data, int *temp)
> +{
> +	struct tsensor *s =3D data;
> +	struct ths_device *tmdev =3D s->tmdev;
> +	int val;
> +
> +	regmap_read(tmdev->regmap, SUN50I_H6_THS_TEMP_DATA +
> +		    0x4 * s->id, &val);
> +
> +	/* ths have no data yet */
> +	if (!val)
> +		return -EAGAIN;
> +
> +	*temp =3D sun8i_ths_reg2temp(tmdev, val);
> +	/*
> +	 * XX - According to the original sdk, there are some platforms(rarely)
> +	 * that add a fixed offset value after calculating the temperature
> +	 * value. We can't simply put it on the formula for calculating the
> +	 * temperature above, because the formula for calculating the
> +	 * temperature above is also used when the sensor is calibrated. If
> +	 * do this, the correct calibration formula is hard to know.
> +	 */
> +	*temp +=3D SUN50I_H6_FT_DEVIATION;
> +
> +	return 0;
> +}
> +
> +static const struct thermal_zone_of_device_ops ths_ops =3D {
> +	.get_temp =3D sun8i_ths_get_temp,
> +};
> +
> +static const struct regmap_config config =3D {
> +	.reg_bits =3D 32,
> +	.val_bits =3D 32,
> +	.reg_stride =3D 4,
> +	.fast_io =3D true,
> +};
> +
> +static irqreturn_t sun50i_h6_irq_thread(int irq, void *data)
> +{
> +	struct ths_device *tmdev =3D data;
> +	int i, state;
> +
> +	regmap_read(tmdev->regmap, SUN50I_H6_THS_DIS, &state);
> +
> +	for (i =3D 0; i < SUN50I_H6_SENSOR_NUM; i++) {
> +
> +		if (state & SUN50I_H6_THS_DATA_IRQ_STS(i)) {
> +			/* clear data irq pending */
> +			regmap_write(tmdev->regmap, SUN50I_H6_THS_DIS,
> +				     SUN50I_H6_THS_DATA_IRQ_STS(i));
> +
> +			thermal_zone_device_update(tmdev->sensor[i].tzd,
> +						   THERMAL_EVENT_UNSPECIFIED);
> +		}
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int sun50i_ths_calibrate(struct ths_device *tmdev)
> +{
> +	struct nvmem_cell *calcell;
> +	struct device *dev =3D tmdev->dev;
> +	u16 *caldata;
> +	size_t callen;
> +	int ft_temp;
> +	int i, ret =3D 0;
> +
> +	calcell =3D devm_nvmem_cell_get(dev, "calib");
> +	if (IS_ERR(calcell)) {
> +		if (PTR_ERR(calcell) =3D=3D -EPROBE_DEFER)
> +			return -EPROBE_DEFER;
> +		/*
> +		 * Even if the external calibration data stored in sid is
> +		 * not accessible, the THS hardware can still work, although
> +		 * the data won't be so accurate.
> +		 *
> +		 * The default value of calibration register is 0x800 for
> +		 * every sensor, and the calibration value is usually 0x7xx
> +		 * or 0x8xx, so they won't be away from the default value
> +		 * for a lot.
> +		 *
> +		 * So here we do not return error if the calibartion data is
> +		 * not available, except the probe needs deferring.
> +		 */
> +		goto out;
> +	}
> +
> +	caldata =3D nvmem_cell_read(calcell, &callen);
> +	if (IS_ERR(caldata)) {
> +		ret =3D PTR_ERR(caldata);
> +		goto out;
> +	}
> +
> +	if (!caldata[0] || callen < 2 + 2 * SUN50I_H6_SENSOR_NUM) {
> +		ret =3D -EINVAL;
> +		goto out_free;
> +	}
> +
> +	/*
> +	 * efuse layout:
> +	 *
> +	 *	0   11  16	 32
> +	 *	+-------+-------+-------+
> +	 *	|temp|  |sensor0|sensor1|
> +	 *	+-------+-------+-------+
> +	 *
> +	 * The calibration data on the H6 is the ambient temperature and
> +	 * sensor values that are filled during the factory test stage.
> +	 *
> +	 * The unit of stored FT temperature is 0.1 degreee celusis.
> +	 * Through the stored ambient temperature and the data read
> +	 * by the sensor, after a certain calculation, the calibration
> +	 * value to be compensated can be obtained.
> +	 */
> +	ft_temp =3D caldata[0] & FT_TEMP_MASK;
> +
> +	for (i =3D 0; i < SUN50I_H6_SENSOR_NUM; i++) {
> +		int reg =3D (int)caldata[i + 1];
> +		int sensor_temp =3D sun8i_ths_reg2temp(tmdev, reg);
> +		int delta, cdata, offset;
> +
> +		/*
> +		 * To calculate the calibration value:
> +		 *
> +		 * X(in Celsius) =3D Ts - ft_temp
> +		 * delta =3D X * 10000 / TEMP_TO_REG
> +		 * cdata =3D CALIBRATE_DEFAULT - delta
> +		 *
> +		 * cdata: calibration value
> +		 */
> +		delta =3D (sensor_temp - ft_temp * 100) * 10 / TEMP_TO_REG;
> +		cdata =3D CALIBRATE_DEFAULT - delta;
> +		if (cdata & ~TEMP_CALIB_MASK) {
> +			/*
> +			 * Calibration value more than 12-bit, but calibration
> +			 * register is 12-bit. In this case, ths hardware can
> +			 * still work without calibration, although the data
> +			 * won't be so accurate.
> +			 */
> +			dev_warn(dev, "sensor%d is not calibrated.\n", i);
> +
> +			continue;
> +		}
> +
> +		offset =3D (i % 2) << 4;
> +		regmap_update_bits(tmdev->regmap,
> +				   SUN50I_H6_THS_TEMP_CALIB + ((i >> 1) * 4),
> +				   0xfff << offset,
> +				   cdata << offset);
> +	}
> +
> +out_free:
> +	kfree(caldata);
> +out:
> +	return ret;
> +}
> +
> +static int sun8i_ths_resource_init(struct ths_device *tmdev)
> +{
> +	struct device *dev =3D tmdev->dev;
> +	struct platform_device *pdev =3D to_platform_device(dev);
> +	struct resource *mem;
> +	void __iomem *base;
> +	int ret;
> +
> +	mem =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	base =3D devm_ioremap_resource(dev, mem);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	tmdev->regmap =3D devm_regmap_init_mmio(dev, base, &config);
> +	if (IS_ERR(tmdev->regmap))
> +		return PTR_ERR(tmdev->regmap);
> +
> +	tmdev->reset =3D devm_reset_control_get(dev, 0);
> +	if (IS_ERR(tmdev->reset))
> +		return PTR_ERR(tmdev->reset);
> +
> +	tmdev->bus_clk =3D devm_clk_get(&pdev->dev, "bus");
> +	if (IS_ERR(tmdev->bus_clk))
> +		return PTR_ERR(tmdev->bus_clk);
> +
> +	ret =3D reset_control_deassert(tmdev->reset);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D clk_prepare_enable(tmdev->bus_clk);
> +	if (ret)
> +		goto assert_reset;
> +
> +	ret =3D sun50i_ths_calibrate(tmdev);
> +	if (ret)
> +		goto bus_disable;
> +
> +	return 0;
> +
> +bus_disable:
> +	clk_disable_unprepare(tmdev->bus_clk);
> +assert_reset:
> +	reset_control_assert(tmdev->reset);
> +
> +	return ret;
> +}
> +
> +static int sun50i_h6_thermal_init(struct ths_device *tmdev)
> +{
> +	int val;
> +
> +	/*
> +	 * clkin =3D 24MHz
> +	 * T acquire =3D clkin / (x + 1)
> +	 *           =3D 20us
> +	 */
> +	regmap_write(tmdev->regmap, SUN50I_THS_CTRL0,
> +		     SUN50I_THS_CTRL0_T_ACQ(479));
> +	/* average over 4 samples */
> +	regmap_write(tmdev->regmap, SUN50I_H6_THS_MFC,
> +		     SUN50I_THS_FILTER_EN |
> +		     SUN50I_THS_FILTER_TYPE(1));
> +	/* period =3D (x + 1) * 4096 / clkin; ~10ms */
> +	regmap_write(tmdev->regmap, SUN50I_H6_THS_PC,
> +		     SUN50I_H6_THS_PC_TEMP_PERIOD(58));
> +	/* enable sensor */
> +	val =3D GENMASK(SUN50I_H6_SENSOR_NUM - 1, 0);
> +	regmap_write(tmdev->regmap, SUN50I_H6_THS_ENABLE, val);
> +	/* thermal data interrupt enable */
> +	val =3D GENMASK(SUN50I_H6_SENSOR_NUM - 1, 0);
> +	regmap_write(tmdev->regmap, SUN50I_H6_THS_DIC, val);
> +
> +	return 0;
> +}
> +
> +static int sun8i_ths_register(struct ths_device *tmdev)
> +{
> +	struct thermal_zone_device *tzd;
> +	int i;
> +
> +	for (i =3D 0; i < SUN50I_H6_SENSOR_NUM; i++) {
> +		tmdev->sensor[i].tmdev =3D tmdev;
> +		tmdev->sensor[i].id =3D i;
> +		tmdev->sensor[i].tzd =3D
> +			devm_thermal_zone_of_sensor_register(tmdev->dev,
> +							     i,
> +							     &tmdev->sensor[i],
> +							     &ths_ops);
> +		if (IS_ERR(tmdev->sensor[i].tzd))
> +			return PTR_ERR(tzd);
> +	}
> +
> +	return 0;
> +}
> +
> +static int sun8i_ths_probe(struct platform_device *pdev)
> +{
> +	struct ths_device *tmdev;
> +	struct device *dev =3D &pdev->dev;
> +	int ret, irq;
> +
> +	tmdev =3D devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
> +	if (!tmdev)
> +		return -ENOMEM;
> +
> +	tmdev->dev =3D dev;
> +	platform_set_drvdata(pdev, tmdev);
> +
> +	ret =3D sun8i_ths_resource_init(tmdev);
> +	if (ret)
> +		return ret;
> +
> +	irq =3D platform_get_irq(pdev, 0);
> +	if (irq < 0)
> +		return irq;
> +
> +	ret =3D sun50i_h6_thermal_init(tmdev);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D sun8i_ths_register(tmdev);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * Avoid entering the interrupt handler, the thermal device is not
> +	 * registered yet, we deffer the registration of the interrupt to
> +	 * the end.
> +	 */
> +	ret =3D devm_request_threaded_irq(dev, irq, NULL,
> +					sun50i_h6_irq_thread,
> +					IRQF_ONESHOT, "ths", tmdev);
> +	if (ret)
> +		return ret;
> +
> +	return ret;
> +}
> +
> +static int sun8i_ths_remove(struct platform_device *pdev)
> +{
> +	struct ths_device *tmdev =3D platform_get_drvdata(pdev);
> +
> +	clk_disable_unprepare(tmdev->bus_clk);
> +	reset_control_assert(tmdev->reset);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id of_ths_match[] =3D {
> +	{ .compatible =3D "allwinner,sun50i-h6-ths"},
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, of_ths_match);
> +
> +static struct platform_driver ths_driver =3D {
> +	.probe =3D sun8i_ths_probe,
> +	.remove =3D sun8i_ths_remove,
> +	.driver =3D {
> +		.name =3D "sun8i-thermal",
> +		.of_match_table =3D of_ths_match,
> +	},
> +};
> +module_platform_driver(ths_driver);
> +
> +MODULE_DESCRIPTION("Thermal sensor driver for Allwinner SOC");
> +MODULE_LICENSE("GPL v2");
> -- =

> 2.17.1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
