Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91481A1CB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 09:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHQxDK26cYPBk9np1cFpHtxSephC/kVUlpkRXIolEb4=; b=kFvg2DK5E9YyJu
	TlzDTjmLMltSvJhRukgVFvpwx0ceu0eLKrgF63nmYsLVGhriCDCJM6njTNl8pClVrxRKdhZRO9zOI
	YsfC5lXMVDYQRFYgpx17sQP29Y4ZTUaabGzdIaFs1GAuhtOt+JExLKc3N2xV6htlx0HjHQgeRHv5R
	fu9FTMXEe+z0uaa5leTnRi5pKAmRrdfDyXlBsy/eWmVrpDJsQGNFK331tXUW4RoxtrHQM1PxxDH9A
	77KcMkGd3I+JqBr4DI3HhDEnVtstGQNKxCtHW/rOJlqpAKBBPj8yzPhPxShE7a1DslkZEoVMlNuqg
	5VyUL3pCZ29wnsZ3KrxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5Av-0007cC-8i; Wed, 08 Apr 2020 07:31:05 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5An-0007bO-59
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 07:30:59 +0000
Received: by mail-vs1-xe44.google.com with SMTP id s25so2157461vsp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 00:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EOLhcNOifYhrtnzRozTtdorizn2w3q8JWP5TxbR/cPU=;
 b=gMsodooY4XjR68otq3hmwwckSpYIg3sluKBz20BVFzP7qLqwqTAERQWbYP8nLPO1Nw
 I2L2UrxVI1JTqxw4uKCZTYtoJRfU3N/hGEW0+7gmxe7GnYig0D0Cc5Xl78JgkzNewlUC
 HwO70cXBHdeWQ5ArXtGP0jnoyojVHBEBPK4APr3v7nfYeRvvcjrX0y4huRw67BZvE+IR
 F35+vh9Ryh/naJm/CikbWFyX2GMK6rFKmNPpbpm3YX9q3vVZIpBsHgrY3A/Jq9aa4WkR
 HkPFNFVvlyaxXiQruWw9984Rq4Q0GqvQ+F8W6ZYhkXE/OMeh7hEJkYtUtxRKPt0M2JRN
 yBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EOLhcNOifYhrtnzRozTtdorizn2w3q8JWP5TxbR/cPU=;
 b=rxOtaC3h7vWjbu88cQmUhimbhoQdX8hQZ8Ka8SzJthSkZZQpH4rErg0cm5lEpavPqM
 ZUaRn8rOElVuR0z2QPjLnexMWcgXC7Vi7Lwsr0Lm2EJGX0VPdXKvRQetKuYbEaPW1KPS
 BT88xCgT/l46rKq2/U/DXaFDzZqIn1uL6Nz9EDB5V1rC3dtDVlfgYbVVh+oBfSZ6/Aic
 S6xjA3Vb85NyWMKykU9NFT3WpJ0gVdnFFlFY2v2RS1Tb8ERuKF5IiyaT6SOJkJtX5igv
 WpFYdqGkTyMvfNnJBlyS/xRR0jj80KEJMTPaqT2Q71fPL9TtMUxJ90Ifzc5m0frsedVh
 jMEg==
X-Gm-Message-State: AGi0PubQBHmdY7d7VRV+IQ+sJ6rsEBOSMkYz1KruvJkilNWt8kn9s/Il
 OCXJvh8aV0bs/uPumd68XrUQmsV9lvwm0rZf/JvzBQ==
X-Google-Smtp-Source: APiQypLalR1AprssPcnUPXWu/UZHoij2o1eWAwOd9vYKatoJv/tkamOnFKUpHpe4fw8BrhqvRhr70Nv8UFXajw4wjE8=
X-Received: by 2002:a05:6102:5c5:: with SMTP id v5mr4988430vsf.9.1586331055860; 
 Wed, 08 Apr 2020 00:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200407055116.16082-1-j-keerthy@ti.com>
 <20200407055116.16082-3-j-keerthy@ti.com>
