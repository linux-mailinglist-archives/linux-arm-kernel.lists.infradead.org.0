Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED5A18DCD8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 01:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7sb5NU35roHO98CWKexhcW/WV00wd3audKW0cLCNS8=; b=AVGuUP4w2MHqrE
	+tw61LL3QxDaQRv8q6ANXrLDitrL8BQJ1IKNcwjl6u7on5cuYh+1XkBG61hfT0iCH5e5C7CtVIaGe
	W2SX6BVFu7yLZYW2tNXdbatsnH+BD886cNZufZQlzT7bG9LyUU4BpR00Q2K/eqMabEd1nqhx91T5o
	rO9vF+oAIHg81JtZdjMQANVsEDBG8rSQ5GDOWC80ln0UCRugvEtEJ62CLxTeV+ZCYN7QPVT4LSym0
	2DVZRAYLcU1YgsK8MzXkiR4C1vy55PhsZdnDuxmxD1QyIW1cMAlB2sIR+L+VNt4ypjnq/qA0voUCp
	Xo9l8tbOZgKJcuYFDnmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFSM5-0003r1-8y; Sat, 21 Mar 2020 00:51:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSLw-0003qh-Jq
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 00:51:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33B5420753;
 Sat, 21 Mar 2020 00:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584751864;
 bh=VkSjkYQs/RY/Pik2r849HBc6PS7EqCN6XvEmObhvxQA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=R54/SneaVV55p5KYK1AY1/mboOHzhTOZMIoa/1/PgPuE6FixeYIfBeT85e3b3zMFH
 Wjeq3+0SD70K/bjQhgF2xbh/Bn4CBYfwNgy7/5Rxxvhu6tB/hNvJEqHvwQ7+NhJKC1
 HmQOWn/5RJHR9p2k74wZnzI+KLBYtg66KNXvgiZE=
