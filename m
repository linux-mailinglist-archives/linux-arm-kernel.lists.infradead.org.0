Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973073BFDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 01:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9mlxKKrPkxSymQeIKAXZO8O6LJsTIXJwPw5vadLzZU=; b=GSFssHsqkiDd5d
	1R6aMv+OAKWHbQH6gRkEjqKG7e0NnXoC1jD9b6xW8j9Qqp1zV13yjBbfIIUDCwrZJwF5ONkaaIV2f
	8waXXtS2OkABLN05OhPyht/OPByj8vi5pEbjtzmGXFsNjR1dWxESdvpbMt3x0QjunVa8vK8WQ0Uvi
	RB2THcOLvPy7L7Y3HvsfKEYGFvYl2ja9qSCQmx81DpWOH2vcufHHffrGKQKOR7fnv8znZTVNf6en5
	8ro+rHZ7casPMfJ24xnIfBuYgSa2wb0a8Y1LcfMHJc+bK2eSGlrUHFudwhntFfXcAvyBY8k6UYVFg
	OeDuGXdmXjYcaSDkStnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haTjD-0002m0-MO; Mon, 10 Jun 2019 23:29:27 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haTiz-0002lM-SD
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 23:29:16 +0000
Received: by mail-oi1-x242.google.com with SMTP id w7so7558650oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 16:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uCjw8GmN1YezRRjUgUaBMghlUUzQ9mT1h7Twh9UPvXY=;
 b=DEtTGOQKNHpVx6BrSQZe/pzuXIekZewvu81iMJlsP5xbEe1+mLOQX7EGwygiXEW6JN
 QpxPQnsahDGTSEgpahjEdCSyMR2fZo89RzPcXrz2AD3zBvM+pPfr6oAlnIAGbfz6ESMY
 spKV3759FX52phJCjeQb1NneO4hsRyQOE93rK0v1Tt0mFdlxjOPv6pzfSXy9epnkHKgf
 Df59zxaT86sFKZFJ6FaXMRpk3GBgtxKbs4QaqP0M3wzTljXy6bh0ZoJkp5urvVr6Gfet
 44Hl0LGAj43HJUqkv8XOUN+9xFdJnI7mzAIh/8Uv/DDB0T7LwNq0c4yI7KrqICAtG5h0
 X2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uCjw8GmN1YezRRjUgUaBMghlUUzQ9mT1h7Twh9UPvXY=;
 b=dB63FJ4l5LfJlGc6HpSuxVQd8OEHw0iwAV3RcfoJ9MSG6KVaSV37gKYElRpMIxZmL8
 wzziLcSQXkD4agpUAwNRVKY3jGaYDws2D7i4NKfvjqsdkT71JU1+QpHwOGP25wMtS4YC
 j2wBWu/yiWmda49KOIBwsCJ8tFnTKa4JPGEDkbCURHw54svJkX2F7ZmhNQVz2d3Ay4LE
 bMtoa4rNpKACEzYyjb56JBNIR24Vx9YoiT9WFxXO9L5HGnbQxFPRN0a+Fiamg9WPB6u7
 BQazcSeKOP2BusAautSLYrleiy5ZM58hx2sKcZnL2gvLhP6bToY87tUdSXuY5pnZv8hu
 cY5A==
X-Gm-Message-State: APjAAAW1MEEgp+guNS/YqlXUWId0M3Bt7SLOzoVIgbQD0mpiUSav3P3T
 ySN6qwjjXpGgIE4mqYgNHmDDKm/PLkXUnG5L4Cg=
X-Google-Smtp-Source: APXvYqzTJEAjbMPgpDMYJ0EwAMtLPQi6aC/1FHKko4ITsYy4WyXSg2uwalHBnHkvJFpTJ9/i0S4SMg/xWl0zXM7NMng=
X-Received: by 2002:aca:38d4:: with SMTP id f203mr14184574oia.88.1560209349469; 
 Mon, 10 Jun 2019 16:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
