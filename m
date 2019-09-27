Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DDBC05D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 14:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bXJPJm0P+5PreIjj1aV1Bz842rRgt8WgNCrMb5+sWkI=; b=doPJ8Mqytly9ycMAvEk7xrwGDI
	ieWTWdPDBPrOyqcASg61qAJtaFIf23pOpHH61VZaUbPN4PMIT92HLNOmEJXe+qTEjF1D9d9sY48Bb
	jvCerSlJhzLIVDoFYewyxkahns7sjp7qtPw8jXDn61hGKEaRQuYcR1/6TNblT9PrtJBnm+BBf8I0v
	wH+1HTnLF0C8jEuDDVCPuoU5whTI4msW0Ni04zWmaovVBrFOwrNo87zPC9m6cbgww2MD1sOZvto7v
	DppaGcVmvH4UbDKSvEJIlX+5CdKUzHQ7FX5UibjSFgXM6gmDKIqluXyAkc5x9goZ/+uV2pOaOuSyH
	Ccp1tyKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDpnb-00081v-EA; Fri, 27 Sep 2019 12:56:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpnP-00080N-Ds
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 12:56:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so2580596wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 05:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=tXfdCu+y9o1huO3oAZ1Sbx7ZMu/iHmnXt+9DDmG/YAY=;
 b=nqRDy8aCjz8sLdPAnWGUlZOMS0O0rrLYKivpUvP0b+vARC8X6gyIzwCIJadImYFMOi
 qH82KEeyWSIoHlgye9453TKY+dQpHrF0D1mRCx68dWUw3ecCMdOMfuXCGlqjGuOzbKMv
 X89u2UZ/rIsZEKlzz4dDHmVk/JV6p9haeVjq2XuxOM3yjWIzTGa+iaYPNuP0HSDd1Vpk
 Bjb8Xoio79OWCc8/ZkklhcuZMBux6DG4VW19YWR2hH1Z970c/DOmgzU3/Bgjtr2ZRACk
 n8hcg5mkgJzl3JKwW9PYG11UJJ9dvinYfxQGx6Bji5KwS8izwJT8yMtM55OuTQCsDTJC
 j2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=tXfdCu+y9o1huO3oAZ1Sbx7ZMu/iHmnXt+9DDmG/YAY=;
 b=NMYtRAxU/MhV41WI0KZCVXibjEYBFkKy8ABaQzWSAzUHSj0Qo9tms67kmz/WMresSo
 7T/W9w+o5AN/i9i/cibBfQCduxWoshfFbkorHv5kbLZkXM1op3/1iM65YvOdW78E+mEa
 qEtG4IsMU37k8PEnXcT47g0AFqr9Tc3wA8XhvSSpVj0/HL8YXsqxYZUhx8VS59rCrSzb
 2iqogomOLr0nsvGkH0Oy5p2oGZGJ8DF6Y5udwquZunws259LowidZ4aEGCrdJ6sQANs+
 QPxyoGSr3hp026TgyqeyA7i8yQ06nZ8/pmbnd4lBXjm7DioPTXJvz179uomja3jdhidx
 1ApQ==
X-Gm-Message-State: APjAAAUt/bKGPJaoSTKbCdjhSRC4mm1a2KYcbZzcrJmEuAnzIkKnqRNu
 Q2w9ZY7RAVC/a9v0gA7eSlxyMA==
X-Google-Smtp-Source: APXvYqxEAMML2l1NxVnaWU8UXk7ISpBIST+iO7UeAyZMmaJg19OlU0u9d0T0jRfPnyNo1oc1SYmdWg==
X-Received: by 2002:a5d:4d89:: with SMTP id b9mr2730758wru.395.1569588985491; 
 Fri, 27 Sep 2019 05:56:25 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w7sm4735628wmd.22.2019.09.27.05.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 05:56:24 -0700 (PDT)
References: <1569411888-98116-1-git-send-email-jian.hu@amlogic.com>
 <1569411888-98116-3-git-send-email-jian.hu@amlogic.com>
 <20190925131232.4751020640@mail.kernel.org>
 <8351489a-f91e-be08-7fcc-e2a90c6e87f0@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>