MIME-Version: 1.0
In-Reply-To: <1583226206-19758-9-git-send-email-abel.vesa@nxp.com>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-9-git-send-email-abel.vesa@nxp.com>
Subject: Re: [RFC 08/11] clk: imx: Add audiomix clock controller support
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Peng Fan <peng.fan@nxp.com>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Date: Fri, 20 Mar 2020 17:51:03 -0700
Message-ID: <158475186333.125146.9525083553063837430@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_175104_699142_9BF52868 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2020-03-03 01:03:23)
> diff --git a/drivers/clk/imx/clk-audiomix.c b/drivers/clk/imx/clk-audiomix.c
> new file mode 100644
> index 00000000..8b84943
> --- /dev/null
> +++ b/drivers/clk/imx/clk-audiomix.c
> @@ -0,0 +1,237 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <dt-bindings/clock/imx8mp-clock.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +
> +#include "clk.h"
> +
> +static int shared_count_pdm;
> +static struct clk_hw **hws;
> +static struct clk_hw_onecell_data *clk_hw_data;
> +static uint32_t audiomix_clk_saved_regs[14];
> +static struct clk *clk_audio_root;
> +static struct clk *clk_audio_ahb;
> +static struct clk *clk_audio_axi_div;
> +
> +static const struct imx_pll14xx_rate_table imx_audiomix_sai_pll_tbl[] = {
> +       PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
> +};
> +
> +static const struct imx_pll14xx_clk imx_audiomix_sai_pll = {
> +       .type = PLL_1443X,
> +       .rate_table = imx_audiomix_sai_pll_tbl,
> +};
> +
> +static const char *imx_sai_mclk2_sels[] = {"sai1", "sai2", "sai3", "dummy",
> +                                       "sai5", "sai6", "sai7", "dummy",
> +                                       "dummy", "dummy", "dummy",
> +                                       "dummy", "dummy", "dummy", "dummy"};
> +static const char *imx_sai1_mclk1_sels[] = {"sai1", "dummy", };
> +static const char *imx_sai2_mclk1_sels[] = {"sai2", "dummy", };
> +static const char *imx_sai3_mclk1_sels[] = {"sai3", "dummy", };
> +static const char *imx_sai5_mclk1_sels[] = {"sai5", "dummy", };
> +static const char *imx_sai6_mclk1_sels[] = {"sai6", "dummy", };
> +static const char *imx_sai7_mclk1_sels[] = {"sai7", "dummy", };
> +static const char *imx_pdm_sels[] = {"pdm", "sai_pll_div2", "dummy", "dummy" };
> +static const char *imx_sai_pll_ref_sels[] = {"osc_24m", "dummy", "dummy", "dummy", };
> +static const char *imx_sai_pll_bypass_sels[] = {"sai_pll", "sai_pll_ref_sel", };
> +
> +static int imx_audiomix_clk_suspend(struct device *dev)
> +{
> +       void __iomem *base;
> +
> +       base = dev_get_drvdata(dev->parent);
> +
> +       audiomix_clk_saved_regs[0] = readl(base);
> +       audiomix_clk_saved_regs[1] = readl(base + 0x4);
> +
> +       audiomix_clk_saved_regs[2] = readl(base + 0x300);
> +       audiomix_clk_saved_regs[3] = readl(base + 0x304);
> +       audiomix_clk_saved_regs[4] = readl(base + 0x308);
> +       audiomix_clk_saved_regs[5] = readl(base + 0x30C);
> +       audiomix_clk_saved_regs[6] = readl(base + 0x310);
> +       audiomix_clk_saved_regs[7] = readl(base + 0x314);
> +       audiomix_clk_saved_regs[8] = readl(base + 0x318);
> +
> +       audiomix_clk_saved_regs[9] = readl(base + 0x400);
> +       audiomix_clk_saved_regs[10] = readl(base + 0x404);
> +       audiomix_clk_saved_regs[11] = readl(base + 0x408);
> +       audiomix_clk_saved_regs[12] = readl(base + 0x40C);
> +       audiomix_clk_saved_regs[13] = readl(base + 0x410);

Maybe use three loops that have an 'i' and an offset and then += 4 all
the time? Would be a little more compact.

> +
> +       clk_disable_unprepare(clk_audio_ahb);
> +       clk_disable_unprepare(clk_audio_root);
> +       clk_disable_unprepare(clk_audio_axi_div);
> +       pm_runtime_put(dev);
> +
> +       return 0;
> +}
> +
> +static int imx_audiomix_clk_resume(struct device *dev)
> +{
> +       void __iomem *base;
> +
> +       base = dev_get_drvdata(dev->parent);
> +
> +       pm_runtime_get(dev);
> +       clk_prepare_enable(clk_audio_ahb);
> +       clk_prepare_enable(clk_audio_root);
> +       clk_prepare_enable(clk_audio_axi_div);
> +
> +       writel(audiomix_clk_saved_regs[0], base);
> +       writel(audiomix_clk_saved_regs[1], base + 0x4);
> +
> +       writel(audiomix_clk_saved_regs[2], base + 0x300);
> +       writel(audiomix_clk_saved_regs[3], base + 0x304);
> +       writel(audiomix_clk_saved_regs[4], base + 0x308);
> +       writel(audiomix_clk_saved_regs[5], base + 0x30C);
> +       writel(audiomix_clk_saved_regs[6], base + 0x310);
> +       writel(audiomix_clk_saved_regs[7], base + 0x314);
> +       writel(audiomix_clk_saved_regs[8], base + 0x318);
> +
> +       writel(audiomix_clk_saved_regs[9], base + 0x400);
> +       writel(audiomix_clk_saved_regs[10], base + 0x404);
> +       writel(audiomix_clk_saved_regs[11], base + 0x408);
> +       writel(audiomix_clk_saved_regs[12], base + 0x40C);
> +       writel(audiomix_clk_saved_regs[13], base + 0x410);
> +
> +       return 0;
> +}
> +
> +static int imx_audiomix_clk_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct device_node *np = dev->of_node;
> +       void __iomem *base;
> +
> +       clk_audio_root = of_clk_get_by_name(np, "audio_root");

Any reason devm_clk_get() can't be used?

> +       if (IS_ERR(clk_audio_root))
> +               return PTR_ERR(clk_audio_root);
> +
> +       clk_audio_ahb = of_clk_get_by_name(np, "audio_ahb");
> +       if (IS_ERR(clk_audio_ahb))
> +               return PTR_ERR(clk_audio_ahb);
> +
> +       clk_audio_axi_div = of_clk_get_by_name(np, "audio_axi_div");
> +       if (IS_ERR(clk_audio_axi_div))
> +               return PTR_ERR(clk_audio_axi_div);
> +
> +       base = dev_get_drvdata(dev->parent);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       clk_hw_data = kzalloc(struct_size(clk_hw_data, hws, IMX8MP_CLK_AUDIOMIX_END), GFP_KERNEL);

This line is long. Please limit length.

