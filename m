Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CC9DEB2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=suLz19NglHosh1N1Wak3cz/xrMqEvmhdGm8/O8hcXbQ=; b=bKLSEQOmHTPlRQKhx1RDO2nuq+
	HFdoOdb+K/5WAC6dUcHpYIwGuUFWIhP0HTUtv1uYtxanFo5kPhEP85ucOVOmFmvEF8GHKDF78ke8F
	rcoeXs2AMufL6QzHlHdscIy/dzusT8Z0ClPfJtuYgjMKZDQh8tAjH7z5hfVZQsRj2yLqUy9953Dmi
	tPcGPwsPrxtd31HgklciTTM92AWTBlTtUKIjmxRe+lugY94yH+hfCqA0Osdzv1lv9C/wscJidG/ij
	vLGXQvU9aaeQ0iWP36ilwp34bENjoqk1hkXodzrr49deN9nAamM24w/92tTlkbFPZQmACdBm9DIzG
	f1gqbk0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMW4W-0006s2-HA; Mon, 21 Oct 2019 11:42:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMW4E-0006pr-1s
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:41:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id f22so12434699wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=0LyVJ9x8mKuaXQdE6RoQ0Sx5VzLB0bPbh9H/i/tAxhs=;
 b=x5F9+npgMfhSkFZqbvrTb495RbT6R9gHH4GtKNTwb56x8usV21TK2QC550bXzhV2C7
 HfnGhUoJ8100ipXm4Jc16jYpDX+Z41wNl2iA69lIZFH69nPiy+h5QfNFKmIqvQ1z7H7v
 rtc7IkI0+a3nbMUfW/+Bgnce3Incclhk/ETIWkbjhPuKnnY3fKo2+4jJLaeDRT2+Tlvh
 dElvan4VQMKlOk7yZVMDHPO25iTUrrX3Dp+t43M63sXcSYS9qSr7mqUVv2RVdBiODTry
 47dfYzxxMWYRPGuD18zFIrXMnqr6+F2SLeFj5qx4+6DEz3M8WVCqt/8X23CQZnL8j09n
 nAxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=0LyVJ9x8mKuaXQdE6RoQ0Sx5VzLB0bPbh9H/i/tAxhs=;
 b=NdWPYygAkeWWmjxVXg8Hze9wSaL/UKtZRI7gHMv1u0j7Pn5XWWGgw+zdGr4qq12tYA
 vMMcNEwzY/6gVQE3dz3sZIGFyNdsoDk+U4MVGt9UO0PO2txKEP7aAVgdvVQoxG6NTAON
 7mvfnEFa56vielVnKr/KSa49sD955s+JXzIjnLiYK0u+/H05wopCcPej4fv4QQqSrkfm
 cx0SXhRXJ9u95csnZT0PGSmOo7EeH8WsWGJdNyQZGuK4MSjThOcMKHPXIbgkKZoPYB43
 GFFiGzeKrXx+CSQ7QIIOwAn+gKswZfGcIQel+koBulxChAJaXC7Yi+/BGATPuWgE2smC
 aBdQ==
X-Gm-Message-State: APjAAAWIQ8fmdBF1FvIjGTmp3156be6qelu/NfFaqsw+x4OoFC9p1T6I
 MKYvEmpaITMgSekYuYNECMxn50scLX4=
X-Google-Smtp-Source: APXvYqweqFKeW1MPL7zOZKQFFhOZzvbkDlo6D/RMgriqLnFrpny2B2wOVKDgeHUmJhZuGPmtFWiRjA==
X-Received: by 2002:a7b:c846:: with SMTP id c6mr1330164wml.68.1571658099388;
 Mon, 21 Oct 2019 04:41:39 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t23sm4370369wmi.15.2019.10.21.04.41.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 04:41:38 -0700 (PDT)
References: <1571382865-41978-1-git-send-email-jian.hu@amlogic.com>
 <1571382865-41978-4-git-send-email-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 3/3] clk: meson: a1: add support for Amlogic A1 clock
 driver
In-reply-to: <1571382865-41978-4-git-send-email-jian.hu@amlogic.com>
Date: Mon, 21 Oct 2019 13:41:37 +0200
Message-ID: <1jsgnmba1a.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_044142_328439_572F3100 
X-CRM114-Status: GOOD (  28.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


On Fri 18 Oct 2019 at 09:14, Jian Hu <jian.hu@amlogic.com> wrote:

> The Amlogic A1 clock includes three drivers:
> peripheral clocks, pll clocks, CPU clocks.
> sys pll and CPU clocks will be sent in next patch.
>
> Unlike the previous series, there is no EE/AO domain
> in A1 CLK controllers.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  drivers/clk/meson/Kconfig  |   10 +
>  drivers/clk/meson/Makefile |    1 +
>  drivers/clk/meson/a1-pll.c |  345 +++++++
>  drivers/clk/meson/a1-pll.h |   56 ++
>  drivers/clk/meson/a1.c     | 2264 ++++++++++++++++++++++++++++++++++++++++++++
>  drivers/clk/meson/a1.h     |  120 +++
>  6 files changed, 2796 insertions(+)
>  create mode 100644 drivers/clk/meson/a1-pll.c
>  create mode 100644 drivers/clk/meson/a1-pll.h
>  create mode 100644 drivers/clk/meson/a1.c
>  create mode 100644 drivers/clk/meson/a1.h

In the next version, one

>
> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
> index dabeb43..c2809b2 100644
> --- a/drivers/clk/meson/Kconfig
> +++ b/drivers/clk/meson/Kconfig
> @@ -93,6 +93,16 @@ config COMMON_CLK_AXG_AUDIO
>  	  Support for the audio clock controller on AmLogic A113D devices,
>  	  aka axg, Say Y if you want audio subsystem to work.
>  
> +config COMMON_CLK_A1
> +	bool
> +	depends on ARCH_MESON
> +	select COMMON_CLK_MESON_REGMAP
> +	select COMMON_CLK_MESON_DUALDIV
> +	select COMMON_CLK_MESON_PLL
> +	help
> +	  Support for the clock controller on Amlogic A113L device,
> +	  aka a1. Say Y if you want peripherals to work.
> +
>  config COMMON_CLK_G12A
>  	bool
>  	depends on ARCH_MESON
> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
> index 3939f21..28cbae1 100644
> --- a/drivers/clk/meson/Makefile
> +++ b/drivers/clk/meson/Makefile
> @@ -16,6 +16,7 @@ obj-$(CONFIG_COMMON_CLK_MESON_VID_PLL_DIV) += vid-pll-div.o
>  
>  obj-$(CONFIG_COMMON_CLK_AXG) += axg.o axg-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
> +obj-$(CONFIG_COMMON_CLK_A1) += a1-pll.o a1.o

So far, all the controller had there own option, I don't see why it
should be different here.

>  obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_G12A) += g12a.o g12a-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o
> diff --git a/drivers/clk/meson/a1-pll.c b/drivers/clk/meson/a1-pll.c
> new file mode 100644
> index 0000000..486d964
> --- /dev/null
> +++ b/drivers/clk/meson/a1-pll.c
> @@ -0,0 +1,345 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + * Author: Jian Hu <jian.hu@amlogic.com>
> + */
> +
> +#include <linux/platform_device.h>

Hum ... looks like some things are missing here

#include <linux/of_device.h>
#include <linux/clk-provider.h>

?

> +#include "clk-pll.h"
> +#include "meson-eeclk.h"
> +#include "a1-pll.h"

Alphanumeric order please

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
> +			.name = "xtal_fixpll",
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
> +		 * This clock is fclk_div2/3/4's parent,
> +		 * However, fclk_div2/3/5 feeds AXI/APB/DDR.

is it fclk_div2/3/4 or fclk_div2/3/5 ?

> +		 * It is required by the platform to operate correctly.
> +		 * Until the following condition are met, we need this clock to
> +		 * be marked as critical:
> +		 * a) Mark the clock used by a firmware resource, if possible
> +		 * b) CCF has a clock hand-off mechanism to make the sure the
> +		 *    clock stays on until the proper driver comes along
> +		 */

Don't blindly copy/paste comments from other drivers. There is no driver
for the devices you are mentionning so the end of the comment is
confusing. The 3 first lines were enough

> +		.flags = CLK_IS_CRITICAL,

From your comment, I understand that some child are critical, not this
particular (or at least, not directly). So this can be removed AFAICT

