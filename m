Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5315C1AE44
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 23:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4qSfoPP5Fpuy1PUg5u5o5qfzHkdQ7lNj82tnYEti00=; b=sfMpaBfoMrmu1n
	4B9Sn8+d+3zXfMcMlemSGbro/FS5w2eT7T5MCuRTCAxpFZgPHZW/e4Y+638Vow7YrfvcfZRyfP0v7
	a5I9cl0C3kdrmIhQydCt8IEy2uIhs2AkjZ4wRq+ZoiWUL4eZ7VIzeB2ukyK23rEssgKVT//ibOk5E
	z3HyF4SG+/4U6y4D3008KEwU/URf1OxcGCDtTlQI60JIhiFsPAO5Xaa7foaUwlDJqUKIG74tFPHVE
	bOCK4BUSxkM1rMA7s3eZ4h6nuDgqwckQE1XycrcAA2DweuTIy4wsi8Ngg0VOTTeYM28fYNyoodBD6
	vbU+6IorwBw8VuFWyYuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPwE1-00044L-SG; Sun, 12 May 2019 21:41:41 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPwDt-00043r-F2
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 21:41:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1557697288; bh=KvVnrzjnCX9/dDKPaHvh7Yf40fJwdakOs3ymGzDXz00=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UV/M7mbeE/9QoahIsi9VU7g3vTLnuw4vfxQ8FaYSsKpWUdufdUBByeFNYCuVFAomP
 o9xgsN/npGg0Pc6bb0CVBI+mOKIv4F1H/tYwQ2B1girrN0zWcF5E4WZFxN87NsSUft
 VmE4NVI2ugJhGjp/yiN97HlMwueR4v7lgUHtTS0E=
