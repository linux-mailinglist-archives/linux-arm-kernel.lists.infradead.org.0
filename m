Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6BE1585A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:38:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEFekL/00BITo4ospRpp9R2l4DhO8xXW2KPILnOnxZU=; b=I3zU2QF5IdID0O
	DIwm5g49yldnTrDE11QjGO13XVzBloH6pGDByiLcdjE31RzGKdpPU6Wpb4LfKUgBOTXqVHV6r2IY6
	VuOPVqKe1aJIYIaNdtlURRYWUu0s4mSVXWKD8tlDAfK0RrULZ8EaObKl0dfB5bwoh+6DudHMp1Hcc
	6tlU2zz8qlYYaQss1RwlJprjO70+eaAsceMyUZx4T3xpIEcDIeVy+jwLzKVGSTt6Xfi/Vg/DvMTCj
	XDscD83AXiqvV88OiAtE/ezcjaYkePBd3moCgRNO4tLSmRxkyyRVjJg2TguaKOsY8ymDzMD8J2Qoc
	1A4hbKbWfUbYmZ8Lt/yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HhV-0002UW-TJ; Mon, 10 Feb 2020 22:38:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HhO-0002UB-QI
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:38:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23C822072C;
 Mon, 10 Feb 2020 22:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581374318;
 bh=t32JE0QwQ5xFG7CfQw/0jqZEZpeufpgLfqsDlYUyH7g=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=mkGl0Y/H7+dXMRabvHhLPPjq+rZueI2K+k1Gmd3pBO3oriGnP4aH9T0Psx+0tcfEw
 YN62mNRsHAKsQ+qEm6lh6lzFHOUNvwjWmEmm+OR/64tQkfDE3Jm3NxYTyuXLJchlsf
 5kae0OQVPN5owza0USiyqPP9EjWgqROHucpsvtec=
MIME-Version: 1.0
In-Reply-To: <1580823277-13644-5-git-send-email-peng.fan@nxp.com>
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
 <1580823277-13644-5-git-send-email-peng.fan@nxp.com>
Subject: Re: [PATCH 4/7] clk: imx: add imx_hw_clk_cpuv2 for i.MX7ULP
From: Stephen Boyd <sboyd@kernel.org>
To: abel.vesa@nxp.com, aisheng.dong@nxp.com, leonard.crestez@nxp.com,
 peng.fan@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Mon, 10 Feb 2020 14:38:37 -0800