You should even need CLK_IGNORE_UNUSED for this one since the clock will
already be enabled before the late_init() kicks in

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
> +	{ .reg = ANACTRL_HIFIPLL_CTRL0, .def = 0x11f18440, .delay_us = 10 },
> +	{ .reg = ANACTRL_HIFIPLL_CTRL0, .def = 0x15f18440, .delay_us = 40 },
> +	{ .reg = ANACTRL_HIFIPLL_CTRL2, .def = 0x00001140 },
> +	{ .reg = ANACTRL_HIFIPLL_CTRL2, .def = 0x00001100 },
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
> +		.range = &a1_hifi_pll_mult_range,
> +		.init_regs = a1_hifi_init_regs,
> +		.init_count = ARRAY_SIZE(a1_hifi_init_regs),
> +		.strict_sequence = true,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "hifi_pll",
> +		.ops = &meson_clk_pll_ops,
> +		.parent_data = &(const struct clk_parent_data){
> +			.fw_name = "xtal_fixpll",
> +			.name = "xtal_fixpll",

Both should provided when a controller transition from the old way of
describing parent to the new way. This is a new controller so it does
not apply.

Same for the other occurences.

Also, I think you meant xtal_hifipll

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
> +static int meson_a1_pll_probe(struct platform_device *pdev)
> +{
> +	int ret;
> +
> +	ret = meson_eeclkc_probe(pdev);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}

This function is useless.

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
> +	{ /* sentinel */ }

Nitpick: don't need to write this, just write the line like this

' }, {}'

> +};
> +
> +static struct platform_driver a1_driver = {
> +	.probe		= meson_a1_pll_probe,
> +	.driver		= {
> +		.name	= "a1-pll-clkc",
> +		.of_match_table = clkc_match_table,
> +	},
> +};
> +
> +builtin_platform_driver(a1_driver);
> diff --git a/drivers/clk/meson/a1-pll.h b/drivers/clk/meson/a1-pll.h
> new file mode 100644
> index 0000000..99ee2a9
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
> +#define ANACTRL_FIXPLL_CTRL0		0x80
> +#define ANACTRL_FIXPLL_CTRL1		0x84
> +#define ANACTRL_FIXPLL_CTRL2		0x88
> +#define ANACTRL_FIXPLL_CTRL3		0x8c
> +#define ANACTRL_FIXPLL_CTRL4		0x90
> +#define ANACTRL_FIXPLL_STS		0x94
> +#define ANACTRL_SYSPLL_CTRL0		0x100
> +#define ANACTRL_SYSPLL_CTRL1		0x104
> +#define ANACTRL_SYSPLL_CTRL2		0x108
> +#define ANACTRL_SYSPLL_CTRL3		0x10c
> +#define ANACTRL_SYSPLL_CTRL4		0x110
> +#define ANACTRL_SYSPLL_STS		0x114
> +#define ANACTRL_HIFIPLL_CTRL0		0x140
> +#define ANACTRL_HIFIPLL_CTRL1		0x144
> +#define ANACTRL_HIFIPLL_CTRL2		0x148
> +#define ANACTRL_HIFIPLL_CTRL3		0x14c
> +#define ANACTRL_HIFIPLL_CTRL4		0x150
> +#define ANACTRL_HIFIPLL_STS		0x154
> +#define ANACTRL_AUDDDS_CTRL0		0x180
> +#define ANACTRL_AUDDDS_CTRL1		0x184
> +#define ANACTRL_AUDDDS_CTRL2		0x188
> +#define ANACTRL_AUDDDS_CTRL3		0x18c
> +#define ANACTRL_AUDDDS_CTRL4		0x190
> +#define ANACTRL_AUDDDS_STS		0x194
> +#define ANACTRL_MISCTOP_CTRL0		0x1c0
> +#define ANACTRL_POR_CNTL		0x208
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
> diff --git a/drivers/clk/meson/a1.c b/drivers/clk/meson/a1.c
> new file mode 100644
> index 0000000..86a4733
> --- /dev/null
> +++ b/drivers/clk/meson/a1.c
> @@ -0,0 +1,2264 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + * Author: Jian Hu <jian.hu@amlogic.com>
> + */
> +
> +#include <linux/platform_device.h>
> +#include "clk-pll.h"
> +#include "clk-dualdiv.h"
> +#include "meson-eeclk.h"
> +#include "a1.h"

Same as above

> +
> +/* PLLs clock in gates, its parent is xtal */
> +static struct clk_regmap a1_xtal_clktree = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SYS_OSCIN_CTRL,
> +		.bit_idx = 0,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "xtal_clktree",
> +		.ops = &clk_regmap_gate_ro_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +		/*
> +		 * switch for xtal clock
> +		 * Linux should not change it at runtime
> +		 */

Comment not useful: it uses the Ro ops

> +	},
> +};
> +
> +static struct clk_regmap a1_xtal_fixpll = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SYS_OSCIN_CTRL,
> +		.bit_idx = 1,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "xtal_fixpll",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_IS_CRITICAL,
> +		/*
> +		 * it feeds DDR,AXI,APB bus
> +		 * Linux should not change it at runtime
> +		 */

Again, the child are critical, not directly this clock from your
comment.

Remove CRITICAL, put RO is linux is not supposed to touch it.

> +	},
> +};
> +
> +static struct clk_regmap a1_xtal_usb_phy = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SYS_OSCIN_CTRL,
> +		.bit_idx = 2,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "xtal_usb_phy",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_xtal_usb_ctrl = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SYS_OSCIN_CTRL,
> +		.bit_idx = 3,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "xtal_usb_ctrl",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_xtal_hifipll = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SYS_OSCIN_CTRL,
> +		.bit_idx = 4,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "xtal_hifipll",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_xtal_syspll = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SYS_OSCIN_CTRL,
> +		.bit_idx = 5,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "xtal_syspll",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_xtal_dds = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SYS_OSCIN_CTRL,
> +		.bit_idx = 6,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "xtal_dds",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static const struct clk_parent_data sys_clk_parents[] = {
> +	{ .fw_name = "xtal" },
> +	{ .fw_name = "fclk_div2"},
> +	{ .fw_name = "fclk_div3"},
> +	{ .fw_name = "fclk_div5"},
> +};
> +
> +static struct clk_regmap a1_sys_b_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SYS_CLK_CTRL0,
> +		.mask = 0x7,
> +		.shift = 26,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sys_b_sel",
> +		.ops = &clk_regmap_mux_ro_ops,
> +		.parent_data = sys_clk_parents,
> +		.num_parents = ARRAY_SIZE(sys_clk_parents),
> +	},
> +};
> +
> +static struct clk_regmap a1_sys_b_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = SYS_CLK_CTRL0,
> +		.shift = 16,
> +		.width = 10,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sys_b_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_sys_b_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_sys_b = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SYS_CLK_CTRL0,
> +		.bit_idx = 29,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "sys_b",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_sys_b_div.hw
> +		},
> +		.num_parents = 1,
> +		/*
> +		 * This clock is used by APB bus which setted in Romcode
> +		 * and is required by the platform to operate correctly.
> +		 * Until the following condition are met, we need this clock to
> +		 * be marked as critical:
> +		 * a) Mark the clock used by a firmware resource, if possible
> +		 * b) CCF has a clock hand-off mechanism to make the sure the
> +		 *    clock stays on until the proper driver comes along
> +		 */
> +		.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> +	},
> +};
> +
> +static struct clk_regmap a1_sys_a_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SYS_CLK_CTRL0,
> +		.mask = 0x7,
> +		.shift = 10,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sys_a_sel",
> +		.ops = &clk_regmap_mux_ro_ops,
> +		.parent_data = sys_clk_parents,
> +		.num_parents = ARRAY_SIZE(sys_clk_parents),
> +	},
> +};
> +
> +static struct clk_regmap a1_sys_a_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = SYS_CLK_CTRL0,
> +		.shift = 0,
> +		.width = 10,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sys_a_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_sys_a_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_sys_a = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SYS_CLK_CTRL0,
> +		.bit_idx = 13,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "sys_a",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_sys_a_div.hw
> +		},
> +		.num_parents = 1,
> +		/*
> +		 * This clock is used by APB bus which setted in Romcode
> +		 * and is required by the platform to operate correctly.
> +		 * Until the following condition are met, we need this clock to
> +		 * be marked as critical:
> +		 * a) Mark the clock used by a firmware resource, if possible
> +		 * b) CCF has a clock hand-off mechanism to make the sure the
> +		 *    clock stays on until the proper driver comes along
> +		 */
> +		.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> +	},
> +};
> +
> +static struct clk_regmap a1_sys_clk = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SYS_CLK_CTRL0,
> +		.mask = 0x1,
> +		.shift = 31,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sys_clk",
> +		.ops = &clk_regmap_mux_ro_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_sys_a.hw, &a1_sys_b.hw,
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* rtc 32k clock in */
> +static struct clk_regmap a1_rtc_32k_clkin = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = RTC_BY_OSCIN_CTRL0,
> +		.bit_idx = 31,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "rtc_32k_clkin",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static const struct meson_clk_dualdiv_param a1_32k_div_table[] = {
> +	{
> +		.dual		= 1,
> +		.n1		= 733,
> +		.m1		= 8,
> +		.n2		= 732,
> +		.m2		= 11,
> +	}, {}
> +};
> +
> +static struct clk_regmap a1_rtc_32k_div = {
> +	.data = &(struct meson_clk_dualdiv_data){
> +		.n1 = {
> +			.reg_off = RTC_BY_OSCIN_CTRL0,
> +			.shift   = 0,
> +			.width   = 12,
> +		},
> +		.n2 = {
> +			.reg_off = RTC_BY_OSCIN_CTRL0,
> +			.shift   = 12,
> +			.width   = 12,
> +		},
> +		.m1 = {
> +			.reg_off = RTC_BY_OSCIN_CTRL1,
> +			.shift   = 0,
> +			.width   = 12,
> +		},
> +		.m2 = {
> +			.reg_off = RTC_BY_OSCIN_CTRL1,
> +			.shift   = 12,
> +			.width   = 12,
> +		},
> +		.dual = {
> +			.reg_off = RTC_BY_OSCIN_CTRL0,
> +			.shift   = 28,
> +			.width   = 1,
> +		},
> +		.table = a1_32k_div_table,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "rtc_32k_div",
> +		.ops = &meson_clk_dualdiv_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_rtc_32k_clkin.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_rtc_32k_xtal = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = RTC_BY_OSCIN_CTRL1,
> +		.bit_idx = 24,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "rtc_32k_xtal",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_rtc_32k_clkin.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static u32 rtc_32k_sel[] = { 0, 1 };
> +
> +static struct clk_regmap a1_rtc_32k_sel = {
> +	.data = &(struct clk_regmap_mux_data) {
> +		.offset = RTC_CTRL,
> +		.mask = 0x3,
> +		.shift = 0,
> +		.table = rtc_32k_sel,
> +		.flags = CLK_MUX_ROUND_CLOSEST,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "rtc_32k_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_rtc_32k_xtal.hw,
> +			&a1_rtc_32k_div.hw,
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +struct clk_regmap a1_rtc_clk = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = RTC_BY_OSCIN_CTRL0,
> +		.bit_idx = 30,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "rtc_clk",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_rtc_32k_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* dsp a clk */
> +static u32 mux_table_dsp_ab[] = { 0, 1, 2, 3, 4, 7 };
> +static const struct clk_parent_data dsp_ab_clk_parent_data[] = {
> +	{ .fw_name = "xtal", },
> +	{ .fw_name = "fclk_div2", },
> +	{ .fw_name = "fclk_div3", },
> +	{ .fw_name = "fclk_div5", },
> +	{ .fw_name = "hifi_pll", },
> +	{ .hw = &a1_rtc_clk.hw },
> +};
> +
> +static struct clk_regmap a1_dspa_a_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = DSPA_CLK_CTRL0,
> +		.mask = 0x7,
> +		.shift = 10,
> +		.table = mux_table_dsp_ab,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspa_a_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = dsp_ab_clk_parent_data,
> +		.num_parents = ARRAY_SIZE(dsp_ab_clk_parent_data),

.flags = CLK_SET_RATE_PARENT ?

> +	},
> +};
> +
> +static struct clk_regmap a1_dspa_a_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = DSPA_CLK_CTRL0,
> +		.shift = 0,
> +		.width = 10,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspa_a_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspa_a_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspa_a = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = DSPA_CLK_CTRL0,
> +		.bit_idx = 13,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "dspa_a",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspa_a_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspa_b_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = DSPA_CLK_CTRL0,
> +		.mask = 0x7,
> +		.shift = 26,
> +		.table = mux_table_dsp_ab,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspa_b_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = dsp_ab_clk_parent_data,
> +		.num_parents = ARRAY_SIZE(dsp_ab_clk_parent_data),

.flags = CLK_SET_RATE_PARENT ?

> +	},
> +};
> +
> +static struct clk_regmap a1_dspa_b_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = DSPA_CLK_CTRL0,
> +		.shift = 16,
> +		.width = 10,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspa_b_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspa_b_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspa_b = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = DSPA_CLK_CTRL0,
> +		.bit_idx = 29,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "dspa_b",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspa_b_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspa_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = DSPA_CLK_CTRL0,
> +		.mask = 0x1,
> +		.shift = 15,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspa_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = (const struct clk_parent_data []) {
> +			{ .hw = &a1_dspa_a.hw },
> +			{ .hw = &a1_dspa_b.hw },
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspa_en_dspa = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = DSPA_CLK_EN,
> +		.bit_idx = 1,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "dspa_en_dspa",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspa_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,

Why do you need CLK_IGNORE_UNUSED ?

> +	},
> +};
> +
> +static struct clk_regmap a1_dspa_en_nic = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = DSPA_CLK_EN,
> +		.bit_idx = 0,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "dspa_en_nic",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspa_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,

