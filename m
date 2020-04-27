Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D591B9A7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XlQeTLXMUp+H9davOFmIbRRuAQaKDKf2jz8yrRDQY48=; b=ixI1kuWAnsohWkMHCeb5RuVUe3
	ow0cQ18JDjU6zOepab0rKYvcUt7yc0ZvlwWvZo/Z8m6zN9OQ9B+JeXHDGt+cxtQ5krqh7k6zstbvg
	mT4jI3tmMs1dRw+4PS9PxG0Krdit6sxkh+F55h+AtFTfrSaTBc9PIBdIFgaVMsgHbRbpEtdPNNgQR
	OZVJAbvvWv/cQ/K0IjpVTHr+C2P1gFLXEUj0G5hxO/zN0s3BPfPynlevtny12yGyRWe4QO6AaawPk
	qo91HIcxUSjH1PJ7fwlzI0h+wigqDE0B+TELey04Ocsf9TyRN3xWf+0MjnCdC9S7LmJR8SZwJl1+M
	GYl7VLrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzLE-0002GT-PK; Mon, 27 Apr 2020 08:42:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzKr-0001vd-O7
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:41:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id b11so19478672wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 01:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=8DTpZ7QTAlg896NKaUsrKf14877jsurbWtqJgSM1X8Q=;
 b=PZD3quaPIQ9tiPvCvWJ2uQoeuPgAd1sOCq9CwAQOnqSvpQjqtxjrO52MrMwoR+SrWU
 I9fGX6jmA8CUm7OYAWf5yIczA6MeAQssu3Bq5UqyaUmidJ2TDz8ux2GWsBiR6A7LxZJI
 Unh9imc3LyCceAdy+3ZWRXpQ+9UT2r4rHR36rKUKe4MrDQ5vNH7qTAQi7+NcJaiHHWBN
 21/ppNC3BEAUIIRM9GNHfZjRZIhoM03Gk3KNPOMZfKBICHqwUEzHs+qJ2AY/i2684EM9
 X/5VVGs/GXWqVuMOyw3NJ/y9hIu5YwdIkv6Pb44NOZ+yNEP9s5DKOQc62A9KEnbwG8bU
 LFuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=8DTpZ7QTAlg896NKaUsrKf14877jsurbWtqJgSM1X8Q=;
 b=Mf5i7X1rDREQFyZmCbpoONC2g9oWkwXpONeSkJqUdtqFloa0pPdVCxLfLDUxhCOSN3
 oZMfHZbOFtwWdgruXDtEyZQPWz1JPaX9SjzqubA8q0wn5/1lM/mXQeZ5aBm/FMCKD0km
 cvHaROz9ErZwm8x7dHdxPOmbsDF9qe5/v7UdQY3SQzlFBrU0ZR8EOyRNg4y8Z0QAGR84
 bRATP/MQmqR12iIqE6A7aXGh421onK0icSscEOQbh3lMcJo36TOpesVqjJ4nS1HN6+NE
 3P4wR57Q0oRiKKqt2IB3K7NSis/EYLcPMvxcp7X6VeLdExwKYPG8wWO4rg1bspE16mQj
 oFVA==
X-Gm-Message-State: AGi0PuaI7OGA2pveJaqu0nMjX8e5KmgMmoCEIOG18ool8+4pvs1bDePP
 TJwoWkYvfep/fTeOaW3F0fie7Q==
X-Google-Smtp-Source: APiQypLRQPsncevt7ufFgtwISI8nUtLk4di5UjL7O718ObKF5S82cJcx6T0AVuQXT17USzPlqcg/Vg==
X-Received: by 2002:adf:a15d:: with SMTP id r29mr24633058wrr.134.1587976911054; 
 Mon, 27 Apr 2020 01:41:51 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id x18sm19836833wrv.12.2020.04.27.01.41.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 01:41:50 -0700 (PDT)
References: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
 <20200328003249.1248978-3-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, ulf.hansson@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH v5 2/3] clk: meson: add a driver for the Meson8/8b/8m2
 SDHC clock controller
