Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127E9C35AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tk2bsDdXqvk9uBAcd1JbKnRPIVDdK8iUkG5Ijc44GG8=; b=sfrA5bMgTOzdOoGK9M06n66K95
	wEZttMhYyiGzEroeIAng0N7KMgvxT4M4zQPhgOSfk8EsypE+at0+PZFwbCeoxhifO34hJQEu5dgkJ
	xh+6gJehBsm5VPmz4vZA7ZcI3hlmCGtU1DFoftZ67SpDsvmkBNTzJSUlKx0Vn+RcuOK2mfybhjwO7
	xOWT+4uFFWMk9QbkSsQ9b3ngFIlskFGOyUEuyLHs6XcNg+4vbnBa7avd5NqnCtvT/HPpCJe15YHM4
	d72Td+wnN2iFT91C1IuDHUIsXFYiyBJPBteQYVPwuKiSb76dgc3Gpn0rBS3UttLj8PvphkGk2bhtc
	vrHmml/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIDk-0006ta-2c; Tue, 01 Oct 2019 13:29:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIDb-0006sF-8p
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:29:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id y135so2540994wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 06:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=6fmOtDG9wumNq7oSBw0ZDgWws+Bwcs6uGBqlMQq6e/Y=;
 b=VLGvSD3HdHOl274TXhBufAAB7EaOvXyErfrOZwEHDuM3CyvO44yMZS0moonj89GV0u
 Fa4ykiXGEIwKRqQhxGr5QTMOirhM59XWeIzXccsS3qdPmIcoOg5cPCGKyh3+YZj8CImP
 qDQulK4Bd03h0htA0xUhd/2lmbInaM/iEImz5LB7543+X3hpJ5302eMZU2nt5gAPZSzH
 RX+WC5wfx+0uCPoJj8gnHQw/HAR+YIHf15+HboOc/ZK3/p+8wbpafdLFj44Q8cTw6B2W
 zEXd4qrV9iM6nayjhufcdbfVZ0R3AsbCfP6k7C7l6IAQEKnxgtWoO9/8y8LHtrFCzNT6
 /J/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=6fmOtDG9wumNq7oSBw0ZDgWws+Bwcs6uGBqlMQq6e/Y=;
 b=P9xDdDRU20kqK/xr32KIyEMma4VnjQ1oiW9JlDwRAd6CNFmVGTA8ipuItjx6syoZqZ
 z6xLcr+Wb1PzO4QSTZMIbwgWrK3BDK3Wbvya7O68niz931pYpmu1Y7ksWDKr2ZmRuy9/
 HTkMQaBi1KHM30OJG5MNTL6oszcCP8Qnp9Oq/dqu7JKvfow51D1av0xBOs1qEv76CvDX
 Y5sCSm3Y42yTahKOGhjM39gVguhYU7Zxm1XWkNie8LbHV6ixsxIT2dxVm/I+8XGa+yYi
 CNJrdHM7tdR3NL4HoggFoSPUUbe3lxLqcdSEeDpTvxeExIOkC4I2aET1w2xPsaTG5dim
 0gBA==
X-Gm-Message-State: APjAAAULEpBEb6NrNu+JjXNFlAaCcxZonVYtdbHF3fkDu2XZWOVGSaiU
 dO95J99WYfvQ2W99QV1xqlcBjA==
X-Google-Smtp-Source: APXvYqxSLkwV0MKrrWya7m1Pkes7Ud2Q1y6aupZF7eGvustmfQWfRlRYy+rx/1UwwS1GGFGqHPuzKQ==
X-Received: by 2002:a7b:c92b:: with SMTP id h11mr3860964wml.10.1569936567007; 
 Tue, 01 Oct 2019 06:29:27 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l13sm2806895wmj.25.2019.10.01.06.29.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 06:29:26 -0700 (PDT)
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
 <20190921151835.770263-3-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 2/6] clk: meson: add a driver for the Meson8/8b/8m2 DDR
 clock controller