Why do you need CLK_IGNORE_UNUSED ?

> +	},
> +};
> +

Same question and remarks applies to DSP B

> +/* dsp b clk */
> +static struct clk_regmap a1_dspb_a_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = DSPB_CLK_CTRL0,
> +		.mask = 0x7,
> +		.shift = 10,
> +		.table = mux_table_dsp_ab,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspb_a_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = dsp_ab_clk_parent_data,
> +		.num_parents = ARRAY_SIZE(dsp_ab_clk_parent_data),
> +	},
> +};
> +
> +static struct clk_regmap a1_dspb_a_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = DSPB_CLK_CTRL0,
> +		.shift = 0,
> +		.width = 10,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspb_a_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspb_a_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspb_a = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = DSPB_CLK_CTRL0,
> +		.bit_idx = 13,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "dspb_a",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspb_a_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspb_b_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = DSPB_CLK_CTRL0,
> +		.mask = 0x7,
> +		.shift = 26,
> +		.table = mux_table_dsp_ab,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspb_b_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = dsp_ab_clk_parent_data,
> +		.num_parents = ARRAY_SIZE(dsp_ab_clk_parent_data),
> +	},
> +};
> +
> +static struct clk_regmap a1_dspb_b_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = DSPB_CLK_CTRL0,
> +		.shift = 16,
> +		.width = 10,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspb_b_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspb_b_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspb_b = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = DSPB_CLK_CTRL0,
> +		.bit_idx = 29,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "dspb_b",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspb_b_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspb_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = DSPB_CLK_CTRL0,
> +		.mask = 0x1,
> +		.shift = 15,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dspb_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspb_a.hw, &a1_dspb_b.hw,
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspb_en_dspb = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = DSPB_CLK_EN,
> +		.bit_idx = 1,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "dspb_en_dspb",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspb_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
> +	},
> +};
> +
> +static struct clk_regmap a1_dspb_en_nic = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = DSPB_CLK_EN,
> +		.bit_idx = 0,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "dspb_en_nic",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dspb_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
> +	},
> +};
> +
> +/* 12M/24M clock */
> +static struct clk_regmap a1_24m = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = CLK12_24_CTRL,
> +		.bit_idx = 11,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "24m",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_fixed_factor a1_24m_div2 = {
> +	.mult = 1,
> +	.div = 2,
> +	.hw.init = &(struct clk_init_data){
> +		.name = "24m_div2",
> +		.ops = &clk_fixed_factor_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_24m.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_12m = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = CLK12_24_CTRL,
> +		.bit_idx = 10,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "12m",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_24m_div2.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_fclk_div2_divn_pre = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = CLK12_24_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div2_divn_pre",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "fclk_div2",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_fclk_div2_divn = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = CLK12_24_CTRL,
> +		.bit_idx = 12,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "fclk_div2_divn",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_fclk_div2_divn_pre.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* gen clk */
> +/*
> + * the second parent is sys_pll_div16, it will complete in the CPU clock,
> + * the forth parent is the clock measurement source, it relies on
> + * the clock measurement register configuration.
> + */
> +static u32 gen_clk_table[] = { 0, 1, 3, 5, 6, 7, 8 };
> +static const struct clk_parent_data gen_clk_parent_data[] = {
> +	{ .fw_name = "xtal", },
> +	{ .hw = &a1_rtc_clk.hw },
> +	{ .fw_name = "hifi_pll", },
> +	{ .fw_name = "fclk_div2", },
> +	{ .fw_name = "fclk_div3", },
> +	{ .fw_name = "fclk_div5", },
> +	{ .fw_name = "fclk_div7", },
> +};
> +
> +static struct clk_regmap a1_gen_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = GEN_CLK_CTRL,
> +		.mask = 0xf,
> +		.shift = 12,
> +		.table = gen_clk_table,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "gen_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = gen_clk_parent_data,
> +		.num_parents = ARRAY_SIZE(gen_clk_parent_data),
> +	},
> +};
> +
> +static struct clk_regmap a1_gen_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = GEN_CLK_CTRL,
> +		.shift = 0,
> +		.width = 11,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "gen_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_gen_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_gen = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = GEN_CLK_CTRL,
> +		.bit_idx = 11,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "gen",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_gen_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_saradc_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SAR_ADC_CLK_CTRL,
> +		.mask = 0x1,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "saradc_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = (const struct clk_parent_data []) {
> +			{ .fw_name = "xtal", },
> +			{ .hw = &a1_sys_clk.hw, },
> +		},
> +		.num_parents = 2,
> +	},
> +};
> +
> +static struct clk_regmap a1_saradc_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = SAR_ADC_CLK_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "saradc_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_saradc_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_saradc_clk = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SAR_ADC_CLK_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "saradc_clk",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_saradc_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* pwm a/b/c/d parent data */
> +static const struct clk_parent_data pwm_parent_data[] = {
> +	{ .fw_name = "xtal", },
> +	{ .hw = &a1_sys_clk.hw },
> +};

Looks like the same as SAR ADC

> +
> +/* pwm a clk */
> +static struct clk_regmap a1_pwm_a_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = PWM_CLK_AB_CTRL,
> +		.mask = 0x1,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_a_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = pwm_parent_data,
> +		.num_parents = ARRAY_SIZE(pwm_parent_data),
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_a_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = PWM_CLK_AB_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_a_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_a_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_a = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = PWM_CLK_AB_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "pwm_a",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_a_div.hw
> +		},
> +		.num_parents = 1,
> +		/*
> +		 * The CPU working voltage is controlled by pwm_a
> +		 * in BL2 firmware. add the CLK_IGNORE_UNUSED flag
> +		 * to avoid changing at runtime.
                                    ^ it

> +		 * and is required by the platform to operate correctly.
                   "blabla. And" is strange

> +		 * Until the following condition are met, we need this clock to
> +		 * be marked as critical:
> +		 * a) Mark the clock used by a firmware resource, if possible
> +		 * b) CCF has a clock hand-off mechanism to make the sure the
> +		 *    clock stays on until the proper driver comes along
> +		 */
> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,

