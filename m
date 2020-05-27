Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7153C1E35F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 04:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoHQxuOv07Lkl1kgkELQlvD8UMrUwZZNqvmT1/sjWW4=; b=UyDRLf3rMIpa5n
	yIIT499s/sJLoHYgob55MsVT7nz8XZSKb0LIu9tE/Ed3DQzsIeQKrWxmiCiOJzp354xRF5NIlSvN7
	fuvAJPT0Z7gQiai5K8hqGh9hQYluCrn8Jup3kvS8u57HSDrbVjfEV68hnD8zRhUVbyjNvJnhJPxye
	hK2+2UrQaGyaDyPBZDqbnCM/kgmINGp0+1Br8DJ1pc+bOMzT33F3YZ7u87jLpHr4k+B0LilDqShJQ
	QV9YMtwF6z3UhdPtRrV9ucTcKDub19Eg4kTVjXaeYa9ZNwjIYqPGQwfTG+Rf0Q9aPmzCfIdimHVjD
	4fSyi2jjAkbt8CpPqynA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmFF-0004Hz-BB; Wed, 27 May 2020 02:56:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmEz-0004HY-P9
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 02:56:27 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C3232075F;
 Wed, 27 May 2020 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590548185;
 bh=GIvuEjAL2vrCdDXjyrn9froPgVMYd+XJ/ifcDVECdOE=;
 h=In-Reply-To:References:Subject:From:Cc:List-Id:To:Date:From;
 b=I52unEOr9B5XJunkBQELuRcGRHeY/o+zfEi2Czn5Y+GAhxbOcvdhNQ12/sTMfziCJ
 GXbNgmZ93KTgCkfpHNJTfs2Yhp9Dcr6bYaXqkygR2L1GFIKqDhW9tyvSW5Uw2VtPf1
 12VgF6+UOqSyMfKR1XDUZhzbA6xVOU5eQwcEdTF8=
MIME-Version: 1.0
In-Reply-To: <20200513125532.24585-13-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-13-lars.povlsen@microchip.com>
Subject: Re: [PATCH 12/14] clk: sparx5: Add Sparx5 SoC DPLL clock driver
From: Stephen Boyd <sboyd@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>, Lars Povlsen <lars.povlsen@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>, SoC Team <soc@kernel.org>
Date: Tue, 26 May 2020 19:56:24 -0700
Message-ID: <159054818459.88029.10644772284176356883@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_195625_855881_670A0CD0 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael Turquette <mturquette@baylibre.com>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lars Povlsen (2020-05-13 05:55:30)
> diff --git a/drivers/clk/clk-sparx5.c b/drivers/clk/clk-sparx5.c
> new file mode 100644
> index 0000000000000..685b3028a7071
> --- /dev/null
> +++ b/drivers/clk/clk-sparx5.c
> @@ -0,0 +1,269 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Microchip Sparx5 SoC Clock driver.
> + *
> + * Copyright (c) 2019 Microchip Inc.
> + *
> + * Author: Lars Povlsen <lars.povlsen@microchip.com>
> + */
> +
> +#include <linux/io.h>
> +#include <linux/clk-provider.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/slab.h>
> +#include <linux/platform_device.h>
> +#include <dt-bindings/clock/microchip,sparx5.h>
> +
> +#define PLL_DIV_MASK           GENMASK(7, 0)
> +#define PLL_PRE_DIV_MASK       GENMASK(10, 8)
> +#define PLL_PRE_DIV_SHIFT      8
> +#define PLL_ROT_DIR            BIT(11)
> +#define PLL_ROT_SEL_MASK       GENMASK(13, 12)
> +#define PLL_ROT_SEL_SHIFT      12
> +#define PLL_ROT_ENA            BIT(14)
> +#define PLL_CLK_ENA            BIT(15)
> +
> +#define MAX_SEL 4
> +#define MAX_PRE BIT(3)
> +
> +#define KHZ 1000
> +#define MHZ (KHZ*KHZ)

I suspect (1000 * KHZ) would make more sense.

> +
> +#define BASE_CLOCK (2500UL*MHZ)
> +
> +static u8 sel_rates[MAX_SEL] = { 0, 2*8, 2*4, 2*2 };

const?