In-reply-to: <20190921151835.770263-3-martin.blumenstingl@googlemail.com>
Date: Tue, 01 Oct 2019 15:29:25 +0200
Message-ID: <1jftkcr3uy.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_062931_312280_ECAD2C7A 
X-CRM114-Status: GOOD (  24.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sat 21 Sep 2019 at 17:18, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The Meson8/Meson8b/Meson8m2 SoCs embed a DDR clock controller in the
> MMCBUS registers. There is no public documentation, but the u-boot GPL
> sources from the Amlogic BSP show that the DDR clock controller is
> identical on all three SoCs:
>   #define CFG_DDR_CLK 792
>   #define CFG_PLL_M (((CFG_DDR_CLK/12)*12)/24)
>   #define CFG_PLL_N 1
>   #define CFG_PLL_OD 1
>
>   // from set_ddr_clock:
>   t_ddr_pll_cntl= (CFG_PLL_OD << 16)|(CFG_PLL_N<<9)|(CFG_PLL_M<<0)
>   writel(timing_reg->t_ddr_pll_cntl|(1<<29),AM_DDR_PLL_CNTL);
>   writel(readl(AM_DDR_PLL_CNTL) & (~(1<<29)),AM_DDR_PLL_CNTL);
>
>   // from hx_ddr_power_down_enter: shut down DDR PLL
>   writel(readl(AM_DDR_PLL_CNTL)|(1<<30),AM_DDR_PLL_CNTL);
>
>   do { ... } while((readl(AM_DDR_PLL_CNTL)&(1<<31))==0)
>
> This translates to:
> - AM_DDR_PLL_CNTL[29] is the reset bit
> - AM_DDR_PLL_CNTL[30] is the enable bit
> - AM_DDR_PLL_CNTL[31] is the lock bit
> - AM_DDR_PLL_CNTL[8:0] is the m value (assuming the width is 9 bits
>   based on the start of the n value)
> - AM_DDR_PLL_CNTL[13:9] is the n value (assuming the width is 5 bits
>   based on the start of the od)
> - AM_DDR_PLL_CNTL[17:16] is the od (assuming the width is 2 bits based
>   on other PLLs on this SoC)
>
> Add a driver for this PLL setup because it's used as one of the inputs
> of the audio clocks. There may be more clocks inside that clock
> controller - those can be added in subsequent patches.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/clk/meson/Makefile     |   2 +-
>  drivers/clk/meson/meson8-ddr.c | 153 +++++++++++++++++++++++++++++++++
>  2 files changed, 154 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/meson/meson8-ddr.c
>
> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
> index 3939f218587a..6eca2a406ee3 100644
> --- a/drivers/clk/meson/Makefile
> +++ b/drivers/clk/meson/Makefile
> @@ -18,4 +18,4 @@ obj-$(CONFIG_COMMON_CLK_AXG) += axg.o axg-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
>  obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_G12A) += g12a.o g12a-aoclk.o
> -obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o
> +obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o meson8-ddr.o
> diff --git a/drivers/clk/meson/meson8-ddr.c b/drivers/clk/meson/meson8-ddr.c
> new file mode 100644
> index 000000000000..64ab4c27cce0
> --- /dev/null
> +++ b/drivers/clk/meson/meson8-ddr.c
> @@ -0,0 +1,153 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Amlogic Meson8 DDR clock controller
> + *
> + * Copyright (C) 2019 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> + */
> +
> +#include <dt-bindings/clock/meson8-ddr-clkc.h>
> +
> +#include <linux/platform_device.h>
> +#include <linux/mfd/syscon.h>

syscon is not used in the driver

