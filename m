Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9381D2B526
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z5Sw7qjGdW9O0uhH8cFpmy+giBIa3wdCXqO44thmTzo=; b=sdWXGtzx7XMpuNj8OLEIkfM18
	ngqyhJCmOOgoQDeTP7AxTs13wpcXTOLqM1MhhdPAZMvOxIFLrepT5mbbsffVU5miw67Fw7T3j539E
	9XKGEwRsqE5cE79Wg5Zs/XwpkS5GMIj4mGLvXdFZxcJ36o/wF/FGeHyKvrIjecEu+QoUoFD4ZmQtp
	c1CZ/b9aFbZ/cNsMAv8XK7pVcgPRt+dUFX6wSQzosX6cGwLpJsEfc5JGsf/K5UtO9D2g6sW9j0CXL
	qq8CTeKfdu2YWIfqr61CrJCDyZBlt+paNxS//w3Uq8MtA5oxarw1IDNvcXRz3OZl8hZ0cI2Z9HwjL
	Ah0tqEDng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEjh-0006up-4R; Mon, 27 May 2019 12:28:17 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEjP-0006hm-Sh
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:28:06 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id B44F240009;
 Mon, 27 May 2019 12:27:52 +0000 (UTC)
Date: Mon, 27 May 2019 14:27:52 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
Message-ID: <20190527122752.uc7q6zkjti3zag4q@flea>
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190525181329.18657-2-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_052800_654058_3FEAA3BC 
X-CRM114-Status: GOOD (  38.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 wens@csie.org, robh+dt@kernel.org, mchehab+samsung@kernel.org,
 rui.zhang@intel.com, paulmck@linux.ibm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4396700827870860000=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4396700827870860000==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p2un6fbcfahwxc7q"
Content-Disposition: inline


--p2un6fbcfahwxc7q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

Thanks for submitting a new version

On Sat, May 25, 2019 at 02:13:27PM -0400, Yangtao Li wrote:
> This patch adds the support for allwinner thermal sensor, within
> allwinner SoC. It will register sensors for thermal framework
> and use device tree to bind cooling device.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  MAINTAINERS                     |   7 +
>  drivers/thermal/Kconfig         |  14 +
>  drivers/thermal/Makefile        |   1 +
>  drivers/thermal/sun8i_thermal.c | 437 ++++++++++++++++++++++++++++++++
>  4 files changed, 459 insertions(+)
>  create mode 100644 drivers/thermal/sun8i_thermal.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2336dd26ece4..d312f9eecf0d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -674,6 +674,13 @@ L:	linux-crypto@vger.kernel.org
>  S:	Maintained
>  F:	drivers/crypto/sunxi-ss/
>
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
> index 9966364a6deb..e5465053d66f 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -262,6 +262,20 @@ config SPEAR_THERMAL
>  	  Enable this to plug the SPEAr thermal sensor driver into the Linux
>  	  thermal framework.
>
> +config SUN8I_THERMAL
> +	tristate "Allwinner sun8i thermal driver"
> +	depends on ARCH_SUNXI || COMPILE_TEST
> +	depends on HAS_IOMEM
> +	depends on NVMEM_SUNXI_SID

Do you? It looks from your binding as if it's optional. Also, it's
pretty uncommon to depend on a given driver, usually you'll want to
depend on the framework instead.

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
> @@ -31,6 +31,7 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
>  obj-y				+= broadcom/
>  obj-$(CONFIG_THERMAL_MMIO)		+= thermal_mmio.o
>  obj-$(CONFIG_SPEAR_THERMAL)	+= spear_thermal.o
> +obj-$(CONFIG_SUN8I_THERMAL)     += sun8i_thermal.o
>  obj-$(CONFIG_ROCKCHIP_THERMAL)	+= rockchip_thermal.o
>  obj-$(CONFIG_RCAR_THERMAL)	+= rcar_thermal.o
>  obj-$(CONFIG_RCAR_GEN3_THERMAL)	+= rcar_gen3_thermal.o
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> new file mode 100644
> index 000000000000..a9cc2197f4cb
> --- /dev/null
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -0,0 +1,437 @@
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
> +#include <linux/wait.h>
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
> +	wait_queue_head_t		wait_queue;
> +};
> +
> +struct ths_thermal_chip {
> +	int		sensor_num;
> +	int		offset;
> +	int		scale;
> +	int		ft_deviation;
> +	int		temp_calib_base;
> +	int		temp_data_base;
> +	int		(*calibrate)(struct ths_device *tmdev);
> +	int		(*init)(struct ths_device *tmdev);
> +	irqreturn_t	(*irq_thread)(int irq, void *data);
> +};

