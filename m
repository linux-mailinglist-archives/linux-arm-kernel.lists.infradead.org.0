Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D495C138F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 08:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BiCOz6WvIjwp6dtzGMeQnWkRYg8s4lPFwuUXYu/SqS0=; b=EjSb9p+USzWJkK9LhyqgT2jFA
	ujiVeMrIp1wvQ6Cr0a+98xod2wnVTX7i8WKhN3B5IoXdH33vODmj4Zp1xO5A37jzR8dcLT0AkCD4V
	BmJSVWoGxhllKHEyI0guMB396FRSVVLSGieiLrFO24DG1jaG76MPhiNDzoCO2Eut09uZU8DSP2wxS
	mtLV2Vp1HUjdgvaOIUfyqicX/fmpjKXmAoDEZ00h3TNvPIP3YXX/pMwfmriyAUxeH/IFxZtgznd9H
	Jc92u0ZJ7ERD2th+fbuRFzC56xoSuxrv2UlBrtXxV3LjpCZDaIX/qCPK/HKD3yHgb+MGhgSqa2uWE
	8jTZe9C0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iESVF-0004Ju-Is; Sun, 29 Sep 2019 06:16:17 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iESV5-0004J0-2o; Sun, 29 Sep 2019 06:16:09 +0000
Received: from [10.28.19.114] (10.28.19.114) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Sun, 29 Sep
 2019 14:15:56 +0800
Subject: Re: [PATCH 2/2] clk: meson: a1: add support for Amlogic A1 clock
 driver
To: Jerome Brunet <jbrunet@baylibre.com>
References: <1569411888-98116-1-git-send-email-jian.hu@amlogic.com>
 <1569411888-98116-3-git-send-email-jian.hu@amlogic.com>
 <20190925131232.4751020640@mail.kernel.org>
 <8351489a-f91e-be08-7fcc-e2a90c6e87f0@amlogic.com>
 <1jk19t28zs.fsf@starbuckisacylon.baylibre.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <aa379450-48c6-1eb4-e351-2f5ae3736470@amlogic.com>
