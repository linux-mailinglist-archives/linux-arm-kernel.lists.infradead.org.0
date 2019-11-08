Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C35F5ABE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 23:17:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=780ap/Djl4sE2vKTyv62UwKDmCCaCq2anMR5jbkJ4wY=; b=RfCFfRh+/np3mu
	9g5we/212mlmSjJcZqkT9VsZ72DLplUrN0YwL6w7696OFWFEObRn7DayM3vpkVdObgc97XSzBG21d
	D+FPlnmawV0r79qBVdEluhEDoJqBSQ2cZ+ahBuqXcjdQxWpFgnnrJpWq6ZtU1QoNNFlw3dTo8Kq0S
	JCHBS6ur0ABbOKZtOy0n9FI5UpFNWb9+znM7MSO0OU9VzZWIM2ev7+WJz8t5OjO7LJi0z9ebgR2w/
	bt8sbcdZKhufRM5v/zGFMB40pmbHvXeBJigXqP6zJpdLcLctXjQFiZdkJIwVbfN5WNLXWr1Qby6Vw
	5XX2Ud7i3v7/Dg2UblWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTCZ1-0007eP-2U; Fri, 08 Nov 2019 22:17:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTCYn-0007cq-Fu; Fri, 08 Nov 2019 22:16:54 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32FA2206C3;
 Fri,  8 Nov 2019 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573251412;
 bh=UMLMfzeZ5d6ns0l8n8EZL9EegR7c0Zs1zYDFdZD51UQ=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=CWhydIuLpiNkRC2e2o3hgvdyMWzOcF0tY4qbw/aO1IXhXo1X0X9QXzcckycwtajKz
 /K0jAR0/qbv8xYv8WsdeCIZV9+K8NwKZpEkndOJNA+TMu18fskDIvUHmE/shKvEnKO
 F1we+BDGjB7rjbvwOTHi9wTzB5ervodLflH6VfuE=
MIME-Version: 1.0
In-Reply-To: <20191027162328.1177402-3-martin.blumenstingl@googlemail.com>
References: <20191027162328.1177402-1-martin.blumenstingl@googlemail.com>
 <20191027162328.1177402-3-martin.blumenstingl@googlemail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 jbrunet@baylibre.com, khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 narmstrong@baylibre.com
Subject: Re: [PATCH v2 2/5] clk: meson: add a driver for the Meson8/8b/8m2 DDR
 clock controller
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 14:16:51 -0800
Message-Id: <20191108221652.32FA2206C3@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_141653_574791_674F5E7F 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Martin Blumenstingl (2019-10-27 09:23:25)
> diff --git a/drivers/clk/meson/meson8-ddr.c b/drivers/clk/meson/meson8-ddr.c
> new file mode 100644
> index 000000000000..4aefcc5bdaae
> --- /dev/null
> +++ b/drivers/clk/meson/meson8-ddr.c
> @@ -0,0 +1,152 @@
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
> +#include <linux/of_device.h>
> +#include <linux/slab.h>

Please include clk-provider.h as this is a clk provider driver.