> +       if (WARN_ON(!clk_hw_data))
> +               return -ENOMEM;
> +
> +       clk_hw_data->num = IMX8MP_CLK_AUDIOMIX_END;
> +       hws = clk_hw_data->hws;
> +
> +       pm_runtime_enable(dev);
> +
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL_REF_SEL] = imx_dev_clk_hw_mux(dev, "sai_pll_ref_sel", base + 0x400, 0, 2, imx_sai_pll_ref_sels, ARRAY_SIZE(imx_sai_pll_ref_sels));
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL] = imx_dev_clk_hw_pll14xx(dev, "sai_pll", "sai_pll_ref_sel", base + 0x400, &imx_audiomix_sai_pll);
> +
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL_BYPASS] = imx_dev_clk_hw_mux_flags(dev, "sai_pll_bypass", base + 0x400, 4, 1, imx_sai_pll_bypass_sels, ARRAY_SIZE(imx_sai_pll_bypass_sels), CLK_SET_RATE_PARENT);
> +
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL_OUT] = imx_dev_clk_hw_gate(dev, "sai_pll_out", "sai_pll_bypass", base + 0x400, 13);
> +
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1_SEL] = imx_dev_clk_hw_mux_flags(dev, "sai1_mclk1_sel", base + 0x300, 0, 1, imx_sai1_mclk1_sels, ARRAY_SIZE(imx_sai1_mclk1_sels), CLK_SET_RATE_PARENT);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai1_mclk2_sel", base + 0x300, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK1_SEL] = imx_dev_clk_hw_mux_flags(dev, "sai2_mclk1_sel", base + 0x304, 0, 1, imx_sai2_mclk1_sels, ARRAY_SIZE(imx_sai2_mclk1_sels), CLK_SET_RATE_PARENT);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai2_mclk2_sel", base + 0x304, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1_SEL] = imx_dev_clk_hw_mux_flags(dev, "sai3_mclk1_sel", base + 0x308, 0, 1, imx_sai3_mclk1_sels, ARRAY_SIZE(imx_sai3_mclk1_sels), CLK_SET_RATE_PARENT);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai3_mclk2_sel", base + 0x308, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK1_SEL] = imx_dev_clk_hw_mux(dev, "sai5_mclk1_sel", base + 0x30C, 0, 1, imx_sai5_mclk1_sels, ARRAY_SIZE(imx_sai5_mclk1_sels));
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai5_mclk2_sel", base + 0x30C, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK1_SEL] = imx_dev_clk_hw_mux(dev, "sai6_mclk1_sel", base + 0x310, 0, 1, imx_sai6_mclk1_sels, ARRAY_SIZE(imx_sai6_mclk1_sels));
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai6_mclk2_sel", base + 0x310, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK1_SEL] = imx_dev_clk_hw_mux(dev, "sai7_mclk1_sel", base + 0x314, 0, 1, imx_sai7_mclk1_sels, ARRAY_SIZE(imx_sai7_mclk1_sels));
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK2_SEL] = imx_dev_clk_hw_mux(dev, "sai7_mclk2_sel", base + 0x314, 1, 4, imx_sai_mclk2_sels, ARRAY_SIZE(imx_sai_mclk2_sels));
> +
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI1_IPG]    = imx_dev_clk_hw_gate(dev, "sai1_ipg_clk",   "ipg_audio_root", base, 0);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai1_mclk1_clk", "sai1_mclk1_sel", base, 1);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai1_mclk2_clk", "sai1_mclk2_sel", base, 2);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI1_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai1_mclk3_clk", "sai_pll_out", base, 3);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI2_IPG]    = imx_dev_clk_hw_gate(dev, "sai2_ipg_clk",   "ipg_audio_root", base, 4);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai2_mclk1_clk", "sai2_mclk1_sel", base, 5);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai2_mclk2_clk", "sai2_mclk2_sel", base, 6);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI2_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai2_mclk3_clk", "sai_pll_out", base, 7);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI3_IPG]    = imx_dev_clk_hw_gate(dev, "sai3_ipg_clk",   "ipg_audio_root", base, 8);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai3_mclk1_clk", "sai3_mclk1_sel", base, 9);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai3_mclk2_clk", "sai3_mclk2_sel", base, 10);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI3_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai3_mclk3_clk", "sai_pll_out", base, 11);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI5_IPG]    = imx_dev_clk_hw_gate(dev, "sai5_ipg_clk",   "ipg_audio_root", base, 12);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai5_mclk1_clk", "sai5_mclk1_sel", base, 13);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai5_mclk2_clk", "sai5_mclk2_sel", base, 14);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI5_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai5_mclk3_clk", "sai_pll_out", base, 15);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI6_IPG]    = imx_dev_clk_hw_gate(dev, "sai6_ipg_clk",   "ipg_audio_root", base, 16);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai6_mclk1_clk", "sai6_mclk1_sel", base, 17);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai6_mclk2_clk", "sai6_mclk2_sel", base, 18);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI6_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai6_mclk3_clk", "sai_pll_out", base, 19);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI7_IPG]    = imx_dev_clk_hw_gate(dev, "sai7_ipg_clk",   "ipg_audio_root", base, 20);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK1]  = imx_dev_clk_hw_gate(dev, "sai7_mclk1_clk", "sai7_mclk1_sel", base, 21);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK2]  = imx_dev_clk_hw_gate(dev, "sai7_mclk2_clk", "sai7_mclk2_sel", base, 22);
> +       hws[IMX8MP_CLK_AUDIOMIX_SAI7_MCLK3]  = imx_dev_clk_hw_gate(dev, "sai7_mclk3_clk", "sai_pll_out", base, 23);
> +       hws[IMX8MP_CLK_AUDIOMIX_ASRC_IPG]    = imx_dev_clk_hw_gate(dev, "asrc_ipg_clk",   "ipg_audio_root", base, 24);
> +       hws[IMX8MP_CLK_AUDIOMIX_PDM_IPG]     = imx_dev_clk_hw_gate_shared(dev, "pdm_ipg_clk", "ipg_audio_root", base, 25, &shared_count_pdm);
> +       hws[IMX8MP_CLK_AUDIOMIX_PDM_ROOT]    = imx_dev_clk_hw_gate_shared(dev, "pdm_root_clk", "pdm", base, 25, &shared_count_pdm);
> +
> +       hws[IMX8MP_CLK_AUDIOMIX_SDMA2_ROOT]  = imx_dev_clk_hw_gate(dev, "sdma2_root_clk", "ipg_audio_root", base, 26);
> +       hws[IMX8MP_CLK_AUDIOMIX_SDMA3_ROOT]  = imx_dev_clk_hw_gate(dev, "sdma3_root_clk", "ipg_audio_root", base, 27);
> +       hws[IMX8MP_CLK_AUDIOMIX_SPBA2_ROOT]  = imx_dev_clk_hw_gate(dev, "spba2_root_clk", "ipg_audio_root", base, 28);
> +       hws[IMX8MP_CLK_AUDIOMIX_DSP_ROOT]    = imx_dev_clk_hw_gate(dev, "dsp_root_clk",   "ipg_audio_root", base, 29);
> +       hws[IMX8MP_CLK_AUDIOMIX_DSPDBG_ROOT] = imx_dev_clk_hw_gate(dev, "dsp_dbg_clk",    "ipg_audio_root", base, 30);
> +       hws[IMX8MP_CLK_AUDIOMIX_EARC_IPG]    = imx_dev_clk_hw_gate(dev, "earc_ipg_clk",   "ipg_audio_root", base, 31);
> +
> +       hws[IMX8MP_CLK_AUDIOMIX_OCRAMA_IPG]  = imx_dev_clk_hw_gate(dev, "ocram_a_ipg_clk", "ipg_audio_root", base + 4, 0);
> +       hws[IMX8MP_CLK_AUDIOMIX_AUD2HTX_IPG] = imx_dev_clk_hw_gate(dev, "aud2htx_ipg_clk", "ipg_audio_root", base + 4, 1);
> +       hws[IMX8MP_CLK_AUDIOMIX_EDMA_ROOT]   = imx_dev_clk_hw_gate(dev, "edma_root_clk",   "ipg_audio_root", base + 4, 2);
> +       hws[IMX8MP_CLK_AUDIOMIX_AUDPLL_ROOT] = imx_dev_clk_hw_gate(dev, "aud_pll_clk",  "ipg_audio_root", base + 4, 3);
> +       hws[IMX8MP_CLK_AUDIOMIX_MU2_ROOT]    = imx_dev_clk_hw_gate(dev, "mu2_root_clk", "ipg_audio_root", base + 4, 4);
> +       hws[IMX8MP_CLK_AUDIOMIX_MU3_ROOT]    = imx_dev_clk_hw_gate(dev, "mu3_root_clk", "ipg_audio_root", base + 4, 5);
> +       hws[IMX8MP_CLK_AUDIOMIX_EARC_PHY]    = imx_dev_clk_hw_gate(dev, "earc_phy_clk", "ipg_audio_root", base + 4, 6);

These ones are OK because they're basically setting up an array and we
can't help it.

> +
> +       hws[IMX8MP_CLK_AUDIOMIX_PDM_SEL] = imx_dev_clk_hw_mux(dev, "pdm_sel", base + 0x318, 1, 4, imx_pdm_sels, ARRAY_SIZE(imx_pdm_sels));
> +
> +       /* unbypass the pll */
> +       clk_hw_set_parent(hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL_BYPASS], hws[IMX8MP_CLK_AUDIOMIX_SAI_PLL]);

But this is long again so please don't.

> +
> +       imx_check_clk_hws(hws, IMX8MP_CLK_AUDIOMIX_END);
> +
> +       of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
> +
> +       return 0;
> +}
> +
> +UNIVERSAL_DEV_PM_OPS(imx_audiomix_clk_pm_ops, imx_audiomix_clk_suspend,
> +                       imx_audiomix_clk_resume, imx_audiomix_clk_resume);
> +
> +static const struct of_device_id imx_audiomix_clk_of_match[] = {
> +       { .compatible = "fsl,imx8mp-audiomix-clk" },
> +       { /* Sentinel */ },

Nitpick: Drop comma after sentinel so that nothing can come after
without causing compile error.

> +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