In-Reply-To: <20200407055116.16082-3-j-keerthy@ti.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 8 Apr 2020 13:00:00 +0530
Message-ID: <CAHLCerNHzLB6wQG-ytF2dyW8mM4bOFoHAi1H-oQzWLbfvkj82w@mail.gmail.com>
Subject: Re: [PATCH v6 2/4] thermal: k3: Add support for bandgap sensors
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_003057_199181_09AD757E 
X-CRM114-Status: GOOD (  27.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, t-kristo@ti.com,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 11:21 AM Keerthy <j-keerthy@ti.com> wrote:
>
> Add VTM thermal support. In the Voltage Thermal
> Management Module(VTM), K3 AM654 supplies a voltage
> reference and a temperature sensor feature that are gathered in the band
> gap voltage and temperature sensor (VBGAPTS) module. The band
> gap provides current and voltage reference for its internal
> circuits and other analog IP blocks. The analog-to-digital
> converter (ADC) produces an output value that is proportional
> to the silicon temperature.
>
> Currently reading temperatures only is supported.
> There are no active/passive cooling agent supported.
>
> Signed-off-by: Keerthy <j-keerthy@ti.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
> Changes in v6:
>
>   * Removed bunch of unused #defines and couple of redundant variables.
>
> Changes in v5:
>
>   * Removed thermal work function which was unused.
>   * Removed unused preve_tenmp and a couple more struct variables.
>   * Removed couple of redundant header function include.
>
>  drivers/thermal/Kconfig      |  10 ++
>  drivers/thermal/Makefile     |   1 +
>  drivers/thermal/k3_bandgap.c | 264 +++++++++++++++++++++++++++++++++++
>  3 files changed, 275 insertions(+)
>  create mode 100644 drivers/thermal/k3_bandgap.c
>
> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> index 5a05db5438d6..9c3e0d3b091d 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -251,6 +251,16 @@ config IMX_THERMAL
>           cpufreq is used as the cooling device to throttle CPUs when the
>           passive trip is crossed.
>
> +config K3_THERMAL
> +       tristate "Texas Instruments K3 thermal support"
> +       depends on ARCH_K3 || COMPILE_TEST
> +       help
> +         If you say yes here you get thermal support for the Texas Instruments
> +         K3 SoC family. The current chip supported is:
> +         - AM654
> +
> +         This includes temperature reading functionality.
> +
>  config MAX77620_THERMAL
>         tristate "Temperature sensor driver for Maxim MAX77620 PMIC"
>         depends on MFD_MAX77620
> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
> index 9fb88e26fb10..5ad6535139ae 100644
> --- a/drivers/thermal/Makefile
> +++ b/drivers/thermal/Makefile
> @@ -28,6 +28,7 @@ thermal_sys-$(CONFIG_CLOCK_THERMAL)   += clock_cooling.o
>  # devfreq cooling
>  thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
>
> +obj-$(CONFIG_K3_THERMAL)       += k3_bandgap.o
>  # platform thermal drivers
>  obj-y                          += broadcom/
>  obj-$(CONFIG_THERMAL_MMIO)             += thermal_mmio.o
> diff --git a/drivers/thermal/k3_bandgap.c b/drivers/thermal/k3_bandgap.c
> new file mode 100644
> index 000000000000..35f41e8a0b75
> --- /dev/null
> +++ b/drivers/thermal/k3_bandgap.c
> @@ -0,0 +1,264 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * TI Bandgap temperature sensor driver for K3 SoC Family
> + *
> + * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
> + */
> +
> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/thermal.h>
> +#include <linux/types.h>
> +
> +#define K3_VTM_DEVINFO_PWR0_OFFSET             0x4
> +#define K3_VTM_DEVINFO_PWR0_TEMPSENS_CT_MASK   0xf0
> +#define K3_VTM_TMPSENS0_CTRL_OFFSET    0x80
> +#define K3_VTM_REGS_PER_TS                     0x10
> +#define K3_VTM_TS_STAT_DTEMP_MASK      0x3ff
> +#define K3_VTM_TMPSENS_CTRL_CBIASSEL   BIT(0)
> +#define K3_VTM_TMPSENS_CTRL_SOC                BIT(5)
> +#define K3_VTM_TMPSENS_CTRL_CLRZ               BIT(6)
> +#define K3_VTM_TMPSENS_CTRL_CLKON_REQ  BIT(7)
> +
> +#define K3_VTM_ADC_BEGIN_VAL           540
> +#define K3_VTM_ADC_END_VAL             944
> +
> +static const int k3_adc_to_temp[] = {
> +       -40000, -40000, -40000, -40000, -39800, -39400, -39000, -38600, -38200,
> +       -37800, -37400, -37000, -36600, -36200, -35800, -35300, -34700, -34200,
> +       -33800, -33400, -33000, -32600, -32200, -31800, -31400, -31000, -30600,
> +       -30200, -29800, -29400, -29000, -28600, -28200, -27700, -27100, -26600,
> +       -26200, -25800, -25400, -25000, -24600, -24200, -23800, -23400, -23000,
> +       -22600, -22200, -21800, -21400, -21000, -20500, -19900, -19400, -19000,
> +       -18600, -18200, -17800, -17400, -17000, -16600, -16200, -15800, -15400,
> +       -15000, -14600, -14200, -13800, -13400, -13000, -12500, -11900, -11400,
> +       -11000, -10600, -10200, -9800, -9400, -9000, -8600, -8200, -7800, -7400,
> +       -7000, -6600, -6200, -5800, -5400, -5000, -4500, -3900, -3400, -3000,
> +       -2600, -2200, -1800, -1400, -1000, -600, -200, 200, 600, 1000, 1400,
> +       1800, 2200, 2600, 3000, 3400, 3900, 4500, 5000, 5400, 5800, 6200, 6600,
> +       7000, 7400, 7800, 8200, 8600, 9000, 9400, 9800, 10200, 10600, 11000,
> +       11400, 11800, 12200, 12700, 13300, 13800, 14200, 14600, 15000, 15400,
> +       15800, 16200, 16600, 17000, 17400, 17800, 18200, 18600, 19000, 19400,
> +       19800, 20200, 20600, 21000, 21400, 21900, 22500, 23000, 23400, 23800,
> +       24200, 24600, 25000, 25400, 25800, 26200, 26600, 27000, 27400, 27800,
> +       28200, 28600, 29000, 29400, 29800, 30200, 30600, 31000, 31400, 31900,
> +       32500, 33000, 33400, 33800, 34200, 34600, 35000, 35400, 35800, 36200,
> +       36600, 37000, 37400, 37800, 38200, 38600, 39000, 39400, 39800, 40200,
> +       40600, 41000, 41400, 41800, 42200, 42600, 43100, 43700, 44200, 44600,
> +       45000, 45400, 45800, 46200, 46600, 47000, 47400, 47800, 48200, 48600,
> +       49000, 49400, 49800, 50200, 50600, 51000, 51400, 51800, 52200, 52600,
> +       53000, 53400, 53800, 54200, 54600, 55000, 55400, 55900, 56500, 57000,
> +       57400, 57800, 58200, 58600, 59000, 59400, 59800, 60200, 60600, 61000,
> +       61400, 61800, 62200, 62600, 63000, 63400, 63800, 64200, 64600, 65000,
> +       65400, 65800, 66200, 66600, 67000, 67400, 67800, 68200, 68600, 69000,
> +       69400, 69800, 70200, 70600, 71000, 71500, 72100, 72600, 73000, 73400,
> +       73800, 74200, 74600, 75000, 75400, 75800, 76200, 76600, 77000, 77400,
> +       77800, 78200, 78600, 79000, 79400, 79800, 80200, 80600, 81000, 81400,
> +       81800, 82200, 82600, 83000, 83400, 83800, 84200, 84600, 85000, 85400,
> +       85800, 86200, 86600, 87000, 87400, 87800, 88200, 88600, 89000, 89400,
> +       89800, 90200, 90600, 91000, 91400, 91800, 92200, 92600, 93000, 93400,
> +       93800, 94200, 94600, 95000, 95400, 95800, 96200, 96600, 97000, 97500,
> +       98100, 98600, 99000, 99400, 99800, 100200, 100600, 101000, 101400,
> +       101800, 102200, 102600, 103000, 103400, 103800, 104200, 104600, 105000,
> +       105400, 105800, 106200, 106600, 107000, 107400, 107800, 108200, 108600,
> +       109000, 109400, 109800, 110200, 110600, 111000, 111400, 111800, 112200,
> +       112600, 113000, 113400, 113800, 114200, 114600, 115000, 115400, 115800,
> +       116200, 116600, 117000, 117400, 117800, 118200, 118600, 119000, 119400,
> +       119800, 120200, 120600, 121000, 121400, 121800, 122200, 122600, 123000,
> +       123400, 123800, 124200, 124600, 124900, 125000,
> +};
> +
> +struct k3_bandgap {
> +       void __iomem *base;
> +       const struct k3_bandgap_data *conf;
> +};
> +
> +/* common data structures */
> +struct k3_thermal_data {
> +       struct thermal_zone_device *tzd;
> +       struct k3_bandgap *bgp;
> +       int sensor_id;
> +       u32 ctrl_offset;
> +       u32 stat_offset;
> +};
> +
> +static unsigned int vtm_get_best_value(unsigned int s0, unsigned int s1,
> +                                      unsigned int s2)
> +{
> +       int d01 = abs(s0 - s1);
> +       int d02 = abs(s0 - s2);
> +       int d12 = abs(s1 - s2);
> +
> +       if (d01 <= d02 && d01 <= d12)
> +               return (s0 + s1) / 2;
> +
> +       if (d02 <= d01 && d02 <= d12)
> +               return (s0 + s2) / 2;
> +
> +       return (s1 + s2) / 2;
> +}
> +
> +static int k3_bgp_read_temp(struct k3_thermal_data *devdata,
> +                           int *temp)
> +{
> +       struct k3_bandgap *bgp;
> +       unsigned int dtemp, s0, s1, s2;
> +
> +       bgp = devdata->bgp;
> +
> +       /*
> +        * Errata is applicable for am654 pg 1.0 silicon. There
> +        * is a variation of the order for 8-10 degree centigrade.
> +        * Work around that by getting the average of two closest
> +        * readings out of three readings everytime we want to
> +        * report temperatures.
> +        *
> +        * Errata workaround.
> +        */
> +       s0 = readl(bgp->base + devdata->stat_offset) &
> +               K3_VTM_TS_STAT_DTEMP_MASK;
> +       s1 = readl(bgp->base + devdata->stat_offset) &
> +               K3_VTM_TS_STAT_DTEMP_MASK;
> +       s2 = readl(bgp->base + devdata->stat_offset) &
> +               K3_VTM_TS_STAT_DTEMP_MASK;
> +       dtemp = vtm_get_best_value(s0, s1, s2);
> +
> +       if (dtemp < K3_VTM_ADC_BEGIN_VAL || dtemp > K3_VTM_ADC_END_VAL)
> +               return -EINVAL;
> +
> +       *temp = k3_adc_to_temp[dtemp - K3_VTM_ADC_BEGIN_VAL];
> +
> +       return 0;
> +}
> +
> +static int k3_thermal_get_temp(void *devdata, int *temp)
> +{
> +       struct k3_thermal_data *data = devdata;
> +       int ret = 0;
> +
> +       ret = k3_bgp_read_temp(data, temp);
> +       if (ret)
> +               return ret;
> +
> +       return ret;
> +}
> +
> +static const struct thermal_zone_of_device_ops k3_of_thermal_ops = {
> +       .get_temp = k3_thermal_get_temp,
> +};
> +
> +static const struct of_device_id of_k3_bandgap_match[];
> +
> +static int k3_bandgap_probe(struct platform_device *pdev)
> +{
> +       int ret = 0, cnt, val, id;
> +       struct resource *res;
> +       struct device *dev = &pdev->dev;
> +       struct k3_bandgap *bgp;
> +       struct k3_thermal_data *data;
> +
> +       if (ARRAY_SIZE(k3_adc_to_temp) != (K3_VTM_ADC_END_VAL + 1 -
> +                                               K3_VTM_ADC_BEGIN_VAL))
> +               return -EINVAL;
> +
> +       bgp = devm_kzalloc(&pdev->dev, sizeof(*bgp), GFP_KERNEL);
> +       if (!bgp)
> +               return -ENOMEM;
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       bgp->base = devm_ioremap_resource(dev, res);
> +       if (IS_ERR(bgp->base))
> +               return PTR_ERR(bgp->base);
> +
> +       pm_runtime_enable(dev);
> +       ret = pm_runtime_get_sync(dev);
> +       if (ret < 0) {
> +               pm_runtime_put_noidle(dev);
> +               pm_runtime_disable(dev);
> +               return ret;
> +       }
> +
> +       /* Get the sensor count in the VTM */
> +       val = readl(bgp->base + K3_VTM_DEVINFO_PWR0_OFFSET);
> +       cnt = val & K3_VTM_DEVINFO_PWR0_TEMPSENS_CT_MASK;
> +       cnt >>= __ffs(K3_VTM_DEVINFO_PWR0_TEMPSENS_CT_MASK);
> +
> +       data = devm_kcalloc(dev, cnt, sizeof(*data), GFP_KERNEL);
> +       if (!data) {
> +               ret = -ENOMEM;
> +               goto err_alloc;
> +       }
> +
> +       /* Register the thermal sensors */
> +       for (id = 0; id < cnt; id++) {
> +               data[id].sensor_id = id;
> +               data[id].bgp = bgp;
> +               data[id].ctrl_offset = K3_VTM_TMPSENS0_CTRL_OFFSET +
> +                                       id * K3_VTM_REGS_PER_TS;
> +               data[id].stat_offset = data[id].ctrl_offset + 0x8;
> +
> +               val = readl(data[id].bgp->base + data[id].ctrl_offset);
> +               val |= (K3_VTM_TMPSENS_CTRL_SOC |
> +                       K3_VTM_TMPSENS_CTRL_CLRZ |
> +                       K3_VTM_TMPSENS_CTRL_CLKON_REQ);
> +               val &= ~K3_VTM_TMPSENS_CTRL_CBIASSEL;
> +               writel(val, data[id].bgp->base + data[id].ctrl_offset);
> +
> +               data[id].tzd =
> +               devm_thermal_zone_of_sensor_register(dev, id,
> +                                                    &data[id],
> +                                                    &k3_of_thermal_ops);
> +               if (IS_ERR(data[id].tzd)) {
> +                       dev_err(dev, "thermal zone device is NULL\n");
> +                       ret = PTR_ERR(data[id].tzd);
> +                       goto err_alloc;
> +               }
> +       }
> +
> +       platform_set_drvdata(pdev, bgp);
> +
> +       return 0;
> +
> +err_alloc:
> +       pm_runtime_put_sync(dev);
> +       pm_runtime_disable(dev);
> +
> +       return ret;
> +}
> +
> +static int k3_bandgap_remove(struct platform_device *pdev)
> +{
> +       pm_runtime_put_sync(&pdev->dev);
> +       pm_runtime_disable(&pdev->dev);
> +
> +       return 0;
> +}
> +
> +static const struct of_device_id of_k3_bandgap_match[] = {
> +       {
> +               .compatible = "ti,am654-vtm",
> +       },
> +       { /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, of_k3_bandgap_match);
> +
> +static struct platform_driver k3_bandgap_sensor_driver = {
> +       .probe = k3_bandgap_probe,
> +       .remove = k3_bandgap_remove,
> +       .driver = {
> +               .name = "k3-soc-thermal",
> +               .of_match_table = of_k3_bandgap_match,
> +       },
> +};
> +
> +module_platform_driver(k3_bandgap_sensor_driver);
> +
> +MODULE_DESCRIPTION("K3 bandgap temperature sensor driver");
> +MODULE_LICENSE("GPL v2");
> +MODULE_AUTHOR("J Keerthy <j-keerthy@ti.com>");
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