Again, you should remove these quirks structure at the moment and only
deal with the H6.

> +struct ths_device {
> +	const struct ths_thermal_chip		*chip;
> +	struct device				*dev;
> +	struct regmap				*regmap;
> +	struct reset_control			*reset;
> +	struct clk				*bus_clk;
> +	struct tsensor				sensor[MAX_SENSOR_NUM];
> +	int					data_ready;
> +};
> +
> +/* Temp Unit: millidegree Celsius */
> +static int sun8i_ths_reg2temp(struct ths_device *tmdev,
> +			      int reg)
> +{
> +	return (reg + tmdev->chip->offset) * tmdev->chip->scale;
> +}
> +
> +static int sun8i_ths_get_temp(void *data, int *temp)
> +{
> +	struct tsensor *s = data;
> +	struct ths_device *tmdev = s->tmdev;
> +	int val;
> +
> +	wait_event(s->wait_queue, tmdev->data_ready & BIT(s->id));
> +	tmdev->data_ready &= ~BIT(s->id);
> +
> +	regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
> +		    0x4 * s->id, &val);
> +
> +	*temp = sun8i_ths_reg2temp(tmdev, val);
> +	/*
> +	 * XX - According to the original sdk, there are some platforms(rarely)
> +	 * that add a fixed offset value after calculating the temperature
> +	 * value. We can't simply put it on the formula for calculating the
> +	 * temperature above, because the formula for calculating the
> +	 * temperature above is also used when the sensor is calibrated. If
> +	 * do this, the correct calibration formula is hard to know.
> +	 */
> +	if (tmdev->chip->ft_deviation)
> +		*temp += tmdev->chip->ft_deviation;
> +
> +	return 0;
> +}
> +
> +static const struct thermal_zone_of_device_ops ths_ops = {
> +	.get_temp = sun8i_ths_get_temp,
> +};
> +
> +static const struct regmap_config config = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.fast_io = true,
> +};
> +
> +static irqreturn_t sun50i_h6_irq_thread(int irq, void *data)
> +{
> +	wait_queue_head_t *data_wait;
> +	struct ths_device *tmdev = data;
> +	int i, state;
> +
> +	regmap_read(tmdev->regmap, SUN50I_H6_THS_DIS, &state);
> +
> +	for (i = 0; i < tmdev->chip->sensor_num; i++) {
> +		data_wait = &tmdev->sensor[i].wait_queue;

You're only using data_wait in that scope, so you should define it
here.

> +
> +		if (state & SUN50I_H6_THS_DATA_IRQ_STS(i)) {
> +			/* clear data irq pending */
> +			regmap_write(tmdev->regmap, SUN50I_H6_THS_DIS,
> +				     SUN50I_H6_THS_DATA_IRQ_STS(i));
> +
> +			tmdev->data_ready |= BIT(i);
> +			wake_up(data_wait);
> +		}
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int sun8i_ths_resource_init(struct ths_device *tmdev)
> +{
> +	struct device *dev = tmdev->dev;
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct resource *mem;
> +	void __iomem *base;
> +	int ret, irq;
> +
> +	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	base = devm_ioremap_resource(dev, mem);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	tmdev->regmap = devm_regmap_init_mmio(dev, base, &config);
> +	if (IS_ERR(tmdev->regmap))
> +		return PTR_ERR(tmdev->regmap);
> +
> +	tmdev->reset = devm_reset_control_get(dev, 0);
> +	if (IS_ERR(tmdev->reset))
> +		return PTR_ERR(tmdev->reset);
> +
> +	tmdev->bus_clk = devm_clk_get(&pdev->dev, "bus");
> +	if (IS_ERR(tmdev->bus_clk))
> +		return PTR_ERR(tmdev->bus_clk);
> +
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0)
> +		return irq;
> +
> +	ret = devm_request_threaded_irq(dev, irq, NULL,
> +					tmdev->chip->irq_thread,
> +					IRQF_ONESHOT, "ths", tmdev);
> +	if (ret)
> +		return ret;

Is there any particular reason to use a threaded interrupt?

Also, starting from here you can start having interrupts...

> +
> +	ret = reset_control_deassert(tmdev->reset);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_prepare_enable(tmdev->bus_clk);
> +	if (ret)
> +		goto assert_reset;
> +
> +	ret = tmdev->chip->calibrate(tmdev);
> +	if (ret)
> +		goto bus_disable;

While the device hasn't been properly initialized yet. Especially when
held in reset, some Allwinner controllers has been known to send
spurious interrupts, so we want to defer that to the very last minute
(so right before your call to sun8i_ths_register).

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
> +static int sun50i_ths_calibrate(struct ths_device *tmdev)
> +{
> +	struct nvmem_cell *calcell;
> +	struct device *dev = tmdev->dev;
> +	u16 *caldata;
> +	size_t callen;
> +	int ft_temp;
> +	int i, ret = 0;
> +
> +	calcell = devm_nvmem_cell_get(dev, "calib");
> +	if (IS_ERR(calcell)) {
> +		if (PTR_ERR(calcell) == -EPROBE_DEFER)
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
> +	caldata = nvmem_cell_read(calcell, &callen);
> +	if (IS_ERR(caldata)) {
> +		ret = PTR_ERR(caldata);
> +		goto out;
> +	}
> +
> +	if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num) {
> +		ret = -EINVAL;
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
> +	ft_temp = caldata[0] & FT_TEMP_MASK;
> +
> +	for (i = 0; i < tmdev->chip->sensor_num; i++) {
> +		int reg = (int)caldata[i + 1];
> +		int sensor_temp = sun8i_ths_reg2temp(tmdev, reg);
> +		int delta, cdata, calib_offest;
> +
> +		/*
> +		 * To calculate the calibration value:
> +		 *
> +		 * X(in Celsius) = Ts - ft_temp
> +		 * delta = X * 10000 / TEMP_TO_REG
> +		 * cdata = CALIBRATE_DEFAULT - delta
> +		 *
> +		 * cdata: calibration value
> +		 */
> +		delta = (sensor_temp - ft_temp * 100) * 10 / TEMP_TO_REG;
> +		cdata = CALIBRATE_DEFAULT - delta;
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
> +		calib_offest = tmdev->chip->temp_calib_base + (i / 2) * 0x4;
> +
> +		if (i % 2) {
> +			int val;
> +
> +			regmap_read(tmdev->regmap, calib_offest, &val);
> +			val = (val & TEMP_CALIB_MASK) | (cdata << 16);
> +			regmap_write(tmdev->regmap, calib_offest, val);
> +		} else {
> +			regmap_write(tmdev->regmap, calib_offest, cdata);
> +		}
> +	}
> +
> +out_free:
> +	kfree(caldata);
> +out:
> +	return ret;
> +}
> +
> +static int sun8i_ths_register(struct ths_device *tmdev)
> +{
> +	struct thermal_zone_device *tzd;
> +	int i;
> +
> +	for (i = 0; i < tmdev->chip->sensor_num; i++) {
> +		tmdev->sensor[i].tmdev = tmdev;
> +		tmdev->sensor[i].id = i;
> +		tmdev->sensor[i].tzd =
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
> +	struct device *dev = &pdev->dev;
> +	int i, ret;
> +
> +	tmdev = devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
> +	if (!tmdev)
> +		return -ENOMEM;
> +
> +	tmdev->dev = dev;
> +	tmdev->chip = of_device_get_match_data(&pdev->dev);
> +	if (!tmdev->chip)
> +		return -EINVAL;
> +
> +	/*
> +	 * Initialize wait_queue in advance, to avoid calling wake_up
> +	 * before ths is registered in isr.
> +	 */
> +	for (i = 0; i < tmdev->chip->sensor_num; i++)
> +		init_waitqueue_head(&tmdev->sensor[i].wait_queue);
> +
> +	platform_set_drvdata(pdev, tmdev);
> +
> +	ret = sun8i_ths_resource_init(tmdev);
> +	if (ret)
> +		return ret;
> +
> +	ret = tmdev->chip->init(tmdev);
> +	if (ret)
> +		return ret;
> +
> +	ret = sun8i_ths_register(tmdev);
> +	if (ret)
> +		return ret;
> +
> +	return ret;
> +}
> +
> +static int sun8i_ths_remove(struct platform_device *pdev)
> +{
> +	struct ths_device *tmdev = platform_get_drvdata(pdev);
> +
> +	clk_disable_unprepare(tmdev->bus_clk);

I know that we discussed that already, but I'm not sure why you switch
back to a regular call to regmap_init_mmio, while regmap_init_mmio_clk
will take care of enabling and disabling the bus clock for you?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--p2un6fbcfahwxc7q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOvXyAAKCRDj7w1vZxhR
xbY5AQDCUaTT8J+10OVbNCfsczmJMiuzxUTfQ6oYiZomDsP7CQD+LEEhLHq5uK11
L3w/5QcnMOr7EgczV6ur/TDXB91XMgY=
=0v10
-----END PGP SIGNATURE-----

--p2un6fbcfahwxc7q--


--===============4396700827870860000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4396700827870860000==--