In-Reply-To: <20190525181329.18657-2-tiny.windzz@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 10 Jun 2019 16:29:58 -0700
Message-ID: <CA+E=qVdh1E8Y7dZO0JSS4DJE2bo=98MuSKRt7nmeFg-td7Ua9Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_162913_929380_2AA8EA9D 
X-CRM114-Status: GOOD (  34.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 11:17 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> This patch adds the support for allwinner thermal sensor, within
> allwinner SoC. It will register sensors for thermal framework
> and use device tree to bind cooling device.

Hi Yangtao,

Any plans on v4 of this series?

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
> @@ -674,6 +674,13 @@ L: linux-crypto@vger.kernel.org
>  S:     Maintained
>  F:     drivers/crypto/sunxi-ss/
>
> +ALLWINNER THERMAL DRIVER
> +M:     Yangtao Li <tiny.windzz@gmail.com>
> +L:     linux-pm@vger.kernel.org
> +S:     Maintained
> +F:     Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> +F:     drivers/thermal/sun8i_thermal.c
> +
>  ALLWINNER VPU DRIVER
>  M:     Maxime Ripard <maxime.ripard@bootlin.com>
>  M:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> index 9966364a6deb..e5465053d66f 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -262,6 +262,20 @@ config SPEAR_THERMAL
>           Enable this to plug the SPEAr thermal sensor driver into the Linux
>           thermal framework.
>
> +config SUN8I_THERMAL
> +       tristate "Allwinner sun8i thermal driver"
> +       depends on ARCH_SUNXI || COMPILE_TEST
> +       depends on HAS_IOMEM
> +       depends on NVMEM_SUNXI_SID
> +       depends on OF
> +       depends on RESET_CONTROLLER
> +       help
> +         Support for the sun8i thermal sensor driver into the Linux thermal
> +         framework.
> +
> +         To compile this driver as a module, choose M here: the
> +         module will be called sun8i-thermal.
> +
>  config ROCKCHIP_THERMAL
>         tristate "Rockchip thermal driver"
>         depends on ARCH_ROCKCHIP || COMPILE_TEST
> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
> index 74a37c7f847a..fa6f8b206281 100644
> --- a/drivers/thermal/Makefile
> +++ b/drivers/thermal/Makefile
> @@ -31,6 +31,7 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
>  obj-y                          += broadcom/
>  obj-$(CONFIG_THERMAL_MMIO)             += thermal_mmio.o
>  obj-$(CONFIG_SPEAR_THERMAL)    += spear_thermal.o
> +obj-$(CONFIG_SUN8I_THERMAL)     += sun8i_thermal.o
>  obj-$(CONFIG_ROCKCHIP_THERMAL) += rockchip_thermal.o
>  obj-$(CONFIG_RCAR_THERMAL)     += rcar_thermal.o
>  obj-$(CONFIG_RCAR_GEN3_THERMAL)        += rcar_gen3_thermal.o
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
> +#define MAX_SENSOR_NUM 4
> +
> +#define FT_TEMP_MASK                           GENMASK(11, 0)
> +#define TEMP_CALIB_MASK                                GENMASK(11, 0)
> +#define TEMP_TO_REG                            672
> +#define CALIBRATE_DEFAULT                      0x800
> +
> +#define SUN50I_THS_CTRL0                       0x00
> +#define SUN50I_H6_THS_ENABLE                   0x04
> +#define SUN50I_H6_THS_PC                       0x08
> +#define SUN50I_H6_THS_DIC                      0x10
> +#define SUN50I_H6_THS_DIS                      0x20
> +#define SUN50I_H6_THS_MFC                      0x30
> +#define SUN50I_H6_THS_TEMP_CALIB               0xa0
> +#define SUN50I_H6_THS_TEMP_DATA                        0xc0
> +
> +#define SUN50I_THS_CTRL0_T_ACQ(x)              ((GENMASK(15, 0) & (x)) << 16)
> +#define SUN50I_THS_FILTER_EN                   BIT(2)
> +#define SUN50I_THS_FILTER_TYPE(x)              (GENMASK(1, 0) & (x))
> +#define SUN50I_H6_THS_PC_TEMP_PERIOD(x)                ((GENMASK(19, 0) & (x)) << 12)
> +#define SUN50I_H6_THS_DATA_IRQ_STS(x)          BIT(x)
> +
> +/* millidegree celsius */
> +#define SUN50I_H6_FT_DEVIATION                 7000
> +
> +struct ths_device;
> +
> +struct tsensor {
> +       struct ths_device               *tmdev;
> +       struct thermal_zone_device      *tzd;
> +       int                             id;
> +       wait_queue_head_t               wait_queue;
> +};
> +
> +struct ths_thermal_chip {
> +       int             sensor_num;
> +       int             offset;
> +       int             scale;
> +       int             ft_deviation;
> +       int             temp_calib_base;
> +       int             temp_data_base;
> +       int             (*calibrate)(struct ths_device *tmdev);
> +       int             (*init)(struct ths_device *tmdev);
> +       irqreturn_t     (*irq_thread)(int irq, void *data);
> +};
> +
> +struct ths_device {
> +       const struct ths_thermal_chip           *chip;
> +       struct device                           *dev;
> +       struct regmap                           *regmap;
> +       struct reset_control                    *reset;
> +       struct clk                              *bus_clk;
> +       struct tsensor                          sensor[MAX_SENSOR_NUM];
> +       int                                     data_ready;
> +};
> +
> +/* Temp Unit: millidegree Celsius */
> +static int sun8i_ths_reg2temp(struct ths_device *tmdev,
> +                             int reg)
> +{
> +       return (reg + tmdev->chip->offset) * tmdev->chip->scale;
> +}
> +
> +static int sun8i_ths_get_temp(void *data, int *temp)
> +{
> +       struct tsensor *s = data;
> +       struct ths_device *tmdev = s->tmdev;
> +       int val;
> +
> +       wait_event(s->wait_queue, tmdev->data_ready & BIT(s->id));
> +       tmdev->data_ready &= ~BIT(s->id);
> +
> +       regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
> +                   0x4 * s->id, &val);
> +
> +       *temp = sun8i_ths_reg2temp(tmdev, val);
> +       /*
> +        * XX - According to the original sdk, there are some platforms(rarely)
> +        * that add a fixed offset value after calculating the temperature
> +        * value. We can't simply put it on the formula for calculating the
> +        * temperature above, because the formula for calculating the
> +        * temperature above is also used when the sensor is calibrated. If
> +        * do this, the correct calibration formula is hard to know.
> +        */
> +       if (tmdev->chip->ft_deviation)
> +               *temp += tmdev->chip->ft_deviation;
> +
> +       return 0;
> +}
> +
> +static const struct thermal_zone_of_device_ops ths_ops = {
> +       .get_temp = sun8i_ths_get_temp,
> +};
> +
> +static const struct regmap_config config = {
> +       .reg_bits = 32,
> +       .val_bits = 32,
> +       .reg_stride = 4,
> +       .fast_io = true,
> +};
> +
> +static irqreturn_t sun50i_h6_irq_thread(int irq, void *data)
> +{
> +       wait_queue_head_t *data_wait;
> +       struct ths_device *tmdev = data;
> +       int i, state;
> +
> +       regmap_read(tmdev->regmap, SUN50I_H6_THS_DIS, &state);
> +
> +       for (i = 0; i < tmdev->chip->sensor_num; i++) {
> +               data_wait = &tmdev->sensor[i].wait_queue;
> +
> +               if (state & SUN50I_H6_THS_DATA_IRQ_STS(i)) {
> +                       /* clear data irq pending */
> +                       regmap_write(tmdev->regmap, SUN50I_H6_THS_DIS,
> +                                    SUN50I_H6_THS_DATA_IRQ_STS(i));
> +
> +                       tmdev->data_ready |= BIT(i);
> +                       wake_up(data_wait);
> +               }
> +       }
> +
> +       return IRQ_HANDLED;
> +}
> +
> +static int sun8i_ths_resource_init(struct ths_device *tmdev)
> +{
> +       struct device *dev = tmdev->dev;
> +       struct platform_device *pdev = to_platform_device(dev);
> +       struct resource *mem;
> +       void __iomem *base;
> +       int ret, irq;
> +
> +       mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       base = devm_ioremap_resource(dev, mem);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       tmdev->regmap = devm_regmap_init_mmio(dev, base, &config);
> +       if (IS_ERR(tmdev->regmap))
> +               return PTR_ERR(tmdev->regmap);
> +
> +       tmdev->reset = devm_reset_control_get(dev, 0);
> +       if (IS_ERR(tmdev->reset))
> +               return PTR_ERR(tmdev->reset);
> +
> +       tmdev->bus_clk = devm_clk_get(&pdev->dev, "bus");
> +       if (IS_ERR(tmdev->bus_clk))
> +               return PTR_ERR(tmdev->bus_clk);
> +
> +       irq = platform_get_irq(pdev, 0);
> +       if (irq < 0)
> +               return irq;
> +
> +       ret = devm_request_threaded_irq(dev, irq, NULL,
> +                                       tmdev->chip->irq_thread,
> +                                       IRQF_ONESHOT, "ths", tmdev);
> +       if (ret)
> +               return ret;
> +
> +       ret = reset_control_deassert(tmdev->reset);
> +       if (ret)
> +               return ret;
> +
> +       ret = clk_prepare_enable(tmdev->bus_clk);
> +       if (ret)
> +               goto assert_reset;
> +
> +       ret = tmdev->chip->calibrate(tmdev);
> +       if (ret)
> +               goto bus_disable;
> +
> +       return 0;
> +
> +bus_disable:
> +       clk_disable_unprepare(tmdev->bus_clk);
> +assert_reset:
> +       reset_control_assert(tmdev->reset);
> +
> +       return ret;
> +}
> +
> +static int sun50i_ths_calibrate(struct ths_device *tmdev)
> +{
> +       struct nvmem_cell *calcell;
> +       struct device *dev = tmdev->dev;
> +       u16 *caldata;
> +       size_t callen;
> +       int ft_temp;
> +       int i, ret = 0;
> +
> +       calcell = devm_nvmem_cell_get(dev, "calib");
> +       if (IS_ERR(calcell)) {
> +               if (PTR_ERR(calcell) == -EPROBE_DEFER)
> +                       return -EPROBE_DEFER;
> +               /*
> +                * Even if the external calibration data stored in sid is
> +                * not accessible, the THS hardware can still work, although
> +                * the data won't be so accurate.
> +                *
> +                * The default value of calibration register is 0x800 for
> +                * every sensor, and the calibration value is usually 0x7xx
> +                * or 0x8xx, so they won't be away from the default value
> +                * for a lot.
> +                *
> +                * So here we do not return error if the calibartion data is
> +                * not available, except the probe needs deferring.
> +                */
> +               goto out;
> +       }
> +
> +       caldata = nvmem_cell_read(calcell, &callen);
> +       if (IS_ERR(caldata)) {
> +               ret = PTR_ERR(caldata);
> +               goto out;
> +       }
> +
> +       if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num) {
> +               ret = -EINVAL;
> +               goto out_free;
> +       }
> +
> +       /*
> +        * efuse layout:
> +        *
> +        *      0   11  16       32
> +        *      +-------+-------+-------+
> +        *      |temp|  |sensor0|sensor1|
> +        *      +-------+-------+-------+
> +        *
> +        * The calibration data on the H6 is the ambient temperature and
> +        * sensor values that are filled during the factory test stage.
> +        *
> +        * The unit of stored FT temperature is 0.1 degreee celusis.
> +        * Through the stored ambient temperature and the data read
> +        * by the sensor, after a certain calculation, the calibration
> +        * value to be compensated can be obtained.
> +        */
> +       ft_temp = caldata[0] & FT_TEMP_MASK;
> +
> +       for (i = 0; i < tmdev->chip->sensor_num; i++) {
> +               int reg = (int)caldata[i + 1];
> +               int sensor_temp = sun8i_ths_reg2temp(tmdev, reg);
> +               int delta, cdata, calib_offest;
> +
> +               /*
> +                * To calculate the calibration value:
> +                *
> +                * X(in Celsius) = Ts - ft_temp
> +                * delta = X * 10000 / TEMP_TO_REG
> +                * cdata = CALIBRATE_DEFAULT - delta
> +                *
> +                * cdata: calibration value
> +                */
> +               delta = (sensor_temp - ft_temp * 100) * 10 / TEMP_TO_REG;
> +               cdata = CALIBRATE_DEFAULT - delta;
> +               if (cdata & ~TEMP_CALIB_MASK) {
> +                       /*
> +                        * Calibration value more than 12-bit, but calibration
> +                        * register is 12-bit. In this case, ths hardware can
> +                        * still work without calibration, although the data
> +                        * won't be so accurate.
> +                        */
> +                       dev_warn(dev, "sensor%d is not calibrated.\n", i);
> +
> +                       continue;
> +               }
> +
> +               calib_offest = tmdev->chip->temp_calib_base + (i / 2) * 0x4;
> +
> +               if (i % 2) {
> +                       int val;
> +
> +                       regmap_read(tmdev->regmap, calib_offest, &val);
> +                       val = (val & TEMP_CALIB_MASK) | (cdata << 16);
> +                       regmap_write(tmdev->regmap, calib_offest, val);
> +               } else {
> +                       regmap_write(tmdev->regmap, calib_offest, cdata);
> +               }
> +       }
> +
> +out_free:
> +       kfree(caldata);
> +out:
> +       return ret;
> +}
> +
> +static int sun8i_ths_register(struct ths_device *tmdev)
> +{
> +       struct thermal_zone_device *tzd;
> +       int i;
> +
> +       for (i = 0; i < tmdev->chip->sensor_num; i++) {
> +               tmdev->sensor[i].tmdev = tmdev;
> +               tmdev->sensor[i].id = i;
> +               tmdev->sensor[i].tzd =
> +                       devm_thermal_zone_of_sensor_register(tmdev->dev,
> +                                                            i,
> +                                                            &tmdev->sensor[i],
> +                                                            &ths_ops);
> +               if (IS_ERR(tmdev->sensor[i].tzd))
> +                       return PTR_ERR(tzd);
> +       }
> +
> +       return 0;
> +}
> +
> +static int sun8i_ths_probe(struct platform_device *pdev)
> +{
> +       struct ths_device *tmdev;
> +       struct device *dev = &pdev->dev;
> +       int i, ret;
> +
> +       tmdev = devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
> +       if (!tmdev)
> +               return -ENOMEM;
> +
> +       tmdev->dev = dev;
> +       tmdev->chip = of_device_get_match_data(&pdev->dev);
> +       if (!tmdev->chip)
> +               return -EINVAL;
> +
> +       /*
> +        * Initialize wait_queue in advance, to avoid calling wake_up
> +        * before ths is registered in isr.
> +        */
> +       for (i = 0; i < tmdev->chip->sensor_num; i++)
> +               init_waitqueue_head(&tmdev->sensor[i].wait_queue);
> +
> +       platform_set_drvdata(pdev, tmdev);
> +
> +       ret = sun8i_ths_resource_init(tmdev);
> +       if (ret)
> +               return ret;
> +
> +       ret = tmdev->chip->init(tmdev);
> +       if (ret)
> +               return ret;
> +
> +       ret = sun8i_ths_register(tmdev);
> +       if (ret)
> +               return ret;
> +
> +       return ret;
> +}
> +
> +static int sun8i_ths_remove(struct platform_device *pdev)
> +{
> +       struct ths_device *tmdev = platform_get_drvdata(pdev);
> +
> +       clk_disable_unprepare(tmdev->bus_clk);
> +       reset_control_assert(tmdev->reset);
> +
> +       return 0;
> +}
> +
> +static int sun50i_thermal_init(struct ths_device *tmdev)
> +{
> +       int val;
> +
> +       /*
> +        * clkin = 24MHz
> +        * T acquire = clkin / (x + 1)
> +        *           = 20us
> +        */
> +       regmap_write(tmdev->regmap, SUN50I_THS_CTRL0,
> +                    SUN50I_THS_CTRL0_T_ACQ(479));
> +       /* average over 4 samples */
> +       regmap_write(tmdev->regmap, SUN50I_H6_THS_MFC,
> +                    SUN50I_THS_FILTER_EN |
> +                    SUN50I_THS_FILTER_TYPE(1));
> +       /* period = (x + 1) * 4096 / clkin; ~10ms */
> +       regmap_write(tmdev->regmap, SUN50I_H6_THS_PC,
> +                    SUN50I_H6_THS_PC_TEMP_PERIOD(58));
> +       /* enable sensor */
> +       val = GENMASK(tmdev->chip->sensor_num - 1, 0);
> +       regmap_write(tmdev->regmap, SUN50I_H6_THS_ENABLE, val);
> +       /* thermal data interrupt enable */
> +       val = GENMASK(tmdev->chip->sensor_num - 1, 0);
> +       regmap_write(tmdev->regmap, SUN50I_H6_THS_DIC, val);
> +
> +       return 0;
> +}
> +
> +static const struct ths_thermal_chip sun50i_h6_ths = {
> +       .sensor_num = 2,
> +       .offset = -2794,
> +       .scale = -67,
> +       .ft_deviation = SUN50I_H6_FT_DEVIATION,
> +       .temp_calib_base = SUN50I_H6_THS_TEMP_CALIB,
> +       .temp_data_base = SUN50I_H6_THS_TEMP_DATA,
> +       .calibrate = sun50i_ths_calibrate,
> +       .init = sun50i_thermal_init,
> +       .irq_thread = sun50i_h6_irq_thread,
> +};
> +
> +static const struct of_device_id of_ths_match[] = {
> +       { .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
> +       { /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, of_ths_match);
> +
> +static struct platform_driver ths_driver = {
> +       .probe = sun8i_ths_probe,
> +       .remove = sun8i_ths_remove,
> +       .driver = {
> +               .name = "sun8i-thermal",
> +               .of_match_table = of_ths_match,
> +       },
> +};
> +module_platform_driver(ths_driver);
> +
> +MODULE_DESCRIPTION("Thermal sensor driver for Allwinner SOC");
> +MODULE_LICENSE("GPL v2");
> --
> 2.17.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