Date: Sun, 12 May 2019 23:41:28 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190512214128.qjyys3vfpwdiacib@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Yangtao Li <tiny.windzz@gmail.com>, mark.rutland@arm.com,
 daniel.lezcano@linaro.org, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, linux-pm@vger.kernel.org, wens@csie.org,
 jagan@amarulasolutions.com, andy.gross@linaro.org,
 rui.zhang@intel.com, devicetree@vger.kernel.org,
 marc.w.gonzalez@free.fr, edubezval@gmail.com,
 enric.balletbo@collabora.com, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 olof@lixom.net, davem@davemloft.net
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512133930.t5txssl7mou2gljt@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_144134_010007_80DAEF7C 
X-CRM114-Status: GOOD (  41.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Yangtao Li <tiny.windzz@gmail.com>,
 catalin.marinas@arm.com, will.deacon@arm.com, bjorn.andersson@linaro.org,
 marc.w.gonzalez@free.fr, mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, daniel.lezcano@linaro.org, wens@csie.org,
 jagan@amarulasolutions.com, andy.gross@linaro.org, rui.zhang@intel.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, edubezval@gmail.com,
 olof@lixom.net, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, enric.balletbo@collabora.com,
 davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Maxime,

On Sun, May 12, 2019 at 03:39:30PM +0200, Maxime Ripard wrote:
> Hi,
> =

> Thanks a lot for working on this!
> =

> On Sun, May 12, 2019 at 04:26:13AM -0400, Yangtao Li wrote:
> > This patch adds the support for allwinner thermal sensor, within
> > allwinner SoC. It will register sensors for thermal framework
> > and use device tree to bind cooling device.
> >
> > Based on driver code found here:
> > https://megous.com/git/linux and https://github.com/Allwinner-Homlet/H6=
-BSP4.9-linux
> =

> I wouldn't place the URL in the commit log. The commit log stays
> forever in the linux history. Git repos and branches are going away
> over time.
> =

> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  MAINTAINERS                      |   7 +
> >  drivers/thermal/Kconfig          |  14 ++
> >  drivers/thermal/Makefile         |   1 +
> >  drivers/thermal/sun50i_thermal.c | 357 +++++++++++++++++++++++++++++++
> =

> The long term goal is to support all the thermal sensors, not just the
> H6. Since that controller was introduced with the sun8i family, it
> makes more sense to use that prefix for the driver and the functions.
> =

> >  4 files changed, 379 insertions(+)
> >  create mode 100644 drivers/thermal/sun50i_thermal.c
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 3c65228e93c5..8da56582e72a 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -674,6 +674,13 @@ L:	linux-crypto@vger.kernel.org
> >  S:	Maintained
> >  F:	drivers/crypto/sunxi-ss/
> >
> > +ALLWINNER THERMAL DRIVER
> > +M:	Yangtao Li <tiny.windzz@gmail.com>
> > +L:	linux-pm@vger.kernel.org
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
> > +F:	drivers/thermal/sun50i_thermal.c
> > +
> >  ALLWINNER VPU DRIVER
> >  M:	Maxime Ripard <maxime.ripard@bootlin.com>
> >  M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> > index 653aa27a25a4..2a8d1c98c6ca 100644
> > --- a/drivers/thermal/Kconfig
> > +++ b/drivers/thermal/Kconfig
> > @@ -252,6 +252,20 @@ config SPEAR_THERMAL
> >  	  Enable this to plug the SPEAr thermal sensor driver into the Linux
> >  	  thermal framework.
> >
> > +config SUN50I_THERMAL
> > +	tristate "Allwinner sun50i thermal driver"
> > +	depends on ARCH_SUNXI || COMPILE_TEST
> > +	depends on HAS_IOMEM
> > +	depends on NVMEM
> > +	depends on OF
> > +	depends on RESET_CONTROLLER
> > +	help
> > +	  Support for the sun50i thermal sensor driver into the Linux thermal
> > +	  framework.
> > +
> > +	  To compile this driver as a module, choose M here: the
> > +	  module will be called sun50i-thermal.
> > +
> >  config ROCKCHIP_THERMAL
> >  	tristate "Rockchip thermal driver"
> >  	depends on ARCH_ROCKCHIP || COMPILE_TEST
> > diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
> > index 486d682be047..a09b30b90003 100644
> > --- a/drivers/thermal/Makefile
> > +++ b/drivers/thermal/Makefile
> > @@ -30,6 +30,7 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) +=3D devfreq_co=
oling.o
> >  # platform thermal drivers
> >  obj-y				+=3D broadcom/
> >  obj-$(CONFIG_SPEAR_THERMAL)	+=3D spear_thermal.o
> > +obj-$(CONFIG_SUN50I_THERMAL)	+=3D sun50i_thermal.o
> >  obj-$(CONFIG_ROCKCHIP_THERMAL)	+=3D rockchip_thermal.o
> >  obj-$(CONFIG_RCAR_THERMAL)	+=3D rcar_thermal.o
> >  obj-$(CONFIG_RCAR_GEN3_THERMAL)	+=3D rcar_gen3_thermal.o
> > diff --git a/drivers/thermal/sun50i_thermal.c b/drivers/thermal/sun50i_=
thermal.c
> > new file mode 100644
> > index 000000000000..3bdb3677b3d4
> > --- /dev/null
> > +++ b/drivers/thermal/sun50i_thermal.c
> > @@ -0,0 +1,357 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Thermal sensor driver for Allwinner SOC
> > + * Copyright (C) 2019 Yangtao Li
> > + *
> > + * Based on the work of Icenowy Zheng <icenowy@aosc.io>
> > + * Based on the work of Ondrej Jirman <megous@megous.com>
> > + * Based on the work of Josef Gajdusek <atx@atx.name>
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/device.h>
> > +#include <linux/module.h>
> > +#include <linux/nvmem-consumer.h>
> > +#include <linux/of_device.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +#include <linux/reset.h>
> > +#include <linux/slab.h>
> > +#include <linux/thermal.h>
> > +
> > +#define MAX_SENSOR_NUM	4
> > +
> > +#define FT_TEMP_MASK				GENMASK(11, 0)
> > +#define TEMP_CALIB_MASK				GENMASK(11, 0)
> > +#define TEMP_TO_REG				672
> > +#define CALIBRATE_DEFAULT			0x800
> > +
> > +#define SUN50I_THS_CTRL0			0x00
> > +#define SUN50I_H6_THS_ENABLE			0x04
> > +#define SUN50I_H6_THS_PC			0x08
> > +#define SUN50I_H6_THS_MFC			0x30
> > +#define SUN50I_H6_TEMP_CALIB			0xa0
> > +#define SUN50I_H6_TEMP_DATA			0xc0
> > +
> > +#define SUN50I_THS_CTRL0_T_ACQ(x)		((GENMASK(15, 0) & (x)) << 16)
> > +#define SUN50I_THS_FILTER_EN			BIT(2)
> > +#define SUN50I_THS_FILTER_TYPE(x)		(GENMASK(1, 0) & (x))
> > +#define SUN50I_H6_THS_PC_TEMP_PERIOD(x)		((GENMASK(19, 0) & (x)) << 12)
> > +
> > +/* millidegree celsius */
> > +#define SUN50I_H6_FT_DEVIATION			7000
> > +
> > +struct tsens_device;
> > +
> > +struct tsensor {
> > +	struct tsens_device		*tmdev;
> > +	struct thermal_zone_device	*tzd;
> > +	int				id;
> > +};
> > +
> > +struct sun50i_thermal_chip {
> > +	int	sensor_num;
> > +	int	offset;
> > +	int	scale;
> > +	int	ft_deviation;
> > +	int	temp_calib_base;
> > +	int	temp_data_base;
> > +	int	(*enable)(struct tsens_device *tmdev);
> > +	int	(*disable)(struct tsens_device *tmdev);
> > +};
> =

