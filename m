Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A11C065B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 15:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F9hv6XmvMWpaLUJBx9nHMbnScz+5qgpsqMtCZ3ak97k=; b=aR02MpOOuVC/7Any9gEH8TfpmY
	MTJj5rOk1qrAV4Jnwpg2GP0WkwVRHd+SJUgGDIzCiGGRd92wke/T40XhoD/nknkiHs+U3oPSTG0aL
	Rd3GkuLkTe3MJSCNhdNV7peNbXV07SM3Es0ibOFP7KjEAsrANeZx/zthln30lIH+D2qsGxSoApVgI
	IcPdl1vi9lddGM73xU6OX36djBNrXvO095d7HE3Lus9S2NLL09iHncn2x58AnTZlrVsj8cOga6+PE
	INR+yM/6DcGkVUmJ4r7OeX2KpkzonaMlLQ8Ov2VyD2MSmvRhNJT1Bf0v88Lwo66DqLoJMNpiHurFa
	+NQ83uBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDqMA-0004U3-BR; Fri, 27 Sep 2019 13:32:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDqLw-0004Sa-LT
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 13:32:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id 5so6651181wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 06:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=k0Yy5CG+gLwSnsSgT4pJHrDZgtMly+LlB8tbgD7zyn4=;
 b=hJKQ2e2EX9312gvV2Ziql/wRGXyr55d9tJomp0iY59zIPz6wyvh4Uss+7Yh0ZcBv9N
 fveqRQ3ryBF0zQJmrgHDsIQU+6d0UdWAW63sCh+/11mO1MBBjK1/XlsVCz08k9eJ4A1Z
 nsppwBbxlw4b/ul7kTw6mWssHzXnT9/xMtsY3wpGoT78XnamR1eSkG87UrestJ72lcPa
 CyODtqhninsWyD2OHCsUZjkjIkE0TsVeYhQoiUL26ROsPStLsTOi/rR0Qd3qGvzQIA0z
 OtR1+OGsW++8CxjuU71yypE4HP5FaIpOVJeYar6KbR2J67ptddPJAH16qA/Tz6BugqyP
 8oPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=k0Yy5CG+gLwSnsSgT4pJHrDZgtMly+LlB8tbgD7zyn4=;
 b=kKsdnCbmg1Me0R0eoWZfkAMYgbS4mpoeFp25AiylBsfMMg2wudI5NMra6O+b38CAAP
 nMQK2CTJ+9pROUZLr2cvl5QD/G0Uz5SyStnavWB1VFuhkax0+ib4fP0y/AgoKoFiDxyB
 0/N4aX7PtYZ7z6nBUAVGMLv8K2iDP1bymJj31U+AN/Y1W+bPsraSowT1qvwIYSgmyrtT
 Z/q8YTG2jUUUSUm+Y/2p5TmSwQ1EbMnpRVtW38OD+2ZOCQx4Yi1Fhz6az6mEdJmMYZlx
 8pO/zLmuz2ig+kdzmBxKc8yv1DY8HTW9sViA+UYLkLMDQxgT2Db8qEuCxp1eCR9k+eZt
 nuQg==
X-Gm-Message-State: APjAAAW1vkZV3fAnntFChBuu7aH0HnLAgFVVivq8eFEvu843PyKT3WgN
 1izR4FpBo41s/+Q+6MivsnGaQg==
X-Google-Smtp-Source: APXvYqzrX659c0GC8LTmHjbHNVG4R0S9EaNB7gF/I5zxF/GmK1BLcym6PjFKi6meBhmDurR+ni45IA==
X-Received: by 2002:a1c:7c15:: with SMTP id x21mr6700710wmc.36.1569591126323; 
 Fri, 27 Sep 2019 06:32:06 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id r65sm6184770wmr.9.2019.09.27.06.32.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 06:32:05 -0700 (PDT)
References: <1569411888-98116-1-git-send-email-jian.hu@amlogic.com>
 <1569411888-98116-3-git-send-email-jian.hu@amlogic.com>
 <1j1rw4mmzw.fsf@starbuckisacylon.baylibre.com>
 <a830a0d1-680c-86ec-e858-4470c67865e2@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>
Subject: Re: [PATCH 2/2] clk: meson: a1: add support for Amlogic A1 clock
 driver