> +
> +static const char *clk_names[N_CLOCKS] = {
> +       "core", "ddr", "cpu2", "arm2",
> +       "aux1", "aux2", "aux3", "aux4",
> +       "synce",
> +};
> +
> +struct s5_hw_clk {
> +       struct clk_hw hw;
> +       void __iomem *reg;
> +       int index;
> +};
> +
> +struct s5_clk_data {
> +       void __iomem *base;
> +       struct s5_hw_clk s5_hw[N_CLOCKS];
> +};
> +
> +struct pll_conf {
> +       int freq;
> +       u8 div;
> +       bool rot_ena;
> +       u8 rot_sel;
> +       u8 rot_dir;
> +       u8 pre_div;
> +};
> +
> +#define to_clk_pll(hw) container_of(hw, struct s5_hw_clk, hw)
> +
> +unsigned long calc_freq(const struct pll_conf *pdata)
> +{
> +       unsigned long rate = BASE_CLOCK / pdata->div;
> +
> +       if (pdata->rot_ena) {
> +               unsigned long base = BASE_CLOCK / pdata->div;
> +               int sign = pdata->rot_dir ? -1 : 1;
> +               int divt = sel_rates[pdata->rot_sel] * (1 + pdata->pre_div);
> +               int divb = divt + sign;
> +
> +               rate = mult_frac(base, divt, divb);
> +               rate = roundup(rate, 1000);
> +       }
> +
> +       return rate;
> +}
> +
> +static unsigned long clk_calc_params(unsigned long rate,
> +                                    struct pll_conf *conf)
> +{
> +       memset(conf, 0, sizeof(*conf));
> +
> +       conf->div = DIV_ROUND_CLOSEST_ULL(BASE_CLOCK, rate);
> +
> +       if (BASE_CLOCK % rate) {
> +               struct pll_conf best;
> +               ulong cur_offset, best_offset = rate;
> +               int i, j;
> +
> +               /* Enable fractional rotation */
> +               conf->rot_ena = true;
> +
> +               if ((BASE_CLOCK / rate) != conf->div) {
> +                       /* Overshoot, adjust other direction */
> +                       conf->rot_dir = 1;
> +               }
> +
> +               /* Brute force search over MAX_PRE * (MAX_SEL - 1) = 24 */
> +               for (i = 0; i < MAX_PRE; i++) {
> +                       conf->pre_div = i;
> +                       for (j = 1; j < MAX_SEL; j++) {
> +                               conf->rot_sel = j;
> +                               conf->freq = calc_freq(conf);
> +                               cur_offset = abs(rate - conf->freq);
> +                               if (cur_offset == 0)
> +                                       /* Perfect fit */
> +                                       goto done;

Why not 'break' and drop the label?

> +                               if (cur_offset < best_offset) {
> +                                       /* Better fit found */
> +                                       best_offset = cur_offset;
> +                                       best = *conf;
> +                               }
> +                       }
> +               }
> +               /* Best match */
> +               *conf = best;
> +       }
> +
> +done:
> +       return conf->freq;
> +}
> +
> +static int clk_pll_enable(struct clk_hw *hw)
> +{
> +       struct s5_hw_clk *pll = to_clk_pll(hw);
> +       u32 val = readl(pll->reg);
> +
> +       val |= PLL_CLK_ENA;
> +       writel(val, pll->reg);
> +       pr_debug("%s: Enable val %04x\n", clk_names[pll->index], val);
> +       return 0;
> +}
> +
> +static void clk_pll_disable(struct clk_hw *hw)
> +{
> +       struct s5_hw_clk *pll = to_clk_pll(hw);
> +       u32 val = readl(pll->reg);
> +
> +       val &= ~PLL_CLK_ENA;
> +       writel(val, pll->reg);
> +       pr_debug("%s: Disable val %04x\n", clk_names[pll->index], val);

Can we drop these pr_debug() prints? They're probably never going to be
used after developing this driver.

> +}
> +
> +static int clk_pll_set_rate(struct clk_hw *hw,

Please rename clk_pll to something less generic, like s5_pll or
something.

> +                           unsigned long rate,
> +                           unsigned long parent_rate)
> +{
> +       struct s5_hw_clk *pll = to_clk_pll(hw);
> +       struct pll_conf conf;
> +       unsigned long eff_rate;
> +       int ret = 0;
> +
> +       eff_rate = clk_calc_params(rate, &conf);
> +       if (eff_rate == rate) {
> +               u32 val;
> +
> +               val = readl(pll->reg) & PLL_CLK_ENA;
> +               val |= PLL_DIV_MASK & conf.div;
> +               if (conf.rot_ena) {
> +                       val |= (PLL_ROT_ENA |
> +                               (PLL_ROT_SEL_MASK &
> +                                (conf.rot_sel << PLL_ROT_SEL_SHIFT)) |
> +                               (PLL_PRE_DIV_MASK &
> +                                (conf.pre_div << PLL_PRE_DIV_SHIFT)));

This can use the FIELD_GET and helpers?

> +                       if (conf.rot_dir)
> +                               val |= PLL_ROT_DIR;
> +               }
> +               pr_debug("%s: Rate %ld >= 0x%04x\n",
> +                        clk_names[pll->index], rate, val);
> +               writel(val, pll->reg);
> +       } else {
> +               pr_err("%s: freq unsupported: %ld paren %ld\n",
> +                      clk_names[pll->index], rate, parent_rate);
> +               ret = -ENOTSUPP;

I'd prefer we short circuit the function

	eff_rate = clk_calc_params(...);
	if (eff_rate != rate)
		return -ENOTSUPP;
	
	do the other things...

This avoids lots of indentation.

> +       }
> +
> +       return ret;
> +}
> +
> +static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
> +                                        unsigned long parent_rate)
> +{
> +       /* Don't care */

What does this mean? recalc_rate is supposed to tell us what rate has
been achieved for this clk.

> +       return 0;
> +}
> +
> +static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> +                              unsigned long *parent_rate)
> +{
> +       struct pll_conf conf;
> +       unsigned long eff_rate;
> +
> +       eff_rate = clk_calc_params(rate, &conf);
> +       pr_debug("%s: Rate %ld rounded to %ld\n", __func__, rate, eff_rate);
> +
> +       return eff_rate;
> +}
> +
> +static const struct clk_ops s5_pll_ops = {
> +       .enable         = clk_pll_enable,
> +       .disable        = clk_pll_disable,
> +       .set_rate       = clk_pll_set_rate,
> +       .round_rate     = clk_pll_round_rate,
> +       .recalc_rate    = clk_pll_recalc_rate,
> +};
> +
> +static struct s5_clk_data *s5_clk_alloc(struct device_node *np)
> +{
> +       struct s5_clk_data *clk_data;
> +
> +       clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
> +       if (WARN_ON(!clk_data))

Drop the WARN_ON(), kzalloc() already prints a big stacktrace when it
fails.

> +               return NULL;
> +
> +       clk_data->base = of_iomap(np, 0);
> +       if (WARN_ON(!clk_data->base))
> +               return NULL;
> +
> +       return clk_data;

Just inline this function at the callsite please.

> +}
> +
> +static struct clk_hw *s5_clk_hw_get(struct of_phandle_args *clkspec, void *data)
> +{
> +       struct s5_clk_data *pll_clk = data;
> +       unsigned int idx = clkspec->args[0];
> +
> +       if (idx >= N_CLOCKS) {
> +               pr_err("%s: invalid index %u\n", __func__, idx);
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       return &pll_clk->s5_hw[idx].hw;
> +}
> +
> +static void __init s5_pll_init(struct device_node *np)
> +{
> +       int i, ret;
> +       struct s5_clk_data *pll_clk;
> +       struct clk_init_data init = { 0 };

Just do init = { } so that 0 doesn't trip up sparse.

> +
> +       pll_clk = s5_clk_alloc(np);
> +       if (!pll_clk)
> +               return;
> +
> +       init.ops = &s5_pll_ops;
> +       init.parent_names = NULL;
> +       init.num_parents = 0;

Drop these last two lines if there aren't any parents.

> +
> +       for (i = 0; i < N_CLOCKS; i++) {
> +               struct s5_hw_clk *s5_hw = &pll_clk->s5_hw[i];
> +
> +               init.name = clk_names[i];
> +               s5_hw->index = i;
> +               s5_hw->reg = pll_clk->base + (i * sizeof(u32));
> +               s5_hw->hw.init = &init;
> +               ret = of_clk_hw_register(np, &s5_hw->hw);
> +               if (ret) {
> +                       pr_err("failed to register %s clock\n", init.name);
> +                       return;
> +               }
> +       }
> +
> +       of_clk_add_hw_provider(np, s5_clk_hw_get, pll_clk);
> +}
> +CLK_OF_DECLARE_DRIVER(microchip_s5, "microchip,sparx5-dpll", s5_pll_init);

Why DECLARE_DRIVER? Please add a comment indicating the other driver
that is supposed to probe against this node. And is there any reason
this can't be a platform driver? That is preferred over
CLK_OF_DECLARE*() usage.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