Message-ID: <158137431730.121156.17920534869042984062@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_143838_893455_84B31AB4 
X-CRM114-Status: GOOD (  22.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting peng.fan@nxp.com (2020-02-04 05:34:34)
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add a clk api for i.MX7ULP ARM core clk usage.
> imx_hw_clk_cpu could not be reused, because i.MX7ULP ARM core
> clk has totally different design. To simplify ARM core clk
> change logic, add a new clk api.
> 
> A draft picture to show the ARM core clock.
>                                                       |-sirc
>      |->   run(500MHz)    ->  div -> mux -------------|-firc
>   ARM|                                                |
>      |->   hsrun(720MHz)  ->  hs div -> hs mux -------|-spll pfd
>                                                       |-....
> 
> Need to configure PMC when ARM core runs in HSRUN or RUN mode.
> 
> RUN and HSRUN related registers are not same, but their
> mux has same clocks as input.
> 
> The API takes arm core, div, hs div, mux, hs mux, mux parent, pfd, step
> as params for switch clk freq.
> 
> When set rate, need to switch mux to take firc as input, then
> set spll pfd freq, then switch back mux to spll pfd as parent.
> 
> Per i.MX7ULP requirement, when clk runs in HSRUN mode, it could
> only support arm core wfi idle, so add pm qos to support it.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/Makefile    |   1 +
>  drivers/clk/imx/clk-cpuv2.c | 137 ++++++++++++++++++++++++++++++++++++++++++++
>  drivers/clk/imx/clk.h       |   9 +++
>  3 files changed, 147 insertions(+)
>  create mode 100644 drivers/clk/imx/clk-cpuv2.c
> 
> diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
> index 928f874c73d2..9707fef8da98 100644
> --- a/drivers/clk/imx/Makefile
> +++ b/drivers/clk/imx/Makefile
> @@ -5,6 +5,7 @@ obj-$(CONFIG_MXC_CLK) += \
>         clk-busy.o \
>         clk-composite-8m.o \
>         clk-cpu.o \
> +       clk-cpuv2.o \
>         clk-composite-7ulp.o \
>         clk-divider-gate.o \
>         clk-fixup-div.o \
> diff --git a/drivers/clk/imx/clk-cpuv2.c b/drivers/clk/imx/clk-cpuv2.c
> new file mode 100644
> index 000000000000..a73d97a782aa
> --- /dev/null
> +++ b/drivers/clk/imx/clk-cpuv2.c
> @@ -0,0 +1,137 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2020 NXP
> + *
> + * Peng Fan <peng.fan@nxp.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/slab.h>
> +#include <linux/pm_qos.h>
> +#include "clk.h"
> +
> +static struct pm_qos_request pm_qos_hsrun;
> +
> +#define MAX_NORMAL_RUN_FREQ    528000000
> +
> +struct clk_cpu {
> +       struct clk_hw   hw;
> +       struct clk_hw   *core;
> +       struct clk_hw   *div_nor;
> +       struct clk_hw   *div_hs;
> +       struct clk_hw   *mux_nor;
> +       struct clk_hw   *mux_hs;
> +       struct clk_hw   *mux_parent;
> +       struct clk_hw   *pfd;
> +       struct clk_hw   *step;
> +};
> +
> +static inline struct clk_cpu *to_clk_cpu(struct clk_hw *hw)
> +{
> +       return container_of(hw, struct clk_cpu, hw);
> +}
> +
> +static unsigned long clk_cpu_recalc_rate(struct clk_hw *hw,
> +                                        unsigned long parent_rate)
> +{
> +       struct clk_cpu *cpu = to_clk_cpu(hw);
> +
> +       return clk_hw_get_rate(cpu->core);
> +}
> +
> +static long clk_cpu_round_rate(struct clk_hw *hw, unsigned long rate,
> +                              unsigned long *prate)
> +{
> +       return rate;
> +}
> +
> +static int clk_cpu_set_rate(struct clk_hw *hw, unsigned long rate,
> +                           unsigned long parent_rate)
> +{
> +       struct clk_cpu *cpu = to_clk_cpu(hw);
> +       int ret;
> +       struct clk_hw *div, *mux_now;
> +       unsigned long old_rate = clk_hw_get_rate(cpu->core);
> +
> +       div = clk_hw_get_parent(cpu->core);
> +
> +       if (div == cpu->div_nor)
> +               mux_now = cpu->mux_nor;
> +       else
> +               mux_now = cpu->mux_hs;
> +
> +       ret = clk_hw_set_parent(mux_now, cpu->step);
> +       if (ret)
> +               return ret;
> +
> +       ret = clk_set_rate(cpu->pfd->clk, rate);
> +       if (ret) {
> +               clk_hw_set_parent(mux_now, cpu->mux_parent);
> +               return ret;
> +       }
> +
> +       if (rate > MAX_NORMAL_RUN_FREQ) {
> +               pm_qos_add_request(&pm_qos_hsrun, PM_QOS_CPU_DMA_LATENCY, 0);
> +               clk_hw_set_parent(cpu->mux_hs, cpu->mux_parent);
> +               clk_hw_set_parent(cpu->core, cpu->div_hs);
> +       } else {
> +               clk_hw_set_parent(cpu->mux_nor, cpu->mux_parent);
> +               clk_hw_set_parent(cpu->core, cpu->div_nor);
> +               if (old_rate > MAX_NORMAL_RUN_FREQ)
> +                       pm_qos_remove_request(&pm_qos_hsrun);
> +       }
> +

This is a cpufreq driver. Please write a cpufreq driver instead of
trying to make "clk_set_rate()" conform to the requirements that
cpufreq-dt mandates, which is that one clk exists and that clk rate
change changes the frequency of the CPU.

If cpufreq-dt can work with the clk framework is up to the
implementation of the hardware and the software. From what I see here,
the clk framework is being subverted through the use of
clk_hw_set_parent() and clk_set_rate() calls from within the framework
to make the cpufreq-dt driver happy. Don't do that. Either write a
proper clk driver for the clks that are there and have that manage the
clk tree when clk_set_rate() is called, or write a cpufreq driver that
controls various clks and adjusts their frequencies.

I assume there is a mux or something that eventually clks the CPU, so
that can certainly be modeled as a clk with the parents set some way.
That will make clk_set_rate() mostly work as long as you can hardcode a
min/max value to change the parents, etc. Should work!

The use of pm_qos_add_request() is also pretty horrifying. We're deep in
the clk framework implementation here and we're calling out to pm_qos.
That shouldn't need to happen. If anything, we should do that from the
core framework, but I don't know why we would. It's probably some sort
of cpufreq thing.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
