Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D80F7330
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 12:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZu/hfu1IJ+AZz8srJJgefbnkp/gfPkIQ5KerzQKblI=; b=W4dBb1JgPypEUw
	S0k7sfrRqcRqIFxORwrPwJ54b4YBfAwUpPILwC5a1W/6kaNbusHptHrQd1SlqmIo8MsURK9Sk1F8n
	OE0WvbuY1YI3jPWmGhmAW3o9FI240LRsxCtUeE728nodyJDkbyx1CAJ4lyG7JMGfp0szkP0Lx+aas
	iH+/POUN5lS3ZOCvN1h1qrO5bgbGKpXHw3UysM7MXZ6I+PjwL1SnC+04I5hk3FRHfhARoMW58DDQ6
	72u/nGf5UTZfqHmvxI/5HCNAHsTmwxgeGfadK8595cGivQlxFG3sxsRwA4sYYEEwFkI57PvF7X1a/
	c1CEe/nviGpK1jZMlLuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU806-0006ai-4V; Mon, 11 Nov 2019 11:36:54 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU7zt-0006YH-So
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 11:36:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id y23so13364501ljh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 03:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tUd6frH48PF615/CSYnbEnYGlPsu+zzC0ESe9cf7M74=;
 b=n/BvOo4scmMGYp1a7QquIle8wMtHA16YV/kRKxzY7+JHhiQ7rtahh02wOSV+CTTuEk
 V6RNNN+45aW0CppJDs4ULGWZ0onY4xBCiKtBrZGmhm5VOjehNlyhomv0sWa+lHavxdar
 2Lk5oa2Ep9c3P+gH1v8UOziowJoTWfkefAy0w6LBNe2LrkruzfjhynSnChv22eURpRHE
 Sjiz231aTad7ACrbIDJ/OK+b4ptnXr4wrYiZoA7GtjQ+DMc+4NIB9FTKZ2gKD1jJOlX+
 zuLgqkh8W2LO3MyjjVkkliVm/wygAEb46wEYPHbCNFD8eDuQAdjejbw/mEYH6i7rG9Tz
 jHiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tUd6frH48PF615/CSYnbEnYGlPsu+zzC0ESe9cf7M74=;
 b=jsvSybZZpdrycotW0oBYYtUKTWYPPhORUcqFjBwKRomDDRb5LR5F2PuAhTmyKU0/A+
 i5c3U6NLOw1voZANW8at3sf0r3DRhyFOMBpKGC+hIsV0iDGywKTVpUdGQOu9xhQkbrh3
 LU+Hnfa9zEixj3Z43hfYzdoc+X6N9s54VgxV1Id/6PkSR8hUPculUc2LxySeUDfZtO8O
 SsCbFaiNBAKH+SB/aDOBtCDL6yDpbKO8TLpf1r4PROKcKEmFvd+BsKboORFjGKzCO0G4
 hn3hK1hL+T1c5VwdtWmJyPEEnpdJKwuJBr7iQ1RayfHJMkZyk224byb91OLUI+OivAmW
 Qn9Q==
X-Gm-Message-State: APjAAAUNw4eHqttQE8W0kNmwF8eFiyIQcwLGSafAzBDs6uIl0UZgHDKj
 XMXvq+GNzf3UHmq3RZLe4h/MnA==
X-Google-Smtp-Source: APXvYqw+x7xArZEZ417PPEjkaOLmIHthCEKfIFgE7e3AP2pooW9xQvzE9N/9Dw7OCJwMsdGHPB0fgQ==
X-Received: by 2002:a2e:b5b7:: with SMTP id f23mr16149652ljn.236.1573472198986; 
 Mon, 11 Nov 2019 03:36:38 -0800 (PST)
Received: from centauri.lan (ua-84-217-220-205.bbcust.telenor.se.
 [84.217.220.205])
 by smtp.gmail.com with ESMTPSA id q11sm7115092ljm.107.2019.11.11.03.36.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 03:36:38 -0800 (PST)
Date: Mon, 11 Nov 2019 12:36:35 +0100
From: Niklas Cassel <niklas.cassel@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 08/13] cpuidle: psci: Add a helper to attach a CPU to
 its PM domain
Message-ID: <20191111113635.GA1935851@centauri.lan>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-9-ulf.hansson@linaro.org>
 <20191107091335.GA1914942@centauri.lan>
 <CAPDyKFpaONqMa1OmULjo=XuyKg4gwd2yT3-b5i2oFLg306xasQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFpaONqMa1OmULjo=XuyKg4gwd2yT3-b5i2oFLg306xasQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_033641_927744_35ECD0E6 
