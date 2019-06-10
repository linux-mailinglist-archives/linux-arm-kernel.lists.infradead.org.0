Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FAE3B83A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eP0/QycDdkO9pMMmBine5sDNh520ubBKUCXTn6dxeas=; b=K9oNjbr4K571sac67Q6XkNRi6R
	GvCF8ChbT+8yKtOob5RUH4E+SGkdQC3JZ++JhIItwxxBVgOMaIcZseJgGW6kqfmlz1qCgFF+pdilg
	1QqEvv/fPsNYByImrWyg6lWjyzKGbQe3Gmi05mBdh5+PCuUd9C65BnnDTUMNoBzSnU4nnGneTTuh1
	UkeWiP7vLYJpTVMmJtePkBd67ilQNcaIaqfrqng2BwzzJ+cD7gXKsqsDRrf76IHf1E+8keJ1MWf9H
	lATLUpecCLQ2ctbFcr/3OrCjPs6PslSNbW+vRym4C4gk2pWJ8MVKVPyalKqCbVJK3qIkXn8L1W7zA
	i9geNUaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haM7q-0005cg-HO; Mon, 10 Jun 2019 15:22:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haM7Z-0005TL-FS
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:22:07 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EC24207E0;
 Mon, 10 Jun 2019 15:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560180125;
 bh=ohOZQ3uSJ69XY58rw6nO7YSebPCTbrdeqXflgbv6YU0=;
 h=In-Reply-To:References:To:From:Subject:Date:From;
 b=TbY/eelfCY3JlfQcTR3Y2+vVNnHbQGqyHdPLLh+4CBVgGG+FS3G40fM/Fg/CsT+PY
 GR4YNBZcXqXqid/3mVqrCf7JE6gmyUdKVVUhz8SewsvPgyFkDghakPZtap9dcuf+tr
 ie39ArNlq+iYb/209aYj5CLM39TMQUPbE5JmwbHo=
MIME-Version: 1.0
In-Reply-To: <1559755738-28643-5-git-send-email-sricharan@codeaurora.org>
References: <1559755738-28643-1-git-send-email-sricharan@codeaurora.org>
 <1559755738-28643-5-git-send-email-sricharan@codeaurora.org>