In-reply-to: <a830a0d1-680c-86ec-e858-4470c67865e2@amlogic.com>
Date: Fri, 27 Sep 2019 15:32:04 +0200
Message-ID: <1jimpd27cb.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_063208_718830_92598AA0 
X-CRM114-Status: GOOD (  27.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 27 Sep 2019 at 11:52, Jian Hu <jian.hu@amlogic.com> wrote:

> Hi, Jerome
>
> Thank you for review.
>
> On 2019/9/25 23:09, Jerome Brunet wrote:
>> On Wed 25 Sep 2019 at 19:44, Jian Hu <jian.hu@amlogic.com> wrote:
>>
>>> The Amlogic A1 clock includes three parts:
>>> peripheral clocks, pll clocks, CPU clocks.
>>> sys pll and CPU clocks will be sent in next patch.
>>>
>>> Unlike the previous series, there is no EE/AO domain
>>> in A1 CLK controllers.
>>>
>>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>>> ---
>>>   arch/arm64/Kconfig.platforms |    1 +
>>>   drivers/clk/meson/Kconfig    |   10 +
>>>   drivers/clk/meson/Makefile   |    1 +
>>>   drivers/clk/meson/a1.c       | 2617 ++++++++++++++++++++++++++++++++++++++++++
>>>   drivers/clk/meson/a1.h       |  172 +++
>>>   5 files changed, 2801 insertions(+)
>>>   create mode 100644 drivers/clk/meson/a1.c
>>>   create mode 100644 drivers/clk/meson/a1.h
>>>
>>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>>> index 16d7614..a48f67d 100644
>>> --- a/arch/arm64/Kconfig.platforms
>>> +++ b/arch/arm64/Kconfig.platforms
>>> @@ -138,6 +138,7 @@ config ARCH_MESON
>>>   	select COMMON_CLK_AXG
>>>   	select COMMON_CLK_G12A
>>>   	select MESON_IRQ_GPIO
>>> +	select COMMON_CLK_A1
>>
>> This need to be separate patch addressed to Kevin once your driver is merged
>>
> ok, I will remove it in PATCH V2. And send it again after the driver is
> merged.
>>>   	help
>>>   	  This enables support for the arm64 based Amlogic SoCs
>>>   	  such as the s905, S905X/D, S912, A113X/D or S905X/D2
>>> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
>>> index dabeb43..e6cb4c3 100644
>>> --- a/drivers/clk/meson/Kconfig
>>> +++ b/drivers/clk/meson/Kconfig
>>> @@ -107,3 +107,13 @@ config COMMON_CLK_G12A
>>>   	help
>>>   	  Support for the clock controller on Amlogic S905D2, S905X2 and S905Y2
>>>   	  devices, aka g12a. Say Y if you want peripherals to work.
>>> +
>>> +config COMMON_CLK_A1
>>> +	bool
>>> +	depends on ARCH_MESON
>>> +	select COMMON_CLK_MESON_REGMAP
>>> +	select COMMON_CLK_MESON_DUALDIV
>>> +	select COMMON_CLK_MESON_PLL
>>> +	help
>>> +	  Support for the clock controller on Amlogic A113L device,
>>> +	  aka a1. Say Y if you want peripherals to work.
>>> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
>>> index 3939f21..6be3a8f 100644
>>> --- a/drivers/clk/meson/Makefile
>>> +++ b/drivers/clk/meson/Makefile
>>> @@ -19,3 +19,4 @@ obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
>>>   obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
>>>   obj-$(CONFIG_COMMON_CLK_G12A) += g12a.o g12a-aoclk.o
>>>   obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o
>>> +obj-$(CONFIG_COMMON_CLK_A1) += a1.o
>>> diff --git a/drivers/clk/meson/a1.c b/drivers/clk/meson/a1.c
>>> new file mode 100644
>>> index 0000000..26edae0f
>>> --- /dev/null
>>> +++ b/drivers/clk/meson/a1.c
>>> @@ -0,0 +1,2617 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>>> + */
>>> +
>>> +#include <linux/clk-provider.h>
>>> +#include <linux/init.h>
>>> +#include <linux/of_device.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/of_address.h>
>>> +#include "clk-mpll.h"
>>> +#include "clk-pll.h"
>>> +#include "clk-regmap.h"
>>> +#include "vid-pll-div.h"
>>> +#include "clk-dualdiv.h"
>>> +#include "meson-eeclk.h"
>>> +#include "a1.h"
>>> +
>>> +/* PLLs clock in gates, its parent is xtal */
>>> +static struct clk_regmap a1_xtal_clktree = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SYS_OSCIN_CTRL,
>>> +		.bit_idx = 0,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "xtal_clktree",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_data = &(const struct clk_parent_data) {
>>> +			.fw_name = "xtal",
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_IS_CRITICAL,
>>
>> Is CCF even expected to touch this ever ? what about RO ops ?
>> Please review your other clocks with this in mind
>>
> the clock should not be changed at runtime.clk_regmap_gate_ro_ops
> is a good idea. Set RO ops and remove the CLK_IS_CRITICAL flag.
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_xtal_fixpll = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SYS_OSCIN_CTRL,
>>> +		.bit_idx = 1,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "xtal_fixpll",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_data = &(const struct clk_parent_data) {
>>> +			.fw_name = "xtal",
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_IS_CRITICAL,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_xtal_usb_phy = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SYS_OSCIN_CTRL,
>>> +		.bit_idx = 2,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "xtal_usb_phy",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_data = &(const struct clk_parent_data) {
>>> +			.fw_name = "xtal",
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_IS_CRITICAL,
>>
>> How is an USB clock critical to the system ?
>> Please review your other clocks with comment in mind ...
> the usb clock does not affect the system,
> remove the CLK_IS_CRITICAL flag
>>
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_xtal_usb_ctrl = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SYS_OSCIN_CTRL,
>>> +		.bit_idx = 3,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "xtal_usb_ctrl",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_data = &(const struct clk_parent_data) {
>>> +			.fw_name = "xtal",
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_IS_CRITICAL,
>>> +	},
>>> +};
> the usb clock does not affect the system,
> remove the CLK_IS_CRITICAL flag
>>> +
>>> +static struct clk_regmap a1_xtal_hifipll = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SYS_OSCIN_CTRL,
>>> +		.bit_idx = 4,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "xtal_hifipll",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_data = &(const struct clk_parent_data) {
>>> +			.fw_name = "xtal",
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_IS_CRITICAL,
>>> +	},
>>> +};
> CLK_IS_CRITICAL is need to lock hifi pll.

That's not how CCF works, this falg is not ok here.
CCF will enable this clock before calling enable on your hifi pll

>>> +
>>> +static struct clk_regmap a1_xtal_syspll = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SYS_OSCIN_CTRL,
>>> +		.bit_idx = 5,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "xtal_syspll",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_data = &(const struct clk_parent_data) {
>>> +			.fw_name = "xtal",
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_IS_CRITICAL,
>>> +	},
>>> +};
>>> +
> when CPU clock is at fixed clock, sys pll
> will be disabled, xtal_syspll will be disabled too.
> when setting sys pll, call clk_set_rate to lock
> sys pll, add RO ops to avoid disabling the clock

Again not Ok.
If you mechanism to lock the PLL is properly implemented in the enable
callback of the sys pll, still kind of work around are not needed

This has worked on the pll we had so far.

>
>>> +static struct clk_regmap a1_xtal_dds = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SYS_OSCIN_CTRL,
>>> +		.bit_idx = 6,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "xtal_dds",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_data = &(const struct clk_parent_data) {
>>> +			.fw_name = "xtal",
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_IS_CRITICAL,
>>> +	},
>>> +};
> CLK_IS_CRITICAL is need to lock dds
>>> +
>>> +/* fixed pll = 1536M
>>> + *
>>> + * fixed pll ----- fclk_div2 = 768M
>>> + *           |
>>> + *           ----- fclk_div3 = 512M
>>> + *           |
>>> + *           ----- fclk_div5 = 307.2M
>>> + *           |
>>> + *           ----- fclk_div7 = 219.4M
>>> + */
>>
>> The framework will make those calculation ... you can remove this
>>
> ok, I will remote the comment.
>>> +static struct clk_regmap a1_fixed_pll_dco = {
>>> +	.data = &(struct meson_clk_pll_data){
>>> +		.en = {
>>> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
>>> +			.shift   = 28,
>>> +			.width   = 1,
>>> +		},
>>> +		.m = {
>>> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
>>> +			.shift   = 0,
>>> +			.width   = 8,
>>> +		},
>>> +		.n = {
>>> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
>>> +			.shift   = 10,
>>> +			.width   = 5,
>>> +		},
>>> +		.frac = {
>>> +			.reg_off = ANACTRL_FIXPLL_CTRL1,
>>> +			.shift   = 0,
>>> +			.width   = 19,
>>> +		},
>>> +		.l = {
>>> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
>>> +			.shift   = 31,
>>> +			.width   = 1,
>>> +		},
>>> +		.rst = {
>>> +			.reg_off = ANACTRL_FIXPLL_CTRL0,
>>> +			.shift   = 29,
>>> +			.width   = 1,
>>> +		},
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fixed_pll_dco",
>>> +		.ops = &meson_clk_pll_ro_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_xtal_fixpll.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_fixed_pll = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = ANACTRL_FIXPLL_CTRL0,
>>> +		.bit_idx = 20,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "fixed_pll",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fixed_pll_dco.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>>> +static const struct pll_params_table a1_hifi_pll_params_table[] = {
>>> +	PLL_PARAMS(128, 5), /* DCO = 614.4M */
>>> +};
>>> +
>>> +static const struct reg_sequence a1_hifi_init_regs[] = {
>>> +	{ .reg = ANACTRL_HIFIPLL_CTRL1,	.def = 0x01800000 },
>>> +	{ .reg = ANACTRL_HIFIPLL_CTRL2,	.def = 0x00001100 },
>>> +	{ .reg = ANACTRL_HIFIPLL_CTRL3,	.def = 0x10022200 },
>>> +	{ .reg = ANACTRL_HIFIPLL_CTRL4,	.def = 0x00301000 },
>>> +	{ .reg = ANACTRL_HIFIPLL_CTRL0, .def = 0x01f19480 },
>>> +	{ .reg = ANACTRL_HIFIPLL_CTRL0, .def = 0x11f19480, .delay_us = 10 },
>>> +	{ .reg = ANACTRL_HIFIPLL_CTRL0,	.def = 0x15f11480, .delay_us = 40 },
>>> +	{ .reg = ANACTRL_HIFIPLL_CTRL2,	.def = 0x00001140 },
>>> +	{ .reg = ANACTRL_HIFIPLL_CTRL2,	.def = 0x00001100 },
>>> +};
>>> +
>>> +/*
>>> + * The Meson A1 HIFI PLL is 614.4M, it requires
>>> + * a strict register sequence to enable the PLL.
>>> + * set meson_clk_pcie_pll_ops as its ops
>>> + */
>>
>> Could you elaborate on this ? What need to be done to enable the clock ?
>> Also the HIFI PLL used to be able to do a *LOT* of different rate which
>> might be desirable for audio use case. Why is this one restricted to one
>> particular rate ?
>>
> The audio working frequency are 44.1khz, 48khz and 192khz.
>
> 614.4M can meet the three frequency.
>
> after the hifi pll, there are two dividers in Audio clock.
>
> 614.4M/3200 = 192khz
>
> 614.4M/12800 = 48khz
>
> 614,4M/13932 = 44.0999khz

It does not really answer my question though.
You are locking a use case here, which is 32 bit sample width

We have other constraint with the upstream audio driver, and we usually
looking for base frequency that a multiple of 768 (24*32).

If you need your PLL to be set to a particular rate for a use case, the
correct way is "assigned-rate" in DT

so the question still stands, the HIFI pll before was pretty easy to set
at a wide variety of rate (same as GP0) ... is it not the case anymore ?
If yes, could you decribe the constraints.

All this took us a long time to figure out on our own, which is why I'd
prefer to get the proper constraints in from the beginning this time


>
>>> +static struct clk_regmap a1_hifi_pll = {
>>> +	.data = &(struct meson_clk_pll_data){
>>> +		.en = {
>>> +			.reg_off = ANACTRL_HIFIPLL_CTRL0,
>>> +			.shift   = 28,
>>> +			.width   = 1,
>>> +		},
>>> +		.m = {
>>> +			.reg_off = ANACTRL_HIFIPLL_CTRL0,
>>> +			.shift   = 0,
>>> +			.width   = 8,
>>> +		},
>>> +		.n = {
>>> +			.reg_off = ANACTRL_HIFIPLL_CTRL0,
>>> +			.shift   = 10,
>>> +			.width   = 5,
>>> +		},
>>> +		.frac = {
>>> +			.reg_off = ANACTRL_HIFIPLL_CTRL1,
>>> +			.shift   = 0,
>>> +			.width   = 19,
>>> +		},
>>> +		.l = {
>>> +			.reg_off = ANACTRL_HIFIPLL_STS,
>>> +			.shift   = 31,
>>> +			.width   = 1,
>>> +		},
>>> +		.table = a1_hifi_pll_params_table,
>>> +		.init_regs = a1_hifi_init_regs,
>>> +		.init_count = ARRAY_SIZE(a1_hifi_init_regs),
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "hifi_pll",
>>> +		.ops = &meson_clk_pcie_pll_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_xtal_hifipll.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_fixed_factor a1_fclk_div2_div = {
>>> +	.mult = 1,
>>> +	.div = 2,
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div2_div",
>>> +		.ops = &clk_fixed_factor_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fixed_pll.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_fclk_div2 = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = ANACTRL_FIXPLL_CTRL0,
>>> +		.bit_idx = 21,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div2",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fclk_div2_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		/*
>>> +		 * add CLK_IS_CRITICAL flag to avoid being disabled by clk core
>>> +		 * or its children clocks.
>>> +		 */
>>
>> The meaning of this flag is already documented in clk-provider.h
>> The reason why you need this flag is lot more interesting here ...
>>
>> Same below
> ok, I will replace new comments here.
>>
>>> +		.flags = CLK_IS_CRITICAL,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_fixed_factor a1_fclk_div3_div = {
>>> +	.mult = 1,
>>> +	.div = 3,
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div3_div",
>>> +		.ops = &clk_fixed_factor_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fixed_pll.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_fclk_div3 = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = ANACTRL_FIXPLL_CTRL0,
>>> +		.bit_idx = 22,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div3",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fclk_div3_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		/*
>>> +		 * add CLK_IS_CRITICAL flag to avoid being disabled by clk core
>>> +		 * its children clocks.
>>> +		 */
>>> +		.flags = CLK_IS_CRITICAL,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_fixed_factor a1_fclk_div5_div = {
>>> +	.mult = 1,
>>> +	.div = 5,
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div5_div",
>>> +		.ops = &clk_fixed_factor_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fixed_pll.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_fclk_div5 = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = ANACTRL_FIXPLL_CTRL0,
>>> +		.bit_idx = 23,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div5",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fclk_div5_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		/*
>>> +		 * add CLK_IS_CRITICAL flag to avoid being disabled by clk core
>>> +		 * its children clocks.
>>> +		 */
>>> +		.flags = CLK_IS_CRITICAL,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_fixed_factor a1_fclk_div7_div = {
>>> +	.mult = 1,
>>> +	.div = 7,
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div7_div",
>>> +		.ops = &clk_fixed_factor_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fixed_pll.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_fclk_div7 = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = ANACTRL_FIXPLL_CTRL0,
>>> +		.bit_idx = 23,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div7",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fclk_div7_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		/*
>>> +		 * add CLK_IS_CRITICAL flag to avoid being disabled by clk core
>>> +		 * or its children clock.
>>> +		 */
>>> +		.flags = CLK_IS_CRITICAL,
>>> +	},
>>> +};
>>> +
>>> +/* sys clk = 64M */
>>
>> Again this comment does not help understanding the driver code, please
>> remove
>>
> got it.
>>> +static u32 mux_table_sys_ab_clk[] = { 0, 1, 2, 3};
>>
>> This table is useless
>>
>>> +static const struct clk_parent_data sys_ab_clk_parent_data[] = {
>>> +	{ .fw_name = "xtal", },
>>> +	{ .hw = &a1_fclk_div2.hw },
>>> +	{ .hw = &a1_fclk_div3.hw },
>>> +	{ .hw = &a1_fclk_div5.hw },
>>> +};
>>> +
>>> +static struct clk_regmap a1_sys_b_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = SYS_CLK_CTRL0,
>>> +		.mask = 0x7,
>>> +		.shift = 26,
>>> +		.table = mux_table_sys_ab_clk,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "sys_b_sel",
>>> +		.ops = &clk_regmap_mux_ro_ops,
>>> +		.parent_data = sys_ab_clk_parent_data,
>>> +		.num_parents = ARRAY_SIZE(sys_ab_clk_parent_data),
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_sys_b_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = SYS_CLK_CTRL0,
>>> +		.shift = 16,
>>> +		.width = 10,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "sys_b_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_sys_b_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_sys_b = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SYS_CLK_CTRL0,
>>> +		.bit_idx = 29,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "sys_b",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_sys_b_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
>>
>> Why does this need to be critical ?
>> The a1_sys_clk (leaf of the block) could possibly be critical (if you
>> explain why) ... but the flag should not be needed in the middle of the
>> block
>>
> ok, the a1_sys_clk should not be changed at runtime, it is the same with
> the clk81 clock in G12A. Just use another name in A1.

This does not justify the clock to be critical.

#1 Why can't it be changed ?
#2 CLK_IS_CRITICAL does not say that clock can't change, it says it
   can't gate ... two different things


>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_sys_a_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = SYS_CLK_CTRL0,
>>> +		.mask = 0x7,
>>> +		.shift = 10,
>>> +		.table = mux_table_sys_ab_clk,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "sys_a_sel",
>>> +		.ops = &clk_regmap_mux_ro_ops,
>>> +		.parent_data = sys_ab_clk_parent_data,
>>> +		.num_parents = ARRAY_SIZE(sys_ab_clk_parent_data),
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_sys_a_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = SYS_CLK_CTRL0,
>>> +		.shift = 0,
>>> +		.width = 10,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "sys_a_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_sys_a_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_sys_a = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SYS_CLK_CTRL0,
>>> +		.bit_idx = 13,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "sys_a",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_sys_a_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_sys_clk = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = SYS_CLK_CTRL0,
>>> +		.mask = 0x1,
>>> +		.shift = 31,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "sys_clk",
>>> +		.ops = &clk_regmap_mux_ro_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_sys_a.hw, &a1_sys_b.hw,
>>> +		},
>>> +		.num_parents = 2,
>>
>> SET_RATE_PARENT ?
>>
> the ops is RO, Maybe no flag is better.

Is RO for now but setting the rate propagation properly fromt the
beginning is preferred.

In general, you should have SET_RATE_PARENT everywhere unless there is a
reason to stop the rate propagation.

>>> +	},
>>> +};
>>> +
>>> +/* rtc 32k clock in */
>>> +static struct clk_regmap a1_rtc_32k_clkin = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = RTC_BY_OSCIN_CTRL0,
>>> +		.bit_idx = 31,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "rtc_32k_clkin",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_data = &(const struct clk_parent_data) {
>>> +			.fw_name = "xtal",
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static const struct meson_clk_dualdiv_param a1_32k_div_table[] = {
>>> +	{
>>> +		.dual		= 1,
>>> +		.n1		= 733,
>>> +		.m1		= 8,
>>> +		.n2		= 732,
>>> +		.m2		= 11,
>>> +	}, {}
>>> +};
>>> +
>>> +static struct clk_regmap a1_rtc_32k_div = {
>>> +	.data = &(struct meson_clk_dualdiv_data){
>>> +		.n1 = {
>>> +			.reg_off = RTC_BY_OSCIN_CTRL0,
>>> +			.shift   = 0,
>>> +			.width   = 12,
>>> +		},
>>> +		.n2 = {
>>> +			.reg_off = RTC_BY_OSCIN_CTRL0,
>>> +			.shift   = 12,
>>> +			.width   = 12,
>>> +		},
>>> +		.m1 = {
>>> +			.reg_off = RTC_BY_OSCIN_CTRL1,
>>> +			.shift   = 0,
>>> +			.width   = 12,
>>> +		},
>>> +		.m2 = {
>>> +			.reg_off = RTC_BY_OSCIN_CTRL1,
>>> +			.shift   = 12,
>>> +			.width   = 12,
>>> +		},
>>> +		.dual = {
>>> +			.reg_off = RTC_BY_OSCIN_CTRL0,
>>> +			.shift   = 28,
>>> +			.width   = 1,
>>> +		},
>>> +		.table = a1_32k_div_table,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "rtc_32k_div",
>>> +		.ops = &meson_clk_dualdiv_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_rtc_32k_clkin.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_rtc_32k_xtal = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = RTC_BY_OSCIN_CTRL1,
>>> +		.bit_idx = 24,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "rtc_32k_xtal",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_rtc_32k_clkin.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static u32 rtc_32k_sel[] = { 0, 1 };
>>
>> useless
>>
> ok, I will delete the table.
>>> +
>>> +static struct clk_regmap a1_rtc_32k_sel = {
>>> +	.data = &(struct clk_regmap_mux_data) {
>>> +		.offset = RTC_CTRL,
>>> +		.mask = 0x3,
>>> +		.shift = 0,
>>> +		.table = rtc_32k_sel,
>>> +		.flags = CLK_MUX_ROUND_CLOSEST,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "rtc_32k_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_rtc_32k_xtal.hw,
>>> +			&a1_rtc_32k_div.hw,
>>> +		},
>>> +		.num_parents = 2,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +struct clk_regmap a1_rtc_clk = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = RTC_BY_OSCIN_CTRL0,
>>> +		.bit_idx = 30,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "rtc_clk",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_rtc_32k_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +/* dsp a clk */
>>> +static u32 mux_table_dsp_ab[] = { 0, 1, 2, 3, 4, 7 };
>>> +static const struct clk_parent_data dsp_ab_clk_parent_data[] = {
>>> +	{ .fw_name = "xtal", },
>>> +	{ .hw = &a1_fclk_div2.hw },
>>> +	{ .hw = &a1_fclk_div3.hw },
>>> +	{ .hw = &a1_fclk_div5.hw },
>>> +	{ .hw = &a1_hifi_pll.hw },
>>> +	{ .hw = &a1_rtc_clk.hw },
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspa_a_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = DSPA_CLK_CTRL0,
>>> +		.mask = 0x7,
>>> +		.shift = 10,
>>> +		.table = mux_table_dsp_ab,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspa_a_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = dsp_ab_clk_parent_data,
>>> +		.num_parents = ARRAY_SIZE(dsp_ab_clk_parent_data),
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspa_a_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = DSPA_CLK_CTRL0,
>>> +		.shift = 0,
>>> +		.width = 10,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspa_a_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspa_a_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspa_a = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = DSPA_CLK_CTRL0,
>>> +		.bit_idx = 13,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "dspa_a",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspa_a_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>
>> This CLK_IGNORE_UNUSED, if justified, needs to be explained
>>
> ok, DSP cowork withe ARM in A1, dsp clock shoud not be changed at
> runtime.

#1: UNUSED only guarantee that the clock won't be gated in the late init
 if. No guarantee whatsoever after that.
#2: If you have a DSP that need a clock active at particular rate, write
 a driver for it and use the clock API. Don't throw your use case
 constraints in the tree def.

Please review all occurrences of CRITICAL, RO, IGNORE_UNUSED before
sending a v2.

>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspa_b_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = DSPA_CLK_CTRL0,
>>> +		.mask = 0x7,
>>> +		.shift = 26,
>>> +		.table = mux_table_dsp_ab,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspa_b_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = dsp_ab_clk_parent_data,
>>> +		.num_parents = ARRAY_SIZE(dsp_ab_clk_parent_data),
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspa_b_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = DSPA_CLK_CTRL0,
>>> +		.shift = 16,
>>> +		.width = 10,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspa_b_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspa_b_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspa_b = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = DSPA_CLK_CTRL0,
>>> +		.bit_idx = 29,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "dspa_b",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspa_b_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspa_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = DSPA_CLK_CTRL0,
>>> +		.mask = 0x1,
>>> +		.shift = 15,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspa_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = (const struct clk_parent_data []) {
>>> +			{ .hw = &a1_dspa_a.hw },
>>> +			{ .hw = &a1_dspa_b.hw },
>>> +		},
>>> +		.num_parents = 2,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspa_en_dspa = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = DSPA_CLK_EN,
>>> +		.bit_idx = 1,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "dspa_en_dspa",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspa_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspa_en_nic = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = DSPA_CLK_EN,
>>> +		.bit_idx = 0,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "dspa_en_nic",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspa_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>>> +/* dsp b clk */
>>> +static struct clk_regmap a1_dspb_a_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = DSPB_CLK_CTRL0,
>>> +		.mask = 0x7,
>>> +		.shift = 10,
>>> +		.table = mux_table_dsp_ab,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspb_a_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = dsp_ab_clk_parent_data,
>>> +		.num_parents = ARRAY_SIZE(dsp_ab_clk_parent_data),
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspb_a_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = DSPB_CLK_CTRL0,
>>> +		.shift = 0,
>>> +		.width = 10,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspb_a_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspb_a_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspb_a = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = DSPB_CLK_CTRL0,
>>> +		.bit_idx = 13,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "dspb_a",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspb_a_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspb_b_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = DSPB_CLK_CTRL0,
>>> +		.mask = 0x7,
>>> +		.shift = 26,
>>> +		.table = mux_table_dsp_ab,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspb_b_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = dsp_ab_clk_parent_data,
>>> +		.num_parents = ARRAY_SIZE(dsp_ab_clk_parent_data),
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspb_b_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = DSPB_CLK_CTRL0,
>>> +		.shift = 16,
>>> +		.width = 10,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspb_b_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspb_b_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspb_b = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = DSPB_CLK_CTRL0,
>>> +		.bit_idx = 29,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "dspb_b",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspb_b_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspb_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = DSPB_CLK_CTRL0,
>>> +		.mask = 0x1,
>>> +		.shift = 15,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dspb_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspb_a.hw, &a1_dspb_b.hw,
>>> +		},
>>> +		.num_parents = 2,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspb_en_dspb = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = DSPB_CLK_EN,
>>> +		.bit_idx = 1,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "dspb_en_dspb",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspb_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dspb_en_nic = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = DSPB_CLK_EN,
>>> +		.bit_idx = 0,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "dspb_en_nic",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dspb_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>>> +/* 12M/24M clock */
>>> +static struct clk_regmap a1_24m = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = CLK12_24_CTRL,
>>> +		.bit_idx = 11,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "24m",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_data = &(const struct clk_parent_data) {
>>> +			.fw_name = "xtal",
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_fixed_factor a1_24m_div2 = {
>>> +	.mult = 1,
>>> +	.div = 2,
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "24m_div2",
>>> +		.ops = &clk_fixed_factor_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_24m.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_12m = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = CLK12_24_CTRL,
>>> +		.bit_idx = 10,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "12m",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_24m_div2.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_fclk_div2_divn_pre = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = CLK12_24_CTRL,
>>> +		.shift = 0,
>>> +		.width = 8,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div2_divn_pre",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fclk_div2.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_fclk_div2_divn = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = CLK12_24_CTRL,
>>> +		.bit_idx = 12,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "fclk_div2_divn",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_fclk_div2_divn_pre.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +/* gen clk */
>>
>> Either put something helpful or don't put anything
>> For example explaining why there is a hole in the table bellow and what
>> is parent 4 (if any) would be helpful.
> ok, parent 2 is sys_pll_div16, sys pll and related clock are not
> completeed, parent 4 is one of clock measurement source, it relies on
> the clock measurement register configuration.
> gen clock is a debug and monitor clock.
>>
>>> +static u32 gen_clk_table[] = { 0, 1, 3, 5, 6, 7, 8 };
>>> +static const struct clk_parent_data gen_clk_parent_data[] = {
>>> +	{ .fw_name = "xtal", },
>>> +	{ .hw = &a1_rtc_clk.hw },
>>> +	{ .hw = &a1_hifi_pll.hw },
>>> +	{ .hw = &a1_fclk_div2.hw },
>>> +	{ .hw = &a1_fclk_div3.hw },
>>> +	{ .hw = &a1_fclk_div5.hw },
>>> +	{ .hw = &a1_fclk_div7.hw },
>>> +};
>>> +
>>> +static struct clk_regmap a1_gen_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = GEN_CLK_CTRL,
>>> +		.mask = 0xf,
>>> +		.shift = 12,
>>> +		.table = gen_clk_table,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "gen_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = gen_clk_parent_data,
>>> +		.num_parents = ARRAY_SIZE(gen_clk_parent_data),
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_gen_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = GEN_CLK_CTRL,
>>> +		.shift = 0,
>>> +		.width = 11,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "gen_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_gen_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_gen = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = GEN_CLK_CTRL,
>>> +		.bit_idx = 11,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "gen",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_gen_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_saradc_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = SAR_ADC_CLK_CTRL,
>>> +		.mask = 0x1,
>>> +		.shift = 9,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "saradc_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = (const struct clk_parent_data []) {
>>> +			{ .fw_name = "xtal", },
>>> +			{ .hw = &a1_sys_clk.hw, },
>>> +		},
>>> +		.num_parents = 2,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_saradc_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = SAR_ADC_CLK_CTRL,
>>> +		.shift = 0,
>>> +		.width = 8,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "saradc_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_saradc_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_saradc_clk = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = SAR_ADC_CLK_CTRL,
>>> +		.bit_idx = 8,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "saradc_clk",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_saradc_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +/* pwm a/b/c/d parent data */
>>> +static const struct clk_parent_data pwm_parent_data[] = {
>>> +	{ .fw_name = "xtal", },
>>> +	{ .hw = &a1_sys_clk.hw },
>>> +};
>>> +
>>> +/*
>>> + * add CLK_IGNORE_UNUSED flag for pwm controller GATE
>>> + * clk core will disable unused clock, it may disable
>>> + * vddcore voltage which contrlled by one pwm in bl21.
>>                               ^
>>                               typo
>>
>>> + * add the flag to avoid changing cpu voltage.
>>
>> 80 char per line is ok
>> This comment would be better placed next to the corresponding flag
>>
>> Also you could explain that flag could be removed when CCF has some
>> hand-off mechanism (similar comments you can copy in other driver)
>>
> ok,  contrlled --> controlled
> I will move the comment next to the flag
> I have gotten the similar comments in g12a.c
>>> + */
>>> +/* pwm a clk */
>>> +static struct clk_regmap a1_pwm_a_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = PWM_CLK_AB_CTRL,
>>> +		.mask = 0x1,
>>> +		.shift = 9,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "pwm_a_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = pwm_parent_data,
>>> +		.num_parents = ARRAY_SIZE(pwm_parent_data),
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_pwm_a_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = PWM_CLK_AB_CTRL,
>>> +		.shift = 0,
>>> +		.width = 8,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "pwm_a_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_pwm_a_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_pwm_a = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = PWM_CLK_AB_CTRL,
>>> +		.bit_idx = 8,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "pwm_a",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_pwm_a_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>
> [...]
>
>>> +/* usb bus clk */
>>> +static const struct clk_parent_data usb_bus_parent_data[] = {
>>> +	{ .fw_name = "xtal", },
>>> +	{ .hw = &a1_sys_clk.hw },
>>> +	{ .hw = &a1_fclk_div3.hw },
>>> +	{ .hw = &a1_fclk_div5.hw },
>>> +};
>>> +
>>> +static struct clk_regmap a1_usb_bus_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = USB_BUSCLK_CTRL,
>>> +		.mask = 0x3,
>>> +		.shift = 9,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "usb_bus_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = usb_bus_parent_data,
>>> +		.num_parents = ARRAY_SIZE(usb_bus_parent_data),
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>
>> Again, every unused flag need to be properly explained
>>
> ok, I will confirm this flag
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_usb_bus_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = USB_BUSCLK_CTRL,
>>> +		.shift = 0,
>>> +		.width = 8,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "usb_bus_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_usb_bus_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_usb_bus = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = USB_BUSCLK_CTRL,
>>> +		.bit_idx = 8,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "usb_bus",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_usb_bus_div.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>
> [...]
>
>>> +
>>> +/* dmc clk */
>>> +static const struct clk_hw *dmc_parent_hws[] = {
>>> +	&a1_fclk_div2.hw,
>>> +	&a1_fclk_div3.hw,
>>> +	&a1_fclk_div5.hw,
>>> +	&a1_hifi_pll.hw,
>>> +};
>>> +
>>> +static struct clk_regmap a1_dmc_sel = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = DMC_CLK_CTRL,
>>> +		.mask = 0x3,
>>> +		.shift = 9,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dmc_sel",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_hws = dmc_parent_hws,
>>> +		.num_parents = ARRAY_SIZE(dmc_parent_hws),
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dmc_div = {
>>> +	.data = &(struct clk_regmap_div_data){
>>> +		.offset = DMC_CLK_CTRL,
>>> +		.shift = 0,
>>> +		.width = 8,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dmc_div",
>>> +		.ops = &clk_regmap_divider_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dmc_sel.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dmc_sel2 = {
>>> +	.data = &(struct clk_regmap_mux_data){
>>> +		.offset = DMC_CLK_CTRL,
>>> +		.mask = 0x1,
>>> +		.shift = 15,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data){
>>> +		.name = "dmc_sel2",
>>> +		.ops = &clk_regmap_mux_ops,
>>> +		.parent_data = (const struct clk_parent_data []) {
>>> +			{ .hw = &a1_dmc_div.hw },
>>> +			{ .fw_name = "xtal", },
>>> +		},
>>> +		.num_parents = 2,
>>> +		.flags = CLK_SET_RATE_PARENT,
>>> +	},
>>> +};
>>> +
>>> +static struct clk_regmap a1_dmc = {
>>> +	.data = &(struct clk_regmap_gate_data){
>>> +		.offset = DMC_CLK_CTRL,
>>> +		.bit_idx = 8,
>>> +	},
>>> +	.hw.init = &(struct clk_init_data) {
>>> +		.name = "dmc",
>>> +		.ops = &clk_regmap_gate_ops,
>>> +		.parent_hws = (const struct clk_hw *[]) {
>>> +			&a1_dmc_sel2.hw
>>> +		},
>>> +		.num_parents = 1,
>>> +		/*
>>> +		 * add CLK_IGNORE_UNUSED to avoid hangup
>>> +		 * DDR clock should not change at runtime
>>> +		 */
>>
>> CRITICAL ? RO ops maybe ?
> RO ops is better
>>
>>> +		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>> +	},
>>> +};
>>> +
>
> [...]
>
>>> +
>>> +#define MESON_GATE(_name, _reg, _bit) \
>>> +	MESON_PCLK(_name, _reg, _bit, &a1_sys_clk.hw)
>>> +
>>> +/* CLKTREE_SYS_CLK_EN0 */
>>
>> Full caps is not ok ... and once again, try to add comment which helps
> ok, I will add some useful comment.
>>
>>> +static MESON_GATE(a1_clk_tree,		SYS_CLK_EN0,	0);
>>> +static MESON_GATE(a1_reset_ctrl,	SYS_CLK_EN0,	1);
>>> +static MESON_GATE(a1_analog_ctrl,	SYS_CLK_EN0,	2);
>>> +static MESON_GATE(a1_pwr_ctrl,		SYS_CLK_EN0,	3);
>>> +static MESON_GATE(a1_pad_ctrl,		SYS_CLK_EN0,	4);
>>> +static MESON_GATE(a1_sys_ctrl,		SYS_CLK_EN0,	5);
>>> +static MESON_GATE(a1_temp_sensor,	SYS_CLK_EN0,	6);
>>> +static MESON_GATE(a1_am2axi_dev,	SYS_CLK_EN0,	7);
>>> +static MESON_GATE(a1_spicc_b,		SYS_CLK_EN0,	8);
>>> +static MESON_GATE(a1_spicc_a,		SYS_CLK_EN0,	9);
>>> +static MESON_GATE(a1_clk_msr,		SYS_CLK_EN0,	10);
>>> +static MESON_GATE(a1_audio,		SYS_CLK_EN0,	11);
>>> +static MESON_GATE(a1_jtag_ctrl,		SYS_CLK_EN0,	12);
>>> +static MESON_GATE(a1_saradc,		SYS_CLK_EN0,	13);
>>> +static MESON_GATE(a1_pwm_ef,		SYS_CLK_EN0,	14);
>>> +static MESON_GATE(a1_pwm_cd,		SYS_CLK_EN0,	15);
>>> +static MESON_GATE(a1_pwm_ab,		SYS_CLK_EN0,	16);
>>> +static MESON_GATE(a1_cec,		SYS_CLK_EN0,	17);
>>> +static MESON_GATE(a1_i2c_s,		SYS_CLK_EN0,	18);
>>> +static MESON_GATE(a1_ir_ctrl,		SYS_CLK_EN0,	19);
>>> +static MESON_GATE(a1_i2c_m_d,		SYS_CLK_EN0,	20);
>>> +static MESON_GATE(a1_i2c_m_c,		SYS_CLK_EN0,	21);
>>> +static MESON_GATE(a1_i2c_m_b,		SYS_CLK_EN0,	22);
>>> +static MESON_GATE(a1_i2c_m_a,		SYS_CLK_EN0,	23);
>>> +static MESON_GATE(a1_acodec,		SYS_CLK_EN0,	24);
>>> +static MESON_GATE(a1_otp,		SYS_CLK_EN0,	25);
>>> +static MESON_GATE(a1_sd_emmc_a,		SYS_CLK_EN0,	26);
>>> +static MESON_GATE(a1_usb_phy,		SYS_CLK_EN0,	27);
>>> +static MESON_GATE(a1_usb_ctrl,		SYS_CLK_EN0,	28);
>>> +static MESON_GATE(a1_sys_dspb,		SYS_CLK_EN0,	29);
>>> +static MESON_GATE(a1_sys_dspa,		SYS_CLK_EN0,	30);
>>> +static MESON_GATE(a1_dma,		SYS_CLK_EN0,	31);
>>> +/* CLKTREE_SYS_CLK_EN1 */
>>> +static MESON_GATE(a1_irq_ctrl,		SYS_CLK_EN1,	0);
>>> +static MESON_GATE(a1_nic,		SYS_CLK_EN1,	1);
>>> +static MESON_GATE(a1_gic,		SYS_CLK_EN1,	2);
>>> +static MESON_GATE(a1_uart_c,		SYS_CLK_EN1,	3);
>>> +static MESON_GATE(a1_uart_b,		SYS_CLK_EN1,	4);
>>> +static MESON_GATE(a1_uart_a,		SYS_CLK_EN1,	5);
>>> +static MESON_GATE(a1_sys_psram,		SYS_CLK_EN1,	6);
>>> +static MESON_GATE(a1_rsa,		SYS_CLK_EN1,	8);
>>> +static MESON_GATE(a1_coresight,		SYS_CLK_EN1,	9);
>>> +/* CLKTREE_AXI_CLK_EN */
>>> +static MESON_GATE(a1_am2axi_vad,	AXI_CLK_EN,	0);
>>> +static MESON_GATE(a1_audio_vad,		AXI_CLK_EN,	1);
>>> +static MESON_GATE(a1_axi_dmc,		AXI_CLK_EN,	3);
>>> +static MESON_GATE(a1_axi_psram,		AXI_CLK_EN,	4);
>>> +static MESON_GATE(a1_ramb,		AXI_CLK_EN,	5);
>>> +static MESON_GATE(a1_rama,		AXI_CLK_EN,	6);
>>> +static MESON_GATE(a1_axi_spifc,		AXI_CLK_EN,	7);
>>> +static MESON_GATE(a1_axi_nic,		AXI_CLK_EN,	8);
>>> +static MESON_GATE(a1_axi_dma,		AXI_CLK_EN,	9);
>>> +static MESON_GATE(a1_cpu_ctrl,		AXI_CLK_EN,	10);
>>> +static MESON_GATE(a1_rom,		AXI_CLK_EN,	11);
>>> +static MESON_GATE(a1_prod_i2c,		AXI_CLK_EN,	12);
>>> +
>
> [...]
>
>>> +
>>> +/* Convenience table to populate regmap in .probe
>>> + * Peripheral clock register base address is 0xfe000800
>>
>> this info will be in DT
> I will remove the address commit
>>
>>> + */
>
> [...]
>
>>> +
>>> +/*
>>> + * cpu clock register base address is 0xfd000080
>>> + */
>>> +static struct clk_regmap *const a1_cpu_clk_regmaps[] = {
>>> +	/* TODO */
>>> +};
>>> +
>>> +/*
>>> + * pll clock register base address is 0xfe007c00
>>> + */
>>> +static struct clk_regmap *const a1_pll_clk_regmaps[] = {
>>> +	&a1_fixed_pll_dco,
>>> +	&a1_fixed_pll,
>>> +	&a1_hifi_pll,
>>> +	&a1_fclk_div2,
>>> +	&a1_fclk_div3,
>>> +	&a1_fclk_div5,
>>> +	&a1_fclk_div7,
>>> +};
>>> +
>>> +static struct regmap_config clkc_regmap_config = {
>>> +	.reg_bits       = 32,
>>> +	.val_bits       = 32,
>>> +	.reg_stride     = 4,
>>> +};
>>> +
>>> +static struct regmap *a1_regmap_resource(struct device *dev, char *name)
>>> +{
>>> +	struct resource res;
>>> +	void __iomem *base;
>>> +	int i;
>>> +	struct device_node *node = dev->of_node;
>>> +
>>> +	i = of_property_match_string(node, "reg-names", name);
>>> +	if (of_address_to_resource(node, i, &res))
>>> +		return ERR_PTR(-ENOENT);
>>> +
>>> +	base = devm_ioremap_resource(dev, &res);
>>> +	if (IS_ERR(base))
>>> +		return ERR_CAST(base);
>>> +
>>> +	clkc_regmap_config.max_register = resource_size(&res) - 4;
>>> +	clkc_regmap_config.name = devm_kasprintf(dev, GFP_KERNEL,
>>> +						 "%s-%s", node->name,
>>> +						 name);
>>> +	if (!clkc_regmap_config.name)
>>> +		return ERR_PTR(-ENOMEM);
>>> +
>>> +	return devm_regmap_init_mmio(dev, base, &clkc_regmap_config);
>>> +}
>>> +
>>> +static int a1_clkc_probe(struct platform_device *pdev)
>>> +{
>>> +	struct device *dev = &pdev->dev;
>>> +	struct regmap *peripheral_map, *pll_map, *cpu_map;
>>> +	int ret, i;
>>> +
>>> +	/* Get regmap for different clock area */
>>> +	peripheral_map = a1_regmap_resource(dev, "peripheral");
>>> +	if (IS_ERR(peripheral_map)) {
>>> +		dev_err(dev, "peripheral clk registers not found\n");
>>> +		return PTR_ERR(peripheral_map);
>>> +	}
>>> +
>>> +	pll_map = a1_regmap_resource(dev, "pll");
>>> +	if (IS_ERR(pll_map)) {
>>> +		dev_err(dev, "pll clk registers not found\n");
>>> +		return PTR_ERR(pll_map);
>>> +	}
>>> +
>>> +	cpu_map = a1_regmap_resource(dev, "cpu");
>>> +	if (IS_ERR(cpu_map)) {
>>> +		dev_err(dev, "cpu clk registers not found\n");
>>> +		return PTR_ERR(cpu_map);
>>> +	}
>>> +
>>> +	/* Populate regmap for the regmap backed clocks */
>>> +	for (i = 0; i < ARRAY_SIZE(a1_clk_regmaps); i++)
>>> +		a1_clk_regmaps[i]->map = peripheral_map;
>>> +
>>> +	for (i = 0; i < ARRAY_SIZE(a1_cpu_clk_regmaps); i++)
>>> +		a1_cpu_clk_regmaps[i]->map = cpu_map;
>>> +
>>> +	for (i = 0; i < ARRAY_SIZE(a1_pll_clk_regmaps); i++)
>>> +		a1_pll_clk_regmaps[i]->map = pll_map;
>>
>> Unless you have a rock solid reason why you absolutely need to make
>> single controller out of this 3 regions, Nack.
>>
> As comment replying in
> Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml, I will
> implement three clock drivers.
>>> +
>>> +	for (i = 0; i < a1_hw_onecell_data.num; i++) {
>>> +		/* array might be sparse */
>>> +		if (!a1_hw_onecell_data.hws[i])
>>> +			continue;
>>> +
>>> +		ret = devm_clk_hw_register(dev, a1_hw_onecell_data.hws[i]);
>>> +		if (ret) {
>>> +			dev_err(dev, "Clock registration failed\n");
>>> +			return ret;
>>> +		}
>>> +	}
>>> +
>>> +	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
>>> +					   &a1_hw_onecell_data);
>>> +}
>>> +
>>> +static const struct of_device_id clkc_match_table[] = {
>>> +	{ .compatible = "amlogic,a1-clkc" },
>>> +	{ /* sentinel */ }
>>> +};
>>> +
>>> +static struct platform_driver a1_driver = {
>>> +	.probe		= a1_clkc_probe,
>>> +	.driver		= {
>>> +		.name	= "a1-clkc",
>>> +		.of_match_table = clkc_match_table,
>>> +	},
>>> +};
>>> +
>>> +builtin_platform_driver(a1_driver);
>>> diff --git a/drivers/clk/meson/a1.h b/drivers/clk/meson/a1.h
>>> new file mode 100644
>>> index 0000000..f2291c4
>>> --- /dev/null
>>> +++ b/drivers/clk/meson/a1.h
>>> @@ -0,0 +1,172 @@
>>> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>>> +/*
>>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>>> + */
>>> +
>>> +#ifndef __A1_H
>>> +#define __A1_H
>>> +
>>> +/*
>>> + * peripheral clock controller register address
>>> + * APB_BASE:  APB0_BASE_ADDR = 0xfe000800
>>
>> Again this info is DT and might become wrong if your controller is ever
>> compatible with another SoC
>>
> I will remove the address comment, the right address is 0xfe000080.
>>> + */
>>> +#define SYS_OSCIN_CTRL			0x0
>>> +#define RTC_BY_OSCIN_CTRL0		0x4
>>> +#define RTC_BY_OSCIN_CTRL1		0x8
>>> +#define RTC_CTRL			0xc
>>> +#define SYS_CLK_CTRL0			0x10
>>> +#define AXI_CLK_CTRL0			0x14
>>> +#define SYS_CLK_EN0			0x1c
>>> +#define SYS_CLK_EN1			0x20
>>> +#define AXI_CLK_EN			0x24
>>> +#define DSPA_CLK_EN			0x28
>>> +#define DSPB_CLK_EN			0x2c
>>> +#define DSPA_CLK_CTRL0			0x30
>>> +#define DSPB_CLK_CTRL0			0x34
>>> +#define CLK12_24_CTRL			0x38
>>> +#define GEN_CLK_CTRL			0x3c
>>> +#define TIMESTAMP_CTRL0			0x40
>>> +#define TIMESTAMP_CTRL1			0x44
>>> +#define TIMESTAMP_CTRL2			0x48
>>> +#define TIMESTAMP_VAL0			0x4c
>>> +#define TIMESTAMP_VAL1			0x50
>>> +#define TIMEBASE_CTRL0			0x54
>>> +#define TIMEBASE_CTRL1			0x58
>>> +#define SAR_ADC_CLK_CTRL		0xc0
>>> +#define PWM_CLK_AB_CTRL			0xc4
>>> +#define PWM_CLK_CD_CTRL			0xc8
>>> +#define PWM_CLK_EF_CTRL			0xcc
>>> +#define SPICC_CLK_CTRL			0xd0
>>> +#define TS_CLK_CTRL			0xd4
>>> +#define SPIFC_CLK_CTRL			0xd8
>>> +#define USB_BUSCLK_CTRL			0xdc
>>> +#define SD_EMMC_CLK_CTRL		0xe0
>>> +#define CECA_CLK_CTRL0			0xe4
>>> +#define CECA_CLK_CTRL1			0xe8
>>> +#define CECB_CLK_CTRL0			0xec
>>> +#define CECB_CLK_CTRL1			0xf0
>>> +#define PSRAM_CLK_CTRL			0xf4
>>> +#define DMC_CLK_CTRL			0xf8
>>> +#define FCLK_DIV1_SEL			0xfc
>>> +#define TST_CTRL			0x100
>>> +/*
>>> + * For PLL register offset
>>> + * APB_BASE:  APB0_BASE_ADDR = 0xfe007c00
>>> + */
>>> +#define ANACTRL_FIXPLL_CTRL0		0x80
>>> +#define ANACTRL_FIXPLL_CTRL1		0x84
>>> +#define ANACTRL_FIXPLL_CTRL2		0x88
>>> +#define ANACTRL_FIXPLL_CTRL3		0x8c
>>> +#define ANACTRL_FIXPLL_CTRL4		0x90
>>> +#define ANACTRL_FIXPLL_STS		0x94
>>> +#define ANACTRL_SYSPLL_CTRL0		0x100
>>> +#define ANACTRL_SYSPLL_CTRL1		0x104
>>> +#define ANACTRL_SYSPLL_CTRL2		0x108
>>> +#define ANACTRL_SYSPLL_CTRL3		0x10c
>>> +#define ANACTRL_SYSPLL_CTRL4		0x110
>>> +#define ANACTRL_SYSPLL_STS		0x114
>>> +#define ANACTRL_HIFIPLL_CTRL0		0x140
>>> +#define ANACTRL_HIFIPLL_CTRL1		0x144
>>> +#define ANACTRL_HIFIPLL_CTRL2		0x148
>>> +#define ANACTRL_HIFIPLL_CTRL3		0x14c
>>> +#define ANACTRL_HIFIPLL_CTRL4		0x150
>>> +#define ANACTRL_HIFIPLL_STS		0x154
>>> +#define ANACTRL_AUDDDS_CTRL0		0x180
>>> +#define ANACTRL_AUDDDS_CTRL1		0x184
>>> +#define ANACTRL_AUDDDS_CTRL2		0x188
>>> +#define ANACTRL_AUDDDS_CTRL3		0x18c
>>> +#define ANACTRL_AUDDDS_CTRL4		0x190
>>> +#define ANACTRL_AUDDDS_STS		0x194
>>> +#define ANACTRL_MISCTOP_CTRL0		0x1c0
>>> +#define ANACTRL_POR_CNTL		0x208
>>> +/*
>>> + * CPU clok register offset
>>> + * APB_BASE:  APB1_BASE_ADDR = 0xfd000080
>>> + */
>>> +#define CPUCTRL_CLK_CTRL0		0x00
>>> +#define CPUCTRL_CLK_CTRL1		0x04
>>> +#define CPUCTRL_CLK_CTRL2		0x08
>>> +#define CPUCTRL_CLK_CTRL3		0x0c
>>> +#define CPUCTRL_CLK_CTRL4		0x10
>>> +#define CPUCTRL_CLK_CTRL5		0x14
>>> +#define CPUCTRL_CLK_CTRL6		0x18
>>> +#define CPUCTRL_CLK_CTRL7		0x1c
>>> +
>>> +#define CLKID_FIXED_PLL_DCO		0
>>> +#define CLKID_SYS_A_SEL			10
>>> +#define CLKID_SYS_A_DIV			11
>>> +#define CLKID_SYS_A			12
>>> +#define CLKID_SYS_B_SEL			13
>>> +#define CLKID_SYS_B_DIV			14
>>> +#define CLKID_SYS_B			15
>>> +#define CLKID_XTAL_CLKTREE		18
>>> +#define CLKID_XTAL_FIXPLL		19
>>> +#define CLKID_XTAL_USB_PHY		20
>>> +#define CLKID_XTAL_USB_CTRL		21
>>> +#define CLKID_XTAL_HIFIPLL		22
>>> +#define CLKID_XTAL_SYSPLL		23
>>> +#define CLKID_XTAL_DDS			24
>>> +#define CLKID_DSPA_A_SEL		78
>>> +#define CLKID_DSPA_A_DIV		79
>>> +#define CLKID_DSPA_A			80
>>> +#define CLKID_DSPA_B_SEL		81
>>> +#define CLKID_DSPA_B_DIV		82
>>> +#define CLKID_DSPA_B			83
>>> +#define CLKID_DSPB_A_SEL		85
>>> +#define CLKID_DSPB_A_DIV		86
>>> +#define CLKID_DSPB_A			87
>>> +#define CLKID_DSPB_B_SEL		88
>>> +#define CLKID_DSPB_B_DIV		89
>>> +#define CLKID_DSPB_B			90
>>> +#define CLKID_RTC_32K_CLKIN		96
>>> +#define CLKID_RTC_32K_DIV		97
>>> +#define CLKID_RTC_32K_XTAL		98
>>> +#define CLKID_RTC_32K_SEL		99
>>> +#define CLKID_CECB_32K_CLKIN		106
>>> +#define CLKID_CECB_32K_DIV		107
>>> +#define CLKID_CECB_32K_SEL_PRE		108
>>> +#define CLKID_CECB_32K_SEL		109
>>> +#define CLKID_CECA_32K_CLKIN		101
>>> +#define CLKID_CECA_32K_DIV		102
>>> +#define CLKID_CECA_32K_SEL_PRE		103
>>> +#define CLKID_CECA_32K_SEL		104
>>> +#define CLKID_DIV2_PRE			113
>>> +#define CLKID_24M_DIV2			115
>>> +#define CLKID_GEN_SEL			116
>>> +#define CLKID_GEN_DIV			117
>>> +#define CLKID_SARADC_DIV		120
>>> +#define CLKID_PWM_A_SEL			122
>>> +#define CLKID_PWM_A_DIV			123
>>> +#define CLKID_PWM_B_SEL			125
>>> +#define CLKID_PWM_B_DIV			126
>>> +#define CLKID_PWM_C_SEL			128
>>> +#define CLKID_PWM_C_DIV			129
>>> +#define CLKID_PWM_D_SEL			131
>>> +#define CLKID_PWM_D_DIV			132
>>> +#define CLKID_PWM_E_SEL			134
>>> +#define CLKID_PWM_E_DIV			135
>>> +#define CLKID_PWM_F_SEL			137
>>> +#define CLKID_PWM_F_DIV			138
>>> +#define CLKID_SPICC_SEL			140
>>> +#define CLKID_SPICC_DIV			141
>>> +#define CLKID_SPICC_SEL2		142
>>> +#define CLKID_TS_DIV			144
>>> +#define CLKID_SPIFC_SEL			146
>>> +#define CLKID_SPIFC_DIV			147
>>> +#define CLKID_SPIFC_SEL2		148
>>> +#define CLKID_USB_BUS_SEL		150
>>> +#define CLKID_USB_BUS_DIV		151
>>> +#define CLKID_SD_EMMC_SEL		153
>>> +#define CLKID_SD_EMMC_DIV		154
>>> +#define CLKID_SD_EMMC_SEL2		155
>>> +#define CLKID_PSRAM_SEL			157
>>> +#define CLKID_PSRAM_DIV			158
>>> +#define CLKID_PSRAM_SEL2		159
>>> +#define CLKID_DMC_SEL			161
>>> +#define CLKID_DMC_DIV			162
>>> +#define CLKID_DMC_SEL2			163
>>> +#define NR_CLKS				165
>>> +
>>> +#include <dt-bindings/clock/a1-clkc.h>
>>> +
>>> +#endif /* __A1_H */
>>> -- 
>>> 1.9.1
>>
>> .
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
