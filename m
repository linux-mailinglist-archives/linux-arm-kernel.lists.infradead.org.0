Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D139810CD71
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 18:06:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vJ1VL2DV7h3NdlghWve+rItBrokh9zwoTuqXt914UA=; b=YBB+ZjS7qn+ur1
	OMocvBLv856AkmZFzLCAbUVYOg0KrkChvn7zeYvxg/PfG26fqre13A1QYtNWYAfmCs6iqa0mrQFMk
	mxUiD+VUg00xVSMVPiCV6YWc/a8KmJIXLEt8L+6JU4HcZm6Fa0N1pKt1N/qIPpz0z7ZO3t8Pi56Sg
	XohjiVVZQrnr1of/lHMFVOWCN0exPTgMlaPjXsubU0sSri5RJNi+KqmnaH8N9MsOXAKO5KvudAopp
	+TnW2ZCLv/yOPtev9IpTwzKwOiDMxQ9WOYVqe7TcZO2LK4LaaLTVmxg5hXHxFF6GOoRRdrckwo5pd
	T9iPlvoP94eXpaMgnQ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNFZ-0006Nj-QM; Thu, 28 Nov 2019 17:06:41 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNFN-0006Me-SO
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 17:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1574960786; bh=PT/bZ+w0RKKLjJh1BSV8VqHpNPMML9cbWK5/bgYOfQw=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=exOTQ5izA9EUgQ5p51HPyCISM3EsP3LCcJbXNgJdaX6sn8Q1m6EnUcocDHdEuPcDN
 IFexe918LD7KwKnsJtD3mK18Bp7iLWkmi87QsDdgZiolRu1466OIlAdte3BkHDQM76
 4YeOQHe+tobDiM6fFIKxBbcIlYn2i8kWdwqPVQAg=
Date: Thu, 28 Nov 2019 18:06:26 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH v6 1/7] thermal: sun8i: add thermal driver for
 H6/H5/H3/A64/A83T/R40
Message-ID: <20191128170626.xsm7xmizmbenqval@core.my.home>
Mail-Followup-To: Frank Lee <tiny.windzz@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-2-anarsoul@gmail.com>
 <CAEExFWtGcxevppy7yRHbcQSbMued_s_0u6FV6rT=fe+1AW=Jbg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWtGcxevppy7yRHbcQSbMued_s_0u6FV6rT=fe+1AW=Jbg@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_090630_426647_188644E6 
