Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88D111CAB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:29:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jS07hcIT9EW8sHePXwxYnG+LQeU5W3ANi7/YFJyabNw=; b=Wa0GNPmM+vSCNDRYyVmVPSUm2r
	HIgaqE4d5Jsj1IuNUtrqN/Rx1RWeHmTXcbec7hFvMii7j+lZhXATXNpYB8++GoojispVwK+kgsZJF
	NGnFRClDy8EO3u8AlkiHz5FaBxyV5WjMiOFoBHwHv4zl3+07lZlHbQUeRENejQQ9y77SNKTBW2f3g
	9Bxryyqkyv7Iyr564y3lk68Hfw4WeTkzbsKVWflOF/fg+hkFYcPqWzckMNjAl8AMvlBHbojRVeWkm
	YQgVkknY24po5Ctl7J5s1HYumDKhqiY+j9Td59Ml0ijlW1bNSR6OwJipg0S7dlAT6Pz7pVYpj4q+W
	CP8pbikQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLiX-0005DJ-9r; Thu, 12 Dec 2019 10:29:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLiI-0005Bo-4k
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:28:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so1890640wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 02:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=bgBUXuUo5cMqkfWOHR0bTiqMXdBhEJ8mRB77yTNQBq0=;
 b=GyjZyw4yjytQNynD27/RKIuV454v5p6V76bHHfk34KVlfdU39SNlLDBD2KMc2WyUt0
 OlONAGa2XniNIyLMSgvjL+/jfLGtiUsYy6N+1pEwZDA5dfirtFZmJfgadu9piTmPxIJZ
 OE5swjTSJwkQscnVGUutx4/ugpWDh5CEE+5lGAjZyaoqDYp2ZwcPNHVpAW3AxLm/1wa1
 RGXWCh0a3VM6C4d4FgP60VTVxRM8777mf6UArRhXjKg16wVqOs6U1a5JwnTkYK60SZ8j
 joQn4bfutp/1OyVsFf0M1itALzEx+KrRoZGrFAiV+8c4cAEKiR/b1RC0lBud4r3vwptK
 czng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=bgBUXuUo5cMqkfWOHR0bTiqMXdBhEJ8mRB77yTNQBq0=;
 b=X+23SdUwNts4s5ljl0OfHdivr1B6jpUghzRZROAq206+Vj202mMG4IvBMQDlJdUJkv
 jCG2+NVWa0xlAS38JRa+KKYssHHIP/pWBkfzCdQZo/WDNT3jq/L4Fa0vxTIg6EUgTRGe
 yCVpTeojoeWLAApoodXISc3t1GbyxDncnNr+J1MP67Oleym0/delW4aJ1d5JDdUg59nB
 2tN4SDChMjAI4+JjC/ChZL8GaYmxyq/gv/7L0kKhGtWlnNtxpUFgVCoNKeD0Z56XS/Ao
 xsHE7BJ0yu/WnIHheKBSN44K5V772hHlz59gLD0dk2hLraLvstQr1WXMVIZI+L/shi8P
 r/rA==
X-Gm-Message-State: APjAAAUXTy45ppVjAGSt3RLlGcPRIx7fpIAHDfIBRvoD6EeRdw4+VSjV
 N17TO2xK9ayNlSXLkD7OX4A0Fg==
X-Google-Smtp-Source: APXvYqybe+u9fmfuC1mnPl3qqMjtI2cH4qd2SAx4LQJM5C0j61aHAWjqZYOZQBaUrg233uc0nL9P3w==
X-Received: by 2002:a7b:c001:: with SMTP id c1mr5762342wmb.96.1576146532678;
 Thu, 12 Dec 2019 02:28:52 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b16sm5721021wrj.23.2019.12.12.02.28.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 02:28:52 -0800 (PST)
References: <20191206074052.15557-1-jian.hu@amlogic.com>
 <20191206074052.15557-5-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v4 4/6] clk: meson: a1: add support for Amlogic A1 PLL
 clock driver
