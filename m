Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF3010059F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:29:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfaFeIuPUK/YL9ysEugLROKTNSzeBA6HLUpKeJwywa4=; b=NTcthHs5QP60V9
	KY6wjh2zBVrk1BnpCOfzc9fozfmK7Jd+gkHhGIhEsXtdjggQF2ECch9FxGuXVkZaLHoC1EpmJYh7T
	pypACasr46PqqO0QtaPtBPMhM13/bUcZfk7CscHkBFo/oU46yyMDr6FuE6jGe18QPngJvTMZGS7yT
	IVxzRkx9uO4F5PKXfz/drq5zGxJUTdCrpPiLCCgRpDRxtCcqDCVRwqupaQ1YvhWXn+N0FAQOhAmhU
	VGnBkdbplH5kF9wjm7sV85XheOBZd6GwpXiAH2iUujlHk14u2p01fRCnslfjrb4TScurLuPaI3GAA
	Sr1uH9x8XsaPRNRQsiVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWg9q-0001DK-GF; Mon, 18 Nov 2019 12:29:30 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWg9T-0000yy-VY
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 12:29:09 +0000
Received: by mail-vk1-xa42.google.com with SMTP id e205so4039509vke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 04:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U/Dzry7dkP8u9lgjMIg9ewtJsEx1dOyW/4RrZyMxcwg=;
 b=BwopXKkvUAS0EsnuPjioJ+LUEnpqkyiTJbK+tzbwnWZ0QyXSFXcw6+wZo/RWOI15OP
 bLQ5seVn7kEWfk3jqwjl8aznVCVYDr3gZrnAY88ZigjS379xYGIwMwgxZrwi5c7XBnRd
 R1qgFS4vJ/rjrCBcpolaaitww7T6o3FADj118wcn9mwW9O6xYk3th1Dp32SnEa8KRUMI
 gQV/QKhOo9F0FDGv5BY3bMTzrntVQeA/KPqMdNvLRJ5itgB7g9TAdYnz+bLzcdSFHv9o
 jc5C/hywJxJXHL0Qtyv3Jgnzwo4gmR2UBCwhRLfiADd61Fmed1fj/Q2BwX9i8IlcxJw6
 XPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U/Dzry7dkP8u9lgjMIg9ewtJsEx1dOyW/4RrZyMxcwg=;
 b=KoxS/ABraz9/whqasXacD5LqWQzyLteQ/rX+c8drMJuMD/R4NkD944kUqmJFC5vS3+
 EhtGvXli2vS6OwwCAApXlmoq4VhsdVqlQLjrCJzxbRGzq8J2sumVhGOBWGiohKigCA8g
 I7tFspk16IQSv6r0kKVhS2f3kLELPgYjfujddVql9gq5BWYYwa2vlffC1DSBzhSRVLZT
 9ljDQeQunMliVO53kTk2tB4iNoHR8prV9VktzldxICUkEUa/UB6p5lXA6agyIWt6TjnX
 IPnNLIN+4I/lm2Y5Yd5ks+8k0F64NhPV16TQmGYRDpWoTAQ60+q9CgLpX+fRxo2us6lM
 FfMg==
X-Gm-Message-State: APjAAAU0eLwY9520vTnApThn/uu9h9Yb5Jsu3ON6qpb0Alx6IR/+KTC8
 /WEaEvc6n5b5C7X1erWzy0iXTEvFrurBZStqvkXc2Q==
X-Google-Smtp-Source: APXvYqz4jVOHFzimlFTeSKI08BoNNlhIhBV2zNSqr4gbAhvZZ0RFr2YfD9/jeZsJ45egP1Vtmo5ZajRTJswbmlREPO4=
X-Received: by 2002:ac5:cd47:: with SMTP id n7mr8716291vkm.101.1574080146192; 
 Mon, 18 Nov 2019 04:29:06 -0800 (PST)
MIME-Version: 1.0
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-9-ulf.hansson@linaro.org> <20191115171336.GC27170@bogus>
In-Reply-To: <20191115171336.GC27170@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 18 Nov 2019 13:28:29 +0100
Message-ID: <CAPDyKFoqOPg_kfVTuENSh-m-cW_6M1H4Ma8=8dgPvK8_w4addw@mail.gmail.com>
Subject: Re: [PATCH v2 08/13] cpuidle: psci: Add a helper to attach a CPU to
 its PM domain
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_042908_048111_77BAC375 
X-CRM114-Status: GOOD (  28.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 Nov 2019 at 18:13, Sudeep Holla <sudeep.holla@arm.com> wrote:
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
>
> This was super confusing for a minute until I noticed the difference
> between _ and - used here. I know such pattern is used in the kernel,
> just that it's difficult to notice on first go :)
>
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
> > +     if (IS_ERR_OR_NULL(dev))
> > +             return dev;
> > +
> > +     pm_runtime_irq_safe(dev);
> > +     if (cpu_online(cpu))
> > +             pm_runtime_get_sync(dev);
>
> I probably have to wait till I see the user of this, but until then I
> assume we have some way to deal with CPU HP machinery for this.

Yes, I discussed this with Lorenzo at LPC as well. I did not include a
patch in the series using a CPU HP, simply because I am targeting to
land the basic support first.

For now, this means that the "cluster" will remain on even if there
are CPUs being put offline.

>
> Other than that, it looks fine. I will get back to this to ack or with
> more questions as I review further.

Great, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