X-CRM114-Status: GOOD (  32.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Eduardo Valentin <edubezval@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 12:43:02AM +0800, Frank Lee wrote:
> HI,
> 
> I took a closer look at it, and I had some questions about these places.
> 
> On Wed, Nov 27, 2019 at 1:30 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > From: Yangtao Li <tiny.windzz@gmail.com>
> >
> > This patch adds the support for allwinner thermal sensor, within
> > allwinner SoC. It will register sensors for thermal framework
> > and use device tree to bind cooling device.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  MAINTAINERS                     |   7 +
> >  drivers/thermal/Kconfig         |  14 +
> >  drivers/thermal/Makefile        |   1 +
> >  drivers/thermal/sun8i_thermal.c | 643 ++++++++++++++++++++++++++++++++
> >  4 files changed, 665 insertions(+)
> >  create mode 100644 drivers/thermal/sun8i_thermal.c
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 66cc549ac327..da34f3f2e80b 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -688,6 +688,13 @@ L: linux-crypto@vger.kernel.org
> >  S:     Maintained
> >  F:     drivers/crypto/allwinner/
> >
> > +ALLWINNER THERMAL DRIVER
> > +M:     Yangtao Li <tiny.windzz@gmail.com>
> > +L:     linux-pm@vger.kernel.org
> > +S:     Maintained
> > +F:     Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> > +F:     drivers/thermal/sun8i_thermal.c
> > +
> >  ALLWINNER VPU DRIVER
> >  M:     Maxime Ripard <mripard@kernel.org>
> >  M:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> > index 001a21abcc28..0b0422e89adb 100644
> > --- a/drivers/thermal/Kconfig
> > +++ b/drivers/thermal/Kconfig
> > @@ -262,6 +262,20 @@ config SPEAR_THERMAL
> >           Enable this to plug the SPEAr thermal sensor driver into the Linux
> >           thermal framework.
> >
> > +config SUN8I_THERMAL
> > +       tristate "Allwinner sun8i thermal driver"
> > +       depends on ARCH_SUNXI || COMPILE_TEST
> > +       depends on HAS_IOMEM
> > +       depends on NVMEM
> > +       depends on OF
> > +       depends on RESET_CONTROLLER
> > +       help
> > +         Support for the sun8i thermal sensor driver into the Linux thermal
> > +         framework.
> > +
> > +         To compile this driver as a module, choose M here: the
> > +         module will be called sun8i-thermal.
> > +
> >  config ROCKCHIP_THERMAL
> >         tristate "Rockchip thermal driver"
> >         depends on ARCH_ROCKCHIP || COMPILE_TEST
> > diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
> > index 74a37c7f847a..fa6f8b206281 100644
> > --- a/drivers/thermal/Makefile
> > +++ b/drivers/thermal/Makefile
> > @@ -31,6 +31,7 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
> >  obj-y                          += broadcom/
> >  obj-$(CONFIG_THERMAL_MMIO)             += thermal_mmio.o
> >  obj-$(CONFIG_SPEAR_THERMAL)    += spear_thermal.o
> > +obj-$(CONFIG_SUN8I_THERMAL)     += sun8i_thermal.o
> >  obj-$(CONFIG_ROCKCHIP_THERMAL) += rockchip_thermal.o
> >  obj-$(CONFIG_RCAR_THERMAL)     += rcar_thermal.o
> >  obj-$(CONFIG_RCAR_GEN3_THERMAL)        += rcar_gen3_thermal.o
> > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > new file mode 100644
> > index 000000000000..e86b64f51196
> > --- /dev/null
> > +++ b/drivers/thermal/sun8i_thermal.c
> > @@ -0,0 +1,643 @@
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
> > +#include <linux/interrupt.h>
> > +#include <linux/module.h>
> > +#include <linux/nvmem-consumer.h>
> > +#include <linux/of_device.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +#include <linux/reset.h>
> > +#include <linux/slab.h>
> > +#include <linux/thermal.h>
> > +
> > +#define MAX_SENSOR_NUM 4
> > +
> > +#define FT_TEMP_MASK                           GENMASK(11, 0)
> > +#define TEMP_CALIB_MASK                                GENMASK(11, 0)
> > +#define CALIBRATE_DEFAULT                      0x800
> > +
> > +#define SUN8I_THS_CTRL0                                0x00
> > +#define SUN8I_THS_CTRL2                                0x40
> > +#define SUN8I_THS_IC                           0x44
> > +#define SUN8I_THS_IS                           0x48
> > +#define SUN8I_THS_MFC                          0x70
> > +#define SUN8I_THS_TEMP_CALIB                   0x74
> > +#define SUN8I_THS_TEMP_DATA                    0x80
> > +
> > +#define SUN50I_THS_CTRL0                       0x00
> > +#define SUN50I_H6_THS_ENABLE                   0x04
> > +#define SUN50I_H6_THS_PC                       0x08
> > +#define SUN50I_H6_THS_DIC                      0x10
> > +#define SUN50I_H6_THS_DIS                      0x20
> > +#define SUN50I_H6_THS_MFC                      0x30
> > +#define SUN50I_H6_THS_TEMP_CALIB               0xa0
> > +#define SUN50I_H6_THS_TEMP_DATA                        0xc0
> > +
> > +#define SUN8I_THS_CTRL0_T_ACQ0(x)              (GENMASK(15, 0) & (x))
> > +#define SUN8I_THS_CTRL2_T_ACQ1(x)              ((GENMASK(15, 0) & (x)) << 16)
> > +#define SUN8I_THS_DATA_IRQ_STS(x)              BIT(x + 8)
> > +
> > +#define SUN50I_THS_CTRL0_T_ACQ(x)              ((GENMASK(15, 0) & (x)) << 16)
> > +#define SUN50I_THS_FILTER_EN                   BIT(2)
> > +#define SUN50I_THS_FILTER_TYPE(x)              (GENMASK(1, 0) & (x))
> > +#define SUN50I_H6_THS_PC_TEMP_PERIOD(x)                ((GENMASK(19, 0) & (x)) << 12)
> > +#define SUN50I_H6_THS_DATA_IRQ_STS(x)          BIT(x)
> > +
> > +/* millidegree celsius */
> > +#define THS_EFUSE_CP_FT_MASK                   0x3000
> > +#define THS_EFUSE_CP_FT_BIT                    12
> > +#define THS_CALIBRATION_IN_FT                  1
> > +
> > +struct ths_device;
> > +
> > +struct tsensor {
> > +       struct ths_device               *tmdev;
> > +       struct thermal_zone_device      *tzd;
> > +       int                             id;
> > +};
> > +
> > +struct ths_thermal_chip {
> > +       bool            has_mod_clk;
> > +       bool            has_bus_clk_reset;
> > +       int             sensor_num;
> > +       int             offset;
> > +       int             scale;
> > +       int             ft_deviation;
> > +       int             temp_data_base;
> > +       int             (*calibrate)(struct ths_device *tmdev,
> > +                                    u16 *caldata, int callen);
> > +       int             (*init)(struct ths_device *tmdev);
> > +       int             (*irq_ack)(struct ths_device *tmdev);
> > +       int             (*calc_temp)(struct ths_device *tmdev,
> > +                                    int id, int reg);
> > +};
> > +
> > +struct ths_device {
> > +       const struct ths_thermal_chip           *chip;
> > +       struct device                           *dev;
> > +       struct regmap                           *regmap;
> > +       struct reset_control                    *reset;
> > +       struct clk                              *bus_clk;
> > +       struct clk                              *mod_clk;
> > +       struct tsensor                          sensor[MAX_SENSOR_NUM];
> > +       u32                                     cp_ft_flag;
> > +};
> > +
> > +/* Temp Unit: millidegree Celsius */
> > +static int sun8i_ths_calc_temp(struct ths_device *tmdev,
> > +                              int id, int reg)
> > +{
> > +       return tmdev->chip->offset - (reg * tmdev->chip->scale / 10);
> > +}
> > +
> > +static int sun50i_h5_calc_temp(struct ths_device *tmdev,
> > +                              int id, int reg)
> > +{
> > +       if (reg >= 0x500)
> > +               return -1191 * reg / 10 + 223000;
> > +       else if (!id)
> > +               return -1452 * reg / 10 + 259000;
> > +       else
> > +               return -1590 * reg / 10 + 276000;
> > +}
> > +
> > +static int sun8i_ths_get_temp(void *data, int *temp)
> > +{
> > +       struct tsensor *s = data;
> > +       struct ths_device *tmdev = s->tmdev;
> > +       int val = 0;
> > +
> > +       regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
> > +                   0x4 * s->id, &val);
> > +
> > +       /* ths have no data yet */
> > +       if (!val)
> > +               return -EAGAIN;
> > +
> > +       *temp = tmdev->chip->calc_temp(tmdev, s->id, val);
> > +       /*
> > +        * According to the original sdk, there are some platforms(rarely)
> > +        * that add a fixed offset value after calculating the temperature
> > +        * value. We can't simply put it on the formula for calculating the
> > +        * temperature above, because the formula for calculating the
> > +        * temperature above is also used when the sensor is calibrated. If
> > +        * do this, the correct calibration formula is hard to know.
> > +        */
> > +       *temp += tmdev->chip->ft_deviation;
> > +
> > +       return 0;
> > +}
> > +
> > +static const struct thermal_zone_of_device_ops ths_ops = {
> > +       .get_temp = sun8i_ths_get_temp,
> > +};
> > +
> > +static const struct regmap_config config = {
> > +       .reg_bits = 32,
> > +       .val_bits = 32,
> > +       .reg_stride = 4,
> > +       .fast_io = true,
> > +       .max_register = 0xfc,
> > +};
> > +
> > +static int sun8i_h3_irq_ack(struct ths_device *tmdev)
> > +{
> > +       int i, state, ret = 0;
> > +
> > +       regmap_read(tmdev->regmap, SUN8I_THS_IS, &state);
> > +
> > +       for (i = 0; i < tmdev->chip->sensor_num; i++) {
> > +               if (state & SUN8I_THS_DATA_IRQ_STS(i)) {
> > +                       regmap_write(tmdev->regmap, SUN8I_THS_IS,
> > +                                    SUN8I_THS_DATA_IRQ_STS(i));
> > +                       ret |= BIT(i);
> > +               }
> > +       }
> > +
> > +       return ret;
> > +}
> > +
> > +static int sun50i_h6_irq_ack(struct ths_device *tmdev)
> > +{
> > +       int i, state, ret = 0;
> > +
> > +       regmap_read(tmdev->regmap, SUN50I_H6_THS_DIS, &state);
> > +
> > +       for (i = 0; i < tmdev->chip->sensor_num; i++) {
> > +               if (state & SUN50I_H6_THS_DATA_IRQ_STS(i)) {
> > +                       regmap_write(tmdev->regmap, SUN50I_H6_THS_DIS,
> > +                                    SUN50I_H6_THS_DATA_IRQ_STS(i));
> > +                       ret |= BIT(i);
> > +               }
> > +       }
> > +
> > +       return ret;
> > +}
> > +
> > +static irqreturn_t sun8i_irq_thread(int irq, void *data)
> > +{
> > +       struct ths_device *tmdev = data;
> > +       int i, state;
> > +
> > +       state = tmdev->chip->irq_ack(tmdev);
> > +
> > +       for (i = 0; i < tmdev->chip->sensor_num; i++) {
> > +               if (state & BIT(i))
> > +                       thermal_zone_device_update(tmdev->sensor[i].tzd,
> > +                                                  THERMAL_EVENT_UNSPECIFIED);
> > +       }
> > +
> > +       return IRQ_HANDLED;
> > +}
> > +
> > +static int sun8i_h3_ths_calibrate(struct ths_device *tmdev,
> > +                                 u16 *caldata, int callen)
> > +{
> > +       int i;
> > +
> > +       if (!caldata[0] || callen < 2 * tmdev->chip->sensor_num)
> > +               return -EINVAL;
> > +
> > +       for (i = 0; i < tmdev->chip->sensor_num; i++) {
> > +               int offset = (i % 2) << 4;
> > +
> > +               regmap_update_bits(tmdev->regmap,
> > +                                  SUN8I_THS_TEMP_CALIB + (4 * (i >> 1)),
> > +                                  0xfff << offset,
> > +                                  caldata[i] << offset);
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static int sun50i_h6_ths_calibrate(struct ths_device *tmdev,
> > +                                  u16 *caldata, int callen)
> > +{
> > +       struct device *dev = tmdev->dev;
> > +       int i, ft_temp;
> > +
> > +       if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num)
> > +               return -EINVAL;
> > +
> > +       /*
> > +        * efuse layout:
> > +        *
> > +        *      0   11  16       32
> > +        *      +-------+-------+-------+
> > +        *      |temp|  |sensor0|sensor1|
> > +        *      +-------+-------+-------+
> > +        *
> > +        * The calibration data on the H6 is the ambient temperature and
> > +        * sensor values that are filled during the factory test stage.
> > +        *
> > +        * The unit of stored FT temperature is 0.1 degreee celusis.
> > +        *
> > +        * We need to calculate a delta between measured and caluclated
> > +        * register values and this will become a calibration offset.
> > +        */
> > +       ft_temp = (caldata[0] & FT_TEMP_MASK) * 100;
> > +       tmdev->cp_ft_flag = (caldata[0] & THS_EFUSE_CP_FT_MASK)
> > +               >> THS_EFUSE_CP_FT_BIT;
> 
> Here got an unused data "cp_ft_flag",
> which is used in the calculation of the temperature function according
> to the source code.
> 
> https://github.com/orangepi-xunlong/OrangePiH6_kernel/blob/master/drivers/thermal/sunxi_thermal/sunxi_ths_core.c#L392

It should be used to enable the addition of ft_deviation in
sun8i_ths_get_temp(), I guess. Probably an ommission. I guess most of H6
chips will have this set anyway.

> > +
> > +       for (i = 0; i < tmdev->chip->sensor_num; i++) {
> > +               int sensor_reg = caldata[i + 1];
> > +               int cdata, offset;
> > +               int sensor_temp = tmdev->chip->calc_temp(tmdev, i, sensor_reg);
> > +
> > +               /*
> > +                * Calibration data is CALIBRATE_DEFAULT - (calculated
> > +                * temperature from sensor reading at factory temperature
> > +                * minus actual factory temperature) * 14.88 (scale from
> > +                * temperature to register values)
> > +                */
> > +               cdata = CALIBRATE_DEFAULT -
> > +                       ((sensor_temp - ft_temp) * 10 / tmdev->chip->scale);
> 
> Why change the formula here.
> 
> https://github.com/orangepi-xunlong/OrangePiH6_kernel/blob/master/drivers/thermal/sunxi_thermal/sunxi_ths_core.c#L339

It looks the same to me as before. Here's the original patch:

https://megous.com/git/linux/commit/?h=ths-5.4&id=cae28a7dfa6fc79ba37e31d4dff281947247e822

It's basicaly to avoid magic values TEMP_TO_REG and use what's defined
in the chip struct.

regards,
	o.

> > +               if (cdata & ~TEMP_CALIB_MASK) {
> > +                       /*
> > +                        * Calibration value more than 12-bit, but calibration
> > +                        * register is 12-bit. In this case, ths hardware can
> > +                        * still work without calibration, although the data
> > +                        * won't be so accurate.
> > +                        */
> > +                       dev_warn(dev, "sensor%d is not calibrated.\n", i);
> > +                       continue;
> > +               }
> > +
> > +               offset = (i % 2) * 16;
> > +               regmap_update_bits(tmdev->regmap,
> > +                                  SUN50I_H6_THS_TEMP_CALIB + (i / 2 * 4),
> > +                                  0xfff << offset,
> > +                                  cdata << offset);
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static int sun8i_ths_calibrate(struct ths_device *tmdev)
> > +{
> > +       struct nvmem_cell *calcell;
> > +       struct device *dev = tmdev->dev;
> > +       u16 *caldata;
> > +       size_t callen;
> > +       int ret = 0;
> > +
> > +       calcell = devm_nvmem_cell_get(dev, "calibration");
> > +       if (IS_ERR(calcell)) {
> > +               if (PTR_ERR(calcell) == -EPROBE_DEFER)
> > +                       return -EPROBE_DEFER;
> > +               /*
> > +                * Even if the external calibration data stored in sid is
> > +                * not accessible, the THS hardware can still work, although
> > +                * the data won't be so accurate.
> > +                *
> > +                * The default value of calibration register is 0x800 for
> > +                * every sensor, and the calibration value is usually 0x7xx
> > +                * or 0x8xx, so they won't be away from the default value
> > +                * for a lot.
> > +                *
> > +                * So here we do not return error if the calibartion data is
> > +                * not available, except the probe needs deferring.
> > +                */
> > +               goto out;
> > +       }
> > +
> > +       caldata = nvmem_cell_read(calcell, &callen);
> > +       if (IS_ERR(caldata)) {
> > +               ret = PTR_ERR(caldata);
> > +               goto out;
> > +       }
> > +
> > +       tmdev->chip->calibrate(tmdev, caldata, callen);
> > +
> > +       kfree(caldata);
> > +out:
> > +       return ret;
> > +}
> > +
> > +static int sun8i_ths_resource_init(struct ths_device *tmdev)
> > +{
> > +       struct device *dev = tmdev->dev;
> > +       struct platform_device *pdev = to_platform_device(dev);
> > +       struct resource *mem;
> > +       void __iomem *base;
> > +       int ret;
> > +
> > +       mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +       base = devm_ioremap_resource(dev, mem);
> > +       if (IS_ERR(base))
> > +               return PTR_ERR(base);
> > +
> > +       tmdev->regmap = devm_regmap_init_mmio(dev, base, &config);
> > +       if (IS_ERR(tmdev->regmap))
> > +               return PTR_ERR(tmdev->regmap);
> > +
> > +       if (tmdev->chip->has_bus_clk_reset) {
> > +               tmdev->reset = devm_reset_control_get(dev, 0);
> > +               if (IS_ERR(tmdev->reset))
> > +                       return PTR_ERR(tmdev->reset);
> > +
> > +               tmdev->bus_clk = devm_clk_get(&pdev->dev, "bus");
> > +               if (IS_ERR(tmdev->bus_clk))
> > +                       return PTR_ERR(tmdev->bus_clk);
> > +       }
> > +
> > +       if (tmdev->chip->has_mod_clk) {
> > +               tmdev->mod_clk = devm_clk_get(&pdev->dev, "mod");
> > +               if (IS_ERR(tmdev->mod_clk))
> > +                       return PTR_ERR(tmdev->mod_clk);
> > +       }
> > +
> > +       ret = reset_control_deassert(tmdev->reset);
> > +       if (ret)
> > +               return ret;
> > +
> > +       ret = clk_prepare_enable(tmdev->bus_clk);
> > +       if (ret)
> > +               goto assert_reset;
> > +
> > +       ret = clk_set_rate(tmdev->mod_clk, 24000000);
> > +       if (ret)
> > +               goto bus_disable;
> > +
> > +       ret = clk_prepare_enable(tmdev->mod_clk);
> > +       if (ret)
> > +               goto bus_disable;
> > +
> > +       ret = sun8i_ths_calibrate(tmdev);
> > +       if (ret)
> > +               goto mod_disable;
> > +
> > +       return 0;
> > +
> > +mod_disable:
> > +       clk_disable_unprepare(tmdev->mod_clk);
> > +bus_disable:
> > +       clk_disable_unprepare(tmdev->bus_clk);
> > +assert_reset:
> > +       reset_control_assert(tmdev->reset);
> > +
> > +       return ret;
> > +}
> > +
> > +static int sun8i_h3_thermal_init(struct ths_device *tmdev)
> > +{
> > +       int val;
> > +
> > +       /* average over 4 samples */
> > +       regmap_write(tmdev->regmap, SUN8I_THS_MFC,
> > +                    SUN50I_THS_FILTER_EN |
> > +                    SUN50I_THS_FILTER_TYPE(1));
> > +       /*
> > +        * clkin = 24MHz
> > +        * filter_samples = 4
> > +        * period = 0.25s
> > +        *
> > +        * x = period * clkin / 4096 / filter_samples - 1
> > +        *   = 365
> > +        */
> > +       val = GENMASK(7 + tmdev->chip->sensor_num, 8);
> > +       regmap_write(tmdev->regmap, SUN8I_THS_IC,
> > +                    SUN50I_H6_THS_PC_TEMP_PERIOD(365) | val);
> > +       /*
> > +        * T_acq = 20us
> > +        * clkin = 24MHz
> > +        *
> > +        * x = T_acq * clkin - 1
> > +        *   = 479
> > +        */
> > +       regmap_write(tmdev->regmap, SUN8I_THS_CTRL0,
> > +                    SUN8I_THS_CTRL0_T_ACQ0(479));
> > +       val = GENMASK(tmdev->chip->sensor_num - 1, 0);
> > +       regmap_write(tmdev->regmap, SUN8I_THS_CTRL2,
> > +                    SUN8I_THS_CTRL2_T_ACQ1(479) | val);
> > +
> > +       return 0;
> > +}
> > +
> > +/*
> > + * Without this undocummented value, the returned temperatures would
> > + * be higher than real ones by about 20C.
> > + */
> > +#define SUN50I_H6_CTRL0_UNK 0x0000002f
> > +
> > +static int sun50i_h6_thermal_init(struct ths_device *tmdev)
> > +{
> > +       int val;
> > +
> > +       /*
> > +        * T_acq = 20us
> > +        * clkin = 24MHz
> > +        *
> > +        * x = T_acq * clkin - 1
> > +        *   = 479
> > +        */
> > +       regmap_write(tmdev->regmap, SUN50I_THS_CTRL0,
> > +                    SUN50I_H6_CTRL0_UNK | SUN50I_THS_CTRL0_T_ACQ(479));
> > +       /* average over 4 samples */
> > +       regmap_write(tmdev->regmap, SUN50I_H6_THS_MFC,
> > +                    SUN50I_THS_FILTER_EN |
> > +                    SUN50I_THS_FILTER_TYPE(1));
> > +       /*
> > +        * clkin = 24MHz
> > +        * filter_samples = 4
> > +        * period = 0.25s
> > +        *
> > +        * x = period * clkin / 4096 / filter_samples - 1
> > +        *   = 365
> > +        */
> > +       regmap_write(tmdev->regmap, SUN50I_H6_THS_PC,
> > +                    SUN50I_H6_THS_PC_TEMP_PERIOD(365));
> > +       /* enable sensor */
> > +       val = GENMASK(tmdev->chip->sensor_num - 1, 0);
> > +       regmap_write(tmdev->regmap, SUN50I_H6_THS_ENABLE, val);
> > +       /* thermal data interrupt enable */
> > +       val = GENMASK(tmdev->chip->sensor_num - 1, 0);
> > +       regmap_write(tmdev->regmap, SUN50I_H6_THS_DIC, val);
> > +
> > +       return 0;
> > +}
> > +
> > +static int sun8i_ths_register(struct ths_device *tmdev)
> > +{
> > +       int i;
> > +
> > +       for (i = 0; i < tmdev->chip->sensor_num; i++) {
> > +               tmdev->sensor[i].tmdev = tmdev;
> > +               tmdev->sensor[i].id = i;
> > +               tmdev->sensor[i].tzd =
> > +                       devm_thermal_zone_of_sensor_register(tmdev->dev,
> > +                                                            i,
> > +                                                            &tmdev->sensor[i],
> > +                                                            &ths_ops);
> > +               if (IS_ERR(tmdev->sensor[i].tzd))
> > +                       return PTR_ERR(tmdev->sensor[i].tzd);
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static int sun8i_ths_probe(struct platform_device *pdev)
> > +{
> > +       struct ths_device *tmdev;
> > +       struct device *dev = &pdev->dev;
> > +       int ret, irq;
> > +
> > +       tmdev = devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
> > +       if (!tmdev)
> > +               return -ENOMEM;
> > +
> > +       tmdev->dev = dev;
> > +       tmdev->chip = of_device_get_match_data(&pdev->dev);
> > +       if (!tmdev->chip)
> > +               return -EINVAL;
> > +
> > +       platform_set_drvdata(pdev, tmdev);
> > +
> > +       ret = sun8i_ths_resource_init(tmdev);
> > +       if (ret)
> > +               return ret;
> > +
> > +       irq = platform_get_irq(pdev, 0);
> > +       if (irq < 0)
> > +               return irq;
> > +
> > +       ret = tmdev->chip->init(tmdev);
> > +       if (ret)
> > +               return ret;
> > +
> > +       ret = sun8i_ths_register(tmdev);
> > +       if (ret)
> > +               return ret;
> > +
> > +       /*
> > +        * Avoid entering the interrupt handler, the thermal device is not
> > +        * registered yet, we deffer the registration of the interrupt to
> > +        * the end.
> > +        */
> > +       ret = devm_request_threaded_irq(dev, irq, NULL,
> > +                                       sun8i_irq_thread,
> > +                                       IRQF_ONESHOT, "ths", tmdev);
> > +       if (ret)
> > +               return ret;
> > +
> > +       return ret;
> > +}
> > +
> > +static int sun8i_ths_remove(struct platform_device *pdev)
> > +{
> > +       struct ths_device *tmdev = platform_get_drvdata(pdev);
> > +
> > +       clk_disable_unprepare(tmdev->mod_clk);
> > +       clk_disable_unprepare(tmdev->bus_clk);
> > +       reset_control_assert(tmdev->reset);
> > +
> > +       return 0;
> > +}
> > +
> > +static const struct ths_thermal_chip sun8i_a83t_ths = {
> > +       .sensor_num = 3,
> > +       .scale = 705,
> > +       .offset = 191668,
> > +       .temp_data_base = SUN8I_THS_TEMP_DATA,
> > +       .calibrate = sun8i_h3_ths_calibrate,
> > +       .init = sun8i_h3_thermal_init,
> > +       .irq_ack = sun8i_h3_irq_ack,
> > +       .calc_temp = sun8i_ths_calc_temp,
> > +};
> > +
> > +static const struct ths_thermal_chip sun8i_h3_ths = {
> > +       .sensor_num = 1,
> > +       .scale = 1211,
> > +       .offset = 217000,
> > +       .has_mod_clk = true,
> > +       .has_bus_clk_reset = true,
> > +       .temp_data_base = SUN8I_THS_TEMP_DATA,
> > +       .calibrate = sun8i_h3_ths_calibrate,
> > +       .init = sun8i_h3_thermal_init,
> > +       .irq_ack = sun8i_h3_irq_ack,
> > +       .calc_temp = sun8i_ths_calc_temp,
> > +};
> > +
> > +static const struct ths_thermal_chip sun8i_r40_ths = {
> > +       .sensor_num = 3,
> > +       .offset = 251086,
> > +       .scale = 1130,
> > +       .has_mod_clk = true,
> > +       .has_bus_clk_reset = true,
> > +       .temp_data_base = SUN8I_THS_TEMP_DATA,
> > +       .calibrate = sun8i_h3_ths_calibrate,
> > +       .init = sun8i_h3_thermal_init,
> > +       .irq_ack = sun8i_h3_irq_ack,
> > +       .calc_temp = sun8i_ths_calc_temp,
> > +};
> > +
> > +static const struct ths_thermal_chip sun50i_a64_ths = {
> > +       .sensor_num = 3,
> > +       .offset = 253890,
> > +       .scale = 1170,
> > +       .has_mod_clk = true,
> > +       .has_bus_clk_reset = true,
> > +       .temp_data_base = SUN8I_THS_TEMP_DATA,
> > +       .calibrate = sun8i_h3_ths_calibrate,
> > +       .init = sun8i_h3_thermal_init,
> > +       .irq_ack = sun8i_h3_irq_ack,
> > +       .calc_temp = sun8i_ths_calc_temp,
> > +};
> > +
> > +static const struct ths_thermal_chip sun50i_h5_ths = {
> > +       .sensor_num = 2,
> > +       .has_mod_clk = true,
> > +       .has_bus_clk_reset = true,
> > +       .temp_data_base = SUN8I_THS_TEMP_DATA,
> > +       .calibrate = sun8i_h3_ths_calibrate,
> > +       .init = sun8i_h3_thermal_init,
> > +       .irq_ack = sun8i_h3_irq_ack,
> > +       .calc_temp = sun50i_h5_calc_temp,
> > +};
> > +
> > +static const struct ths_thermal_chip sun50i_h6_ths = {
> > +       .sensor_num = 2,
> > +       .has_bus_clk_reset = true,
> > +       .ft_deviation = 7000,
> > +       .offset = 187744,
> > +       .scale = 672,
> > +       .temp_data_base = SUN50I_H6_THS_TEMP_DATA,
> > +       .calibrate = sun50i_h6_ths_calibrate,
> > +       .init = sun50i_h6_thermal_init,
> > +       .irq_ack = sun50i_h6_irq_ack,
> > +       .calc_temp = sun8i_ths_calc_temp,
> > +};
> > +
> > +static const struct of_device_id of_ths_match[] = {
> > +       { .compatible = "allwinner,sun8i-a83t-ths", .data = &sun8i_a83t_ths },
> > +       { .compatible = "allwinner,sun8i-h3-ths", .data = &sun8i_h3_ths },
> > +       { .compatible = "allwinner,sun8i-r40-ths", .data = &sun8i_r40_ths },
> > +       { .compatible = "allwinner,sun50i-a64-ths", .data = &sun50i_a64_ths },
> > +       { .compatible = "allwinner,sun50i-h5-ths", .data = &sun50i_h5_ths },
> > +       { .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
> > +       { /* sentinel */ },
> > +};
> > +MODULE_DEVICE_TABLE(of, of_ths_match);
> > +
> > +static struct platform_driver ths_driver = {
> > +       .probe = sun8i_ths_probe,
> > +       .remove = sun8i_ths_remove,
> > +       .driver = {
> > +               .name = "sun8i-thermal",
> > +               .of_match_table = of_ths_match,
> > +       },
> > +};
> > +module_platform_driver(ths_driver);
> > +
> > +MODULE_DESCRIPTION("Thermal sensor driver for Allwinner SOC");
> > +MODULE_LICENSE("GPL v2");
> > --
> > 2.24.0
> >
> 
> Thx,
> Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