In-reply-to: <20191206074052.15557-5-jian.hu@amlogic.com>
Date: Thu, 12 Dec 2019 11:28:51 +0100
Message-ID: <1j5zilltwc.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_022854_226999_55004C31 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 06 Dec 2019 at 08:40, Jian Hu <jian.hu@amlogic.com> wrote:

> The Amlogic A1 clock includes three drivers:
> pll clocks, peripheral clocks, CPU clocks.
> sys pll and CPU clocks will be sent in next patch.
>
> Unlike the previous series, there is no EE/AO domain
> in A1 CLK controllers.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  drivers/clk/meson/Kconfig  |  10 ++
>  drivers/clk/meson/Makefile |   1 +
>  drivers/clk/meson/a1-pll.c | 334 +++++++++++++++++++++++++++++++++++++
>  drivers/clk/meson/a1-pll.h |  56 +++++++
>  4 files changed, 401 insertions(+)
>  create mode 100644 drivers/clk/meson/a1-pll.c
>  create mode 100644 drivers/clk/meson/a1-pll.h
>
> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
> index dabeb435d067..14e7936ae18e 100644
> --- a/drivers/clk/meson/Kconfig
> +++ b/drivers/clk/meson/Kconfig
> @@ -93,6 +93,16 @@ config COMMON_CLK_AXG_AUDIO
>  	  Support for the audio clock controller on AmLogic A113D devices,
>  	  aka axg, Say Y if you want audio subsystem to work.
>  
> +config COMMON_CLK_A1_PLL
> +	bool
> +	depends on ARCH_MESON
> +	select COMMON_CLK_MESON_EE_CLKC
> +	select COMMON_CLK_MESON_REGMAP
> +	select COMMON_CLK_MESON_PLL
> +	help
> +	  Support for the PLL clock controller on Amlogic A113L device,
> +	  aka a1. Say Y if you want PLL to work.
> +
>  config COMMON_CLK_G12A
>  	bool
>  	depends on ARCH_MESON
> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
> index 3939f218587a..71d3b8e6fb8a 100644
> --- a/drivers/clk/meson/Makefile
> +++ b/drivers/clk/meson/Makefile
> @@ -16,6 +16,7 @@ obj-$(CONFIG_COMMON_CLK_MESON_VID_PLL_DIV) += vid-pll-div.o
>  
>  obj-$(CONFIG_COMMON_CLK_AXG) += axg.o axg-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
> +obj-$(CONFIG_COMMON_CLK_A1_PLL) += a1-pll.o
>  obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_G12A) += g12a.o g12a-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o
> diff --git a/drivers/clk/meson/a1-pll.c b/drivers/clk/meson/a1-pll.c
> new file mode 100644
> index 000000000000..b248ac81ddd8
> --- /dev/null
> +++ b/drivers/clk/meson/a1-pll.c
> @@ -0,0 +1,334 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + * Author: Jian Hu <jian.hu@amlogic.com>
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include "a1-pll.h"
> +#include "clk-pll.h"
> +#include "meson-eeclk.h"
> +
> +static struct clk_regmap a1_fixed_pll_dco = {
> +	.data = &(struct meson_clk_pll_data){
> +		.en = {
> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
> +			.shift   = 28,
> +			.width   = 1,
> +		},
> +		.m = {
> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
> +			.shift   = 0,
> +			.width   = 8,
> +		},
> +		.n = {
> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
> +			.shift   = 10,
> +			.width   = 5,
> +		},
> +		.frac = {
> +			.reg_off = ANACTRL_FIXPLL_CTRL1,
> +			.shift   = 0,
> +			.width   = 19,
> +		},
> +		.l = {
> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
> +			.shift   = 31,
> +			.width   = 1,
> +		},
> +		.rst = {
> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
> +			.shift   = 29,
> +			.width   = 1,
> +		},
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fixed_pll_dco",
> +		.ops = &meson_clk_pll_ro_ops,
> +		.parent_data = &(const struct clk_parent_data){
> +			.fw_name = "xtal_fixpll",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_fixed_pll = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = ANACTRL_FIXPLL_CTRL0,
> +		.bit_idx = 20,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "fixed_pll",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fixed_pll_dco.hw
> +		},
> +		.num_parents = 1,
> +		/*
> +		 * This clock is fclk_div2/3/5's parent,
> +		 * However, fclk_div2/3/5 feeds AXI/APB/DDR.
> +		 * It is required by the platform to operate correctly.
> +		 */
> +		.flags = CLK_IGNORE_UNUSED,

From the comment, it looks like this clock should be critical, not ignored

> +	},
> +};
> +
> +static const struct pll_mult_range a1_hifi_pll_mult_range = {
> +	.min = 32,
> +	.max = 64,
> +};
> +
> +static const struct reg_sequence a1_hifi_init_regs[] = {
> +	{ .reg = ANACTRL_HIFIPLL_CTRL1, .def = 0x01800000 },
> +	{ .reg = ANACTRL_HIFIPLL_CTRL2, .def = 0x00001100 },
> +	{ .reg = ANACTRL_HIFIPLL_CTRL3, .def = 0x100a1100 },
> +	{ .reg = ANACTRL_HIFIPLL_CTRL4, .def = 0x00302000 },
> +	{ .reg = ANACTRL_HIFIPLL_CTRL0, .def = 0x01f18440 },
> +};
> +
> +static struct clk_regmap a1_hifi_pll = {
> +	.data = &(struct meson_clk_pll_data){
> +		.en = {
> +			.reg_off = ANACTRL_HIFIPLL_CTRL0,
> +			.shift   = 28,
> +			.width   = 1,
> +		},
> +		.m = {
> +			.reg_off = ANACTRL_HIFIPLL_CTRL0,
> +			.shift   = 0,
> +			.width   = 8,
> +		},
> +		.n = {
> +			.reg_off = ANACTRL_HIFIPLL_CTRL0,
> +			.shift   = 10,
> +			.width   = 5,
> +		},
> +		.frac = {
> +			.reg_off = ANACTRL_HIFIPLL_CTRL1,
> +			.shift   = 0,
> +			.width   = 19,
> +		},
> +		.l = {
> +			.reg_off = ANACTRL_HIFIPLL_STS,
> +			.shift   = 31,
> +			.width   = 1,
> +		},
> +		.current_en = {
> +			.reg_off = ANACTRL_HIFIPLL_CTRL0,
> +			.shift   = 26,
> +			.width   = 1,
> +		},
> +		.rst = {
> +			.reg_off = ANACTRL_HIFIPLL_CTRL2,
> +			.shift   = 6,
> +			.width   = 1,
> +		},
> +		.range = &a1_hifi_pll_mult_range,
> +		.init_regs = a1_hifi_init_regs,
> +		.init_count = ARRAY_SIZE(a1_hifi_init_regs),
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "hifi_pll",
> +		.ops = &meson_clk_pll_ops,
> +		.parent_data = &(const struct clk_parent_data){
> +			.fw_name = "xtal_hifipll",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_fixed_factor a1_fclk_div2_div = {
> +	.mult = 1,
> +	.div = 2,
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div2_div",
> +		.ops = &clk_fixed_factor_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fixed_pll.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_fclk_div2 = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = ANACTRL_FIXPLL_CTRL0,
> +		.bit_idx = 21,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div2",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fclk_div2_div.hw
> +		},
> +		.num_parents = 1,
> +		/*
> +		 * This clock is used by DDR clock in BL2 firmware
> +		 * and is required by the platform to operate correctly.
> +		 * Until the following condition are met, we need this clock to
> +		 * be marked as critical:
> +		 * a) Mark the clock used by a firmware resource, if possible
> +		 * b) CCF has a clock hand-off mechanism to make the sure the
> +		 *    clock stays on until the proper driver comes along
> +		 */
> +		.flags = CLK_IS_CRITICAL,
> +	},
> +};
> +
> +static struct clk_fixed_factor a1_fclk_div3_div = {
> +	.mult = 1,
> +	.div = 3,
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div3_div",
> +		.ops = &clk_fixed_factor_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fixed_pll.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_fclk_div3 = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = ANACTRL_FIXPLL_CTRL0,
> +		.bit_idx = 22,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div3",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fclk_div3_div.hw
> +		},
> +		.num_parents = 1,
> +		/*
> +		 * This clock is used by APB bus which setted in Romcode
> +		 * and is required by the platform to operate correctly.

From here, I think you replace the comment with "Refer to a1_fclk_div2"
to avoid pasting the same lines over and over again. Same for the other
clocks below.

> +		 * Until the following condition are met, we need this clock to
> +		 * be marked as critical:
> +		 * a) Mark the clock used by a firmware resource, if possible
> +		 * b) CCF has a clock hand-off mechanism to make the sure the
> +		 *    clock stays on until the proper driver comes along
> +		 */
> +		.flags = CLK_IS_CRITICAL,
> +	},
> +};
> +
> +static struct clk_fixed_factor a1_fclk_div5_div = {
> +	.mult = 1,
> +	.div = 5,
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div5_div",
> +		.ops = &clk_fixed_factor_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fixed_pll.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_fclk_div5 = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = ANACTRL_FIXPLL_CTRL0,
> +		.bit_idx = 23,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div5",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fclk_div5_div.hw
> +		},
> +		.num_parents = 1,
> +		/*
> +		 * This clock is used by AXI bus which setted in Romcode
> +		 * and is required by the platform to operate correctly.
> +		 * Until the following condition are met, we need this clock to
> +		 * be marked as critical:
> +		 * a) Mark the clock used by a firmware resource, if possible
> +		 * b) CCF has a clock hand-off mechanism to make the sure the
> +		 *    clock stays on until the proper driver comes along
> +		 */
> +		.flags = CLK_IS_CRITICAL,
> +	},
> +};
> +
> +static struct clk_fixed_factor a1_fclk_div7_div = {
> +	.mult = 1,
> +	.div = 7,
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div7_div",
> +		.ops = &clk_fixed_factor_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fixed_pll.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_fclk_div7 = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = ANACTRL_FIXPLL_CTRL0,
> +		.bit_idx = 24,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div7",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fclk_div7_div.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +/* Array of all clocks provided by this provider */
> +static struct clk_hw_onecell_data a1_pll_hw_onecell_data = {
> +	.hws = {
> +		[CLKID_FIXED_PLL_DCO]		= &a1_fixed_pll_dco.hw,
> +		[CLKID_FIXED_PLL]		= &a1_fixed_pll.hw,
> +		[CLKID_HIFI_PLL]		= &a1_hifi_pll.hw,
> +		[CLKID_FCLK_DIV2]		= &a1_fclk_div2.hw,
> +		[CLKID_FCLK_DIV3]		= &a1_fclk_div3.hw,
> +		[CLKID_FCLK_DIV5]		= &a1_fclk_div5.hw,
> +		[CLKID_FCLK_DIV7]		= &a1_fclk_div7.hw,
> +		[CLKID_FCLK_DIV2_DIV]		= &a1_fclk_div2_div.hw,
> +		[CLKID_FCLK_DIV3_DIV]		= &a1_fclk_div3_div.hw,
> +		[CLKID_FCLK_DIV5_DIV]		= &a1_fclk_div5_div.hw,
> +		[CLKID_FCLK_DIV7_DIV]		= &a1_fclk_div7_div.hw,
> +		[NR_PLL_CLKS]			= NULL,
> +	},
> +	.num = NR_PLL_CLKS,
> +};
> +
> +static struct clk_regmap *const a1_pll_regmaps[] = {
> +	&a1_fixed_pll_dco,
> +	&a1_fixed_pll,
> +	&a1_hifi_pll,
> +	&a1_fclk_div2,
> +	&a1_fclk_div3,
> +	&a1_fclk_div5,
> +	&a1_fclk_div7,
> +};
> +
> +static const struct meson_eeclkc_data a1_pll_data = {
> +		.regmap_clks = a1_pll_regmaps,
> +		.regmap_clk_num = ARRAY_SIZE(a1_pll_regmaps),
> +		.hw_onecell_data = &a1_pll_hw_onecell_data,
> +};
> +static const struct of_device_id clkc_match_table[] = {
> +	{
> +		.compatible = "amlogic,a1-pll-clkc",
> +		.data = &a1_pll_data
> +	},
> +	{}
> +};
> +
> +static struct platform_driver a1_pll_driver = {
> +	.probe		= meson_clkc_probe,
> +	.driver		= {
> +		.name	= "a1-pll-clkc",
> +		.of_match_table = clkc_match_table,
> +	},
> +};
> +
> +builtin_platform_driver(a1_pll_driver);
> diff --git a/drivers/clk/meson/a1-pll.h b/drivers/clk/meson/a1-pll.h
> new file mode 100644
> index 000000000000..8ded267061ad
> --- /dev/null
> +++ b/drivers/clk/meson/a1-pll.h
> @@ -0,0 +1,56 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +
> +#ifndef __A1_PLL_H
> +#define __A1_PLL_H
> +
> +/* PLL register offset */
> +#define ANACTRL_FIXPLL_CTRL0		0x0
> +#define ANACTRL_FIXPLL_CTRL1		0x4
> +#define ANACTRL_FIXPLL_CTRL2		0x8
> +#define ANACTRL_FIXPLL_CTRL3		0xc
> +#define ANACTRL_FIXPLL_CTRL4		0x10
> +#define ANACTRL_FIXPLL_STS		0x14
> +#define ANACTRL_SYSPLL_CTRL0		0x80
> +#define ANACTRL_SYSPLL_CTRL1		0x84
> +#define ANACTRL_SYSPLL_CTRL2		0x88
> +#define ANACTRL_SYSPLL_CTRL3		0x8c
> +#define ANACTRL_SYSPLL_CTRL4		0x90
> +#define ANACTRL_SYSPLL_STS		0x94
> +#define ANACTRL_HIFIPLL_CTRL0		0xc0
> +#define ANACTRL_HIFIPLL_CTRL1		0xc4
> +#define ANACTRL_HIFIPLL_CTRL2		0xc8
> +#define ANACTRL_HIFIPLL_CTRL3		0xcc
> +#define ANACTRL_HIFIPLL_CTRL4		0xd0
> +#define ANACTRL_HIFIPLL_STS		0xd4
> +#define ANACTRL_AUDDDS_CTRL0		0x100
> +#define ANACTRL_AUDDDS_CTRL1		0x104
> +#define ANACTRL_AUDDDS_CTRL2		0x108
> +#define ANACTRL_AUDDDS_CTRL3		0x10c
> +#define ANACTRL_AUDDDS_CTRL4		0x110
> +#define ANACTRL_AUDDDS_STS		0x114
> +#define ANACTRL_MISCTOP_CTRL0		0x140
> +#define ANACTRL_POR_CNTL		0x188
> +
> +/*
> + * CLKID index values
> + *
> + * These indices are entirely contrived and do not map onto the hardware.
> + * It has now been decided to expose everything by default in the DT header:
> + * include/dt-bindings/clock/a1-pll-clkc.h. Only the clocks ids we don't want
> + * to expose, such as the internal muxes and dividers of composite clocks,
> + * will remain defined here.
> + */
> +#define CLKID_FIXED_PLL_DCO		0
> +#define CLKID_FCLK_DIV2_DIV		2
> +#define CLKID_FCLK_DIV3_DIV		3
> +#define CLKID_FCLK_DIV5_DIV		4
> +#define CLKID_FCLK_DIV7_DIV		5
> +#define NR_PLL_CLKS			11
> +
> +/* include the CLKIDs that have been made part of the DT binding */
> +#include <dt-bindings/clock/a1-pll-clkc.h>
> +
> +#endif /* __A1_PLL_H */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
