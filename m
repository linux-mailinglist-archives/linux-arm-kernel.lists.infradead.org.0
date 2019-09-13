Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B855B1AAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 11:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kb8mbvtE1K8sRgxUpzV0rYOY+57bipq8j7OZpNpFn2Q=; b=gRqzwk34SmitmR
	zPiKGgKnKMm8m+ZE/ZLKkljK2PO6fyUt/XRxWYJAlbMLQRMW9HSk9nUbN42bZQZfeK04cHo/Ssfkt
	gWXaVNtcOtFEvMoRHi1P8ZhZjTTWhnKaP0+zttMouTf6qH38vkv7Y/XPBTADSB6P/C0VIyiCZv13g
	aScBINeU5HESy8GFsNRaVgEoulGNy7G5fU9YmDIvVKRSjWQ0nePof4sNlT9Xp7mpBq7RwZZ7JxEFa
	SkBIqpEUZPuT2U9MvZmN9J9EQ3/800pyDIdoDJhACC40LJ1nUmoGrrPP3WtJcEdLBNB2RNNH0RS6Y
	RtIfNg8NwA4yTX2WRokg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hmL-0006S5-5H; Fri, 13 Sep 2019 09:22:09 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hm3-0006QU-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 09:21:54 +0000
Received: by mail-vs1-xe41.google.com with SMTP id b11so18184476vsq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 02:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=big2HULPivzHfZmaXKJHGwm/n0VyuWpgbxvzS70YyAg=;
 b=dzDS6nBPcO/J6ewiK3IwZONfAjF6rzCS5xnHaSsFb83Iiz7Ji45b8t+S/h3OfwVELs
 EnYWZCQwh1dHZjrHHhwnZcCPdcBxSecVjpuPg0RoiCyodHRe+ipXps2B1ci+fUfEnqfb
 E/MtKZfQB84wPKTw1ATnBSCqho12IKY72cms8gjh+6OKBJz/0GaK22w4XNIfhrAp5Jgh
 6G/6deWNUdLqJ32ZxypOp0jNfuEpO/n3uRvE8EGvSJOv928fv7dLlMIQU+Z9zsQwc/Es
 gB9YiFMpIgas4S090SyWDl7cDZi8Kfe33HKYz5QSCbmxwtp7akYZJKB0j4lrM9deB+/3
 r6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=big2HULPivzHfZmaXKJHGwm/n0VyuWpgbxvzS70YyAg=;
 b=I6I5JxA6YZ7z6xocvgR9+4RasEj01gJh9uqbqOlx/nAJGsZNBkUROW2pzBBvX14mNO
 UZMD7FMajIIQLAdMdzYleZeI25jmuO6m/vUKLsMRbaYFFl+RKLvOzGzCNdckhRrFTkzy
 z0Aq8jNv62TqGX4G5nHNmMsHGIQGxMBd0jKIRHfd4rWKwNUPiX84iz97m0C8q8ddHXkx
 PtZlTvgUho+G4TIGzhx8CdZ+1XgxClGK51Hz15gf4wzEJrCmxGbGfr+8L0hxrwawvN5y
 DVAluGmTTO/IiHNNCS/Jvbur7pzjA72Ha5RqZF9F81A6dCMh5+AV1A8R42qkKYVdgsKw
 nZdg==
X-Gm-Message-State: APjAAAVArWHMj0t/UK+1Nhr8KrzfQ0gISB5UpTwBCGWBZrQMgiDJM4cY
 PrmzvlW0p16FD4EKZ2BflNg8mjrEkkqZlaQSXM8Lvg==
X-Google-Smtp-Source: APXvYqxObXH8K4LvJBm4wEarzokwooZWQiVlvrIZJoHc2GNiDfS7LJHjX0EYCCa+N9FMYBVdjqRu9R79OaWrmk0EirU=
X-Received: by 2002:a67:6044:: with SMTP id u65mr25601254vsb.95.1568366510536; 
 Fri, 13 Sep 2019 02:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190821222421.30242-1-glaroque@baylibre.com>
 <20190821222421.30242-3-glaroque@baylibre.com>