This only skips the late_init() disable of unused clocks

Be aware that this is not fool-proof. If at any time a driver enable
then disable the clock, the clock will be disable and I guess your
platform will die if this provides the CPU voltage.

> +	},
> +};
> +
> +/* pwm b clk */
> +static struct clk_regmap a1_pwm_b_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = PWM_CLK_AB_CTRL,
> +		.mask = 0x1,
> +		.shift = 25,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_b_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = pwm_parent_data,
> +		.num_parents = ARRAY_SIZE(pwm_parent_data),
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_b_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = PWM_CLK_AB_CTRL,
> +		.shift = 16,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_b_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_b_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_b = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = PWM_CLK_AB_CTRL,
> +		.bit_idx = 24,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "pwm_b",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_b_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* pwm c clk */
> +static struct clk_regmap a1_pwm_c_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = PWM_CLK_CD_CTRL,
> +		.mask = 0x1,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_c_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = pwm_parent_data,
> +		.num_parents = ARRAY_SIZE(pwm_parent_data),
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_c_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = PWM_CLK_CD_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_c_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_c_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_c = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = PWM_CLK_CD_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "pwm_c",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_c_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* pwm d clk */
> +static struct clk_regmap a1_pwm_d_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = PWM_CLK_CD_CTRL,
> +		.mask = 0x1,
> +		.shift = 25,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_d_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = pwm_parent_data,
> +		.num_parents = ARRAY_SIZE(pwm_parent_data),
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_d_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = PWM_CLK_CD_CTRL,
> +		.shift = 16,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_d_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_d_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_d = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = PWM_CLK_CD_CTRL,
> +		.bit_idx = 24,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "pwm_d",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_d_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static const struct clk_parent_data pwm_ef_parent_data[] = {
> +	{ .fw_name = "xtal", },
> +	{ .hw = &a1_sys_clk.hw },
> +	{ .fw_name = "fclk_div5", },
> +	{ .hw = &a1_rtc_clk.hw },
> +};
> +
> +/* pwm e clk */
> +static struct clk_regmap a1_pwm_e_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = PWM_CLK_EF_CTRL,
> +		.mask = 0x3,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_e_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = pwm_ef_parent_data,
> +		.num_parents = ARRAY_SIZE(pwm_ef_parent_data),
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_e_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = PWM_CLK_EF_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_e_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_e_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_e = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = PWM_CLK_EF_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "pwm_e",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_e_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* pwm f clk */
> +static struct clk_regmap a1_pwm_f_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = PWM_CLK_EF_CTRL,
> +		.mask = 0x3,
> +		.shift = 25,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_f_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = pwm_ef_parent_data,
> +		.num_parents = ARRAY_SIZE(pwm_ef_parent_data),
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_f_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = PWM_CLK_EF_CTRL,
> +		.shift = 16,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "pwm_f_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_f_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_pwm_f = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = PWM_CLK_EF_CTRL,
> +		.bit_idx = 24,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "pwm_f",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_pwm_f_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* spicc clk */
> +
> +/*    div2   |\         |\       _____
> + *  ---------| |---DIV--| |     |     |    spicc out
> + *  ---------| |        | |-----|GATE |---------
> + *     ..... |/         | /     |_____|
> + *  --------------------|/
> + *                 24M
> + */
> +static const struct clk_parent_data spicc_parents[] = {
> +	{ .fw_name = "fclk_div2"},
> +	{ .fw_name = "fclk_div3"},
> +	{ .fw_name = "fclk_div5"},
> +	{ .fw_name = "hifi_pll" },
> +};
> +
> +static struct clk_regmap a1_spicc_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SPICC_CLK_CTRL,
> +		.mask = 0x3,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "spicc_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = spicc_parents,
> +		.num_parents = 4,
> +	},
> +};
> +
> +static struct clk_regmap a1_spicc_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = SPICC_CLK_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "spicc_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_spicc_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_spicc_sel2 = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SPICC_CLK_CTRL,
> +		.mask = 0x1,
> +		.shift = 15,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "spicc_sel2",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = (const struct clk_parent_data []) {
> +			{ .hw = &a1_spicc_div.hw },
> +			{ .fw_name = "xtal", },
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_spicc = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SPICC_CLK_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "spicc",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_spicc_sel2.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* ts clk */
> +static struct clk_regmap a1_ts_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = TS_CLK_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "ts_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_ts = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = TS_CLK_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "ts",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_ts_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* spifc clk */
> +static struct clk_regmap a1_spifc_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SPIFC_CLK_CTRL,
> +		.mask = 0x3,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "spifc_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		/* the same parent with spicc */
> +		.parent_data = spicc_parents,
> +		.num_parents = 4,
> +	},
> +};
> +
> +static struct clk_regmap a1_spifc_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = SPIFC_CLK_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "spifc_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_spifc_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_spifc_sel2 = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SPIFC_CLK_CTRL,
> +		.mask = 0x1,
> +		.shift = 15,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "spifc_sel2",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = (const struct clk_parent_data []) {
> +			{ .hw = &a1_spifc_div.hw },
> +			{ .fw_name = "xtal", },
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_spifc = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SPIFC_CLK_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "spifc",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_spifc_sel2.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* usb bus clk */
> +static const struct clk_parent_data usb_bus_parent_data[] = {
> +	{ .fw_name = "xtal", },
> +	{ .hw = &a1_sys_clk.hw },
> +	{ .fw_name = "fclk_div3", },
> +	{ .fw_name = "fclk_div5", },
> +};
> +
> +static struct clk_regmap a1_usb_bus_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = USB_BUSCLK_CTRL,
> +		.mask = 0x3,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "usb_bus_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = usb_bus_parent_data,
> +		.num_parents = ARRAY_SIZE(usb_bus_parent_data),
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_usb_bus_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = USB_BUSCLK_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "usb_bus_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_usb_bus_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_usb_bus = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = USB_BUSCLK_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "usb_bus",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_usb_bus_div.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* sd emmc clk */
> +static const struct clk_parent_data sd_emmc_parents[] = {
> +	{ .fw_name = "fclk_div2", },
> +	{ .fw_name = "fclk_div3", },
> +	{ .fw_name = "fclk_div5", },
> +	{ .fw_name = "hifi_pll", },
> +};
> +
> +static struct clk_regmap a1_sd_emmc_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SD_EMMC_CLK_CTRL,
> +		.mask = 0x3,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sd_emmc_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = sd_emmc_parents,
> +		.num_parents = 4,
> +	},
> +};
> +
> +static struct clk_regmap a1_sd_emmc_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = SD_EMMC_CLK_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sd_emmc_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_sd_emmc_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_sd_emmc_sel2 = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = SD_EMMC_CLK_CTRL,
> +		.mask = 0x1,
> +		.shift = 15,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "sd_emmc_sel2",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = (const struct clk_parent_data []) {
> +			{ .hw = &a1_sd_emmc_div.hw },
> +			{ .fw_name = "xtal", },
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_sd_emmc = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = SD_EMMC_CLK_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "sd_emmc",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_sd_emmc_sel2.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_psram_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = PSRAM_CLK_CTRL,
> +		.mask = 0x3,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "psram_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		/* the same parent with sd_emmc */
> +		.parent_data = sd_emmc_parents,
> +		.num_parents = 4,
> +	},
> +};
> +
> +static struct clk_regmap a1_psram_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = PSRAM_CLK_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "psram_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_psram_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_psram_sel2 = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = PSRAM_CLK_CTRL,
> +		.mask = 0x1,
> +		.shift = 15,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "psram_sel2",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = (const struct clk_parent_data []) {
> +			{ .hw = &a1_psram_div.hw },
> +			{ .fw_name = "xtal", },
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_psram = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = PSRAM_CLK_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "psram",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_psram_sel2.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* dmc clk */
> +static struct clk_regmap a1_dmc_sel = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = DMC_CLK_CTRL,
> +		.mask = 0x3,
> +		.shift = 9,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dmc_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = sd_emmc_parents,
> +		.num_parents = 4,
> +	},
> +};
> +
> +static struct clk_regmap a1_dmc_div = {
> +	.data = &(struct clk_regmap_div_data){
> +		.offset = DMC_CLK_CTRL,
> +		.shift = 0,
> +		.width = 8,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dmc_div",
> +		.ops = &clk_regmap_divider_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dmc_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dmc_sel2 = {
> +	.data = &(struct clk_regmap_mux_data){
> +		.offset = DMC_CLK_CTRL,
> +		.mask = 0x1,
> +		.shift = 15,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "dmc_sel2",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_data = (const struct clk_parent_data []) {
> +			{ .hw = &a1_dmc_div.hw },
> +			{ .fw_name = "xtal", },
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_dmc = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = DMC_CLK_CTRL,
> +		.bit_idx = 8,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "dmc",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_dmc_sel2.hw
> +		},
> +		.num_parents = 1,
> +		/*
> +		 * This clock is used by DDR clock which setted in BL2
> +		 * and is required by the platform to operate correctly.
> +		 * Until the following condition are met, we need this clock to
> +		 * be marked as critical:
> +		 * a) Mark the clock used by a firmware resource, if possible
> +		 * b) CCF has a clock hand-off mechanism to make the sure the
> +		 *    clock stays on until the proper driver comes along
> +		 */
> +		.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> +	},
> +};

Should you put all this DMC stuff in RO until you got a driver for it ?

> +
> +/* cec A clock */
> +static struct clk_regmap a1_ceca_32k_clkin = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = CECA_CLK_CTRL0,
> +		.bit_idx = 31,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "ceca_32k_clkin",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_ceca_32k_div = {
> +	.data = &(struct meson_clk_dualdiv_data){
> +		.n1 = {
> +			.reg_off = CECA_CLK_CTRL0,
> +			.shift   = 0,
> +			.width   = 12,
> +		},
> +		.n2 = {
> +			.reg_off = CECA_CLK_CTRL0,
> +			.shift   = 12,
> +			.width   = 12,
> +		},
> +		.m1 = {
> +			.reg_off = CECA_CLK_CTRL1,
> +			.shift   = 0,
> +			.width   = 12,
> +		},
> +		.m2 = {
> +			.reg_off = CECA_CLK_CTRL1,
> +			.shift   = 12,
> +			.width   = 12,
> +		},
> +		.dual = {
> +			.reg_off = CECA_CLK_CTRL0,
> +			.shift   = 28,
> +			.width   = 1,
> +		},
> +		.table = a1_32k_div_table,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "ceca_32k_div",
> +		.ops = &meson_clk_dualdiv_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_ceca_32k_clkin.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_ceca_32k_sel_pre = {
> +	.data = &(struct clk_regmap_mux_data) {
> +		.offset = CECA_CLK_CTRL1,
> +		.mask = 0x1,
> +		.shift = 24,
> +		.flags = CLK_MUX_ROUND_CLOSEST,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "ceca_32k_sel_pre",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_ceca_32k_div.hw,
> +			&a1_ceca_32k_clkin.hw,
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_ceca_32k_sel = {
> +	.data = &(struct clk_regmap_mux_data) {
> +		.offset = CECA_CLK_CTRL1,
> +		.mask = 0x1,
> +		.shift = 31,
> +		.flags = CLK_MUX_ROUND_CLOSEST,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "ceca_32k_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_ceca_32k_sel_pre.hw,
> +			&a1_rtc_clk.hw,
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_ceca_32k_clkout = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = CECA_CLK_CTRL0,
> +		.bit_idx = 30,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "ceca_32k_clkout",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_ceca_32k_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +/* cec B clock */
> +static struct clk_regmap a1_cecb_32k_clkin = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = CECB_CLK_CTRL0,
> +		.bit_idx = 31,
> +	},
> +	.hw.init = &(struct clk_init_data) {
> +		.name = "cecb_32k_clkin",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_data = &(const struct clk_parent_data) {
> +			.fw_name = "xtal",
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_cecb_32k_div = {
> +	.data = &(struct meson_clk_dualdiv_data){
> +		.n1 = {
> +			.reg_off = CECB_CLK_CTRL0,
> +			.shift   = 0,
> +			.width   = 12,
> +		},
> +		.n2 = {
> +			.reg_off = CECB_CLK_CTRL0,
> +			.shift   = 12,
> +			.width   = 12,
> +		},
> +		.m1 = {
> +			.reg_off = CECB_CLK_CTRL1,
> +			.shift   = 0,
> +			.width   = 12,
> +		},
> +		.m2 = {
> +			.reg_off = CECB_CLK_CTRL1,
> +			.shift   = 12,
> +			.width   = 12,
> +		},
> +		.dual = {
> +			.reg_off = CECB_CLK_CTRL0,
> +			.shift   = 28,
> +			.width   = 1,
> +		},
> +		.table = a1_32k_div_table,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "cecb_32k_div",
> +		.ops = &meson_clk_dualdiv_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_cecb_32k_clkin.hw
> +		},
> +		.num_parents = 1,
> +	},
> +};
> +
> +static struct clk_regmap a1_cecb_32k_sel_pre = {
> +	.data = &(struct clk_regmap_mux_data) {
> +		.offset = CECB_CLK_CTRL1,
> +		.mask = 0x1,
> +		.shift = 24,
> +		.flags = CLK_MUX_ROUND_CLOSEST,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "cecb_32k_sel_pre",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_cecb_32k_div.hw,
> +			&a1_cecb_32k_clkin.hw,
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_cecb_32k_sel = {
> +	.data = &(struct clk_regmap_mux_data) {
> +		.offset = CECB_CLK_CTRL1,
> +		.mask = 0x1,
> +		.shift = 31,
> +		.flags = CLK_MUX_ROUND_CLOSEST,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "cecb_32k_sel",
> +		.ops = &clk_regmap_mux_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_cecb_32k_sel_pre.hw,
> +			&a1_rtc_clk.hw,
> +		},
> +		.num_parents = 2,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +static struct clk_regmap a1_cecb_32k_clkout = {
> +	.data = &(struct clk_regmap_gate_data){
> +		.offset = CECB_CLK_CTRL0,
> +		.bit_idx = 30,
> +	},
> +	.hw.init = &(struct clk_init_data){
> +		.name = "cecb_32k_clkout",
> +		.ops = &clk_regmap_gate_ops,
> +		.parent_hws = (const struct clk_hw *[]) {
> +			&a1_cecb_32k_sel.hw
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +	},
> +};
> +
> +#define MESON_GATE(_name, _reg, _bit) \
> +	MESON_PCLK(_name, _reg, _bit, &a1_sys_clk.hw)
> +
> +static MESON_GATE(a1_clk_tree,		SYS_CLK_EN0,	0);
> +static MESON_GATE(a1_reset_ctrl,	SYS_CLK_EN0,	1);
> +static MESON_GATE(a1_analog_ctrl,	SYS_CLK_EN0,	2);
> +static MESON_GATE(a1_pwr_ctrl,		SYS_CLK_EN0,	3);
> +static MESON_GATE(a1_pad_ctrl,		SYS_CLK_EN0,	4);
> +static MESON_GATE(a1_sys_ctrl,		SYS_CLK_EN0,	5);
> +static MESON_GATE(a1_temp_sensor,	SYS_CLK_EN0,	6);
> +static MESON_GATE(a1_am2axi_dev,	SYS_CLK_EN0,	7);
> +static MESON_GATE(a1_spicc_b,		SYS_CLK_EN0,	8);
> +static MESON_GATE(a1_spicc_a,		SYS_CLK_EN0,	9);
> +static MESON_GATE(a1_clk_msr,		SYS_CLK_EN0,	10);
> +static MESON_GATE(a1_audio,		SYS_CLK_EN0,	11);
> +static MESON_GATE(a1_jtag_ctrl,		SYS_CLK_EN0,	12);
> +static MESON_GATE(a1_saradc,		SYS_CLK_EN0,	13);
> +static MESON_GATE(a1_pwm_ef,		SYS_CLK_EN0,	14);
> +static MESON_GATE(a1_pwm_cd,		SYS_CLK_EN0,	15);
> +static MESON_GATE(a1_pwm_ab,		SYS_CLK_EN0,	16);
> +static MESON_GATE(a1_cec,		SYS_CLK_EN0,	17);
> +static MESON_GATE(a1_i2c_s,		SYS_CLK_EN0,	18);
> +static MESON_GATE(a1_ir_ctrl,		SYS_CLK_EN0,	19);
> +static MESON_GATE(a1_i2c_m_d,		SYS_CLK_EN0,	20);
> +static MESON_GATE(a1_i2c_m_c,		SYS_CLK_EN0,	21);
> +static MESON_GATE(a1_i2c_m_b,		SYS_CLK_EN0,	22);
> +static MESON_GATE(a1_i2c_m_a,		SYS_CLK_EN0,	23);
> +static MESON_GATE(a1_acodec,		SYS_CLK_EN0,	24);
> +static MESON_GATE(a1_otp,		SYS_CLK_EN0,	25);
> +static MESON_GATE(a1_sd_emmc_a,		SYS_CLK_EN0,	26);
> +static MESON_GATE(a1_usb_phy,		SYS_CLK_EN0,	27);
> +static MESON_GATE(a1_usb_ctrl,		SYS_CLK_EN0,	28);
> +static MESON_GATE(a1_sys_dspb,		SYS_CLK_EN0,	29);
> +static MESON_GATE(a1_sys_dspa,		SYS_CLK_EN0,	30);
> +static MESON_GATE(a1_dma,		SYS_CLK_EN0,	31);
> +static MESON_GATE(a1_irq_ctrl,		SYS_CLK_EN1,	0);
> +static MESON_GATE(a1_nic,		SYS_CLK_EN1,	1);
> +static MESON_GATE(a1_gic,		SYS_CLK_EN1,	2);
> +static MESON_GATE(a1_uart_c,		SYS_CLK_EN1,	3);
> +static MESON_GATE(a1_uart_b,		SYS_CLK_EN1,	4);
> +static MESON_GATE(a1_uart_a,		SYS_CLK_EN1,	5);
> +static MESON_GATE(a1_sys_psram,		SYS_CLK_EN1,	6);
> +static MESON_GATE(a1_rsa,		SYS_CLK_EN1,	8);
> +static MESON_GATE(a1_coresight,		SYS_CLK_EN1,	9);
> +static MESON_GATE(a1_am2axi_vad,	AXI_CLK_EN,	0);
> +static MESON_GATE(a1_audio_vad,		AXI_CLK_EN,	1);
> +static MESON_GATE(a1_axi_dmc,		AXI_CLK_EN,	3);
> +static MESON_GATE(a1_axi_psram,		AXI_CLK_EN,	4);
> +static MESON_GATE(a1_ramb,		AXI_CLK_EN,	5);
> +static MESON_GATE(a1_rama,		AXI_CLK_EN,	6);
> +static MESON_GATE(a1_axi_spifc,		AXI_CLK_EN,	7);
> +static MESON_GATE(a1_axi_nic,		AXI_CLK_EN,	8);
> +static MESON_GATE(a1_axi_dma,		AXI_CLK_EN,	9);
> +static MESON_GATE(a1_cpu_ctrl,		AXI_CLK_EN,	10);
> +static MESON_GATE(a1_rom,		AXI_CLK_EN,	11);
> +static MESON_GATE(a1_prod_i2c,		AXI_CLK_EN,	12);
> +
> +/* Array of all clocks provided by this provider */
> +static struct clk_hw_onecell_data a1_periphs_hw_onecell_data = {
> +	.hws = {
> +		[CLKID_SYS_B_SEL]		= &a1_sys_b_sel.hw,
> +		[CLKID_SYS_B_DIV]		= &a1_sys_b_div.hw,
> +		[CLKID_SYS_B]			= &a1_sys_b.hw,
> +		[CLKID_SYS_A_SEL]		= &a1_sys_a_sel.hw,
> +		[CLKID_SYS_A_DIV]		= &a1_sys_a_div.hw,
> +		[CLKID_SYS_A]			= &a1_sys_a.hw,
> +		[CLKID_SYS_CLK]			= &a1_sys_clk.hw,
> +		[CLKID_XTAL_CLKTREE]		= &a1_xtal_clktree.hw,
> +		[CLKID_XTAL_FIXPLL]		= &a1_xtal_fixpll.hw,
> +		[CLKID_XTAL_USB_PHY]		= &a1_xtal_usb_phy.hw,
> +		[CLKID_XTAL_USB_CTRL]		= &a1_xtal_usb_ctrl.hw,
> +		[CLKID_XTAL_HIFIPLL]		= &a1_xtal_hifipll.hw,
> +		[CLKID_XTAL_SYSPLL]		= &a1_xtal_syspll.hw,
> +		[CLKID_XTAL_DDS]		= &a1_xtal_dds.hw,
> +		[CLKID_CLKTREE]			= &a1_clk_tree.hw,
> +		[CLKID_RESET_CTRL]		= &a1_reset_ctrl.hw,
> +		[CLKID_ANALOG_CTRL]		= &a1_analog_ctrl.hw,
> +		[CLKID_PWR_CTRL]		= &a1_pwr_ctrl.hw,
> +		[CLKID_PAD_CTRL]		= &a1_pad_ctrl.hw,
> +		[CLKID_SYS_CTRL]		= &a1_sys_ctrl.hw,
> +		[CLKID_TEMP_SENSOR]		= &a1_temp_sensor.hw,
> +		[CLKID_AM2AXI_DIV]		= &a1_am2axi_dev.hw,
> +		[CLKID_SPICC_B]			= &a1_spicc_b.hw,
> +		[CLKID_SPICC_A]			= &a1_spicc_a.hw,
> +		[CLKID_CLK_MSR]			= &a1_clk_msr.hw,
> +		[CLKID_AUDIO]			= &a1_audio.hw,
> +		[CLKID_JTAG_CTRL]		= &a1_jtag_ctrl.hw,
> +		[CLKID_SARADC]			= &a1_saradc.hw,
> +		[CLKID_PWM_EF]			= &a1_pwm_ef.hw,
> +		[CLKID_PWM_CD]			= &a1_pwm_cd.hw,
> +		[CLKID_PWM_AB]			= &a1_pwm_ab.hw,
> +		[CLKID_CEC]			= &a1_cec.hw,
> +		[CLKID_I2C_S]			= &a1_i2c_s.hw,
> +		[CLKID_IR_CTRL]			= &a1_ir_ctrl.hw,
> +		[CLKID_I2C_M_D]			= &a1_i2c_m_d.hw,
> +		[CLKID_I2C_M_C]			= &a1_i2c_m_c.hw,
> +		[CLKID_I2C_M_B]			= &a1_i2c_m_b.hw,
> +		[CLKID_I2C_M_A]			= &a1_i2c_m_a.hw,
> +		[CLKID_ACODEC]			= &a1_acodec.hw,
> +		[CLKID_OTP]			= &a1_otp.hw,
> +		[CLKID_SD_EMMC_A]		= &a1_sd_emmc_a.hw,
> +		[CLKID_USB_PHY]			= &a1_usb_phy.hw,
> +		[CLKID_USB_CTRL]		= &a1_usb_ctrl.hw,
> +		[CLKID_SYS_DSPB]		= &a1_sys_dspb.hw,
> +		[CLKID_SYS_DSPA]		= &a1_sys_dspa.hw,
> +		[CLKID_DMA]			= &a1_dma.hw,
> +		[CLKID_IRQ_CTRL]		= &a1_irq_ctrl.hw,
> +		[CLKID_NIC]			= &a1_nic.hw,
> +		[CLKID_GIC]			= &a1_gic.hw,
> +		[CLKID_UART_C]			= &a1_uart_c.hw,
> +		[CLKID_UART_B]			= &a1_uart_b.hw,
> +		[CLKID_UART_A]			= &a1_uart_a.hw,
> +		[CLKID_SYS_PSRAM]		= &a1_sys_psram.hw,
> +		[CLKID_RSA]			= &a1_rsa.hw,
> +		[CLKID_CORESIGHT]		= &a1_coresight.hw,
> +		[CLKID_AM2AXI_VAD]		= &a1_am2axi_vad.hw,
> +		[CLKID_AUDIO_VAD]		= &a1_audio_vad.hw,
> +		[CLKID_AXI_DMC]			= &a1_axi_dmc.hw,
> +		[CLKID_AXI_PSRAM]		= &a1_axi_psram.hw,
> +		[CLKID_RAMB]			= &a1_ramb.hw,
> +		[CLKID_RAMA]			= &a1_rama.hw,
> +		[CLKID_AXI_SPIFC]		= &a1_axi_spifc.hw,
> +		[CLKID_AXI_NIC]			= &a1_axi_nic.hw,
> +		[CLKID_AXI_DMA]			= &a1_axi_dma.hw,
> +		[CLKID_CPU_CTRL]		= &a1_cpu_ctrl.hw,
> +		[CLKID_ROM]			= &a1_rom.hw,
> +		[CLKID_PROC_I2C]		= &a1_prod_i2c.hw,
> +		[CLKID_DSPA_A_SEL]		= &a1_dspa_a_sel.hw,
> +		[CLKID_DSPA_A_DIV]		= &a1_dspa_a_div.hw,
> +		[CLKID_DSPA_A]			= &a1_dspa_a.hw,
> +		[CLKID_DSPA_B_SEL]		= &a1_dspa_b_sel.hw,
> +		[CLKID_DSPA_B_DIV]		= &a1_dspa_b_div.hw,
> +		[CLKID_DSPA_B]			= &a1_dspa_b.hw,
> +		[CLKID_DSPA_SEL]		= &a1_dspa_sel.hw,
> +		[CLKID_DSPB_A_SEL]		= &a1_dspb_a_sel.hw,
> +		[CLKID_DSPB_A_DIV]		= &a1_dspb_a_div.hw,
> +		[CLKID_DSPB_A]			= &a1_dspb_a.hw,
> +		[CLKID_DSPB_B_SEL]		= &a1_dspb_b_sel.hw,
> +		[CLKID_DSPB_B_DIV]		= &a1_dspb_b_div.hw,
> +		[CLKID_DSPB_B]			= &a1_dspb_b.hw,
> +		[CLKID_DSPB_SEL]		= &a1_dspb_sel.hw,
> +		[CLKID_DSPA_EN_DSPA]		= &a1_dspa_en_dspa.hw,
> +		[CLKID_DSPA_EN_NIC]		= &a1_dspa_en_nic.hw,
> +		[CLKID_DSPB_EN_DSPB]		= &a1_dspb_en_dspb.hw,
> +		[CLKID_DSPB_EN_NIC]		= &a1_dspb_en_nic.hw,
> +		[CLKID_24M]			= &a1_24m.hw,
> +		[CLKID_24M_DIV2]		= &a1_24m_div2.hw,
> +		[CLKID_12M]			= &a1_12m.hw,
> +		[CLKID_DIV2_PRE]		= &a1_fclk_div2_divn_pre.hw,
> +		[CLKID_FCLK_DIV2_DIVN]		= &a1_fclk_div2_divn.hw,
> +		[CLKID_GEN_SEL]			= &a1_gen_sel.hw,
> +		[CLKID_GEN_DIV]			= &a1_gen_div.hw,
> +		[CLKID_GEN]			= &a1_gen.hw,
> +		[CLKID_SARADC_SEL]		= &a1_saradc_sel.hw,
> +		[CLKID_SARADC_DIV]		= &a1_saradc_div.hw,
> +		[CLKID_SARADC_CLK]		= &a1_saradc_clk.hw,
> +		[CLKID_PWM_A_SEL]		= &a1_pwm_a_sel.hw,
> +		[CLKID_PWM_A_DIV]		= &a1_pwm_a_div.hw,
> +		[CLKID_PWM_A]			= &a1_pwm_a.hw,
> +		[CLKID_PWM_B_SEL]		= &a1_pwm_b_sel.hw,
> +		[CLKID_PWM_B_DIV]		= &a1_pwm_b_div.hw,
> +		[CLKID_PWM_B]			= &a1_pwm_b.hw,
> +		[CLKID_PWM_C_SEL]		= &a1_pwm_c_sel.hw,
> +		[CLKID_PWM_C_DIV]		= &a1_pwm_c_div.hw,
> +		[CLKID_PWM_C]			= &a1_pwm_c.hw,
> +		[CLKID_PWM_D_SEL]		= &a1_pwm_d_sel.hw,
> +		[CLKID_PWM_D_DIV]		= &a1_pwm_d_div.hw,
> +		[CLKID_PWM_D]			= &a1_pwm_d.hw,
> +		[CLKID_PWM_E_SEL]		= &a1_pwm_e_sel.hw,
> +		[CLKID_PWM_E_DIV]		= &a1_pwm_e_div.hw,
> +		[CLKID_PWM_E]			= &a1_pwm_e.hw,
> +		[CLKID_PWM_F_SEL]		= &a1_pwm_f_sel.hw,
> +		[CLKID_PWM_F_DIV]		= &a1_pwm_f_div.hw,
> +		[CLKID_PWM_F]			= &a1_pwm_f.hw,
> +		[CLKID_SPICC_SEL]		= &a1_spicc_sel.hw,
> +		[CLKID_SPICC_DIV]		= &a1_spicc_div.hw,
> +		[CLKID_SPICC_SEL2]		= &a1_spicc_sel2.hw,
> +		[CLKID_SPICC]			= &a1_spicc.hw,
> +		[CLKID_TS_DIV]			= &a1_ts_div.hw,
> +		[CLKID_TS]			= &a1_ts.hw,
> +		[CLKID_SPIFC_SEL]		= &a1_spifc_sel.hw,
> +		[CLKID_SPIFC_DIV]		= &a1_spifc_div.hw,
> +		[CLKID_SPIFC_SEL2]		= &a1_spifc_sel2.hw,
> +		[CLKID_SPIFC]			= &a1_spifc.hw,
> +		[CLKID_USB_BUS_SEL]		= &a1_usb_bus_sel.hw,
> +		[CLKID_USB_BUS_DIV]		= &a1_usb_bus_div.hw,
> +		[CLKID_USB_BUS]			= &a1_usb_bus.hw,
> +		[CLKID_SD_EMMC_SEL]		= &a1_sd_emmc_sel.hw,
> +		[CLKID_SD_EMMC_DIV]		= &a1_sd_emmc_div.hw,
> +		[CLKID_SD_EMMC_SEL2]		= &a1_sd_emmc_sel2.hw,
> +		[CLKID_SD_EMMC]			= &a1_sd_emmc.hw,
> +		[CLKID_PSRAM_SEL]		= &a1_psram_sel.hw,
> +		[CLKID_PSRAM_DIV]		= &a1_psram_div.hw,
> +		[CLKID_PSRAM_SEL2]		= &a1_psram_sel2.hw,
> +		[CLKID_PSRAM]			= &a1_psram.hw,
> +		[CLKID_DMC_SEL]			= &a1_dmc_sel.hw,
> +		[CLKID_DMC_DIV]			= &a1_dmc_div.hw,
> +		[CLKID_DMC_SEL2]		= &a1_dmc_sel2.hw,
> +		[CLKID_DMC]			= &a1_dmc.hw,
> +		[CLKID_RTC_32K_CLKIN]		= &a1_rtc_32k_clkin.hw,
> +		[CLKID_RTC_32K_DIV]		= &a1_rtc_32k_div.hw,
> +		[CLKID_RTC_32K_XTAL]		= &a1_rtc_32k_xtal.hw,
> +		[CLKID_RTC_32K_SEL]		= &a1_rtc_32k_sel.hw,
> +		[CLKID_RTC_CLK]			= &a1_rtc_clk.hw,
> +		[CLKID_CECA_32K_CLKIN]		= &a1_ceca_32k_clkin.hw,
> +		[CLKID_CECA_32K_DIV]		= &a1_ceca_32k_div.hw,
> +		[CLKID_CECA_32K_SEL_PRE]	= &a1_ceca_32k_sel_pre.hw,
> +		[CLKID_CECA_32K_SEL]		= &a1_ceca_32k_sel.hw,
> +		[CLKID_CECA_32K]		= &a1_ceca_32k_clkout.hw,
> +		[CLKID_CECB_32K_CLKIN]		= &a1_cecb_32k_clkin.hw,
> +		[CLKID_CECB_32K_DIV]		= &a1_cecb_32k_div.hw,
> +		[CLKID_CECB_32K_SEL_PRE]	= &a1_cecb_32k_sel_pre.hw,
> +		[CLKID_CECB_32K_SEL]		= &a1_cecb_32k_sel.hw,
> +		[CLKID_CECB_32K]		= &a1_cecb_32k_clkout.hw,
> +		[NR_CLKS]			= NULL,
> +	},
> +	.num = NR_CLKS,
> +};
> +
> +/* Convenience table to populate regmap in .probe */
> +static struct clk_regmap *const a1_periphs_regmaps[] = {
> +	&a1_xtal_clktree,
> +	&a1_xtal_fixpll,
> +	&a1_xtal_usb_phy,
> +	&a1_xtal_usb_ctrl,
> +	&a1_xtal_hifipll,
> +	&a1_xtal_syspll,
> +	&a1_xtal_dds,
> +	&a1_clk_tree,
> +	&a1_reset_ctrl,
> +	&a1_analog_ctrl,
> +	&a1_pwr_ctrl,
> +	&a1_sys_ctrl,
> +	&a1_temp_sensor,
> +	&a1_am2axi_dev,
> +	&a1_spicc_b,
> +	&a1_spicc_a,
> +	&a1_clk_msr,
> +	&a1_audio,
> +	&a1_jtag_ctrl,
> +	&a1_saradc,
> +	&a1_pwm_ef,
> +	&a1_pwm_cd,
> +	&a1_pwm_ab,
> +	&a1_cec,
> +	&a1_i2c_s,
> +	&a1_ir_ctrl,
> +	&a1_i2c_m_d,
> +	&a1_i2c_m_c,
> +	&a1_i2c_m_b,
> +	&a1_i2c_m_a,
> +	&a1_acodec,
> +	&a1_otp,
> +	&a1_sd_emmc_a,
> +	&a1_usb_phy,
> +	&a1_usb_ctrl,
> +	&a1_sys_dspb,
> +	&a1_sys_dspa,
> +	&a1_dma,
> +	&a1_irq_ctrl,
> +	&a1_nic,
> +	&a1_gic,
> +	&a1_uart_c,
> +	&a1_uart_b,
> +	&a1_uart_a,
> +	&a1_sys_psram,
> +	&a1_rsa,
> +	&a1_coresight,
> +	&a1_am2axi_vad,
> +	&a1_audio_vad,
> +	&a1_axi_dmc,
> +	&a1_axi_psram,
> +	&a1_ramb,
> +	&a1_rama,
> +	&a1_axi_spifc,
> +	&a1_axi_nic,
> +	&a1_axi_dma,
> +	&a1_cpu_ctrl,
> +	&a1_rom,
> +	&a1_prod_i2c,
> +	&a1_dspa_a_sel,
> +	&a1_dspa_a_div,
> +	&a1_dspa_a,
> +	&a1_dspa_b_sel,
> +	&a1_dspa_b_div,
> +	&a1_dspa_b,
> +	&a1_dspa_sel,
> +	&a1_dspb_a_sel,
> +	&a1_dspb_a_div,
> +	&a1_dspb_a,
> +	&a1_dspb_b_sel,
> +	&a1_dspb_b_div,
> +	&a1_dspb_b,
> +	&a1_dspb_sel,
> +	&a1_dspa_en_dspa,
> +	&a1_dspa_en_nic,
> +	&a1_dspb_en_dspb,
> +	&a1_dspb_en_nic,
> +	&a1_24m,
> +	&a1_12m,
> +	&a1_fclk_div2_divn_pre,
> +	&a1_fclk_div2_divn,
> +	&a1_gen_sel,
> +	&a1_gen_div,
> +	&a1_gen,
> +	&a1_saradc_sel,
> +	&a1_saradc_div,
> +	&a1_saradc_clk,
> +	&a1_pwm_a_sel,
> +	&a1_pwm_a_div,
> +	&a1_pwm_a,
> +	&a1_pwm_b_sel,
> +	&a1_pwm_b_div,
> +	&a1_pwm_b,
> +	&a1_pwm_c_sel,
> +	&a1_pwm_c_div,
> +	&a1_pwm_c,
> +	&a1_pwm_d_sel,
> +	&a1_pwm_d_div,
> +	&a1_pwm_d,
> +	&a1_pwm_e_sel,
> +	&a1_pwm_e_div,
> +	&a1_pwm_e,
> +	&a1_pwm_f_sel,
> +	&a1_pwm_f_div,
> +	&a1_pwm_f,
> +	&a1_spicc_sel,
> +	&a1_spicc_div,
> +	&a1_spicc_sel2,
> +	&a1_spicc,
> +	&a1_ts_div,
> +	&a1_ts,
> +	&a1_spifc_sel,
> +	&a1_spifc_div,
> +	&a1_spifc_sel2,
> +	&a1_spifc,
> +	&a1_usb_bus_sel,
> +	&a1_usb_bus_div,
> +	&a1_usb_bus,
> +	&a1_sd_emmc_sel,
> +	&a1_sd_emmc_div,
> +	&a1_sd_emmc_sel2,
> +	&a1_sd_emmc,
> +	&a1_psram_sel,
> +	&a1_psram_div,
> +	&a1_psram_sel2,
> +	&a1_psram,
> +	&a1_dmc_sel,
> +	&a1_dmc_div,
> +	&a1_dmc_sel2,
> +	&a1_dmc,
> +	&a1_sys_b_sel,
> +	&a1_sys_b_div,
> +	&a1_sys_b,
> +	&a1_sys_a_sel,
> +	&a1_sys_a_div,
> +	&a1_sys_a,
> +	&a1_sys_clk,
> +	&a1_rtc_32k_clkin,
> +	&a1_rtc_32k_div,
> +	&a1_rtc_32k_xtal,
> +	&a1_rtc_32k_sel,
> +	&a1_rtc_clk,
> +	&a1_ceca_32k_clkin,
> +	&a1_ceca_32k_div,
> +	&a1_ceca_32k_sel_pre,
> +	&a1_ceca_32k_sel,
> +	&a1_ceca_32k_clkout,
> +	&a1_cecb_32k_clkin,
> +	&a1_cecb_32k_div,
> +	&a1_cecb_32k_sel_pre,
> +	&a1_cecb_32k_sel,
> +	&a1_cecb_32k_clkout,
> +};
> +
> +static int meson_a1_periphs_probe(struct platform_device *pdev)
> +{
> +	int ret;
> +
> +	ret = meson_eeclkc_probe(pdev);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}

Again this function is function is useless and it makes me wonder if you
should really be using meson_eeclkc_probe()

This makes you use syscon which is not correct unless you have a good
reason ?

Is there anything but clocks and resets in these register region ?

> +
> +static const struct meson_eeclkc_data a1_periphs_data = {
> +		.regmap_clks = a1_periphs_regmaps,
> +		.regmap_clk_num = ARRAY_SIZE(a1_periphs_regmaps),
> +		.hw_onecell_data = &a1_periphs_hw_onecell_data,
> +};
> +static const struct of_device_id clkc_match_table[] = {
> +	{
> +		.compatible = "amlogic,a1-periphs-clkc",
> +		.data = &a1_periphs_data
> +	},
> +	{ /* sentinel */ }
> +};
> +
> +static struct platform_driver a1_driver = {
> +	.probe		= meson_a1_periphs_probe,
> +	.driver		= {
> +		.name	= "a1-periphs-clkc",
> +		.of_match_table = clkc_match_table,
> +	},
> +};
> +
> +builtin_platform_driver(a1_driver);
> diff --git a/drivers/clk/meson/a1.h b/drivers/clk/meson/a1.h
> new file mode 100644
> index 0000000..1ae5e04
> --- /dev/null
> +++ b/drivers/clk/meson/a1.h
> @@ -0,0 +1,120 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +
> +#ifndef __A1_H
> +#define __A1_H
> +
> +/* peripheral clock controller register offset */
> +#define SYS_OSCIN_CTRL			0x0
> +#define RTC_BY_OSCIN_CTRL0		0x4
> +#define RTC_BY_OSCIN_CTRL1		0x8
> +#define RTC_CTRL			0xc
> +#define SYS_CLK_CTRL0			0x10
> +#define AXI_CLK_CTRL0			0x14
> +#define SYS_CLK_EN0			0x1c
> +#define SYS_CLK_EN1			0x20
> +#define AXI_CLK_EN			0x24
> +#define DSPA_CLK_EN			0x28
> +#define DSPB_CLK_EN			0x2c
> +#define DSPA_CLK_CTRL0			0x30
> +#define DSPB_CLK_CTRL0			0x34
> +#define CLK12_24_CTRL			0x38
> +#define GEN_CLK_CTRL			0x3c
> +#define TIMESTAMP_CTRL0			0x40
> +#define TIMESTAMP_CTRL1			0x44
> +#define TIMESTAMP_CTRL2			0x48
> +#define TIMESTAMP_VAL0			0x4c
> +#define TIMESTAMP_VAL1			0x50
> +#define TIMEBASE_CTRL0			0x54
> +#define TIMEBASE_CTRL1			0x58
> +#define SAR_ADC_CLK_CTRL		0xc0
> +#define PWM_CLK_AB_CTRL			0xc4
> +#define PWM_CLK_CD_CTRL			0xc8
> +#define PWM_CLK_EF_CTRL			0xcc
> +#define SPICC_CLK_CTRL			0xd0
> +#define TS_CLK_CTRL			0xd4
> +#define SPIFC_CLK_CTRL			0xd8
> +#define USB_BUSCLK_CTRL			0xdc
> +#define SD_EMMC_CLK_CTRL		0xe0
> +#define CECA_CLK_CTRL0			0xe4
> +#define CECA_CLK_CTRL1			0xe8
> +#define CECB_CLK_CTRL0			0xec
> +#define CECB_CLK_CTRL1			0xf0
> +#define PSRAM_CLK_CTRL			0xf4
> +#define DMC_CLK_CTRL			0xf8
> +#define FCLK_DIV1_SEL			0xfc
> +#define TST_CTRL			0x100
> +
> +#define CLKID_XTAL_CLKTREE		0
> +#define CLKID_SYS_A_SEL			89
> +#define CLKID_SYS_A_DIV			90
> +#define CLKID_SYS_A			91
> +#define CLKID_SYS_B_SEL			92
> +#define CLKID_SYS_B_DIV			93
> +#define CLKID_SYS_B			94
> +#define CLKID_DSPA_A_SEL		95
> +#define CLKID_DSPA_A_DIV		96
> +#define CLKID_DSPA_A			97
> +#define CLKID_DSPA_B_SEL		98
> +#define CLKID_DSPA_B_DIV		99
> +#define CLKID_DSPA_B			100
> +#define CLKID_DSPB_A_SEL		101
> +#define CLKID_DSPB_A_DIV		102
> +#define CLKID_DSPB_A			103
> +#define CLKID_DSPB_B_SEL		104
> +#define CLKID_DSPB_B_DIV		105
> +#define CLKID_DSPB_B			106
> +#define CLKID_RTC_32K_CLKIN		107
> +#define CLKID_RTC_32K_DIV		108
> +#define CLKID_RTC_32K_XTAL		109
> +#define CLKID_RTC_32K_SEL		110
> +#define CLKID_CECB_32K_CLKIN		111
> +#define CLKID_CECB_32K_DIV		112
> +#define CLKID_CECB_32K_SEL_PRE		113
> +#define CLKID_CECB_32K_SEL		114
> +#define CLKID_CECA_32K_CLKIN		115
> +#define CLKID_CECA_32K_DIV		116
> +#define CLKID_CECA_32K_SEL_PRE		117
> +#define CLKID_CECA_32K_SEL		118
> +#define CLKID_DIV2_PRE			119
> +#define CLKID_24M_DIV2			120
> +#define CLKID_GEN_SEL			121
> +#define CLKID_GEN_DIV			122
> +#define CLKID_SARADC_DIV		123
> +#define CLKID_PWM_A_SEL			124
> +#define CLKID_PWM_A_DIV			125
> +#define CLKID_PWM_B_SEL			126
> +#define CLKID_PWM_B_DIV			127
> +#define CLKID_PWM_C_SEL			128
> +#define CLKID_PWM_C_DIV			129
> +#define CLKID_PWM_D_SEL			130
> +#define CLKID_PWM_D_DIV			131
> +#define CLKID_PWM_E_SEL			132
> +#define CLKID_PWM_E_DIV			133
> +#define CLKID_PWM_F_SEL			134
> +#define CLKID_PWM_F_DIV			135
> +#define CLKID_SPICC_SEL			136
> +#define CLKID_SPICC_DIV			137
> +#define CLKID_SPICC_SEL2		138
> +#define CLKID_TS_DIV			139
> +#define CLKID_SPIFC_SEL			140
> +#define CLKID_SPIFC_DIV			141
> +#define CLKID_SPIFC_SEL2		142
> +#define CLKID_USB_BUS_SEL		143
> +#define CLKID_USB_BUS_DIV		144
> +#define CLKID_SD_EMMC_SEL		145
> +#define CLKID_SD_EMMC_DIV		146
> +#define CLKID_SD_EMMC_SEL2		147
> +#define CLKID_PSRAM_SEL			148
> +#define CLKID_PSRAM_DIV			149
> +#define CLKID_PSRAM_SEL2		150
> +#define CLKID_DMC_SEL			151
> +#define CLKID_DMC_DIV			152
> +#define CLKID_DMC_SEL2			153
> +#define NR_CLKS				154
> +
> +#include <dt-bindings/clock/a1-clkc.h>
> +
> +#endif /* __A1_H */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