> I'm not super fond of having a lot of quirks that are not needed. If
> we ever need those quirks when adding support for a new SoC, then
> yeah, we should totally have some, but only when and if it's needed.
> =

> Otherwise, the driver is more complicated for no particular reason.
> =

> > +
> > +struct tsens_device {
> =

> IIRC the acronym used by allwinner is THS, maybe we can just use that
> as a prefix?
> =

> > +	const struct sun50i_thermal_chip	*chip;
> > +	struct device				*dev;
> > +	struct regmap				*regmap;
> > +	struct reset_control			*reset;
> > +	struct clk				*bus_clk;
> > +	struct tsensor				sensor[MAX_SENSOR_NUM];
> > +};
> > +
> > +/* Temp Unit: millidegree Celsius */
> > +static int tsens_reg2temp(struct tsens_device *tmdev,
> > +			      int reg)
> > +{
> > +	return (reg + tmdev->chip->offset) * tmdev->chip->scale;
> > +}
> > +
> > +static int tsens_get_temp(void *data, int *temp)
> > +{
> > +	struct tsensor *s =3D data;
> > +	struct tsens_device *tmdev =3D s->tmdev;
> > +	int val;
> > +
> > +	regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
> > +		    0x4 * s->id, &val);
> > +
> > +	if (unlikely(val =3D=3D 0))
> > +		return -EBUSY;
> =

> I'm not sure why a val equals to 0 would be associated with EBUSY?

Thermal zone driver can (will) call get_temp before we got the
first interrupt and the thermal data. In that case val will be 0.

Resulting in:

 (val + offset) * scale =3D (-2794) * -67 =3D 187198

187=B0C and immediate shutdown during boot - based on cirtical
temperature being reached.

Busy here means, get_temp does not yet have data. Thermal zone
driver just reports any error to dmesg output.

	o.

> Also, it's not in a fast path, so you can drop the unlikely. Chances
> are it's not that unlikely anyway.
> =