In-Reply-To: <20190821222421.30242-3-glaroque@baylibre.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Fri, 13 Sep 2019 14:51:38 +0530
Message-ID: <CAHLCerM-RJze_f49yucCcB1nnyLXo5f=aBob0_rQfa+jauOz+A@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] thermal: amlogic: Add thermal driver to support
 G12 SoCs
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_022152_010739_A5D0B470 
X-CRM114-Status: GOOD (  29.64  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-amlogic@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 3:54 AM Guillaume La Roque
<glaroque@baylibre.com> wrote:
>
> Amlogic G12A and G12B SoCs integrate two thermal sensors
> with the same design.
> One is located close to the DDR controller and the other one is
> located close to the PLLs (between the CPU and GPU).

Merge into one paragraph?

> The calibration data for each of the thermal sensors instance is
> stored in a different location within the AO region.
>
> Implement reading the temperature from each thermal sensor.
>
> The IP block has more functionality, which may be added to this driver
> in the future:
> - chip reset when the temperature exceeds a configurable threshold
> - up to four interrupts when the temperature has risen above a
> configurable threshold
> - up to four interrupts when the temperature has fallen below a
> configurable threshold
>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
>  drivers/thermal/Kconfig           |  11 +
>  drivers/thermal/Makefile          |   1 +
>  drivers/thermal/amlogic_thermal.c | 335 ++++++++++++++++++++++++++++++
>  3 files changed, 347 insertions(+)
>  create mode 100644 drivers/thermal/amlogic_thermal.c
>
> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> index 9966364a6deb..0f31bb4bc372 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -348,6 +348,17 @@ config MTK_THERMAL
>           Enable this option if you want to have support for thermal management
>           controller present in Mediatek SoCs
>
> +config AMLOGIC_THERMAL
> +       tristate "Amlogic Thermal Support"
> +       default ARCH_MESON
> +       depends on OF && ARCH_MESON
> +       help
> +         If you say yes here you get support for Amlogic Thermal
> +         for G12 SoC Family.
> +
> +         This driver can also be built as a module. If so, the module will
> +         be called amlogic_thermal.
> +
>  menu "Intel thermal drivers"
>  depends on X86 || X86_INTEL_QUARK || COMPILE_TEST
>  source "drivers/thermal/intel/Kconfig"
> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
> index 74a37c7f847a..baeb70bf0568 100644
> --- a/drivers/thermal/Makefile
> +++ b/drivers/thermal/Makefile
> @@ -54,3 +54,4 @@ obj-$(CONFIG_MTK_THERMAL)     += mtk_thermal.o
>  obj-$(CONFIG_GENERIC_ADC_THERMAL)      += thermal-generic-adc.o
>  obj-$(CONFIG_ZX2967_THERMAL)   += zx2967_thermal.o
>  obj-$(CONFIG_UNIPHIER_THERMAL) += uniphier_thermal.o
> +obj-$(CONFIG_AMLOGIC_THERMAL)     += amlogic_thermal.o
> diff --git a/drivers/thermal/amlogic_thermal.c b/drivers/thermal/amlogic_thermal.c
> new file mode 100644
> index 000000000000..173d808048d2
> --- /dev/null
> +++ b/drivers/thermal/amlogic_thermal.c
> @@ -0,0 +1,335 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Amlogic Thermal Sensor Driver
> + *
> + * Copyright (C) 2017 Huan Biao <huan.biao@amlogic.com>
> + * Copyright (C) 2019 Guillaume La Roque <glaroque@baylibre.com>
> + *
> + * Register value to celsius temperature formulas:
> + *     Read_Val            m * U
> + * U = ---------, Uptat = ---------
> + *     2^16              1 + n * U
> + *
> + * Temperature = A * ( Uptat + u_efuse / 2^16 )- B
> + *
> + *  A B m n : calibration parameters
> + *  u_efuse : fused calibration value, it's a signed 16 bits value
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/io.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/thermal.h>
> +
> +#include "thermal_core.h"
> +
> +#define TSENSOR_CFG_REG1                       0x4
> +       #define TSENSOR_CFG_REG1_RSET_VBG       BIT(12)
> +       #define TSENSOR_CFG_REG1_RSET_ADC       BIT(11)
> +       #define TSENSOR_CFG_REG1_VCM_EN         BIT(10)
> +       #define TSENSOR_CFG_REG1_VBG_EN         BIT(9)
> +       #define TSENSOR_CFG_REG1_OUT_CTL        BIT(6)
> +       #define TSENSOR_CFG_REG1_FILTER_EN      BIT(5)
> +       #define TSENSOR_CFG_REG1_DEM_EN         BIT(3)
> +       #define TSENSOR_CFG_REG1_CH_SEL         GENMASK(1, 0)
> +       #define TSENSOR_CFG_REG1_ENABLE         \
> +               (TSENSOR_CFG_REG1_FILTER_EN |   \
> +                TSENSOR_CFG_REG1_VCM_EN |      \
> +                TSENSOR_CFG_REG1_VBG_EN |      \
> +                TSENSOR_CFG_REG1_DEM_EN |      \
> +                TSENSOR_CFG_REG1_CH_SEL)
> +
> +#define TSENSOR_STAT0                  0x40
> +
> +#define TSENSOR_STAT9                  0x64
> +
> +#define TSENSOR_READ_TEMP_MASK         GENMASK(15, 0)
> +#define TSENSOR_TEMP_MASK              GENMASK(11, 0)
> +
> +#define TSENSOR_TRIM_SIGN_MASK         BIT(15)
> +#define TSENSOR_TRIM_TEMP_MASK         GENMASK(14, 0)
> +#define TSENSOR_TRIM_VERSION_MASK      GENMASK(31, 24)
> +
> +#define TSENSOR_TRIM_VERSION(_version) \
> +       FIELD_GET(TSENSOR_TRIM_VERSION_MASK, _version)
> +
> +#define TSENSOR_TRIM_CALIB_VALID_MASK  (GENMASK(3, 2) | BIT(7))
> +
> +#define TSENSOR_CALIB_OFFSET   1
> +#define TSENSOR_CALIB_SHIFT    4
> +
> +/**
> + * struct amlogic_thermal_soc_calib_data
> + * @A, B, m, n: calibration parameters
> + * This structure is required for configuration of amlogic thermal driver.
> + */
> +struct amlogic_thermal_soc_calib_data {
> +       int A;
> +       int B;
> +       int m;
> +       int n;
> +};
> +
> +/**
> + * struct amlogic_thermal_data
> + * @u_efuse_off: register offset to read fused calibration value
> + * @soc: calibration parameters structure pointer

This doesn't match the member below.

> + * @regmap_config: regmap config for the device
> + * This structure is required for configuration of amlogic thermal driver.
> + */
> +struct amlogic_thermal_data {
> +       int u_efuse_off;
> +       const struct amlogic_thermal_soc_calib_data *calibration_parameters;
> +       const struct regmap_config *regmap_config;
> +};
> +
> +struct amlogic_thermal {
> +       struct platform_device *pdev;
> +       const struct amlogic_thermal_data *data;
> +       struct regmap *regmap;
> +       struct regmap *sec_ao_map;
> +       struct clk *clk;
> +       struct thermal_zone_device *tzd;
> +       u32 trim_info;
> +};
> +
> +/*
> + * Calculate a temperature value from a temperature code.
> + * The unit of the temperature is degree milliCelsius.
> + */
> +static int amlogic_thermal_code_to_millicelsius(struct amlogic_thermal *pdata,
> +                                               int temp_code)
> +{
> +       const struct amlogic_thermal_soc_calib_data *param =
> +                                       pdata->data->calibration_parameters;
> +       int temp;
> +       s64 factor, Uptat, uefuse;
> +
> +       uefuse = pdata->trim_info & TSENSOR_TRIM_SIGN_MASK ?
> +                            ~(pdata->trim_info & TSENSOR_TRIM_TEMP_MASK) + 1 :
> +                            (pdata->trim_info & TSENSOR_TRIM_TEMP_MASK);
> +
> +       factor = param->n * temp_code;
> +       factor = div_s64(factor, 100);
> +
> +       Uptat = temp_code * param->m;
> +       Uptat = div_s64(Uptat, 100);
> +       Uptat = Uptat * BIT(16);
> +       Uptat = div_s64(Uptat, BIT(16) + factor);
> +
> +       temp = (Uptat + uefuse) * param->A;
> +       temp = div_s64(temp, BIT(16));
> +       temp = (temp - param->B) * 100;
> +
> +       return temp;
> +}
> +
> +static int amlogic_thermal_initialize(struct amlogic_thermal *pdata)
> +{
> +       int ret = 0;
> +       int ver;
> +
> +       regmap_read(pdata->sec_ao_map, pdata->data->u_efuse_off,
> +                   &pdata->trim_info);
> +
> +       ver = TSENSOR_TRIM_VERSION(pdata->trim_info);
> +
> +       if ((ver & TSENSOR_TRIM_CALIB_VALID_MASK) == 0) {
> +               ret = -EINVAL;
> +               dev_err(&pdata->pdev->dev,
> +                       "tsensor thermal calibration not supported: 0x%x!\n",
> +                       ver);
> +       }
> +
> +       return ret;
> +}
> +
> +static int amlogic_thermal_enable(struct amlogic_thermal *data)
> +{
> +       int ret;
> +
> +       ret = clk_prepare_enable(data->clk);
> +       if (ret)
> +               return ret;
> +
> +       regmap_update_bits(data->regmap, TSENSOR_CFG_REG1,
> +                          TSENSOR_CFG_REG1_ENABLE, TSENSOR_CFG_REG1_ENABLE);
> +
> +       return 0;
> +}
> +
> +static int amlogic_thermal_disable(struct amlogic_thermal *data)
> +{
> +       regmap_update_bits(data->regmap, TSENSOR_CFG_REG1,
> +                          TSENSOR_CFG_REG1_ENABLE, 0);
> +       clk_disable_unprepare(data->clk);
> +
> +       return 0;
> +}
> +
> +static int amlogic_thermal_get_temp(void *data, int *temp)
> +{
> +       unsigned int tval;
> +       struct amlogic_thermal *pdata = data;
> +
> +       if (!data)
> +               return -EINVAL;
> +
> +       regmap_read(pdata->regmap, TSENSOR_STAT0, &tval);
> +       *temp =
> +          amlogic_thermal_code_to_millicelsius(pdata,
> +                                               tval & TSENSOR_READ_TEMP_MASK);
> +
> +       return 0;
> +}
> +
> +static const struct thermal_zone_of_device_ops amlogic_thermal_ops = {
> +       .get_temp       = amlogic_thermal_get_temp,
> +};
> +
> +static const struct regmap_config amlogic_thermal_regmap_config_g12a = {
> +       .reg_bits = 8,
> +       .val_bits = 32,
> +       .reg_stride = 4,
> +       .max_register = TSENSOR_STAT9,
> +};
> +
> +static const struct amlogic_thermal_soc_calib_data amlogic_thermal_g12a = {
> +       .A = 9411,
> +       .B = 3159,
> +       .m = 424,
> +       .n = 324,
> +};
> +
> +static const struct amlogic_thermal_data amlogic_thermal_g12a_cpu_param = {
> +       .u_efuse_off = 0x128,
> +       .calibration_parameters = &amlogic_thermal_g12a,
> +       .regmap_config = &amlogic_thermal_regmap_config_g12a,
> +};
> +
> +static const struct amlogic_thermal_data amlogic_thermal_g12a_ddr_param = {
> +       .u_efuse_off = 0xf0,
> +       .calibration_parameters = &amlogic_thermal_g12a,
> +       .regmap_config = &amlogic_thermal_regmap_config_g12a,
> +};
> +
> +static const struct of_device_id of_amlogic_thermal_match[] = {
> +       {
> +               .compatible = "amlogic,g12a-ddr-thermal",
> +               .data = &amlogic_thermal_g12a_ddr_param,
> +       },
> +       {
> +               .compatible = "amlogic,g12a-cpu-thermal",
> +               .data = &amlogic_thermal_g12a_cpu_param,
> +       },
> +       { /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, of_amlogic_thermal_match);
> +
> +static int amlogic_thermal_probe(struct platform_device *pdev)
> +{
> +       struct amlogic_thermal *pdata;
> +       struct device *dev = &pdev->dev;
> +       struct resource *res;
> +       void __iomem *base;
> +       int ret;
> +
> +       pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
> +       if (!pdata)
> +               return -ENOMEM;
> +
> +       pdata->data = of_device_get_match_data(dev);
> +       pdata->pdev = pdev;
> +       platform_set_drvdata(pdev, pdata);
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

Use devm_platform_ioremap_resource instead.

> +       base = devm_ioremap_resource(dev, res);
> +       if (IS_ERR(base)) {
> +               dev_err(dev, "failed to get io address\n");
> +               return PTR_ERR(base);
> +       }
> +
> +       pdata->regmap = devm_regmap_init_mmio(dev, base,
> +                                             pdata->data->regmap_config);
> +       if (IS_ERR(pdata->regmap))
> +               return PTR_ERR(pdata->regmap);
> +
> +       pdata->clk = devm_clk_get(dev, NULL);
> +       if (IS_ERR(pdata->clk)) {
> +               if (PTR_ERR(pdata->clk) != -EPROBE_DEFER)
> +                       dev_err(dev, "failed to get clock\n");
> +               return PTR_ERR(pdata->clk);
> +       }
> +
> +       pdata->sec_ao_map = syscon_regmap_lookup_by_phandle
> +               (pdev->dev.of_node, "amlogic,ao-secure");
> +       if (IS_ERR(pdata->sec_ao_map)) {
> +               dev_err(dev, "syscon regmap lookup failed.\n");
> +               return PTR_ERR(pdata->sec_ao_map);
> +       }
> +
> +       pdata->tzd = devm_thermal_zone_of_sensor_register(&pdev->dev,
> +                                                         0,
> +                                                         pdata,
> +                                                         &amlogic_thermal_ops);
> +       if (IS_ERR(pdata->tzd)) {
> +               ret = PTR_ERR(pdata->tzd);
> +               dev_err(dev, "Failed to register tsensor: %d\n", ret);
> +               return PTR_ERR(pdata->tzd);

return ret;

> +       }
> +
> +       ret = amlogic_thermal_initialize(pdata);
> +       if (ret)
> +               return ret;
> +
> +       ret = amlogic_thermal_enable(pdata);
> +
> +       return ret;
> +}
> +
> +static int amlogic_thermal_remove(struct platform_device *pdev)
> +{
> +       struct amlogic_thermal *data = platform_get_drvdata(pdev);
> +
> +       return amlogic_thermal_disable(data);
> +}
> +
> +static int __maybe_unused amlogic_thermal_suspend(struct device *dev)
> +{
> +       struct amlogic_thermal *data = dev_get_drvdata(dev);
> +
> +       return amlogic_thermal_disable(data);
> +}
> +
> +static int __maybe_unused amlogic_thermal_resume(struct device *dev)
> +{
> +       struct amlogic_thermal *data = dev_get_drvdata(dev);
> +
> +       return amlogic_thermal_enable(data);
> +}
> +
> +static SIMPLE_DEV_PM_OPS(amlogic_thermal_pm_ops,
> +                        amlogic_thermal_suspend, amlogic_thermal_resume);
> +
> +static struct platform_driver amlogic_thermal_driver = {
> +       .driver = {
> +               .name           = "amlogic_thermal",
> +               .pm             = &amlogic_thermal_pm_ops,
> +               .of_match_table = of_amlogic_thermal_match,
> +       },
> +       .probe  = amlogic_thermal_probe,
> +       .remove = amlogic_thermal_remove,
> +};
> +
> +module_platform_driver(amlogic_thermal_driver);
> +
> +MODULE_AUTHOR("Guillaume La Roque <glaroque@baylibre.com>");
> +MODULE_DESCRIPTION("Amlogic thermal driver");
> +MODULE_LICENSE("GPL v2");
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