Date: Sun, 29 Sep 2019 14:15:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.3
MIME-Version: 1.0
In-Reply-To: <1jk19t28zs.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.19.114]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_231607_130130_2D6E1BBC 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019/9/27 20:56, Jerome Brunet wrote:
> 
> On Fri 27 Sep 2019 at 05:11, Jian Hu <jian.hu@amlogic.com> wrote:
> 
>> Hi, Stephen
>>
>> Thank you for review
>>
>> On 2019/9/25 21:12, Stephen Boyd wrote:
>>> Quoting Jian Hu (2019-09-25 04:44:48)
>>>> The Amlogic A1 clock includes three parts:
>>>> peripheral clocks, pll clocks, CPU clocks.
>>>> sys pll and CPU clocks will be sent in next patch.
>>>>
>>>> Unlike the previous series, there is no EE/AO domain
>>>> in A1 CLK controllers.
>>>>
>>>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>>>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>>>
>>> This second name didn't send the patch. Please follow the signoff
>>> procedures documented in Documentation/process/submitting-patches.rst
>>>
>>>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>>>> index 16d7614..a48f67d 100644
>>>> --- a/arch/arm64/Kconfig.platforms
>>>> +++ b/arch/arm64/Kconfig.platforms
>>>> @@ -138,6 +138,7 @@ config ARCH_MESON
>>>>           select COMMON_CLK_AXG
>>>>           select COMMON_CLK_G12A
>>>>           select MESON_IRQ_GPIO
>>>> +       select COMMON_CLK_A1
>>>
>>> Sort?
>> ok, I will put it behind COMMON_CLK_AXG
>>>
>>>>           help
>>>>             This enables support for the arm64 based Amlogic SoCs
>>>>             such as the s905, S905X/D, S912, A113X/D or S905X/D2
>>>> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
>>>> index dabeb43..e6cb4c3 100644
>>>> --- a/drivers/clk/meson/Kconfig
>>>> +++ b/drivers/clk/meson/Kconfig
>>>> @@ -107,3 +107,13 @@ config COMMON_CLK_G12A
>>>>           help
>>>>             Support for the clock controller on Amlogic S905D2, S905X2 and S905Y2
>>>>             devices, aka g12a. Say Y if you want peripherals to work.
>>>> +
>>>> +config COMMON_CLK_A1
>>>
>>> Probably should be placed somewhere alphabetically in this file?
>> ok, I will put it behind COMMON_CLK_AXG_AUDIO
>>>
>>>> +       bool
>>>> +       depends on ARCH_MESON
>>>> +       select COMMON_CLK_MESON_REGMAP
>>>> +       select COMMON_CLK_MESON_DUALDIV
>>>> +       select COMMON_CLK_MESON_PLL
>>>> +       help
>>>> +         Support for the clock controller on Amlogic A113L device,
>>>> +         aka a1. Say Y if you want peripherals to work.
>>>> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
>>>> index 3939f21..6be3a8f 100644
>>>> --- a/drivers/clk/meson/Makefile
>>>> +++ b/drivers/clk/meson/Makefile
>>>> @@ -19,3 +19,4 @@ obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
>>>>    obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
>>>>    obj-$(CONFIG_COMMON_CLK_G12A) += g12a.o g12a-aoclk.o
>>>>    obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o
>>>> +obj-$(CONFIG_COMMON_CLK_A1) += a1.o
>>>
>>> I would guess this should be sorted on Kconfig name in this file?
>> ok, I will put it behind COMMON_CLK_AXG_AUDIO
>>>
>>>> diff --git a/drivers/clk/meson/a1.c b/drivers/clk/meson/a1.c
>>>> new file mode 100644
>>>> index 0000000..26edae0f
>>>> --- /dev/null
>>>> +++ b/drivers/clk/meson/a1.c
>>>> @@ -0,0 +1,2617 @@
>>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>> +/*
>>>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>>>> + */
>>>> +
>>>> +#include <linux/clk-provider.h>
>>>> +#include <linux/init.h>
>>>> +#include <linux/of_device.h>
>>>> +#include <linux/platform_device.h>
>>>> +#include <linux/of_address.h>
>>>> +#include "clk-mpll.h"
>>>> +#include "clk-pll.h"
>>>> +#include "clk-regmap.h"
>>>> +#include "vid-pll-div.h"
>>>> +#include "clk-dualdiv.h"
>>>> +#include "meson-eeclk.h"
>>>> +#include "a1.h"
>>>> +
>>> [...]
>>>> +
>>>> +/*
>>>> + * The Meson A1 HIFI PLL is 614.4M, it requires
>>>> + * a strict register sequence to enable the PLL.
>>>> + * set meson_clk_pcie_pll_ops as its ops
>>>
>>> Please remove this last line as it's obvious from the code what ops are
>>> used.
>>>
>> ok, I will remove it.
>>>> + */
>>>> +static struct clk_regmap a1_hifi_pll = {
>>>> +       .data = &(struct meson_clk_pll_data){
>>>> +               .en = {
>>>> +                       .reg_off = ANACTRL_HIFIPLL_CTRL0,
>>>> +                       .shift   = 28,
>>>> +                       .width   = 1,
>>>> +               },
>>>> +               .m = {
>>>> +                       .reg_off = ANACTRL_HIFIPLL_CTRL0,
>>>> +                       .shift   = 0,
>>>> +                       .width   = 8,
>>>> +               },
>>>> +               .n = {
>>>> +                       .reg_off = ANACTRL_HIFIPLL_CTRL0,
>>>> +                       .shift   = 10,
>>>> +                       .width   = 5,
>>>> +               },
>>>> +               .frac = {
>>>> +                       .reg_off = ANACTRL_HIFIPLL_CTRL1,
>>>> +                       .shift   = 0,
>>>> +                       .width   = 19,
>>>> +               },
>>>> +               .l = {
>>>> +                       .reg_off = ANACTRL_HIFIPLL_STS,
>>>> +                       .shift   = 31,
>>>> +                       .width   = 1,
>>>> +               },
>>>> +               .table = a1_hifi_pll_params_table,
>>>> +               .init_regs = a1_hifi_init_regs,
>>>> +               .init_count = ARRAY_SIZE(a1_hifi_init_regs),
>>>> +       },
>>>> +       .hw.init = &(struct clk_init_data){
>>>> +               .name = "hifi_pll",
>>>> +               .ops = &meson_clk_pcie_pll_ops,
>>>> +               .parent_hws = (const struct clk_hw *[]) {
>>>> +                       &a1_xtal_hifipll.hw
>>>> +               },
>>>> +               .num_parents = 1,
>>>> +       },
>>>> +};
>>>> +
>>> [..]
>>>> +
>>>> +static struct clk_regmap a1_fclk_div2 = {
>>>> +       .data = &(struct clk_regmap_gate_data){
>>>> +               .offset = ANACTRL_FIXPLL_CTRL0,
>>>> +               .bit_idx = 21,
>>>> +       },
>>>> +       .hw.init = &(struct clk_init_data){
>>>> +               .name = "fclk_div2",
>>>> +               .ops = &clk_regmap_gate_ops,
>>>> +               .parent_hws = (const struct clk_hw *[]) {
>>>> +                       &a1_fclk_div2_div.hw
>>>> +               },
>>>> +               .num_parents = 1,
>>>> +               /*
>>>> +                * add CLK_IS_CRITICAL flag to avoid being disabled by clk core
>>>> +                * or its children clocks.
>>>
>>> This comment is useless. Please replace it with an actual reason for
>>> keeping the clk on instead of describing what the flag does.
>>>
>> ok, The actual reason is it should not change at runtime.
> 
> Yeah, from the flag we understand that you want to keep this on. What we
> are after is why ? What device is using this clock and cannot tolerate
> this gate to turn off ?
> 
> This is important and this is kind of comment we are after.
> These flag should be viewed as "mid term work around". In the end, there
> should be a driver for your device which claims the clock and properly
> manage it
> 
I have confirmed for a1_fclk_div2, ddr clock's parent is fclk_div2 which
is initialized in the firmware. The DDR clock could not be gated. I will 
check the other fclk_divX clocks.
>>>> +                */
>>>> +               .flags = CLK_IS_CRITICAL,
>>>> +       },
>>>> +};
>>>> +
>>> [..]
>>>> +static struct clk_regmap a1_dmc = {
>>>> +       .data = &(struct clk_regmap_gate_data){
>>>> +               .offset = DMC_CLK_CTRL,
>>>> +               .bit_idx = 8,
>>>> +       },
>>>> +       .hw.init = &(struct clk_init_data) {
>>>> +               .name = "dmc",
>>>> +               .ops = &clk_regmap_gate_ops,
>>>> +               .parent_hws = (const struct clk_hw *[]) {
>>>> +                       &a1_dmc_sel2.hw
>>>> +               },
>>>> +               .num_parents = 1,
>>>> +               /*
>>>> +                * add CLK_IGNORE_UNUSED to avoid hangup
>>>> +                * DDR clock should not change at runtime
>>>> +                */
>>>> +               .flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>>
>>> So not CLK_IS_CRITICAL?
>> Yes, CLK_IS_CRITICAL is better, I will change it.
> 
> Same comment as above.
> 
>>>
>>>> +       },
>>>> +};
>>>> +
>>> [...]
>>>> +
>>>> +/*
>>>> + * cpu clock register base address is 0xfd000080
>>>> + */
>>>> +static struct clk_regmap *const a1_cpu_clk_regmaps[] = {
>>>> +       /* TODO */
>>>
>>> Can it be done?
>> I plan to compelte cpu clock with the DVFS verified. And  Some peripheral
>> devices rely on this patch to send. I prefer to do it in the next patch.
>>>
>>>> +};
>>>
>>> .
>>>
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