> > +	*temp =3D tsens_reg2temp(tmdev, val);
> > +	if (tmdev->chip->ft_deviation)
> > +		*temp +=3D tmdev->chip->ft_deviation;
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct thermal_zone_of_device_ops tsens_ops =3D {
> > +	.get_temp =3D tsens_get_temp,
> > +};
> > +
> > +static const struct regmap_config config =3D {
> > +	.reg_bits =3D 32,
> > +	.val_bits =3D 32,
> > +	.reg_stride =3D 4,
> > +	.fast_io =3D true,
> > +};
> > +
> > +static int tsens_init(struct tsens_device *tmdev)
> > +{
> > +	struct device *dev =3D tmdev->dev;
> > +	struct platform_device *pdev =3D to_platform_device(dev);
> > +	struct resource *mem;
> > +	void __iomem *base;
> > +
> > +	mem =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	base =3D devm_ioremap_resource(dev, mem);
> > +	if (IS_ERR(base))
> > +		return PTR_ERR(base);
> > +
> > +	tmdev->regmap =3D devm_regmap_init_mmio_clk(dev, "bus",
> > +						  base,
> > +						  &config);
> > +	if (IS_ERR(tmdev->regmap))
> > +		return PTR_ERR(tmdev->regmap);
> > +
> > +	tmdev->reset =3D devm_reset_control_get(dev, "bus");
> > +	if (IS_ERR(tmdev->reset))
> > +		return PTR_ERR(tmdev->reset);
> > +
> > +	tmdev->bus_clk =3D devm_clk_get(&pdev->dev, "bus");
> > +	if (IS_ERR(tmdev->bus_clk))
> > +		return PTR_ERR(tmdev->bus_clk);
> =

> You don't need to get that clock if regmap has it already.
> =

> > +	return 0;
> > +}
> > +
> > +/*
> > + * Even if the external calibration data stored in sid is not accessib=
le,
> > + * the THS hardware can still work, although the data won't be so accu=
rate.
> > + * The default value of calibration register is 0x800 for every sensor,
> > + * and the calibration value is usually 0x7xx or 0x8xx, so they won't =
be
> > + * away from the default value for a lot.
> > + *
> > + * So here we do not return error if the calibartion data is
> > + * not available, except the probe needs deferring.
> > + */
> > +static int tsens_calibrate(struct tsens_device *tmdev)
> > +{
> > +	struct nvmem_cell *calcell;
> > +	struct device *dev =3D tmdev->dev;
> > +	u16 *caldata;
> > +	size_t callen;
> > +	int ft_temp;
> > +	int i =3D 0;
> > +
> > +	calcell =3D devm_nvmem_cell_get(dev, "calib");
> > +	if (IS_ERR(calcell)) {
> > +		if (PTR_ERR(calcell) =3D=3D -EPROBE_DEFER)
> > +			return -EPROBE_DEFER;
> > +
> > +		goto out;
> > +	}
> > +
> > +	caldata =3D nvmem_cell_read(calcell, &callen);
> > +	if (IS_ERR(caldata))
> > +		goto out;
> > +
> > +	if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num)
> > +		goto out_free;
> =

> The first part of your or isn't obvious and should have a comment.
> =

> The second part shouldn't return 0 but an error
> =

