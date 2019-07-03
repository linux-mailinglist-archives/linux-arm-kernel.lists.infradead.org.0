Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC2C5EF1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 00:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pG372iIh3tco69mprHpnmzamNRPAh60UKB+6wREiYSM=; b=JJ/RPq5dQGXGAl
	fIIdNRgYlj/LKggg5G/sDigELr95P+MrvISgM+vpZ57AenBiqPv0yasdvTcvwTcUobtwjuMXzPqqg
	sFKdo8gy3dFc3Rs6NQPU5nTfoWcCXVm66cN32TFddChB1EChIJug88B3/K/jvwkGGIILczbFouvP8
	42nMQfSFOJItirPILyE5UBChkOXw/KX66RXn5BsMeMSr9IkcMj7rO7FMDSt3c7MOsUqBc9YfvMdAe
	3wC11DnuFX/eY2lOynkvH5aISJeqlEdGliISwXY1qw/eIppQ/lfDya8za9WnXZpXDjivxO1a5D6kM
	qy7De/5Vrt0foUazxIGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hincR-0001ct-M5; Wed, 03 Jul 2019 22:20:52 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hinc3-0001c8-GA
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 22:20:30 +0000
Received: by mail-oi1-x243.google.com with SMTP id t76so3396120oih.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 15:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O7/9B62uc/L5qzEpOlYgng1H+GtGyObr1QSwY1wY924=;
 b=LgzayCaK4/bJPs+LnptjE/uYgOn0AYy9YP8QsFOXetvhFp6PktTBIYpERPnEMccqw/
 F1fxlXEJal/rlaLngJpSEAH+OPk57egaRsUomkOujZB63fQgtbEVPjg1obnFPg5OmZkc
 koYNaezbHytFC004biKiJPO7tmp6xlo+d6yf/TV3yivkVwAyWokHrYL0sWtFJI0UV1ma
 2U2OXd7oY5NPFmqb2kDsGByO6gTTJuYdIKrYEFY1UuBLTppQ/7mpOvqrrP6KXyhaTJQS
 itfNBIRCPl7CrxuBzPdbi/g05aoK7NqGLVSnyd/doGaAa1Xylr3e008FKvnyFP7ZVrAH
 o7xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O7/9B62uc/L5qzEpOlYgng1H+GtGyObr1QSwY1wY924=;
 b=jYRzroV4U/H/FeKyA3N+fLUU47KvmRSQ6JlRus9BVxCfvgJl3PQ0zzmSVwS8T7IcBX
 LfSmr9vFjUHQ8Bgfzp9VWyyr9tWmtIUENxDQadbGj/LOMSl/WU0X321AnuiJ8206JhXy
 Ipye241mZjGQHKjzo5SiVYATsUYHSer+eZ9yehmP+zuvJmoWMD+Dd1vO+433Ir1eb7yT
 lsBPTjvo7G+7v5Pkwr7NtCMdyZLrBMUgB/s0LJIVeoqO99ZJ27zzqRCF0XgWrK0F2uxS
 HcYK3Od+NY+BObECptsTwfc2cFGFWcSOr36FBDErfamkNbLeoFYwDHvPVaMSZLtIbSd/
 iR8w==
X-Gm-Message-State: APjAAAV1NynoDkMpJwOyCJqgDBNP+BpfolozkWUH0iKxhdL7t9FwPpR3
 vYqbrEcx3+oMu6Lmm2gr7AX5NWPwvKmGvMHaudXBhQ==
X-Google-Smtp-Source: APXvYqwtqi+7I3cUQZdtfk+VvNqZfrr4viWaCwyTmLtX0L7p8OC6XQF6CN592Tn8e3dkroxZHwBppYTQgEEUreRy63g=
X-Received: by 2002:aca:6104:: with SMTP id v4mr499588oib.172.1562192423027;
 Wed, 03 Jul 2019 15:20:23 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561707104.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1561707104.git.leonard.crestez@nxp.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 3 Jul 2019 15:19:46 -0700
