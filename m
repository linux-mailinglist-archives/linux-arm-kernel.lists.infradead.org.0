Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFDBFE3B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 18:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rPWXGCTqa/4eglSq2Ij8iHblqWNzemSILNEKl+a7vk=; b=spbVVD39BpA/Uv
	eAE20l05EdZvGIW4FgKgyZzkjkyQocFvpO9+AWcuwjFrVR59isze//t2wH5bQVyFjSwd5FEpK4Iyw
	ey9FYhhSJUJcEw8wdskfCmAb0NYrZ/B4zvc55tsI6/6APmqeuhjLz8oVmfUoZt3mEP8uqTL86dNem
	hXTwmc2XSwHGJ8W15IKkBuoZYZt+BNMKzJ04xOnaj6DYRrnhGqGnP0lOYLuJCe+0pdHghzELpTyrx
	EdInpckxGW7zBk2Utcy2KgvvPHlijQAYY9n1hcB/IUjQzOIsvwiAftkRF6fyrBTzPq9rbreb1C9bp
	qsuEpZmYfBEJbupVF3OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVfAT-0002E8-Py; Fri, 15 Nov 2019 17:13:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVfAD-0002DD-Es
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 17:13:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D726531B;
 Fri, 15 Nov 2019 09:13:40 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D05C03F6C4;
 Fri, 15 Nov 2019 09:13:38 -0800 (PST)
Date: Fri, 15 Nov 2019 17:13:36 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 08/13] cpuidle: psci: Add a helper to attach a CPU to
 its PM domain
Message-ID: <20191115171336.GC27170@bogus>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-9-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029164438.17012-9-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_091341_581969_EA302D1C 
X-CRM114-Status: GOOD (  25.10  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 05:44:33PM +0100, Ulf Hansson wrote:
> Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> CPU number as an in-parameter and tries to attach the CPU's struct device
> to its corresponding PM domain.
>
> Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> specify "psci" as the "name" of the PM domain to attach to. Additionally,
> let's also prepare the attached device to be power managed via runtime PM.
>
> Note that, the implementation of the new helper function is in a new
> separate c-file, which may seems a bit too much at this point. However,
> subsequent changes that implements the remaining part of the PM domain
> support for cpuidle-psci, helps to justify this split.
>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes in v2:
> 	- Reorder patch to be the first one that starts adding the PM domain
> 	  support.
> 	- Rebased.
>
> ---
>  drivers/cpuidle/Makefile              |  4 ++-
>  drivers/cpuidle/cpuidle-psci-domain.c | 36 +++++++++++++++++++++++++++
>  drivers/cpuidle/cpuidle-psci.h        | 12 +++++++++
>  3 files changed, 51 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
>  create mode 100644 drivers/cpuidle/cpuidle-psci.h
>
> diff --git a/drivers/cpuidle/Makefile b/drivers/cpuidle/Makefile
> index ee70d5cc5b99..cc8c769d7fa9 100644
> --- a/drivers/cpuidle/Makefile
> +++ b/drivers/cpuidle/Makefile
> @@ -21,7 +21,9 @@ obj-$(CONFIG_ARM_U8500_CPUIDLE)         += cpuidle-ux500.o
>  obj-$(CONFIG_ARM_AT91_CPUIDLE)          += cpuidle-at91.o
>  obj-$(CONFIG_ARM_EXYNOS_CPUIDLE)        += cpuidle-exynos.o
>  obj-$(CONFIG_ARM_CPUIDLE)		+= cpuidle-arm.o
> -obj-$(CONFIG_ARM_PSCI_CPUIDLE)		+= cpuidle-psci.o
> +obj-$(CONFIG_ARM_PSCI_CPUIDLE)		+= cpuidle_psci.o
> +cpuidle_psci-y				:= cpuidle-psci.o
> +cpuidle_psci-$(CONFIG_PM_GENERIC_DOMAINS_OF) += cpuidle-psci-domain.o

This was super confusing for a minute until I noticed the difference
between _ and - used here. I know such pattern is used in the kernel,
just that it's difficult to notice on first go :)

>
>  ###############################################################################
>  # MIPS drivers
> diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> new file mode 100644
> index 000000000000..bc7df4dc0686
> --- /dev/null
> +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PM domains for CPUs via genpd - managed by cpuidle-psci.
> + *
> + * Copyright (C) 2019 Linaro Ltd.
> + * Author: Ulf Hansson <ulf.hansson@linaro.org>
> + *
> + */
> +
> +#include <linux/cpu.h>
> +#include <linux/device.h>
> +#include <linux/kernel.h>
> +#include <linux/pm_domain.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/psci.h>
> +
> +#include "cpuidle-psci.h"
> +
> +struct device *psci_dt_attach_cpu(int cpu)
> +{
> +	struct device *dev;
> +
> +	/* Currently limit the hierarchical topology to be used in OSI mode. */
> +	if (!psci_has_osi_support())
> +		return NULL;
> +
> +	dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> +	if (IS_ERR_OR_NULL(dev))
> +		return dev;
> +
> +	pm_runtime_irq_safe(dev);
> +	if (cpu_online(cpu))
> +		pm_runtime_get_sync(dev);

I probably have to wait till I see the user of this, but until then I
assume we have some way to deal with CPU HP machinery for this.

Other than that, it looks fine. I will get back to this to ack or with
more questions as I review further.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