> +#include <linux/of_device.h>
> +#include <linux/slab.h>
> +
> +#include "clk-regmap.h"
> +#include "clk-pll.h"
> +
> +#define AM_DDR_PLL_CNTL			0x00
> +#define AM_DDR_PLL_CNTL1		0x04
> +#define AM_DDR_PLL_CNTL2		0x08
> +#define AM_DDR_PLL_CNTL3		0x0c
> +#define AM_DDR_PLL_CNTL4		0x10
> +#define AM_DDR_PLL_STS			0x14
> +#define DDR_CLK_CNTL			0x18
> +#define DDR_CLK_STS			0x1c
> +
> +static struct clk_regmap meson8_ddr_pll_dco = {
> +	.data = &(struct meson_clk_pll_data){
> +		.en = {
> +			.reg_off = AM_DDR_PLL_CNTL,
> +			.shift   = 30,
> +			.width   = 1,
> +		},
> +		.m = {
> +			.reg_off = AM_DDR_PLL_CNTL,
> +			.shift   = 0,
> +			.width   = 9,
> +		},
> +		.n = {
> +			.reg_off = AM_DDR_PLL_CNTL,
> +			.shift   = 9,
> +			.width   = 5,
> +		},
> +		.l = {
> +			.reg_off = AM_DDR_PLL_CNTL,
> +			.shift   = 31,
> +			.width   = 1,
> +		},
> +		.rst = {
> +			.reg_off = AM_DDR_PLL_CNTL,
> +			.shift   = 29,
> +			.width   = 1,
> +		},
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "ddr_pll_dco",
> +		.ops = &meson_clk_pll_ro_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap meson8_ddr_pll = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = AM_DDR_PLL_CNTL,
> +		.shift = 16,
> +		.width = 2,
> +		.flags = CLK_DIVIDER_POWER_OF_TWO,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "ddr_pll",
> +		.ops = &clk_regmap_divider_ro_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&meson8_ddr_pll_dco.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_hw_onecell_data meson8_ddr_clk_hw_onecell_data = {
> +	.hws = {
> +		[DDR_CLKID_DDR_PLL_DCO]		= &meson8_ddr_pll_dco.hw,
> +		[DDR_CLKID_DDR_PLL]		= &meson8_ddr_pll.hw,

I wonder if onecell is not overkill for this driver. We won't expose the
DCO, so only the post divider remains

Do you expect this provider to have more than one leaf clock ?
If not, maybe you could use of_clk_hw_simple_get() instead ?

> +	},
> +	.num = 2,
> +};
> +
> +static struct clk_regmap *const meson8_ddr_clk_regmaps[] = {
> +	&meson8_ddr_pll_dco,
> +	&meson8_ddr_pll,
> +};
> +
> +static const struct regmap_config meson8_ddr_clkc_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.fast_io = true,

I think fast_io will default to true with memory based register.
Setting the max_register would be nice

> +};
> +
> +static int meson8_ddr_clkc_probe(struct platform_device *pdev)
> +{
> +	struct regmap *regmap;
> +	struct resource *res;
> +	void __iomem *base;
> +	struct clk_hw *hw;
> +	int ret, i;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	base = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	regmap = devm_regmap_init_mmio(&pdev->dev, base,
> +				       &meson8_ddr_clkc_regmap_config);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	/* Populate regmap */
> +	for (i = 0; i < ARRAY_SIZE(meson8_ddr_clk_regmaps); i++)
> +		meson8_ddr_clk_regmaps[i]->map = regmap;
> +
> +	/* Register all clks */
> +	for (i = 0; i < meson8_ddr_clk_hw_onecell_data.num; i++) {
> +		hw = meson8_ddr_clk_hw_onecell_data.hws[i];
> +
> +		ret = devm_clk_hw_register(&pdev->dev, hw);
> +		if (ret) {
> +			dev_err(&pdev->dev, "Clock registration failed\n");
> +			return ret;
> +		}
> +	}
> +
> +	return devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_onecell_get,
> +					   &meson8_ddr_clk_hw_onecell_data);
> +}
> +
> +static const struct of_device_id meson8_ddr_clkc_match_table[] = {
> +	{ .compatible = "amlogic,meson8-ddr-clkc" },
> +	{ .compatible = "amlogic,meson8b-ddr-clkc" },
> +	{ /* sentinel */ },
> +};
> +
> +static struct platform_driver meson8_ddr_clkc_driver = {
> +	.probe		= meson8_ddr_clkc_probe,
> +	.driver		= {
> +		.name	= "meson8-ddr-clkc",
> +		.of_match_table = meson8_ddr_clkc_match_table,
> +	},
> +};
> +
> +builtin_platform_driver(meson8_ddr_clkc_driver);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