> > +
> > +	/*
> > +	 * The calbration data on H6 is stored as temperature-value
> > +	 * pair when being filled at factory test stage.
> > +	 * The unit of stored FT temperature is 0.1 degreee celusis.
> > +	 */
> > +	ft_temp =3D caldata[0] & FT_TEMP_MASK;
> > +
> > +	for (; i < tmdev->chip->sensor_num; i++) {
> =

> Usually you would initialize i here, and not when declared.
> =

> > +		int reg =3D (int)caldata[i + 1];
> > +		int sensor_temp =3D tsens_reg2temp(tmdev, reg);
> > +		int delta, cdata, calib_offest;
> > +
> > +		/*
> > +		 * To calculate the calibration value:
> > +		 *
> > +		 * X(in Celsius) =3D Ts - ft_temp
> > +		 * delta =3D X * 10000 / TEMP_TO_REG
> > +		 * cdata =3D CALIBRATE_DEFAULT - delta
> > +		 *
> > +		 * cdata: calibration value
> > +		 */
> > +		delta =3D (sensor_temp - ft_temp * 100) * 10 / TEMP_TO_REG;
> > +		cdata =3D CALIBRATE_DEFAULT - delta;
> > +		if (cdata & ~TEMP_CALIB_MASK) {
> > +			dev_warn(dev, "sensor%d calibration value error", i);
> > +
> > +			continue;
> > +		}
> > +
> > +		calib_offest =3D tmdev->chip->temp_calib_base + (i / 2) * 0x4;
> > +
> > +		if (i % 2) {
> > +			int val;
> > +
> > +			regmap_read(tmdev->regmap, calib_offest, &val);
> > +			val =3D (val & TEMP_CALIB_MASK) | (cdata << 16);
> > +			regmap_write(tmdev->regmap, calib_offest, val);
> > +		} else
> > +			regmap_write(tmdev->regmap, calib_offest, cdata);
> =

> This should have brackets as well
> =

> > +	}
> > +
> > +out_free:
> > +	kfree(caldata);
> > +out:
> > +	return 0;
> > +}
> > +
> > +static int tsens_register(struct tsens_device *tmdev)
> > +{
> > +	struct thermal_zone_device *tzd;
> > +	int i =3D 0;
> > +
> > +	for (; i < tmdev->chip->sensor_num; i++) {
> =

> Ditto
> =

> > +		tmdev->sensor[i].tmdev =3D tmdev;
> > +		tmdev->sensor[i].id =3D i;
> > +		tmdev->sensor[i].tzd =3D devm_thermal_zone_of_sensor_register(
> > +					tmdev->dev, i, &tmdev->sensor[i],
> > +					&tsens_ops);
> > +		if (IS_ERR(tmdev->sensor[i].tzd))
> > +			return PTR_ERR(tzd);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int tsens_probe(struct platform_device *pdev)
> > +{
> > +	struct tsens_device *tmdev;
> > +	struct device *dev =3D &pdev->dev;
> > +	int ret;
> > +
> > +	tmdev =3D devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
> > +	if (!tmdev)
> > +		return -ENOMEM;
> > +
> > +	tmdev->dev =3D dev;
> > +	tmdev->chip =3D of_device_get_match_data(&pdev->dev);
> > +	if (!tmdev->chip)
> > +		return -EINVAL;
> > +
> > +	ret =3D tsens_init(tmdev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret =3D tsens_register(tmdev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret =3D tmdev->chip->enable(tmdev);
> > +	if (ret)
> > +		return ret;
> >
> > +	platform_set_drvdata(pdev, tmdev);
> =

> Your registration should be the very last thing you do. Otherwise, you
> have a small window where the get_temp callback can be called, but the
> driver will not be functional yet.
> =

> > +	return ret;
> > +}
> > +
> > +static int tsens_remove(struct platform_device *pdev)
> > +{
> > +	struct tsens_device *tmdev =3D platform_get_drvdata(pdev);
> > +
> > +	tmdev->chip->disable(tmdev);
> > +
> > +	return 0;
> > +}
> > +
> > +static int sun50i_thermal_enable(struct tsens_device *tmdev)
> > +{
> > +	int ret, val;
> > +
> > +	ret =3D reset_control_deassert(tmdev->reset);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret =3D clk_prepare_enable(tmdev->bus_clk);
> > +	if (ret)
> > +		goto assert_reset;
> =

> This is done by regmap as well
> =

> > +	ret =3D tsens_calibrate(tmdev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/*
> > +	 * clkin =3D 24MHz
> > +	 * T acquire =3D clkin / (SUN50I_THS_CTRL0_T_ACQ + 1)
> > +	 *           =3D 20us
> > +	 */
> > +	regmap_write(tmdev->regmap, SUN50I_THS_CTRL0,
> > +		     SUN50I_THS_CTRL0_T_ACQ(479));
> > +	/* average over 4 samples */
> > +	regmap_write(tmdev->regmap, SUN50I_H6_THS_MFC,
> > +		     SUN50I_THS_FILTER_EN |
> > +		     SUN50I_THS_FILTER_TYPE(1));
> > +	/* period =3D (SUN50I_H6_THS_PC_TEMP_PERIOD + 1) * 4096 / clkin; ~10m=
s */
> > +	regmap_write(tmdev->regmap, SUN50I_H6_THS_PC,
> > +		     SUN50I_H6_THS_PC_TEMP_PERIOD(58));
> > +	/* enable sensor */
> > +	val =3D GENMASK(tmdev->chip->sensor_num - 1, 0);
> > +	regmap_write(tmdev->regmap, SUN50I_H6_THS_ENABLE, val);
> > +
> > +	return 0;
> > +
> > +assert_reset:
> > +	reset_control_assert(tmdev->reset);
> > +
> > +	return ret;
> =

> Can't we do that with runtime_pm?
> =

> Thanks!
> Maxime
> =

> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