To: Sricharan R <sricharan@codeaurora.org>, agross@kernel.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org, robh+dt@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 4/6] clk: qcom: Add ipq6018 Global Clock Controller support
User-Agent: alot/0.8.1
Date: Mon, 10 Jun 2019 08:22:04 -0700
Message-Id: <20190610152205.1EC24207E0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_082205_550572_20BCA978 
X-CRM114-Status: GOOD (  15.75  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sricharan R (2019-06-05 10:28:56)
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index e1ff83c..e5fb091 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -120,6 +120,15 @@ config IPQ_GCC_8074
>           i2c, USB, SD/eMMC, etc. Select this for the root clock
>           of ipq8074.
>  
> +config IPQ_GCC_6018
> +       tristate "IPQ6018 Global Clock Controller"
> +       depends on COMMON_CLK_QCOM

Not sure I commented on this, but this should be removed. The whole
thing is inside an if now.

> +       help
> +         Support for global clock controller on ipq6018 devices.
> +         Say Y if you want to use peripheral devices such as UART, SPI,
> +         i2c, USB, SD/eMMC, etc. Select this for the root clock
> +         of ipq6018.
> +
>  config MSM_GCC_8660
>         tristate "MSM8660 Global Clock Controller"
>         help
> diff --git a/drivers/clk/qcom/gcc-ipq6018.c b/drivers/clk/qcom/gcc-ipq6018.c
> new file mode 100644
> index 0000000..9f4552b
> --- /dev/null
> +++ b/drivers/clk/qcom/gcc-ipq6018.c
> @@ -0,0 +1,5267 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018, The Linux Foundation. All rights reserved.
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/err.h>
> +#include <linux/platform_device.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/clk-provider.h>
> +#include <linux/regmap.h>
> +
> +#include <linux/reset-controller.h>
> +#include <dt-bindings/clock/qcom,gcc-ipq6018.h>
> +
> +#include "common.h"
> +#include "clk-regmap.h"
> +#include "clk-pll.h"
> +#include "clk-rcg.h"
> +#include "clk-branch.h"
> +#include "clk-alpha-pll.h"
> +#include "clk-regmap-divider.h"
> +#include "clk-regmap-mux.h"
> +#include "reset.h"
> +
> +#define F(f, s, h, m, n) { (f), (s), (2 * (h) - 1), (m), (n) }
[...]
> +
> +static struct clk_alpha_pll gpll0_main = {
> +       .offset = 0x21000,
> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
> +       .clkr = {
> +               .enable_reg = 0x0b000,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gpll0_main",
> +                       .parent_names = (const char *[]){
> +                               "xo"
> +                       },
> +                       .num_parents = 1,
> +                       .ops = &clk_alpha_pll_ops,
> +                       .flags = CLK_IS_CRITICAL,

Can you add a comment on why this is critical?

> +               },
> +       },
> +};
> +
> +static struct clk_fixed_factor gpll0_out_main_div2 = {
> +       .mult = 1,
> +       .div = 2,
> +       .hw.init = &(struct clk_init_data){
> +               .name = "gpll0_out_main_div2",
> +               .parent_names = (const char *[]){
> +                       "gpll0_main"
> +               },
> +               .num_parents = 1,
> +               .ops = &clk_fixed_factor_ops,
> +               .flags = CLK_SET_RATE_PARENT,
> +       },
> +};
> +
> +static struct clk_alpha_pll_postdiv gpll0 = {
> +       .offset = 0x21000,
> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
> +       .width = 4,
> +       .clkr.hw.init = &(struct clk_init_data){
> +               .name = "gpll0",
> +               .parent_names = (const char *[]){
> +                       "gpll0_main"
> +               },
> +               .num_parents = 1,
> +               .ops = &clk_alpha_pll_postdiv_ro_ops,
> +               .flags = CLK_SET_RATE_PARENT,
> +       },
> +};
> +
> +static struct clk_alpha_pll ubi32_pll_main = {
> +       .offset = 0x25000,
> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_HUAYRA],
> +       .flags = SUPPORTS_DYNAMIC_UPDATE,
> +       .clkr = {
> +               .enable_reg = 0x0b000,
> +               .enable_mask = BIT(6),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "ubi32_pll_main",
> +                       .parent_names = (const char *[]){
> +                               "xo"
> +                       },
> +                       .num_parents = 1,
> +                       .ops = &clk_alpha_pll_huayra_ops,
> +               },
> +       },
> +};
> +
> +static struct clk_alpha_pll_postdiv ubi32_pll = {
> +       .offset = 0x25000,
> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_HUAYRA],
> +       .width = 2,
> +       .clkr.hw.init = &(struct clk_init_data){
> +               .name = "ubi32_pll",
> +               .parent_names = (const char *[]){
> +                       "ubi32_pll_main"
> +               },
> +               .num_parents = 1,
> +               .ops = &clk_alpha_pll_postdiv_ro_ops,
> +               .flags = CLK_SET_RATE_PARENT,
> +       },
> +};
> +
> +static struct clk_alpha_pll gpll6_main = {
> +       .offset = 0x37000,
> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_BRAMMO],
> +       .clkr = {
> +               .enable_reg = 0x0b000,
> +               .enable_mask = BIT(7),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gpll6_main",
> +                       .parent_names = (const char *[]){
> +                               "xo"
> +                       },
> +                       .num_parents = 1,
> +                       .ops = &clk_alpha_pll_ops,
> +                       .flags = CLK_IS_CRITICAL,

Can you add a comment on why this is critical?

> +               },
> +       },
> +};
> +
> +static struct clk_alpha_pll_postdiv gpll6 = {
> +       .offset = 0x37000,
> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_BRAMMO],
> +       .width = 2,
> +       .clkr.hw.init = &(struct clk_init_data){
> +               .name = "gpll6",
> +               .parent_names = (const char *[]){
> +                       "gpll6_main"
> +               },
> +               .num_parents = 1,
> +               .ops = &clk_alpha_pll_postdiv_ro_ops,
> +               .flags = CLK_SET_RATE_PARENT,
> +       },
> +};
> +
> +static struct clk_alpha_pll gpll4_main = {
> +       .offset = 0x24000,
> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
> +       .clkr = {
> +               .enable_reg = 0x0b000,
> +               .enable_mask = BIT(5),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gpll4_main",
> +                       .parent_names = (const char *[]){
> +                               "xo"
> +                       },
> +                       .num_parents = 1,
> +                       .ops = &clk_alpha_pll_ops,
> +                       .flags = CLK_IS_CRITICAL,

Can you add a comment on why this is critical?

> +               },
> +       },
> +};
> +
> +static struct clk_alpha_pll_postdiv gpll4 = {
> +       .offset = 0x24000,
> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
> +       .width = 4,
> +       .clkr.hw.init = &(struct clk_init_data){
> +               .name = "gpll4",
> +               .parent_names = (const char *[]){
> +                       "gpll4_main"
> +               },
> +               .num_parents = 1,
> +               .ops = &clk_alpha_pll_postdiv_ro_ops,
> +               .flags = CLK_SET_RATE_PARENT,
> +       },
> +};
> +
> +static const struct freq_tbl ftbl_pcnoc_bfdcd_clk_src[] = {
> +       F(24000000, P_XO, 1, 0, 0),
> +       F(50000000, P_GPLL0, 16, 0, 0),
> +       F(100000000, P_GPLL0, 8, 0, 0),
> +       { }
> +};
> +
> +static struct clk_rcg2 pcnoc_bfdcd_clk_src = {
> +       .cmd_rcgr = 0x27000,
> +       .freq_tbl = ftbl_pcnoc_bfdcd_clk_src,
> +       .hid_width = 5,
> +       .parent_map = gcc_xo_gpll0_gpll0_out_main_div2_map,
> +       .clkr.hw.init = &(struct clk_init_data){
> +               .name = "pcnoc_bfdcd_clk_src",
> +               .parent_names = gcc_xo_gpll0_gpll0_out_main_div2,
> +               .num_parents = 3,
> +               .ops = &clk_rcg2_ops,
> +               .flags = CLK_IS_CRITICAL,

Can you add a comment on why this is critical?

> +       },
> +};
> +
> +static struct clk_fixed_factor pcnoc_clk_src = {
> +       .mult = 1,
> +       .div = 1,
> +       .hw.init = &(struct clk_init_data){
> +               .name = "pcnoc_clk_src",
> +               .parent_names = (const char *[]){
> +                       "pcnoc_bfdcd_clk_src"
> +               },
> +               .num_parents = 1,
> +               .ops = &clk_fixed_factor_ops,
> +               .flags = CLK_SET_RATE_PARENT,
> +       },
> +};
> +
> +static struct clk_alpha_pll gpll2_main = {
> +       .offset = 0x4a000,
> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
> +       .clkr = {
> +               .enable_reg = 0x0b000,
> +               .enable_mask = BIT(2),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gpll2_main",
> +                       .parent_names = (const char *[]){
> +                               "xo"
> +                       },
> +                       .num_parents = 1,
> +                       .ops = &clk_alpha_pll_ops,
> +                       .flags = CLK_IS_CRITICAL,

Can you add a comment on why this is critical?

> +               },
> +       },
> +};
> +
[...]
> +
> +static struct clk_fixed_factor system_noc_clk_src = {
> +       .mult = 1,
> +       .div = 1,
> +       .hw.init = &(struct clk_init_data){
> +               .name = "system_noc_clk_src",
> +               .parent_names = (const char *[]){
> +                       "system_noc_bfdcd_clk_src"
> +               },
> +               .num_parents = 1,
> +               .ops = &clk_fixed_factor_ops,
> +               .flags = CLK_SET_RATE_PARENT,
> +       },
> +};

