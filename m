Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC7C38F07
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CbdvU+LwfxbqY7iATk/ClNLkB3N6oT9SUf1GDnwbXEE=; b=XR9JEXlYDF/rt/
	RQuLpa+bXD+uX6GV9cbCnpN42gVDgwOw0yLcR7EQq7SvVsWJ8bccqEkJaVyT6Om6YC+C/wR7wFDDg
	b6Hp1YaRgOA0P8q6hPJODMdP5K3dijFcdVQKCwHrWf1DuIccwwxgaeCntuuWtRlXaah3sSlvyzvYc
	Ca3sIymac+hFIiEHXKcatOppnO7dTJoDj1xNECuURCyds4W42JXD6gAPCNRhBvzr0aQdFRw0add41
	Txq2BnLeFj8RgvUl1ZO5iHBtdZsNKAz4xeTlitnSDLsgoMfhDFR/1xtdUHCbfpe+RDb1jgNdQ7u6U
	82FaJQoboX10qFnqSGNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGmk-0007RM-Ag; Fri, 07 Jun 2019 15:28:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGmb-0007QU-40
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:27:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B3AC346;
 Fri,  7 Jun 2019 08:27:56 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F6203F718;
 Fri,  7 Jun 2019 08:27:53 -0700 (PDT)
Date: Fri, 7 Jun 2019 16:27:51 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 09/18] drivers: firmware: psci: Add support for PM
 domains using genpd
Message-ID: <20190607152751.GH15577@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-10-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513192300.653-10-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_082757_253917_4D393D2A 
X-CRM114-Status: GOOD (  33.49  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Lina Iyer <ilina@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Amit Kucheria <amit.kucheria@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Niklas Cassel <niklas.cassel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 09:22:51PM +0200, Ulf Hansson wrote:
> When the hierarchical CPU topology layout is used in DT, we need to setup
> the corresponding PM domain data structures, as to allow a CPU and a group
> of CPUs to be power managed accordingly. Let's enable this by deploying
> support through the genpd interface.
> 
> Additionally, when the OS initiated mode is supported by the PSCI FW, let's
> also parse the domain idle states DT bindings as to make genpd responsible
> for the state selection, when the states are compatible with
> "domain-idle-state". Otherwise, when only Platform Coordinated mode is
> supported, we rely solely on the state selection to be managed through the
> regular cpuidle framework.
> 
> If the initialization of the PM domain data structures succeeds and the OS
> initiated mode is supported, we try to switch to it. In case it fails,
> let's fall back into a degraded mode, rather than bailing out and returning
> an error code.
> 
> Due to that the OS initiated mode may become enabled, we need to adjust to
> maintain backwards compatibility for a kernel started through a kexec call.
> Do this by explicitly switch to Platform Coordinated mode during boot.
> 
> Finally, the actual initialization of the PM domain data structures, is
> done via calling the new shared function, psci_dt_init_pm_domains().
> However, this is implemented by subsequent changes.
> 
> Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
> 
> Changes:
> 	- Simplify code setting domain_state at power off.
> 	- Use the genpd ->free_state() callback to manage freeing of states.
> 	- Fixup a bogus while loop.
> 
> ---
>  drivers/firmware/psci/Makefile         |   2 +-
>  drivers/firmware/psci/psci.c           |   7 +-
>  drivers/firmware/psci/psci.h           |   5 +
>  drivers/firmware/psci/psci_pm_domain.c | 268 +++++++++++++++++++++++++
>  4 files changed, 280 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/firmware/psci/psci_pm_domain.c
> 
> diff --git a/drivers/firmware/psci/Makefile b/drivers/firmware/psci/Makefile
> index 1956b882470f..ff300f1fec86 100644
> --- a/drivers/firmware/psci/Makefile
> +++ b/drivers/firmware/psci/Makefile
> @@ -1,4 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
>  #
> -obj-$(CONFIG_ARM_PSCI_FW)	+= psci.o
> +obj-$(CONFIG_ARM_PSCI_FW)	+= psci.o psci_pm_domain.o
>  obj-$(CONFIG_ARM_PSCI_CHECKER)	+= psci_checker.o
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 0e91d864e346..bfef300b7ebe 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -721,9 +721,14 @@ static int __init psci_1_0_init(struct device_node *np)
>  	if (err)
>  		return err;
>  
> -	if (psci_has_osi_support())
> +	if (psci_has_osi_support()) {
>  		pr_info("OSI mode supported.\n");
>  
> +		/* Make sure we default to PC mode. */
> +		invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
> +			       PSCI_1_0_SUSPEND_MODE_PC, 0, 0);
> +	}
> +