Message-ID: <CAGETcx_63KnP75qySbhX_P_=o4=ox9J8AsBqKsFHeQRjCpSeJA@mail.gmail.com>
Subject: Re: [RFCv2 0/8] Add imx8mm bus frequency switching
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_152027_748682_C8E33DCA 
X-CRM114-Status: GOOD (  25.48  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux PM <linux-pm@vger.kernel.org>, linux-imx@nxp.com,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On Fri, Jun 28, 2019 at 12:40 AM Leonard Crestez
<leonard.crestez@nxp.com> wrote:
>
> This series attempts to add upstream DVFS support for imx8mm, covering dynamic
> scaling of internal buses and dram. It uses the interconnect framework for
> proactive scaling (in response to explicit bandwidth requests from devices) and
> devfreq in order expose the buses and eventually implement reactive scaling (in
> response to measuredtraffic).

I'm assuming you took a glance at my patch series [1] adding BW OPP
tables and adding devfreq support for scaling interconnect paths.

Based on looking at your patch series, I think [1] would allow you to
use ICC framework for both proactive and reactive scaling. Proactive
scaling would use the ICC framework directly. Reactive scaling would
go through devfreq (so that you can use various governors/adjust
policy) before it goes to ICC framework.

> Actual scaling is performed through the clk framework: The NOC and main NICs
> are driven by composite clks and a new 'imx8m-dram' clk is included for
> scaling dram using firmware calls.

Seems reasonable. All hardware block in the end run using a clock.

> The interconnect and devfreq parts do not communicate explicitly: they both
> just call clk_set_min_rate and the clk core picks the minimum value that can
> satisfy both. They are thus completely independent.

Two different parts not talking to each other and just setting min
rate can cause problems for some concurrency use cases. ICC framework
is explicitly designed to handle cases like this and aggregate the
needs correctly. You might want to look into that more closely.

> This is easily extensible to more members of the imx8m family, some of which
> expose more detailed controls over interconnect fabric frequencies.
>
> TODO:
> * Clarify DT bindings
> * Clarify interconnect OPP picking logic
> * Implement devfreq_event for imx8m ddrc
> * Expose more dram frequencies
>
> The clk_set_min_rate approach does not mesh very well with the OPP framework.
> Some of interconnect nodes on imx8m can run at different voltages: OPP can
> handle this well but not in response to a clk_set_min_rate from an unrelated
> subsystem. Maybe set voltage on a clk notifier?

I think if you design it something like below, it might make your life
a whole lot easier.
Hopefully the formatting looks okay on your end. The arrow going up is
just connecting devfreq to ICC.

                        Proactive -> ICC -> clk/OPP API to set freq/volt
                                      ^
                                      |
HW measure -> governor -> devfreq ----+

That way, all voltage/frequency requirements are managed cleanly by
clk/OPP frameworks. The ICC deals with aggregating all the
requirements and devfreq lets you handle reactive scaling and policy.

And in the beginning, while you get a governor going, you can use
"performance" governor for the "reactive scaling" users. That way,
your reactive paths will continue to have good performance while the
rest of the "proactive" clients change to use ICC APIs.

> Vendor tree does not support voltage switching, independent freqs for
> different parts of the fabric or any reactive scaling. I think it's important
> to pick an upstreaming approach which can support as much as possible.
>
> Feedback welcome.

If all of this makes sense, please take a look at [2] and provide your
thoughts. I've dropped a few patches from [1] to avoid confusion (too
much going on at once). I think BW OPP tables and having OPP tables
for interconnect paths will be something you'll need (if not now,
eventually) and something you can build on top of nicely.

Thanks,
Saravana

[1] - https://lore.kernel.org/lkml/20190614041733.120807-1-saravanak@google.com/
[2] - https://lore.kernel.org/lkml/20190703011020.151615-1-saravanak@google.com/



> Some objections were apparently raised to doing DRAM switch inside CLK:
> perhaps ICC should make min_freq requests to devfreq instead?
>
> Link to v1 (multiple chunks):
>  * https://patchwork.kernel.org/patch/10976897/
>  * https://patchwork.kernel.org/patch/10968303/
>  * https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=91251
>
> Also as a github branch (with few other changes):
>     https://github.com/cdleonard/linux/tree/next_imx8mm_busfreq
>
> Alexandre Bailon (2):
>   interconnect: Add generic driver for imx
>   interconnect: imx: Add platform driver for imx8mm
>
> Leonard Crestez (6):
>   clk: imx8mm: Add dram freq switch support
>   clk: imx8m-composite: Switch to determine_rate
>   arm64: dts: imx8mm: Add dram dvfs irqs to ccm node
>   devfreq: Add imx-devfreq driver
>   arm64: dts: imx8mm: Add interconnect node
>   arm64: dts: imx8mm: Add devfreq-imx nodes
>
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi |  73 +++
>  drivers/clk/imx/Makefile                  |   1 +
>  drivers/clk/imx/clk-composite-8m.c        |  34 +-
>  drivers/clk/imx/clk-imx8m-dram.c          | 357 ++++++++++++
>  drivers/clk/imx/clk-imx8mm.c              |  12 +
>  drivers/clk/imx/clk.h                     |  13 +
>  drivers/devfreq/Kconfig                   |  10 +
>  drivers/devfreq/Makefile                  |   1 +
>  drivers/devfreq/imx-devfreq.c             | 142 +++++
>  drivers/interconnect/Kconfig              |   1 +
>  drivers/interconnect/Makefile             |   1 +
>  drivers/interconnect/imx/Kconfig          |  17 +
>  drivers/interconnect/imx/Makefile         |   2 +
>  drivers/interconnect/imx/busfreq-imx8mm.c | 151 ++++++
>  drivers/interconnect/imx/busfreq.c        | 628 ++++++++++++++++++++++
>  drivers/interconnect/imx/busfreq.h        | 123 +++++
>  include/dt-bindings/clock/imx8mm-clock.h  |   4 +-
>  include/dt-bindings/interconnect/imx8mm.h |  49 ++
>  18 files changed, 1606 insertions(+), 13 deletions(-)
>  create mode 100644 drivers/clk/imx/clk-imx8m-dram.c
>  create mode 100644 drivers/devfreq/imx-devfreq.c
>  create mode 100644 drivers/interconnect/imx/Kconfig
>  create mode 100644 drivers/interconnect/imx/Makefile
>  create mode 100644 drivers/interconnect/imx/busfreq-imx8mm.c
>  create mode 100644 drivers/interconnect/imx/busfreq.c
>  create mode 100644 drivers/interconnect/imx/busfreq.h
>  create mode 100644 include/dt-bindings/interconnect/imx8mm.h
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