What is the point of these fixed factor 1/1 clks? Just to rename things?
Does it matter, or can we just specify system_noc_bfdcd_clk_src as the
parent and drop this intermediate clk?

> +
> +static struct clk_branch gcc_sleep_clk_src = {
> +       .halt_reg = 0x30000,
> +       .clkr = {
> +               .enable_reg = 0x30000,
> +               .enable_mask = BIT(1),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gcc_sleep_clk_src",
> +                       .parent_names = (const char *[]){
> +                               "sleep_clk"
> +                       },
> +                       .num_parents = 1,
> +                       .ops = &clk_branch2_ops,
> +                       .flags = CLK_IS_CRITICAL,
> +               },
> +       },
> +};
> +
[...]
> +
> +static struct clk_branch gcc_qdss_at_clk = {
> +       .halt_reg = 0x29024,
> +       .clkr = {
> +               .enable_reg = 0x29024,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gcc_qdss_at_clk",
> +                       .parent_names = (const char *[]){
> +                               "qdss_at_clk_src"
> +                       },
> +                       .num_parents = 1,
> +                       .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,

Can you add a comment on why this is critical?

> +                       .ops = &clk_branch2_ops,
> +               },
> +       },
> +};
> +
> +static struct clk_branch gcc_qdss_dap_clk = {
> +       .halt_reg = 0x29084,
> +       .clkr = {
> +               .enable_reg = 0x29084,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gcc_qdss_dap_clk",
> +                       .parent_names = (const char *[]){
> +                               "qdss_dap_sync_clk_src"
> +                       },
> +                       .num_parents = 1,
> +                       .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,

Can you add a comment on why this is critical?

> +                       .ops = &clk_branch2_ops,
> +               },
> +       },
> +};
> +
> +static struct clk_branch gcc_qpic_ahb_clk = {
> +       .halt_reg = 0x57024,
> +       .clkr = {
> +               .enable_reg = 0x57024,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gcc_qpic_ahb_clk",
> +                       .parent_names = (const char *[]){
> +                               "pcnoc_clk_src"
> +                       },
> +                       .num_parents = 1,
> +                       .flags = CLK_SET_RATE_PARENT,
> +                       .ops = &clk_branch2_ops,
> +               },
> +       },
> +};
> +
[...]
> +static struct clk_branch gcc_dcc_clk = {
> +       .halt_reg = 0x77004,
> +       .clkr = {
> +               .enable_reg = 0x77004,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gcc_dcc_clk",
> +                       .parent_names = (const char *[]){
> +                               "pcnoc_clk_src"
> +                       },

Can you use the new method of specifying clk parents here? That will
make this simpler.

> +                       .num_parents = 1,
> +                       .flags = CLK_SET_RATE_PARENT,
> +                       .ops = &clk_branch2_ops,
> +               },
> +       },
> +};
> +
> +static const struct alpha_pll_config ubi32_pll_config = {
> +       .l = 0x3e,
> +       .alpha = 0x57,
> +       .config_ctl_val = 0x200d6aa8,
> +       .config_ctl_hi_val = 0x3c2,
> +       .main_output_mask = BIT(0),
> +       .aux_output_mask = BIT(1),
> +       .pre_div_val = 0x0,
> +       .pre_div_mask = BIT(12),
> +       .post_div_val = 0x0,
> +       .post_div_mask = GENMASK(9, 8),
> +};
> +
> +static const struct alpha_pll_config nss_crypto_pll_config = {
> +       .l = 0x32,
> +       .alpha = 0x0,
> +       .alpha_hi = 0x0,
> +       .config_ctl_val = 0x4001055b,
> +       .main_output_mask = BIT(0),
> +       .pre_div_val = 0x0,
> +       .pre_div_mask = GENMASK(14, 12),
> +       .post_div_val = 0x1 << 8,
> +       .post_div_mask = GENMASK(11, 8),
> +       .vco_mask = GENMASK(21, 20),
> +       .vco_val = 0x0,
> +       .alpha_en_mask = BIT(24),
> +};
> +
> +static struct clk_hw *gcc_ipq6018_hws[] = {

It would be nice to trim this down to a list of 0.

> +       &gpll0_out_main_div2.hw,
> +       &pcnoc_clk_src.hw,
> +       &snoc_nssnoc_clk_src.hw,
> +       &system_noc_clk_src.hw,
> +       &gcc_xo_div4_clk_src.hw,
> +       &ubi32_mem_noc_clk_src.hw,
> +       &nss_ppe_cdiv_clk_src.hw,
> +       &gpll6_out_main_div2.hw,

Why do we need this? Does anyone use it?

> +       &qdss_dap_sync_clk_src.hw,
> +       &qdss_tsctr_div2_clk_src.hw,
> +};
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
