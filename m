Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4C9807B6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 20:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNBo46rGVKG1tHOLqloBuUwH4yjnbfAig9ozmAA7V2U=; b=dLxLI7Z1vw/gbU
	VtKCSefL8wWaQwjPkyvf4p05jqrEcz969Yt0Nz1OrdMvzSCa7te91bdU7Rr25NdmrRcwyEwn3xQsz
	k3NNOE17cqF3not77Je4LxqgWpEXx6cHC57aTAFni7Y3u/28S8qYGAEW/Cevhq1HbaPinNk34n7au
	jOrK6d8ll+1Q4reHueDajbKgd4FMIJkIU3Lt9VMM57jEaD66M/9IFPBMfBmXmjE0oxkALnaZZ5gfE
	odTmlekEm9eXUNeXDNDvLJ3Pg7HEyF40dXyoSuTzrwrnA+EXy6NTPEuYoCkswaK7X0amKucNZUrm/
	dHGeJm2mUdoHPJqxxc/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htyiZ-0003u7-W9; Sat, 03 Aug 2019 18:25:24 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htyiK-0003f3-Dc; Sat, 03 Aug 2019 18:25:10 +0000
Received: by mail-ot1-x341.google.com with SMTP id o101so81440426ota.8;
 Sat, 03 Aug 2019 11:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0k/3wM0F9hkcUv0u81phO5YELB+EYkQGAmqQnT3ZS1k=;
 b=Us8rileHENKvobs3syDjHKWM5OF1Aa2j4WI5uHrhNeVEIKpIwlqcGoP8twTdGWWHwM
 QK97jEf4N2q2Of/FGYubC8EQk7OrF8QvyGLFk2racGYjrhDzWFO/dXOm5jGbIqWmOB19
 akTa01WYT0afd/NZNvn8RJtdfHHARVOjN6LfQXueYutAg8QJJ7SiYWYoeiQ1Nd+qWYAJ
 hpXytOcwgErCj0AkPPclEiO7AqUkZT3ewRBMN7wcnbstjk78dPXnUvkJtLyriL7KXPw5
 UucpQ4ob29f02VE0v2p/9hRmM7jsGykPm23zDZEFfKaWHpJ0i0OMTnf3aLJim7z3PS5C
 c8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0k/3wM0F9hkcUv0u81phO5YELB+EYkQGAmqQnT3ZS1k=;
 b=Q2cVzUln/Lb+QxjAnDBLMgbq4YNg+eW34yXDVB/50qDEAzwKXfqbCxQ+sYtjnDKE0H
 sxFQM4eW1pQWNGBTtJ4YDtbk1LUnRoTohVxEmQEuV9/drDhQ/cyDoFIibULoIKBVSL7t
 SmsBkq7qriXTNrHUxZ/bXGks/nZ+IW8AcJ9JrO11VIC++mD1UkIbNzP0zfaEjuyLB6k1
 Lgl+QH1PAeODslhTIsUUQmF1pWG+W709QiNFUnGJsy0o/3AWStVfIKsMqUvt/pd7xR4s
 RoK4XPy7iLPBxR376jDi3RzRaNUXSgbqGR3+pjKLHXi01fs3/kAf65PaN8tLw9QXZGmM
 3bIQ==
X-Gm-Message-State: APjAAAXJmwxu2/YIPF/0pcRBXqBVG4Ojeg/wE9afYOdQCAnsKxfkXL1Y
 fwaCO9iMbSekyFFUHezQ7gyiKwHHtsn2XfRqlh4=
X-Google-Smtp-Source: APXvYqxNo1Y+A6MJXdJl28CDf2nMoUwhIsGw4mZMR5DIF5eM9XrgOQQG12ZuWebxmTC0QKW3HNs4qMLC6KmZ58QzaZo=
X-Received: by 2002:a9d:226c:: with SMTP id o99mr24398880ota.42.1564856705915; 
 Sat, 03 Aug 2019 11:25:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153529.30159-1-glaroque@baylibre.com>
 <20190731153529.30159-3-glaroque@baylibre.com>
In-Reply-To: <20190731153529.30159-3-glaroque@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 3 Aug 2019 20:24:54 +0200
Message-ID: <CAFBinCDGSJABnS1L1ULueyeXZaV38qrxEA0a12gB-uyRC_TvPQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] thermal: amlogic: Add thermal driver to support
 G12 SoCs
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_112508_490173_CCE4A685 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guillaume,

(I still don't have any experience with the thermal framework, so
below are some general comments)

On Wed, Jul 31, 2019 at 5:36 PM Guillaume La Roque
<glaroque@baylibre.com> wrote:
I would add a patch description here:
"
Amlogic G12A and G12B SoCs integrate two thermal sensors with the same design.
One is located close to the DDR (controller?) and the other one is
located close to the PLLs (between the CPU and GPU).

