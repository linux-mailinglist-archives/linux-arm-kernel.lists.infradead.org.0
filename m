Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E0AE36F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvFboy1C5CSgJTu/bc2v63RD2zfZFWOjOKKK9xO+jwE=; b=aSDMxUihFjWBMG
	rjpBHqa3fFK7Q/BaWndWcPKTzi+aO/dLXAesA6NgzmF09Mvk03W0j5dTHCDaQPFHFD4wlgInMFYpu
	qnw7GKHw1LHKaWaA1uAWA90ztsmwQCXopa7nCBJ8YvrRxuvF4vtTRzvRs1dm76kFi4m8S9dvJygNv
	ZxEDg7LGWDQpkDMlxHIVS22DFFOgvAPDUuBK7cMLRf30dwMbyBpva30LuiD1QVMDG06TI/QFISHH+
	82KOl2cXw06+vPOs2sb9+wQ/CxilS8M5V8xsLCEHoiv4UpX/4gXHX9NYmNbAvZWi26zTGTm15XtMH
	kBkBq5F8+TaFpOrgarNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfJr-0000sU-9k; Thu, 24 Oct 2019 15:46:35 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfJh-0000rK-7w
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:46:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1933328;
 Thu, 24 Oct 2019 08:46:13 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F016A3F71F;
 Thu, 24 Oct 2019 08:46:11 -0700 (PDT)
Date: Thu, 24 Oct 2019 16:46:05 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 09/13] cpuidle: psci: Add support for PM domains by using
 genpd
Message-ID: <20191024154605.GA22036@bogus>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-10-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010113937.15962-10-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_084625_371664_4E262136 
X-CRM114-Status: GOOD (  26.69  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 01:39:33PM +0200, Ulf Hansson wrote:
> When the hierarchical CPU topology layout is used in DT and the PSCI OSI
> mode is supported by the PSCI FW, let's initialize a corresponding PM
> domain topology by using genpd. This enables a CPU and a group of CPUs,
> when attached to the topology, to be power-managed accordingly.
>
> To trigger the attempt to initialize the genpd data structures a
> subsys_initcall is used, which should be early enough to allow CPUs, but
> also other devices to be attached.
>
> The initialization consists of parsing the PSCI OF node for the topology
> and the "domain idle states" DT bindings. In case the idle states are
> compatible with "domain-idle-state", the initialized genpd becomes
> responsible of selecting an idle state for the PM domain, via assigning it
> genpd governor.
>
> Note that, a successful initialization of the genpd data structures, is
> followed by a call to psci_set_osi_mode(), as to try to enable the OSI mode
> in the PSCI FW. In case this fails, we fall back into a degraded mode
> rather than bailing out and returning an error code.
>
> Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  drivers/cpuidle/Makefile              |   4 +-
>  drivers/cpuidle/cpuidle-psci-domain.c | 281 ++++++++++++++++++++++++++
>  2 files changed, 284 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
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
>
>  ###############################################################################
>  # MIPS drivers
> diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> new file mode 100644
> index 000000000000..3f5143ccc3e0
> --- /dev/null
> +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> @@ -0,0 +1,281 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PM domains for CPUs via genpd - managed by cpuidle-psci.
> + *
> + * Copyright (C) 2019 Linaro Ltd.
> + * Author: Ulf Hansson <ulf.hansson@linaro.org>
> + *
> + */
> +
> +#define pr_fmt(fmt) "CPUidle PSCI: " fmt
> +
> +#include <linux/device.h>
> +#include <linux/kernel.h>
> +#include <linux/pm_domain.h>
> +#include <linux/psci.h>
> +#include <linux/slab.h>
> +#include <linux/string.h>
> +
> +#include "cpuidle-psci.h"
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
> +	if (!osi_mode_enabled)
> +		return -EBUSY;
> +
> +	if (!state->data)
> +		return 0;
> +
> +	/* OSI mode is enabled, set the corresponding domain state. */
> +	pd_state = state->data;
> +	psci_set_domain_state(*pd_state);
> +
> +	return 0;
> +}
> +
> +static int __init psci_pd_parse_state_nodes(struct genpd_power_state *states,
> +					int state_count)
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
> +static int __init psci_pd_parse_states(struct device_node *np,
> +			struct genpd_power_state **states, int *state_count)
> +{
> +	int ret;
> +
> +	/* Parse the domain idle states. */
> +	ret = of_genpd_parse_idle_states(np, states, state_count);
> +	if (ret)
> +		return ret;
> +
> +	/* Fill out the PSCI specifics for each found state. */
> +	ret = psci_pd_parse_state_nodes(*states, *state_count);
> +	if (ret)
> +		kfree(*states);
> +
> +	return ret;
> +}
> +
> +static void psci_pd_free_states(struct genpd_power_state *states,
> +				unsigned int state_count)
> +{
> +	int i;
> +
> +	for (i = 0; i < state_count; i++)
> +		kfree(states[i].data);
> +	kfree(states);
> +}
> +
> +static int __init psci_pd_init(struct device_node *np)
> +{
> +	struct generic_pm_domain *pd;
> +	struct psci_pd_provider *pd_provider;
> +	struct dev_power_governor *pd_gov;
> +	struct genpd_power_state *states = NULL;
> +	int ret = -ENOMEM, state_count = 0;
> +
> +	pd = kzalloc(sizeof(*pd), GFP_KERNEL);
> +	if (!pd)
> +		goto out;
> +
> +	pd_provider = kzalloc(sizeof(*pd_provider), GFP_KERNEL);
> +	if (!pd_provider)
> +		goto free_pd;
> +
> +	pd->name = kasprintf(GFP_KERNEL, "%pOF", np);

I was bit confused initially and hence asked if we can name it better in
earlier patch. Now IIUC, "power-domain-names" are for the pd consumers to
attach to them by names using genpd_dev_pm_attach_by_name and not the
name of the power domain provider.

> +	if (!pd->name)
> +		goto free_pd_prov;
> +
> +	/*
> +	 * Parse the domain idle states and let genpd manage the state selection
> +	 * for those being compatible with "domain-idle-state".
> +	 */
> +	ret = psci_pd_parse_states(np, &states, &state_count);
> +	if (ret)
> +		goto free_name;
> +
> +	pd->free_states = psci_pd_free_states;
> +	pd->name = kbasename(pd->name);

Not sure as I have not used it before, but can't you directly use %pOFn
above to do the same ?

I haven't gone through all the error handling paths in detail. I will keep
it for next time ;)

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