In-reply-to: <20200328003249.1248978-3-martin.blumenstingl@googlemail.com>
Date: Mon, 27 Apr 2020 10:41:49 +0200
Message-ID: <1jd07t2ucy.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_014153_802500_68AA8961 
X-CRM114-Status: GOOD (  27.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: mark.rutland@arm.com, jianxin.pan@amlogic.com, linux-kernel@vger.kernel.org,
 yinxin_1989@aliyun.com, linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sat 28 Mar 2020 at 01:32, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The SDHC (MMC) controller embeds a clock controller inside one of the
> SDHC registers. The outputs of thisclock controller are dedicated to the
> SDHC controller.
>
> Implement a dedicated clock controller driver so we can keep all the
> clock specific logic outside of the MMC controller driver. There is no
> dedicated clock controller OF node because the hardware is a big SDHC IP
> block with an embedded clock controller (so the .dts doesn't need a
> separate clock controller node). Instead this driver re-uses the regmap
> as registered by the (platform_device) parent.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/clk/meson/Kconfig         |   9 ++
>  drivers/clk/meson/Makefile        |   1 +
>  drivers/clk/meson/meson-mx-sdhc.c | 212 ++++++++++++++++++++++++++++++
>  3 files changed, 222 insertions(+)
>  create mode 100644 drivers/clk/meson/meson-mx-sdhc.c
>
> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
> index dabeb435d067..8769335d2d46 100644
> --- a/drivers/clk/meson/Kconfig
> +++ b/drivers/clk/meson/Kconfig
> @@ -53,6 +53,15 @@ config COMMON_CLK_MESON8B
>  	  S805 (Meson8b) and S812 (Meson8m2) devices. Say Y if you
>  	  want peripherals and CPU frequency scaling to work.
>  
> +config COMMON_CLK_MESON_MX_SDHC
> +	tristate "Meson MX SDHC MMC Clock Controller Driver"
> +	depends on ARCH_MESON
> +	select COMMON_CLK_MESON_REGMAP
> +	help
> +	  Support for the SDHC clock controller on Amlogic Meson8/8b/8m2 SoCs
> +	  devices. Say Y or M if you want to use the SDHC MMC controller.
> +	  Otherwise say N.
> +
>  config COMMON_CLK_GXBB
>  	bool
>  	depends on ARCH_MESON
> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
> index 6eca2a406ee3..b71c7ae78dbd 100644
> --- a/drivers/clk/meson/Makefile
> +++ b/drivers/clk/meson/Makefile
> @@ -19,3 +19,4 @@ obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
>  obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_G12A) += g12a.o g12a-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o meson8-ddr.o
> +obj-$(CONFIG_COMMON_CLK_MESON_MX_SDHC) += meson-mx-sdhc.o
> diff --git a/drivers/clk/meson/meson-mx-sdhc.c b/drivers/clk/meson/meson-mx-sdhc.c
> new file mode 100644
> index 000000000000..b98a35d99f65
> --- /dev/null
> +++ b/drivers/clk/meson/meson-mx-sdhc.c
> @@ -0,0 +1,212 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Amlogic Meson SDHC clock controller
> + *
> + * Copyright (C) 2019 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> + */
> +
> +#include <dt-bindings/clock/meson-mx-sdhc-clkc.h>
> +
> +#include <linux/clk-provider.h>
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +
> +#include "clk-regmap.h"
> +#include "clk-pll.h"

If you need the pll clocks, it should probably appear in the Kconfig
deps as well

> +
> +#define MESON_SDHC_CLKC			0x10
> +
> +static const struct clk_regmap meson_mx_sdhc_src_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = MESON_SDHC_CLKC,
> +		.mask = 0x3,
> +		.shift = 16,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sdhc_src_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .fw_name = "clkin0", .index = -1, },
> +			{ .fw_name = "clkin1", .index = -1, },
> +			{ .fw_name = "clkin2", .index = -1, },
> +			{ .fw_name = "clkin3", .index = -1, },

When fw_name is specified, setting the index is not necessary

> +		},
> +		.num_parents = 4,
> +	},
> +};
> +
> +static const struct clk_div_table meson_mx_sdhc_div_table[] = {
> +	{ .div = 6, .val = 5, },
> +	{ .div = 8, .val = 7, },
> +	{ .div = 9, .val = 8, },
> +	{ .div = 10, .val = 9, },
> +	{ .div = 12, .val = 11, },
> +	{ .div = 16, .val = 15, },
> +	{ .div = 18, .val = 17, },
> +	{ .div = 34, .val = 33, },
> +	{ .div = 142, .val = 141, },
> +	{ .div = 850, .val = 849, },
> +	{ .div = 2126, .val = 2125, },
> +	{ .div = 4096, .val = 4095, },
> +	{ /* sentinel */ }
> +};
> +
> +static const struct clk_regmap meson_mx_sdhc_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = MESON_SDHC_CLKC,
> +		.shift = 0,
> +		.width = 12,
> +		.table = meson_mx_sdhc_div_table,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sdhc_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .name = "sdhc_src_sel", .index = -1, },

Any reason for using the lagacy names and not the clk_hw pointers ?
Same comment for the rest of the clocks

> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static const struct clk_regmap meson_mx_sdhc_mod_clk_en = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = MESON_SDHC_CLKC,
> +		.bit_idx = 15,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sdhc_mod_clk_on",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .name = "sdhc_div", .index = -1, },
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_GATE,

Why can't the clock change rate unless gated ? Maybe you prefer to
change the rate in the mmc while clock is gated, but this is the
handling of the clock by the mmc driver, not a constraint of the actual
clock HW, isn't it ?

Also, this is a gate so I suppose the rate propagates through it ?
Can you explain why CLK_SET_RATE_PARENT is not set  ?

