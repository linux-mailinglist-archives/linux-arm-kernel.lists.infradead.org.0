Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF9818ED35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 00:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZ4pc/CxG7+tfPs0FJ3cvyZHOVW5lCWMhj856njzcvE=; b=gmN2v0HAuOhlRV
	qJ1LjS7VD7uXhUKOHfqdYesp8QFFo+0ju2s5argZ5Vuk9QoYa30tcQ2iHmd7m1BEfxdwow4YDowEb
	ggEECoFITHvnMuJYGEooQPrY4XLNE7ET6MFwLzClQy7kn0l4kqbAMn5Y5UU7YXZpX1rsoDzIKBBK1
	47O/8Wcy0OY+c4K6HBoeOK9al019RX3ul5dXGJ4h8anUMYI6/8OshrkMF+rrxRMjx6out5gfpYdE/
	A2IfdQ1xdZr7BidXh0gNdDa/AImSizuBAk6WAE4NLmxUNBa8WGqexyPkHCKquljvEr+kofz59TwO5
	Gp3qZuVDGbHL1eJweHCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG9jR-0001lk-Mf; Sun, 22 Mar 2020 23:10:13 +0000
Received: from mail.pqgruber.com ([52.59.78.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG9jB-0001lO-P9
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 23:09:59 +0000
Received: from workstation.tuxnet (213-47-165-233.cable.dynamic.surfer.at
 [213.47.165.233])
 by mail.pqgruber.com (Postfix) with ESMTPSA id A0AF2C6B271;
 Mon, 23 Mar 2020 00:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pqgruber.com;
 s=mail; t=1584918593;
 bh=Hf+UuXvXlgYupgmVZMpobX3ajGP6Y1xtome2lWGxu2I=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=ZvT/A6OPYmd88Yii2c3egXzooYvkIOsdG+xprIqV6kP5n989DhzUCOEXrFY+NSfkH
 RTpFQw+bpvSGFcwa5WvnTwfGZvLRdO+Q1A11w63b9UNmcz7IVFJPyL1GCIyDc2BG1n
 Z7BtFclRNKJ9vIkP7hEVYDpxWEbgB/4t35Qx9Fn0=
Date: Mon, 23 Mar 2020 00:09:51 +0100
From: Clemens Gruber <clemens.gruber@pqgruber.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] ARM: imx: build v7_cpu_resume() unconditionally
Message-ID: <20200322230951.GA75142@workstation.tuxnet>
References: <20200116141849.73955-1-r.czerwinski@pengutronix.de>
 <20200322185022.GA82867@workstation.tuxnet>
 <20200322202224.GQ4189@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322202224.GQ4189@sasha-vm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_160958_014239_BEFFBD53 
X-CRM114-Status: GOOD (  26.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [52.59.78.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: 20200322202224.GQ4189@sasha-vm
Cc: Clemens Gruber <clemens.gruber@pqgruber.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 festevam@gmail.com, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 04:22:24PM -0400, Sasha Levin wrote:
> On Sun, Mar 22, 2020 at 07:50:22PM +0100, Clemens Gruber wrote:
> > Hi,
> > 
> > On Thu, Jan 16, 2020 at 03:18:49PM +0100, Rouven Czerwinski wrote:
> > > From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > > 
> > > This function is not only needed by the platform suspend code, but is also
> > > reused as the CPU resume function when the ARM cores can be powered down
> > > completely in deep idle, which is the case on i.MX6SX and i.MX6UL(L).
> > > 
> > > Providing the static inline stub whenever CONFIG_SUSPEND is disabled means
> > > that those platforms will hang on resume from cpuidle if suspend is disabled.
> > > 
> > > So there are two problems:
> > > 
> > >   - The static inline stub masks the linker error
> > >   - The function is not available where needed
> > > 
> > > Fix both by just building the function unconditionally, when
> > > CONFIG_SOC_IMX6 is enabled. The actual code is three instructions long,
> > > so it's arguably ok to just leave it in for all i.MX6 kernel configurations.
> > > 
> > > Fixes: 05136f0897b5 ("ARM: imx: support arm power off in cpuidle for i.mx6sx")
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > > ---
> > >  arch/arm/mach-imx/Makefile       |  2 ++
> > >  arch/arm/mach-imx/common.h       |  4 ++--
> > >  arch/arm/mach-imx/resume-imx6.S  | 24 ++++++++++++++++++++++++
> > >  arch/arm/mach-imx/suspend-imx6.S | 14 --------------
> > >  4 files changed, 28 insertions(+), 16 deletions(-)
> > >  create mode 100644 arch/arm/mach-imx/resume-imx6.S
> > > 
> > > diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> > > index 35ff620537e6..03506ce46149 100644
> > > --- a/arch/arm/mach-imx/Makefile
> > > +++ b/arch/arm/mach-imx/Makefile
> > > @@ -91,6 +91,8 @@ AFLAGS_suspend-imx6.o :=-Wa,-march=armv7-a
> > >  obj-$(CONFIG_SOC_IMX6) += suspend-imx6.o
> > >  obj-$(CONFIG_SOC_IMX53) += suspend-imx53.o
> > >  endif
> > > +AFLAGS_resume-imx6.o :=-Wa,-march=armv7-a
> > > +obj-$(CONFIG_SOC_IMX6) += resume-imx6.o
> > >  obj-$(CONFIG_SOC_IMX6) += pm-imx6.o
> > > 
> > >  obj-$(CONFIG_SOC_IMX1) += mach-imx1.o
> > > diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
> > > index 912aeceb4ff8..5aa5796cff0e 100644
> > > --- a/arch/arm/mach-imx/common.h
> > > +++ b/arch/arm/mach-imx/common.h
> > > @@ -109,17 +109,17 @@ void imx_cpu_die(unsigned int cpu);
> > >  int imx_cpu_kill(unsigned int cpu);
> > > 
> > >  #ifdef CONFIG_SUSPEND
> > > -void v7_cpu_resume(void);
> > >  void imx53_suspend(void __iomem *ocram_vbase);
> > >  extern const u32 imx53_suspend_sz;
> > >  void imx6_suspend(void __iomem *ocram_vbase);
> > >  #else
> > > -static inline void v7_cpu_resume(void) {}
> > >  static inline void imx53_suspend(void __iomem *ocram_vbase) {}
> > >  static const u32 imx53_suspend_sz;
> > >  static inline void imx6_suspend(void __iomem *ocram_vbase) {}
> > >  #endif
> > > 
> > > +void v7_cpu_resume(void);
> > > +
> > >  void imx6_pm_ccm_init(const char *ccm_compat);
> > >  void imx6q_pm_init(void);
> > >  void imx6dl_pm_init(void);
> > > diff --git a/arch/arm/mach-imx/resume-imx6.S b/arch/arm/mach-imx/resume-imx6.S
> > > new file mode 100644
> > > index 000000000000..5bd1ba7ef15b
> > > --- /dev/null
> > > +++ b/arch/arm/mach-imx/resume-imx6.S
> > > @@ -0,0 +1,24 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > > +/*
> > > + * Copyright 2014 Freescale Semiconductor, Inc.
> > > + */
> > > +
> > > +#include <linux/linkage.h>
> > > +#include <asm/assembler.h>
> > > +#include <asm/asm-offsets.h>
> > > +#include <asm/hardware/cache-l2x0.h>
> > > +#include "hardware.h"
> > > +
> > > +/*
> > > + * The following code must assume it is running from physical address
> > > + * where absolute virtual addresses to the data section have to be
> > > + * turned into relative ones.
> > > + */
> > > +
> > > +ENTRY(v7_cpu_resume)
> > > +	bl	v7_invalidate_l1
> > > +#ifdef CONFIG_CACHE_L2X0
> > > +	bl	l2c310_early_resume
> > > +#endif
> > > +	b	cpu_resume
> > > +ENDPROC(v7_cpu_resume)
> > > diff --git a/arch/arm/mach-imx/suspend-imx6.S b/arch/arm/mach-imx/suspend-imx6.S
> > > index 062391ff13da..1eabf2d2834b 100644
> > > --- a/arch/arm/mach-imx/suspend-imx6.S
> > > +++ b/arch/arm/mach-imx/suspend-imx6.S
> > > @@ -327,17 +327,3 @@ resume:
> > > 
> > >  	ret	lr
> > >  ENDPROC(imx6_suspend)
> > > -
> > > -/*
> > > - * The following code must assume it is running from physical address
> > > - * where absolute virtual addresses to the data section have to be
> > > - * turned into relative ones.
> > > - */
> > > -
> > > -ENTRY(v7_cpu_resume)
> > > -	bl	v7_invalidate_l1
> > > -#ifdef CONFIG_CACHE_L2X0
> > > -	bl	l2c310_early_resume
> > > -#endif
> > > -	b	cpu_resume
> > > -ENDPROC(v7_cpu_resume)
> > > --
> > > 2.25.0
> > 
> > This patch broke the build for our i.MX6 kernel.
> > 
> > I am referring to commits 512a928aff in mainline and
> > 7199cb65bb in linux-stable.
> > 
> > In our kernel, neither CONFIG_PM nor CONFIG_SUSPEND are set. Therefore,
> > ARM_CPU_SUSPEND is also unset, which means that sleep.S (containing
> > cpu_resume) is not built.
> > 
> > With this patch, ld reports the following error:
> > arch/arm/mach-imx/resume-imx6.o: in function `v7_cpu_resume':
> > (.text+0x8): undefined reference to `cpu_resume'
> 
> Is this a problem with Linus's tree as well?

Yes, it affects Linus's tree and linux-stable.

Reverting 512a928aff in mainline (7199cb65bb in linux-stable) fixes the
build error for us.

Thanks,
Clemens

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