X-CRM114-Status: GOOD (  34.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Nov 07, 2019 at 11:22:24AM +0100, Ulf Hansson wrote:
> On Thu, 7 Nov 2019 at 10:13, Niklas Cassel <niklas.cassel@linaro.org> wrote:
> >
> > On Tue, Oct 29, 2019 at 05:44:33PM +0100, Ulf Hansson wrote:
> > > Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> > > CPU number as an in-parameter and tries to attach the CPU's struct device
> > > to its corresponding PM domain.
> > >
> > > Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> > > specify "psci" as the "name" of the PM domain to attach to. Additionally,
> > > let's also prepare the attached device to be power managed via runtime PM.
> > >
> > > Note that, the implementation of the new helper function is in a new
> > > separate c-file, which may seems a bit too much at this point. However,
> > > subsequent changes that implements the remaining part of the PM domain
> > > support for cpuidle-psci, helps to justify this split.
> > >
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >
> > > Changes in v2:
> > >       - Reorder patch to be the first one that starts adding the PM domain
> > >         support.
> > >       - Rebased.
> > >
> > > ---
> > >  drivers/cpuidle/Makefile              |  4 ++-
> > >  drivers/cpuidle/cpuidle-psci-domain.c | 36 +++++++++++++++++++++++++++
> > >  drivers/cpuidle/cpuidle-psci.h        | 12 +++++++++
> > >  3 files changed, 51 insertions(+), 1 deletion(-)
> > >  create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
> > >  create mode 100644 drivers/cpuidle/cpuidle-psci.h
> > >
> > > diff --git a/drivers/cpuidle/Makefile b/drivers/cpuidle/Makefile
> > > index ee70d5cc5b99..cc8c769d7fa9 100644
> > > --- a/drivers/cpuidle/Makefile
> > > +++ b/drivers/cpuidle/Makefile
> > > @@ -21,7 +21,9 @@ obj-$(CONFIG_ARM_U8500_CPUIDLE)         += cpuidle-ux500.o
> > >  obj-$(CONFIG_ARM_AT91_CPUIDLE)          += cpuidle-at91.o
> > >  obj-$(CONFIG_ARM_EXYNOS_CPUIDLE)        += cpuidle-exynos.o
> > >  obj-$(CONFIG_ARM_CPUIDLE)            += cpuidle-arm.o
> > > -obj-$(CONFIG_ARM_PSCI_CPUIDLE)               += cpuidle-psci.o
> > > +obj-$(CONFIG_ARM_PSCI_CPUIDLE)               += cpuidle_psci.o
> > > +cpuidle_psci-y                               := cpuidle-psci.o
> > > +cpuidle_psci-$(CONFIG_PM_GENERIC_DOMAINS_OF) += cpuidle-psci-domain.o
> > >
> > >  ###############################################################################
> > >  # MIPS drivers
> > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > new file mode 100644
> > > index 000000000000..bc7df4dc0686
> > > --- /dev/null
> > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > @@ -0,0 +1,36 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * PM domains for CPUs via genpd - managed by cpuidle-psci.
> > > + *
> > > + * Copyright (C) 2019 Linaro Ltd.
> > > + * Author: Ulf Hansson <ulf.hansson@linaro.org>
> > > + *
> > > + */
> > > +
> > > +#include <linux/cpu.h>
> > > +#include <linux/device.h>
> > > +#include <linux/kernel.h>
> > > +#include <linux/pm_domain.h>
> > > +#include <linux/pm_runtime.h>
> > > +#include <linux/psci.h>
> > > +
> > > +#include "cpuidle-psci.h"
> > > +
> > > +struct device *psci_dt_attach_cpu(int cpu)
> > > +{
> > > +     struct device *dev;
> > > +
> > > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > > +     if (!psci_has_osi_support())
> > > +             return NULL;
> > > +
> > > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> >
> > Hello Ulf,
> >
> > here you use dev_pm_domain_attach_by_name(), which will call
> > genpd_dev_pm_attach_by_name(), which will call genpd_dev_pm_attach_by_id(),
> > which will call __genpd_dev_pm_attach(virt_dev, dev, index, false);
> > the last argument is power_on, which here is always set to false.
> >
> > In older versions of your patch series, psci_dt_attach_cpu() called
> > dev_pm_domain_attach(dev, true), where the last argument is power_on.
> > Interestingly enough (for the non-ACPI case), dev_pm_domain_attach()
> > ignores the power_on parameter, and simply calls genpd_dev_pm_attach(dev);
> > which will call __genpd_dev_pm_attach(dev, dev, 0, true);
> > the last argument is power_on, which here is always set to true.
> >
> > In other words, your previous patch series always powered on the power
> > domain, while the newer versions do not. Is this change intentional?
> 
> Wow, thanks for an in-depth review!
> 
> Yes, the change is intentional.
> 
> If the device is attached via dev_pm_domain_attach(), genpd needs to
> power on the PM domain, due to legacy reasons (from behaviours by
> drivers/subsystem).
> 
> This isn't the case when the device is attached through
> dev_pm_domain_attach_by_*(), as there is no legacy to care about.
> 
> > Perhaps psci_dt_attach_cpu() should call dev_to_genpd(dev)->power_on()
> > after attaching the power domain? (In order to be consistent with the
> > previous behavior of this patch series.)
> 
> After calling dev_pm_domain_attach_by_name, I am calling
> pm_runtime_get_sync() if the cpu is online, which means the
> corresponding genpd will be powered on - but then, only when actually
> needed.
> 
> The old behaviour actually relied on the late_initcall
> genpd_power_off_unused(), to power off the genpd, in case the CPU
> device was offline.
> 
> In other words, the new behaviour is even slightly better. Does it make sense?

Yes, thank you!

pm_runtime_get_sync() will call genpd_runtime_resume(),
which calls genpd_power_on().


Kind regards,
Niklas

> > > +     if (IS_ERR_OR_NULL(dev))
> > > +             return dev;
> > > +
> > > +     pm_runtime_irq_safe(dev);
> > > +     if (cpu_online(cpu))
> > > +             pm_runtime_get_sync(dev);
> > > +
> > > +     return dev;
> > > +}
> > > diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
> > > new file mode 100644
> > > index 000000000000..0cadbb71dc55
> > > --- /dev/null
> > > +++ b/drivers/cpuidle/cpuidle-psci.h
> > > @@ -0,0 +1,12 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +
> > > +#ifndef __CPUIDLE_PSCI_H
> > > +#define __CPUIDLE_PSCI_H
> > > +
> > > +#ifdef CONFIG_PM_GENERIC_DOMAINS_OF
> > > +struct device *psci_dt_attach_cpu(int cpu);
> > > +#else
> > > +static inline struct device *psci_dt_attach_cpu(int cpu) { return NULL; }
> > > +#endif
> > > +
> > > +#endif /* __CPUIDLE_PSCI_H */
> > > --
> > > 2.17.1
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