> +	},
> +};
> +
> +static const struct clk_regmap meson_mx_sdhc_tx_clk_en = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = MESON_SDHC_CLKC,
> +		.bit_idx = 14,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sdhc_tx_clk_on",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .name = "sdhc_div", .index = -1, },
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_GATE,
> +	},
> +};
> +
> +static const struct clk_regmap meson_mx_sdhc_rx_clk_en = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = MESON_SDHC_CLKC,
> +		.bit_idx = 13,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sdhc_rx_clk_on",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .name = "sdhc_div", .index = -1, },
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT | CLK_SET_RATE_GATE,

Ok so apparently you only want to set the rate through the RX clock.
You are free to call set_rate() only on this clock in the mmc driver.
However, I don't think this should reflect as clock constraints.

> +	},
> +};
> +
> +static const struct clk_regmap meson_mx_sdhc_sd_clk_en = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = MESON_SDHC_CLKC,
> +		.bit_idx = 12,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sdhc_sd_clk_on",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = (const struct clk_parent_data[]) {
> +			{ .name = "sdhc_div", .index = -1, },
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT | CLK_SET_RATE_GATE,

... now I lost with these flags. I'm sure there is an idea related to
the mmc driver. Clockwise, I don't get it.

> +	},
> +};
> +
> +static const struct clk_regmap *meson_mx_sdhc_clk_regmaps[] = {
> +	[SDHC_CLKID_SRC_SEL]	= &meson_mx_sdhc_src_sel,
> +	[SDHC_CLKID_DIV]	= &meson_mx_sdhc_div,
> +	[SDHC_CLKID_MOD_CLK]	= &meson_mx_sdhc_mod_clk_en,
> +	[SDHC_CLKID_SD_CLK]	= &meson_mx_sdhc_sd_clk_en,
> +	[SDHC_CLKID_TX_CLK]	= &meson_mx_sdhc_tx_clk_en,
> +	[SDHC_CLKID_RX_CLK]	= &meson_mx_sdhc_rx_clk_en,
> +};
> +
> +#define MESON_MX_SDHC_NUM_CLKS ARRAY_SIZE(meson_mx_sdhc_clk_regmaps)
> +
> +static int meson_mx_sdhc_clkc_probe(struct platform_device *pdev)
> +{
> +	struct device *parent = pdev->dev.parent;
> +	struct clk_hw_onecell_data *onecell_data;
> +	struct clk_regmap *clk_regmap;
> +	struct regmap *regmap;
> +	int i, ret;
> +
> +	regmap = dev_get_regmap(parent, NULL);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	clk_regmap = devm_kcalloc(parent, sizeof(*clk_regmap),
> +				  MESON_MX_SDHC_NUM_CLKS, GFP_KERNEL);
> +	if (!clk_regmap)
> +		return -ENOMEM;
> +
> +	onecell_data = devm_kzalloc(parent,
> +				    struct_size(onecell_data, hws,
> +						MESON_MX_SDHC_NUM_CLKS),
> +				    GFP_KERNEL);
> +	if (!onecell_data)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < MESON_MX_SDHC_NUM_CLKS; i++) {
> +		memcpy(&clk_regmap[i], meson_mx_sdhc_clk_regmaps[i],
> +		       sizeof(*clk_regmap));
> +
> +		clk_regmap[i].map = regmap;
> +		onecell_data->hws[i] = &clk_regmap[i].hw;
> +
> +		ret = devm_clk_hw_register(parent, onecell_data->hws[i]);
> +		if (ret) {
> +			dev_err(parent,
> +				"Registration of SDHC clock %d failed\n", i);
> +			return ret;
> +		}
> +	}
> +
> +	onecell_data->num = MESON_MX_SDHC_NUM_CLKS;
> +
> +	return devm_of_clk_add_hw_provider(parent, of_clk_hw_onecell_get,
> +					   onecell_data);
> +}
> +
> +static const struct platform_device_id meson_mx_sdhc_clkc_ids[] = {
> +	{ "meson8-sdhc-clkc" },
> +	{ "meson8b-sdhc-clkc" },
> +	{ "meson8m2-sdhc-clkc" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(platform, meson_mx_sdhc_clkc_ids);
> +
> +static struct platform_driver meson_mx_sdhc_clkc_driver = {
> +	.id_table	= meson_mx_sdhc_clkc_ids,
> +	.probe		= meson_mx_sdhc_clkc_probe,
> +	.driver		= {
> +		.name	= "meson-mx-sdhc-clkc",
> +	},
> +};
> +module_platform_driver(meson_mx_sdhc_clkc_driver);
> +
> +MODULE_DESCRIPTION("Amlogic Meson8/8b/8m2 SDHC clock controller driver");
> +MODULE_AUTHOR("Martin Blumenstingl <martin.blumenstingl@googlemail.com>");
> +MODULE_LICENSE("GPL v2");


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