The calibration data for each of the thermal sensors instance is
stored in a different location within the AO region.

Implement reading the temperature from each thermal sensor.

The IP block has more functionality, which may be added to this driver
in the future:
- reading up to 16 stored temperature samples
- chip reset when the temperature exceeds a configurable threshold
- up to four interrupts when the temperature has risen above a
configurable threshold
- up to four interrupts when the temperature has fallen below a
configurable threshold
"

> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
>  drivers/thermal/Kconfig           |  11 +
>  drivers/thermal/Makefile          |   1 +
>  drivers/thermal/amlogic_thermal.c | 332 ++++++++++++++++++++++++++++++
>  3 files changed, 344 insertions(+)
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
we typically use "MESON" in the Kconfig symbols:
$ grep -c AMLOGIC .config
1
$ grep -c MESON .config
33

I also wonder if we should add G12 or G12A so we don't conflict with
upcoming thermal sensors with a different design (assuming that this
will be a thing).
for example we already have three different USB2 PHY drivers

[...]
> +/*
> + * Calculate a temperature value from a temperature code.
> + * The unit of the temperature is degree Celsius.
is it really degree Celsius or millicelsius?

> + */
> +static int code_to_temp(struct amlogic_thermal *pdata, int temp_code)
PREFIX_thermal_code_to_millicelsius?

[...]
> +static int amlogic_thermal_enable(struct amlogic_thermal *data)
> +{
> +       clk_prepare_enable(data->clk);
no clock error handling?

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
> +       clk_disable(data->clk);
either clk_disable_unprepare here or use only clk_enable in
amlogic_thermal_enable and move prepare/unprepare somewhere else

> +
> +       return 0;
> +}
> +
> +static int amlogic_thermal_get_temp(void *data, int *temp)
> +{
> +       unsigned int tvalue;
> +       struct amlogic_thermal *pdata = data;
> +
> +       if (!data)
> +               return -EINVAL;
> +
> +       regmap_read(pdata->regmap, TSENSOR_STAT0, &tvalue);
> +       *temp = code_to_temp(pdata,
> +                            tvalue & TSENSOR_READ_TEMP_MASK);
maybe simply move the implementation from code_to_temp here?

[...]
> +static const struct amlogic_thermal_data amlogic_thermal_g12_cpu_param = {
> +       .u_efuse_off = 0x128,
> +       .soc = &amlogic_thermal_g12,
based on the variable name I expected this to be an enum of some sort.
I would have expected it to be called calibration_parameters or
similar to match the explanation in the driver description
(no need to change it if you prefer it like this, I just want to make
you aware of this)

> +       .regmap_config = &amlogic_thermal_regmap_config_g12,
if regmap_config is always the same you may also pass it directly to
devm_regmap_init_mmio

> +};
> +
> +static const struct amlogic_thermal_data amlogic_thermal_g12_ddr_param = {
> +       .u_efuse_off = 0xF0,
I believe we use lower-case hex everywhere else

[...]
> +static const struct of_device_id of_amlogic_thermal_match[] = {
> +       {
> +               .compatible = "amlogic,g12-ddr-thermal",
> +               .data = &amlogic_thermal_g12_ddr_param,
> +       },
> +       {
> +               .compatible = "amlogic,g12-cpu-thermal",
> +               .data = &amlogic_thermal_g12_cpu_param,
> +       },
> +       { /* end */ }
other drivers use "sentinel", but personally I have no preference here

[...]
> +       pdata->tzd = devm_thermal_zone_of_sensor_register
> +                               (&pdev->dev,
> +                                0,
> +                                pdata,
> +                                &amlogic_thermal_ops);
I believe the opening brace has to go onto the same line as the function name

[...]
> +       ret = amlogic_thermal_enable(pdata);
> +       if (ret)
> +               clk_unprepare(pdata->clk);
clk_disable_unprepare, else you'll leave the clock prepared

> +#ifdef CONFIG_PM_SLEEP
> +static int amlogic_thermal_suspend(struct device *dev)
> +{
> +       struct amlogic_thermal *data = dev_get_drvdata(dev);
> +
> +       return amlogic_thermal_disable(data);
> +}
> +
> +static int amlogic_thermal_resume(struct device *dev)
> +{
> +       struct amlogic_thermal *data = dev_get_drvdata(dev);
> +
> +       return amlogic_thermal_enable(data);
> +}
> +#endif
instead of using an #ifdef here annotate the suspend/resume functions
with __maybe_unused, see [0]


Martin


[0] https://lore.kernel.org/patchwork/patch/732981/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