This can go on it's own, any issues with that ?

>  	return 0;
>  }
>  
> diff --git a/drivers/firmware/psci/psci.h b/drivers/firmware/psci/psci.h
> index f2277c3ad405..00d2e3dcef49 100644
> --- a/drivers/firmware/psci/psci.h
> +++ b/drivers/firmware/psci/psci.h
> @@ -11,6 +11,11 @@ bool psci_has_osi_support(void);
>  #ifdef CONFIG_CPU_IDLE
>  void psci_set_domain_state(u32 state);
>  int psci_dt_parse_state_node(struct device_node *np, u32 *state);
> +#ifdef CONFIG_PM_GENERIC_DOMAINS_OF
> +int psci_dt_init_pm_domains(struct device_node *np);
> +#else
> +static inline int psci_dt_init_pm_domains(struct device_node *np) { return 0; }
> +#endif
>  #endif
>  
>  #endif /* __PSCI_H */
> diff --git a/drivers/firmware/psci/psci_pm_domain.c b/drivers/firmware/psci/psci_pm_domain.c
> new file mode 100644
> index 000000000000..3c6ca846caf4
> --- /dev/null
> +++ b/drivers/firmware/psci/psci_pm_domain.c
> @@ -0,0 +1,268 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PM domains for CPUs via genpd - managed by PSCI.
> + *
> + * Copyright (C) 2019 Linaro Ltd.
> + * Author: Ulf Hansson <ulf.hansson@linaro.org>
> + *
> + */
> +
> +#define pr_fmt(fmt) "psci: " fmt
> +
> +#include <linux/device.h>
> +#include <linux/kernel.h>
> +#include <linux/pm_domain.h>
> +#include <linux/slab.h>
> +#include <linux/string.h>
> +
> +#include "psci.h"
> +
> +#if defined(CONFIG_CPU_IDLE) && defined(CONFIG_PM_GENERIC_DOMAINS_OF)
> +
> +struct psci_pd_provider {
> +	struct list_head link;
> +	struct device_node *node;
> +};
> +
> +static LIST_HEAD(psci_pd_providers);
> +static bool osi_mode_enabled;
> +
> +static int psci_pd_power_off(struct generic_pm_domain *pd)
> +{
> +	struct genpd_power_state *state = &pd->states[pd->state_idx];
> +	u32 *pd_state;
> +
> +	/* If we have failed to enable OSI mode, then abort power off. */
> +	if (psci_has_osi_support() && !osi_mode_enabled)
> +		return -EBUSY;
> +
> +	if (!state->data)
> +		return 0;
> +
> +	/* When OSI mode is enabled, set the corresponding domain state. */
> +	pd_state = state->data;
> +	psci_set_domain_state(*pd_state);
> +
> +	return 0;
> +}
> +
> +static int psci_pd_parse_state_nodes(struct genpd_power_state *states,
> +				int state_count)
> +{
> +	int i, ret;
> +	u32 psci_state, *psci_state_buf;
> +
> +	for (i = 0; i < state_count; i++) {
> +		ret = psci_dt_parse_state_node(to_of_node(states[i].fwnode),
> +					&psci_state);
> +		if (ret)
> +			goto free_state;
> +
> +		psci_state_buf = kmalloc(sizeof(u32), GFP_KERNEL);
> +		if (!psci_state_buf) {
> +			ret = -ENOMEM;
> +			goto free_state;
> +		}
> +		*psci_state_buf = psci_state;
> +		states[i].data = psci_state_buf;
> +	}
> +
> +	return 0;
> +
> +free_state:
> +	i--;
> +	for (; i >= 0; i--)
> +		kfree(states[i].data);
> +	return ret;
> +}
> +
> +static int psci_pd_parse_states(struct device_node *np,
> +			struct genpd_power_state **states, int *state_count)
> +{
> +	int ret;
> +
> +	/* Parse the domain idle states. */
> +	ret = of_genpd_parse_idle_states(np, states, state_count);
> +	if (ret)
> +		return ret;
> +


Lots of things here in this file are not psci specific. They can be
moved as generic CPU PM domain support.

> +	/* Fill out the PSCI specifics for each found state. */
> +	ret = psci_pd_parse_state_nodes(*states, *state_count);
> +	if (ret)
> +		kfree(*states);
> +

Things like above are PSCI.

I am trying to see if we can do something to achieve partitions like we
have today: psci.c just has PSCI specific stuff and dt_idle_states.c
deals with generic idle stuff.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
