Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEF11357AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:11:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+/+2rc/7f0WzHeqEtb3HonKQ84T9lflSO8OJZPzetoY=; b=UfW+K/kPpVCB8RvTLD/aWcUA5
	OhrrbQiUBC7a5to63FGUmJee69P21joSkXAG27oj4PgTppfrLlnz5aiUu/A+dBH8mWjzVgq0CKIY/
	H+syFLkjmloDkhrm9lstnrl2LtgGiALR2itPf7BEGO0NZM+xYJOTVhAROSkhnUsNHPws5Zov+Fh8O
	LByHW/icxMsiNo72IOt4VPjA5phgtdYPJ4HVgzKkLDCnvjz2n3JQVTQTIMge6dzk4dTUX9eHXtuNj
	Kjr97o+jExxy6gzx9ja3oSHFSef6KgeQvMH4gQn4g5mG/RYykqnxld03RRp6zAg+fTo8BvVySxdEL
	P+4alf1aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVjA-0003uP-31; Thu, 09 Jan 2020 11:11:48 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVj3-0003so-0M; Thu, 09 Jan 2020 11:11:42 +0000
Received: from [10.28.39.63] (10.28.39.63) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 9 Jan
 2020 19:11:59 +0800
Subject: Re: [PATCH v5 5/5] clk: meson: a1: add support for Amlogic A1
 Peripheral clock driver
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20191227094606.143637-1-jian.hu@amlogic.com>
 <20191227094606.143637-6-jian.hu@amlogic.com>
 <CAFBinCB_0+k6rGxChpB77rPUrb-0mzxt_nQWXbiztCJnJq8XnQ@mail.gmail.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <5fc8e620-3d0d-c982-d506-f7234537ff0c@amlogic.com>
Date: Thu, 9 Jan 2020 19:11:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCB_0+k6rGxChpB77rPUrb-0mzxt_nQWXbiztCJnJq8XnQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.28.39.63]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_031141_047777_A26D1A10 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Chandle Zou <chandle.zou@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/12/28 1:22, Martin Blumenstingl wrote:
>   Hi Jian,
> 
> my comments and questions below
> please keep in mind that I don't have access to the A1 datasheets, so
> I may ask stupid questions :)
> 
> On Fri, Dec 27, 2019 at 10:47 AM Jian Hu <jian.hu@amlogic.com> wrote:
> [...]
>> +/* PLLs clock in gates, its parent is xtal */
> yes. doesn't the code below describe exactly this (what is so special
> about it that we need an extra comment)?
It is a useless comment actually. I will remove it.
There is a gate clock between the xtal clock and PLL clocks(and other 
clocks)
> 
> [...]
>> +static const struct clk_parent_data sys_clk_parents[] = {
>> +       { .fw_name = "xtal" },
>> +       { .fw_name = "fclk_div2"},
>> +       { .fw_name = "fclk_div3"},
>> +       { .fw_name = "fclk_div5"},
> the last three values are missing a space before "}"
> 
OK, I will fix it.
> [...]
>> +       .hw.init = &(struct clk_init_data){
>> +               .name = "sys_clk",
>> +               .ops = &clk_regmap_mux_ro_ops,
>> +               .parent_hws = (const struct clk_hw *[]) {
>> +                       &a1_sys_a.hw, &a1_sys_b.hw,
>> +               },
>> +               .num_parents = 2,
>> +               /*
>> +                * This clock is used by APB bus which setted in Romcode
> like in the PLL clkc patch:
> - setted -> "is set"
> - Romcode == boot ROM ?
Yes, same with the PLL driver. Romcode is boot ROM.
> 
> [...]
>> +static struct clk_regmap a1_rtc_32k_sel = {
>> +       .data = &(struct clk_regmap_mux_data) {
>> +               .offset = RTC_CTRL,
>> +               .mask = 0x3,
>> +               .shift = 0,
>> +               .flags = CLK_MUX_ROUND_CLOSEST,
> CLK_MUX_ROUND_CLOSEST means the common clock framework will also
> accept rates greater than 32kHz.
> is that fine for this case?
Here is a reference to g12a-aoclkc.c
The g12a_aoclk_32k_by_oscin_sel has the same flag.
I am confused about the flag here.

The ceca and cecb clocks' parent is rtc_clk. It
can be set to 32k, and it has been verified by
clock measurement.

> 
> [...]
>> +/*
>> + * the second parent is sys_pll_div16, it will complete in the CPU clock,
> I was confused by this but I assume you mean the parent with index 2?
Yes, it is index 2, it is the third parent in datasheet. I will change it
> 
>> + * the forth parent is the clock measurement source, it relies on
>> + * the clock measurement register configuration.
> ...and parent with index 4 here
Yes, it is index 4 .
> 
> [...]
>> +static struct clk_regmap a1_pwm_a = {
>> +       .data = &(struct clk_regmap_gate_data){
>> +               .offset = PWM_CLK_AB_CTRL,
>> +               .bit_idx = 8,
>> +       },
>> +       .hw.init = &(struct clk_init_data) {
>> +               .name = "pwm_a",
>> +               .ops = &clk_regmap_gate_ops,
>> +               .parent_hws = (const struct clk_hw *[]) {
>> +                       &a1_pwm_a_div.hw
>> +               },
>> +               .num_parents = 1,
>> +               /*
>> +                * The CPU working voltage is controlled by pwm_a
>> +                * in BL2 firmware. add the CLK_IS_CRITICAL flag
>> +                * to avoid changing at runtime.
> on G12A and G12B Linux has to manage the CPU voltage regulator
> can you confirm that for the A1 SoC this is really done by BL2? (I'm
> wondering since A1 is newer than G12)
For A1 ad401 board, the cpu voltage is controlled by PMU regulator. And 
for A1 ad409 board, the cpu voltage is controlled by PWM regulator, The 
PWM A channel feeds the cpu voltage, it is initialized in BL2. So it is 
necessary to add critical flag.

In G12A board, (arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts +194)
the regulator is PWM regulator too.

Compared with G12A, the PWM clock is in A1 periphs clock controller.
However, the PWM clock is in PWM controller in G12A.
We enable the clock by setting pwm register directly , it has not been 
registered to the CCF.

> 
>> +/*
>> + * spicc clk
>> + *    div2   |\         |\       _____
>> + *  ---------| |---DIV--| |     |     |    spicc out
>> + *  ---------| |        | |-----|GATE |---------
>> + *     ..... |/         | /     |_____|
>> + *  --------------------|/
>> + *                 24M
> does that "div2" stand for fclk_div2?
Yes, it is fclk_div2. I will replace it as fdiv2 for short
> 
> [...]
>> +static const struct meson_eeclkc_data a1_periphs_data = {
>> +               .regmap_clks = a1_periphs_regmaps,
>> +               .regmap_clk_num = ARRAY_SIZE(a1_periphs_regmaps),
>> +               .hw_onecell_data = &a1_periphs_hw_onecell_data,
>> +};
> same comment as for the PLL clkc: please drop this and use the
> variables directly inside _probe to get rid of the struct
> meson_eeclkc_data (so I won't be confused about "EE clocks" on A1,
> while according to your description there's no "EE" domain)
> 
OK, I will remove meson_eeclkc_data here. And use the variables directly.
> 
> Martin
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