> +
> +#include "clk-regmap.h"
> +#include "clk-pll.h"
> +
> +#define AM_DDR_PLL_CNTL                        0x00
> +#define AM_DDR_PLL_CNTL1               0x04
> +#define AM_DDR_PLL_CNTL2               0x08
> +#define AM_DDR_PLL_CNTL3               0x0c
> +#define AM_DDR_PLL_CNTL4               0x10
> +#define AM_DDR_PLL_STS                 0x14
> +#define DDR_CLK_CNTL                   0x18
> +#define DDR_CLK_STS                    0x1c
> +
> +static struct clk_regmap meson8_ddr_pll_dco = {
> +       .data = &(struct meson_clk_pll_data){
> +               .en = {
> +                       .reg_off = AM_DDR_PLL_CNTL,
> +                       .shift   = 30,
> +                       .width   = 1,
> +               },
> +               .m = {
> +                       .reg_off = AM_DDR_PLL_CNTL,
> +                       .shift   = 0,
> +                       .width   = 9,
> +               },
> +               .n = {
> +                       .reg_off = AM_DDR_PLL_CNTL,
> +                       .shift   = 9,
> +                       .width   = 5,
> +               },
> +               .l = {
> +                       .reg_off = AM_DDR_PLL_CNTL,
> +                       .shift   = 31,
> +                       .width   = 1,
> +               },
> +               .rst = {
> +                       .reg_off = AM_DDR_PLL_CNTL,
> +                       .shift   = 29,
> +                       .width   = 1,
> +               },
> +       },
> +       .hw.init = &(struct clk_init_data){
> +               .name = "ddr_pll_dco",
> +               .ops = &meson_clk_pll_ro_ops,
> +               .parent_data = &(const struct clk_parent_data) {
> +                       .fw_name = "xtal",
> +               },
> +               .num_parents = 1,
> +       },
> +};
> +
> +static struct clk_regmap meson8_ddr_pll = {
> +       .data = &(struct clk_regmap_div_data){
> +               .offset = AM_DDR_PLL_CNTL,
> +               .shift = 16,
> +               .width = 2,
> +               .flags = CLK_DIVIDER_POWER_OF_TWO,
> +       },
> +       .hw.init = &(struct clk_init_data){
> +               .name = "ddr_pll",
> +               .ops = &clk_regmap_divider_ro_ops,
> +               .parent_hws = (const struct clk_hw *[]) {
> +                       &meson8_ddr_pll_dco.hw
> +               },
> +               .num_parents = 1,
> +       },
> +};
> +
> +static struct clk_hw_onecell_data meson8_ddr_clk_hw_onecell_data = {
> +       .hws = {
> +               [DDR_CLKID_DDR_PLL_DCO]         = &meson8_ddr_pll_dco.hw,
> +               [DDR_CLKID_DDR_PLL]             = &meson8_ddr_pll.hw,
> +       },
> +       .num = 2,
> +};
> +
> +static struct clk_regmap *const meson8_ddr_clk_regmaps[] = {
> +       &meson8_ddr_pll_dco,
> +       &meson8_ddr_pll,
> +};
> +
> +static const struct regmap_config meson8_ddr_clkc_regmap_config = {
> +       .reg_bits = 8,
> +       .val_bits = 32,
> +       .reg_stride = 4,
> +       .max_register = DDR_CLK_STS,
> +};
> +
> +static int meson8_ddr_clkc_probe(struct platform_device *pdev)
> +{
> +       struct regmap *regmap;
> +       struct resource *res;
> +       void __iomem *base;
> +       struct clk_hw *hw;
> +       int ret, i;
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       base = devm_ioremap_resource(&pdev->dev, res);

We have a new function to combine the above two lines. Please use it so
the janitors avoid this file.

> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       regmap = devm_regmap_init_mmio(&pdev->dev, base,
> +                                      &meson8_ddr_clkc_regmap_config);
> +       if (IS_ERR(regmap))
> +               return PTR_ERR(regmap);
> +
> +       /* Populate regmap */
> +       for (i = 0; i < ARRAY_SIZE(meson8_ddr_clk_regmaps); i++)
> +               meson8_ddr_clk_regmaps[i]->map = regmap;
> +
> +       /* Register all clks */
> +       for (i = 0; i < meson8_ddr_clk_hw_onecell_data.num; i++) {
> +               hw = meson8_ddr_clk_hw_onecell_data.hws[i];
> +
> +               ret = devm_clk_hw_register(&pdev->dev, hw);
> +               if (ret) {
> +                       dev_err(&pdev->dev, "Clock registration failed\n");
> +                       return ret;
> +               }
> +       }
> +
> +       return devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_onecell_get,
> +                                          &meson8_ddr_clk_hw_onecell_data);
> +}
> +
> +static const struct of_device_id meson8_ddr_clkc_match_table[] = {
> +       { .compatible = "amlogic,meson8-ddr-clkc" },
> +       { .compatible = "amlogic,meson8b-ddr-clkc" },
> +       { /* sentinel */ },

Super nitpick, drop the comma above so that nothing can follow this.

> +};
> +
> +static struct platform_driver meson8_ddr_clkc_driver = {
> +       .probe          = meson8_ddr_clkc_probe,
> +       .driver         = {
> +               .name   = "meson8-ddr-clkc",
> +               .of_match_table = meson8_ddr_clkc_match_table,
> +       },
> +};
> +
> +builtin_platform_driver(meson8_ddr_clkc_driver);
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