Subject: Re: [PATCH 2/2] clk: meson: a1: add support for Amlogic A1 clock
 driver
In-reply-to: <8351489a-f91e-be08-7fcc-e2a90c6e87f0@amlogic.com>
Date: Fri, 27 Sep 2019 14:56:23 +0200
Message-ID: <1jk19t28zs.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_055627_463746_4751F6F5 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 27 Sep 2019 at 05:11, Jian Hu <jian.hu@amlogic.com> wrote:

> Hi, Stephen
>
> Thank you for review
>
> On 2019/9/25 21:12, Stephen Boyd wrote:
>> Quoting Jian Hu (2019-09-25 04:44:48)
>>> The Amlogic A1 clock includes three parts:
>>> peripheral clocks, pll clocks, CPU clocks.
>>> sys pll and CPU clocks will be sent in next patch.
>>>
>>> Unlike the previous series, there is no EE/AO domain
>>> in A1 CLK controllers.
>>>
>>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>>
>> This second name didn't send the patch. Please follow the signoff
>> procedures documented in Documentation/process/submitting-patches.rst
>>
>>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>>> index 16d7614..a48f67d 100644
>>> --- a/arch/arm64/Kconfig.platforms
>>> +++ b/arch/arm64/Kconfig.platforms
>>> @@ -138,6 +138,7 @@ config ARCH_MESON
>>>          select COMMON_CLK_AXG
>>>          select COMMON_CLK_G12A
>>>          select MESON_IRQ_GPIO
>>> +       select COMMON_CLK_A1
>>
>> Sort?
> ok, I will put it behind COMMON_CLK_AXG
>>
>>>          help
>>>            This enables support for the arm64 based Amlogic SoCs
>>>            such as the s905, S905X/D, S912, A113X/D or S905X/D2
>>> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
>>> index dabeb43..e6cb4c3 100644
>>> --- a/drivers/clk/meson/Kconfig
>>> +++ b/drivers/clk/meson/Kconfig
>>> @@ -107,3 +107,13 @@ config COMMON_CLK_G12A
>>>          help
>>>            Support for the clock controller on Amlogic S905D2, S905X2 and S905Y2
>>>            devices, aka g12a. Say Y if you want peripherals to work.
>>> +
>>> +config COMMON_CLK_A1
>>
>> Probably should be placed somewhere alphabetically in this file?
> ok, I will put it behind COMMON_CLK_AXG_AUDIO
>>
>>> +       bool
>>> +       depends on ARCH_MESON
>>> +       select COMMON_CLK_MESON_REGMAP
>>> +       select COMMON_CLK_MESON_DUALDIV
>>> +       select COMMON_CLK_MESON_PLL
>>> +       help
>>> +         Support for the clock controller on Amlogic A113L device,
>>> +         aka a1. Say Y if you want peripherals to work.
>>> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
>>> index 3939f21..6be3a8f 100644
>>> --- a/drivers/clk/meson/Makefile
>>> +++ b/drivers/clk/meson/Makefile
>>> @@ -19,3 +19,4 @@ obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
>>>   obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
>>>   obj-$(CONFIG_COMMON_CLK_G12A) += g12a.o g12a-aoclk.o
>>>   obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o
>>> +obj-$(CONFIG_COMMON_CLK_A1) += a1.o
>>
>> I would guess this should be sorted on Kconfig name in this file?
> ok, I will put it behind COMMON_CLK_AXG_AUDIO
>>
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
>> [...]
>>> +
>>> +/*
>>> + * The Meson A1 HIFI PLL is 614.4M, it requires
>>> + * a strict register sequence to enable the PLL.
>>> + * set meson_clk_pcie_pll_ops as its ops
>>
>> Please remove this last line as it's obvious from the code what ops are
>> used.
>>
> ok, I will remove it.
>>> + */
>>> +static struct clk_regmap a1_hifi_pll = {
>>> +       .data = &(struct meson_clk_pll_data){
>>> +               .en = {
>>> +                       .reg_off = ANACTRL_HIFIPLL_CTRL0,
>>> +                       .shift   = 28,
>>> +                       .width   = 1,
>>> +               },
>>> +               .m = {
>>> +                       .reg_off = ANACTRL_HIFIPLL_CTRL0,
>>> +                       .shift   = 0,
>>> +                       .width   = 8,
>>> +               },
>>> +               .n = {
>>> +                       .reg_off = ANACTRL_HIFIPLL_CTRL0,
>>> +                       .shift   = 10,
>>> +                       .width   = 5,
>>> +               },
>>> +               .frac = {
>>> +                       .reg_off = ANACTRL_HIFIPLL_CTRL1,
>>> +                       .shift   = 0,
>>> +                       .width   = 19,
>>> +               },
>>> +               .l = {
>>> +                       .reg_off = ANACTRL_HIFIPLL_STS,
>>> +                       .shift   = 31,
>>> +                       .width   = 1,
>>> +               },
>>> +               .table = a1_hifi_pll_params_table,
>>> +               .init_regs = a1_hifi_init_regs,
>>> +               .init_count = ARRAY_SIZE(a1_hifi_init_regs),
>>> +       },
>>> +       .hw.init = &(struct clk_init_data){
>>> +               .name = "hifi_pll",
>>> +               .ops = &meson_clk_pcie_pll_ops,
>>> +               .parent_hws = (const struct clk_hw *[]) {
>>> +                       &a1_xtal_hifipll.hw
>>> +               },
>>> +               .num_parents = 1,
>>> +       },
>>> +};
>>> +
>> [..]
>>> +
>>> +static struct clk_regmap a1_fclk_div2 = {
>>> +       .data = &(struct clk_regmap_gate_data){
>>> +               .offset = ANACTRL_FIXPLL_CTRL0,
>>> +               .bit_idx = 21,
>>> +       },
>>> +       .hw.init = &(struct clk_init_data){
>>> +               .name = "fclk_div2",
>>> +               .ops = &clk_regmap_gate_ops,
>>> +               .parent_hws = (const struct clk_hw *[]) {
>>> +                       &a1_fclk_div2_div.hw
>>> +               },
>>> +               .num_parents = 1,
>>> +               /*
>>> +                * add CLK_IS_CRITICAL flag to avoid being disabled by clk core
>>> +                * or its children clocks.
>>
>> This comment is useless. Please replace it with an actual reason for
>> keeping the clk on instead of describing what the flag does.
>>
> ok, The actual reason is it should not change at runtime.

Yeah, from the flag we understand that you want to keep this on. What we
are after is why ? What device is using this clock and cannot tolerate
this gate to turn off ?

This is important and this is kind of comment we are after.
These flag should be viewed as "mid term work around". In the end, there
should be a driver for your device which claims the clock and properly
manage it

>>> +                */
>>> +               .flags = CLK_IS_CRITICAL,
>>> +       },
>>> +};
>>> +
>> [..]
>>> +static struct clk_regmap a1_dmc = {
>>> +       .data = &(struct clk_regmap_gate_data){
>>> +               .offset = DMC_CLK_CTRL,
>>> +               .bit_idx = 8,
>>> +       },
>>> +       .hw.init = &(struct clk_init_data) {
>>> +               .name = "dmc",
>>> +               .ops = &clk_regmap_gate_ops,
>>> +               .parent_hws = (const struct clk_hw *[]) {
>>> +                       &a1_dmc_sel2.hw
>>> +               },
>>> +               .num_parents = 1,
>>> +               /*
>>> +                * add CLK_IGNORE_UNUSED to avoid hangup
>>> +                * DDR clock should not change at runtime
>>> +                */
>>> +               .flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
>>
>> So not CLK_IS_CRITICAL?
> Yes, CLK_IS_CRITICAL is better, I will change it.

Same comment as above.

>>
>>> +       },
>>> +};
>>> +
>> [...]
>>> +
>>> +/*
>>> + * cpu clock register base address is 0xfd000080
>>> + */
>>> +static struct clk_regmap *const a1_cpu_clk_regmaps[] = {
>>> +       /* TODO */
>>
>> Can it be done?
> I plan to compelte cpu clock with the DVFS verified. And  Some peripheral
> devices rely on this patch to send. I prefer to do it in the next patch.
>>
>>> +};
>>
>> .
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
