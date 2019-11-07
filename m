Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE8DF2C13
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:23:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKY+xfef/WKfiZA7lrzLH9WFm0jNNQNTYn59cRpIdA0=; b=C80iBHpweRK3tY
	edYMvUDqRTSERdbeMJVeOtfKOq0aE6XmwUxPBFL4VjPPvB3YSQ069IUEjihoPgTfc+0ixleJyXmsU
	zvqFwdY2kiBo+fTbW4MHozLUsTSFsGgUoBV2jm4Z6uwsxQ+nYEl7nmaBLOLkInqPXoNip00qAwXeq
	Pou0OOcSgHtS3eJGfLWLc5S2qO7RnSs7/bP1lqRoUdw5hvYPqvQHC//V8s5RmV/UgDCuEwIoituEI
	DJn1g3wRKe3xjTo5VEp8a9rZgxn2cn+mrVAxXGHCwkGdTYAluyBn9KWdWSNavLxfiP81W2MCekV5G
	JTMUtd/ys+05I2GACPsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSewb-0000Au-1u; Thu, 07 Nov 2019 10:23:13 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSewT-0000A1-Ic
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:23:07 +0000
Received: by mail-vs1-xe43.google.com with SMTP id y129so925503vsc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 02:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=klf1T6RBuB2EMHIc4Rj/8/h5XlKXIauPiGkAA0PQJHA=;
 b=KcZmcBA01wjsArSslzWd0PcZKG5+oUh1YvoGSRLuorbgBtw8eQnaVjTKqr4FIjIgX7
 QWKTyjkc2cyGpL33feXncnUPzVYWwoyn7MIFRS8keHpk2uwuil1HrOs2Hu8QWAvBq3MJ
 FMY7P/utSM92pNef2sXoTwX1bpkEeb2XEK0ruARavfZPC15C/goMAfwjrPkIg4CtvhH3
 agADHSfHT5q7zZCZPWUHJeYeSaa6aOg0A2hfjkGfz52i+vm775zUbSQ7jS1QaP2k3hQr
 dNhlBens4XoPNq0D0yUFYdkpQQfJfbDmEhOYJXh5pmNxl9I2s8afDl0bgQdaqACLcbbb
 ZTpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=klf1T6RBuB2EMHIc4Rj/8/h5XlKXIauPiGkAA0PQJHA=;
 b=SnNIId/aAevDfWr0S4t3lfKoTNoPDt/8lKXfCgVap7Je/CCYlTzvNxnh7ifOlb6Ity
 P7FJcF5FXB/CXYJ5vHjg/vdeP8/uM3pRE4iTaYVxvT/LOWNqdsIT1c5Ijd3WHAB1v29w
 pu4J7tpBvJjDL0UR00vLnF9DGP7c5ZLrbTfdfJqEQiBQsOaMGWcjYENdTLRQnVt+MCTG
 I6/LD76DnuZxsjZry4WOjGSwJwDrMS24mYFM6jAtgFZrMkulZLQK19zTkneALQW9gPpA
 WyajGU7ICpuiP8GI2BeLn5RkEPg4bSkcm/zx8P8u5f6Yly7T3Mwr2cnAGS4tuWrUmos/
 mhXw==
X-Gm-Message-State: APjAAAUioVgoQZSo1ApE2IiS0ElEvLWi6IrCy6kPWWzJJEVpn5JLH0Yf
 8hUuHofdevvrJIysneXSw19B2yT6jSlIxgNNlGiRCQ==
X-Google-Smtp-Source: APXvYqy0f8eg9ePlHMjSmey5WM9znhvGExZSxWGU0F+oNb8FPRtEBPgEercA1k8qGYybSqNZ7bJQmgTaBUVOK2n9zzE=
X-Received: by 2002:a67:7ac5:: with SMTP id v188mr2229899vsc.191.1573122180217; 
 Thu, 07 Nov 2019 02:23:00 -0800 (PST)
MIME-Version: 1.0
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-9-ulf.hansson@linaro.org>
 <20191107091335.GA1914942@centauri.lan>
In-Reply-To: <20191107091335.GA1914942@centauri.lan>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 7 Nov 2019 11:22:24 +0100
Message-ID: <CAPDyKFpaONqMa1OmULjo=XuyKg4gwd2yT3-b5i2oFLg306xasQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/13] cpuidle: psci: Add a helper to attach a CPU to
 its PM domain
To: Niklas Cassel <niklas.cassel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_022305_616005_FFD141B8 
X-CRM114-Status: GOOD (  30.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019 at 10:13, Niklas Cassel <niklas.cassel@linaro.org> wrote:
>
> On Tue, Oct 29, 2019 at 05:44:33PM +0100, Ulf Hansson wrote:
> > Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> > CPU number as an in-parameter and tries to attach the CPU's struct device
> > to its corresponding PM domain.
> >
> > Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> > specify "psci" as the "name" of the PM domain to attach to. Additionally,
> > let's also prepare the attached device to be power managed via runtime PM.
> >
> > Note that, the implementation of the new helper function is in a new
> > separate c-file, which may seems a bit too much at this point. However,
> > subsequent changes that implements the remaining part of the PM domain
> > support for cpuidle-psci, helps to justify this split.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v2:
> >       - Reorder patch to be the first one that starts adding the PM domain
> >         support.
> >       - Rebased.
> >
> > ---
> >  drivers/cpuidle/Makefile              |  4 ++-
> >  drivers/cpuidle/cpuidle-psci-domain.c | 36 +++++++++++++++++++++++++++
> >  drivers/cpuidle/cpuidle-psci.h        | 12 +++++++++
> >  3 files changed, 51 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
> >  create mode 100644 drivers/cpuidle/cpuidle-psci.h
> >
> > diff --git a/drivers/cpuidle/Makefile b/drivers/cpuidle/Makefile
> > index ee70d5cc5b99..cc8c769d7fa9 100644
> > --- a/drivers/cpuidle/Makefile
> > +++ b/drivers/cpuidle/Makefile
> > @@ -21,7 +21,9 @@ obj-$(CONFIG_ARM_U8500_CPUIDLE)         += cpuidle-ux500.o
> >  obj-$(CONFIG_ARM_AT91_CPUIDLE)          += cpuidle-at91.o
> >  obj-$(CONFIG_ARM_EXYNOS_CPUIDLE)        += cpuidle-exynos.o
> >  obj-$(CONFIG_ARM_CPUIDLE)            += cpuidle-arm.o
> > -obj-$(CONFIG_ARM_PSCI_CPUIDLE)               += cpuidle-psci.o
> > +obj-$(CONFIG_ARM_PSCI_CPUIDLE)               += cpuidle_psci.o
> > +cpuidle_psci-y                               := cpuidle-psci.o
> > +cpuidle_psci-$(CONFIG_PM_GENERIC_DOMAINS_OF) += cpuidle-psci-domain.o
> >
> >  ###############################################################################
> >  # MIPS drivers
> > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > new file mode 100644
> > index 000000000000..bc7df4dc0686
> > --- /dev/null
> > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > @@ -0,0 +1,36 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * PM domains for CPUs via genpd - managed by cpuidle-psci.
> > + *
> > + * Copyright (C) 2019 Linaro Ltd.
> > + * Author: Ulf Hansson <ulf.hansson@linaro.org>
> > + *
> > + */
> > +
> > +#include <linux/cpu.h>
> > +#include <linux/device.h>
> > +#include <linux/kernel.h>
> > +#include <linux/pm_domain.h>
> > +#include <linux/pm_runtime.h>
> > +#include <linux/psci.h>
> > +
> > +#include "cpuidle-psci.h"
> > +
> > +struct device *psci_dt_attach_cpu(int cpu)
> > +{
> > +     struct device *dev;
> > +
> > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > +     if (!psci_has_osi_support())
> > +             return NULL;
> > +
> > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
>
> Hello Ulf,
>
> here you use dev_pm_domain_attach_by_name(), which will call
> genpd_dev_pm_attach_by_name(), which will call genpd_dev_pm_attach_by_id(),
> which will call __genpd_dev_pm_attach(virt_dev, dev, index, false);
> the last argument is power_on, which here is always set to false.
>
> In older versions of your patch series, psci_dt_attach_cpu() called
> dev_pm_domain_attach(dev, true), where the last argument is power_on.
> Interestingly enough (for the non-ACPI case), dev_pm_domain_attach()
> ignores the power_on parameter, and simply calls genpd_dev_pm_attach(dev);
> which will call __genpd_dev_pm_attach(dev, dev, 0, true);
> the last argument is power_on, which here is always set to true.
>
> In other words, your previous patch series always powered on the power
> domain, while the newer versions do not. Is this change intentional?

Wow, thanks for an in-depth review!

Yes, the change is intentional.

If the device is attached via dev_pm_domain_attach(), genpd needs to
power on the PM domain, due to legacy reasons (from behaviours by
drivers/subsystem).

This isn't the case when the device is attached through
dev_pm_domain_attach_by_*(), as there is no legacy to care about.

> Perhaps psci_dt_attach_cpu() should call dev_to_genpd(dev)->power_on()
> after attaching the power domain? (In order to be consistent with the
> previous behavior of this patch series.)

After calling dev_pm_domain_attach_by_name, I am calling
pm_runtime_get_sync() if the cpu is online, which means the
corresponding genpd will be powered on - but then, only when actually
needed.

The old behaviour actually relied on the late_initcall
genpd_power_off_unused(), to power off the genpd, in case the CPU
device was offline.

In other words, the new behaviour is even slightly better. Does it make sense?

Kind regards
Uffe

>
>
> Kind regards,
> Niklas
>
> > +     if (IS_ERR_OR_NULL(dev))
> > +             return dev;
> > +
> > +     pm_runtime_irq_safe(dev);
> > +     if (cpu_online(cpu))
> > +             pm_runtime_get_sync(dev);
> > +
> > +     return dev;
> > +}
> > diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
> > new file mode 100644
> > index 000000000000..0cadbb71dc55
> > --- /dev/null
> > +++ b/drivers/cpuidle/cpuidle-psci.h
> > @@ -0,0 +1,12 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +
> > +#ifndef __CPUIDLE_PSCI_H
> > +#define __CPUIDLE_PSCI_H
> > +
> > +#ifdef CONFIG_PM_GENERIC_DOMAINS_OF
> > +struct device *psci_dt_attach_cpu(int cpu);
> > +#else
> > +static inline struct device *psci_dt_attach_cpu(int cpu) { return NULL; }
> > +#endif
> > +
> > +#endif /* __CPUIDLE_PSCI_H */
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
