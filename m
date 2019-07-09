Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8BF638AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4xGHwsydnZKFBLvHAek05Z/Ozjj6BqzEoXEDyDrv14=; b=n4W6+mzFqIcOzJ
	wuirIm1l7R8XxUEp8h4VDnBdcmLNZU4LFX/4d3RCsdEKe9y3gEYttt55M7lLnhnPUOEVGZYxgxG6B
	nd288ppsKdu047e+0kDXSsoIlM8lX7xy51b8DhBSlhH5ZnVvDTY89g3TQiUHoNsovwqBsST2faYqj
	Rtajce5Nsey8nzc6PoF168pE7Z1T1Kiu4wJVJQFgSwhNJRypvnOjcr5pKOJmV+FxgeRjZzWDvSa5U
	KLTepFaAnFGlV2n91TUl57PCDAyG/uMkw86TqTiEimtVZF/gHRvJ8t0o3//jEYG6sjSUEwy5PfYqn
	9pMnScxGBE40skyBy+0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hks62-0004jN-Mh; Tue, 09 Jul 2019 15:31:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hks5r-0004ih-OK
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:31:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD0DF2B;
 Tue,  9 Jul 2019 08:31:45 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3389F3F246;
 Tue,  9 Jul 2019 08:31:43 -0700 (PDT)
Date: Tue, 9 Jul 2019 16:31:38 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 10/18] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20190709153138.GA22871@e121166-lin.cambridge.arm.com>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-11-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513192300.653-11-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_083147_880940_C6EA2EDD 
X-CRM114-Status: GOOD (  29.01  )
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm@vger.kernel.org, Lina Iyer <ilina@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 09:22:52PM +0200, Ulf Hansson wrote:
> If the hierarchical CPU topology is used, but the OS initiated mode isn't
> supported, we need to rely solely on the regular cpuidle framework to
> manage the idle state selection, rather than using genpd and its governor.
> 
> For this reason, introduce a new PSCI DT helper function,
> psci_dt_pm_domains_parse_states(), which parses and converts the
> hierarchically described domain idle states from DT, into regular flattened
> cpuidle states. The converted states are added to the existing cpuidle
> driver's array of idle states, which make them available for cpuidle.
> 
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
> 
> Changes:
> 	- Some simplification of the code.
> 
> ---
>  drivers/firmware/psci/psci.h           |   5 ++
>  drivers/firmware/psci/psci_pm_domain.c | 118 +++++++++++++++++++++++++
>  2 files changed, 123 insertions(+)
> 
> diff --git a/drivers/firmware/psci/psci.h b/drivers/firmware/psci/psci.h
> index 00d2e3dcef49..c36e0e6649e9 100644
> --- a/drivers/firmware/psci/psci.h
> +++ b/drivers/firmware/psci/psci.h
> @@ -3,6 +3,7 @@
>  #ifndef __PSCI_H
>  #define __PSCI_H
>  
> +struct cpuidle_driver;
>  struct device_node;
>  
>  int psci_set_osi_mode(void);
> @@ -13,8 +14,12 @@ void psci_set_domain_state(u32 state);
>  int psci_dt_parse_state_node(struct device_node *np, u32 *state);
>  #ifdef CONFIG_PM_GENERIC_DOMAINS_OF
>  int psci_dt_init_pm_domains(struct device_node *np);
> +int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
> +		struct device_node *cpu_node, u32 *psci_states);
>  #else
>  static inline int psci_dt_init_pm_domains(struct device_node *np) { return 0; }
> +static inline int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
> +		struct device_node *cpu_node, u32 *psci_states) { return 0; }
>  #endif
>  #endif
>  
> diff --git a/drivers/firmware/psci/psci_pm_domain.c b/drivers/firmware/psci/psci_pm_domain.c
> index 3c6ca846caf4..3aa645dba81b 100644
> --- a/drivers/firmware/psci/psci_pm_domain.c
> +++ b/drivers/firmware/psci/psci_pm_domain.c
> @@ -14,6 +14,10 @@
>  #include <linux/pm_domain.h>
>  #include <linux/slab.h>
>  #include <linux/string.h>
> +#include <linux/cpuidle.h>
> +#include <linux/cpu_pm.h>
> +
> +#include <asm/cpuidle.h>
>  
>  #include "psci.h"
>  
> @@ -104,6 +108,53 @@ static void psci_pd_free_states(struct genpd_power_state *states,
>  	kfree(states);
>  }
>  
> +static int psci_pd_enter_pc(struct cpuidle_device *dev,
> +			struct cpuidle_driver *drv, int idx)
> +{
> +	return CPU_PM_CPU_IDLE_ENTER(arm_cpuidle_suspend, idx);
> +}
> +
> +static void psci_pd_enter_s2idle_pc(struct cpuidle_device *dev,
> +			struct cpuidle_driver *drv, int idx)
> +{
> +	psci_pd_enter_pc(dev, drv, idx);
> +}
> +
> +static void psci_pd_convert_states(struct cpuidle_state *idle_state,
> +			u32 *psci_state, struct genpd_power_state *state)
> +{
> +	u32 *state_data = state->data;
> +	u64 target_residency_us = state->residency_ns;
> +	u64 exit_latency_us = state->power_on_latency_ns +
> +			state->power_off_latency_ns;
> +
> +	*psci_state = *state_data;
> +	do_div(target_residency_us, 1000);
> +	idle_state->target_residency = target_residency_us;
> +	do_div(exit_latency_us, 1000);
> +	idle_state->exit_latency = exit_latency_us;
> +	idle_state->enter = &psci_pd_enter_pc;
> +	idle_state->enter_s2idle = &psci_pd_enter_s2idle_pc;
> +	idle_state->flags |= CPUIDLE_FLAG_TIMER_STOP;

This is arbitrary and not necessarily true.

I think that this patch is useful to represent my reservations about the
current approach. As a matter of fact, idle state entry will always be a
CPUidle decision.

You only need PM domain information to understand when all CPUs
in a power domain are actually idle but that's all genPD can do
in this respect.

I think this patchset would be much simpler if both CPUidle and
genPD governor would work on *one* set of idle states, globally
indexed (and that would be true for PSCI suspend parameters too).

To work with a unified set of idle states between CPUidle and genPD
(tossing some ideas around):

- We can implement a genPD CPUidle governor that in its select method
  takes into account genPD information (for instance by avoiding
  selection of idle states that require multiple cpus to be in idle
  to be effectively active)
- We can use genPD to enable/disable CPUidle states through runtime
  PM information

There may be other ways. My point is that current code, with two (or
more if the hierarchy grows) sets of idle states across two subsystems
(CPUidle and genPD) is not very well defined and honestly very hard to
grasp and prone to errors.

> +
> +	strncpy(idle_state->name, to_of_node(state->fwnode)->name,
> +		CPUIDLE_NAME_LEN - 1);
> +	strncpy(idle_state->desc, to_of_node(state->fwnode)->name,
> +		CPUIDLE_NAME_LEN - 1);
> +}
> +
> +static bool psci_pd_is_provider(struct device_node *np)
> +{
> +	struct psci_pd_provider *pd_prov, *it;
> +
> +	list_for_each_entry_safe(pd_prov, it, &psci_pd_providers, link) {
> +		if (pd_prov->node == np)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  static int psci_pd_init(struct device_node *np)
>  {
>  	struct generic_pm_domain *pd;
> @@ -265,4 +316,71 @@ int psci_dt_init_pm_domains(struct device_node *np)
>  	pr_err("failed to create CPU PM domains ret=%d\n", ret);
>  	return ret;
>  }
> +
> +int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
> +			struct device_node *cpu_node, u32 *psci_states)
> +{
> +	struct genpd_power_state *pd_states;
> +	struct of_phandle_args args;
> +	int ret, pd_state_count, i, state_idx, psci_idx;
> +	u32 cpu_psci_state = psci_states[drv->state_count - 2];

This (-2) is very dodgy and I doubt it would work on hierarchies going
above "cluster" level.

As I say above, I think we should work towards a single array of
idle states to be selected by a CPUidle governor using genPD
runtime information to bias the results according to the number
of CPUs in a genPD that entered/exit idle.

To be more precise, all idles states should be "domain-idle-state"
compatible, even the CPU ones, the distinction between what CPUidle
and genPD manage is a bit stretched IMO in this patchset.

We will have a chance to talk about this but I thought I would
comment publically if anyone else is willing to chime in, this
is not a PSCI problem at all, it is a CPUidle/genPD coexistence
design problem which is much broader.

Lorenzo

> +	struct device_node *np = of_node_get(cpu_node);
> +
> +
> +	/* Walk the CPU topology to find compatible domain idle states. */
> +	while (np) {
> +		ret = of_parse_phandle_with_args(np, "power-domains",
> +					"#power-domain-cells", 0, &args);
> +		of_node_put(np);
> +		if (ret)
> +			return 0;
> +
> +		np = args.np;
> +
> +		/* Verify that the node represents a psci pd provider. */
> +		if (!psci_pd_is_provider(np)) {
> +			of_node_put(np);
> +			return 0;
> +		}
> +
> +		/* Parse for compatible domain idle states. */
> +		ret = psci_pd_parse_states(np, &pd_states, &pd_state_count);
> +		if (ret) {
> +			of_node_put(np);
> +			return ret;
> +		}
> +
> +		i = 0;
> +		while (i < pd_state_count) {
> +
> +			state_idx = drv->state_count;
> +			if (state_idx >= CPUIDLE_STATE_MAX) {
> +				pr_warn("exceeding max cpuidle states\n");
> +				of_node_put(np);
> +				return 0;
> +			}
> +
> +			/* WFI state is not part of psci_states. */
> +			psci_idx = state_idx - 1 + i;
> +			psci_pd_convert_states(&drv->states[state_idx + i],
> +					&psci_states[psci_idx], &pd_states[i]);
> +
> +			/*
> +			 * In the hierarchical CPU topology the master PM domain
> +			 * idle state's DT property, "arm,psci-suspend-param",
> +			 * don't contain the bits for the idle state of the CPU,
> +			 * let's add those here.
> +			 */
> +			psci_states[psci_idx] |= cpu_psci_state;
> +			pr_debug("psci-power-state %#x index %d\n",
> +				psci_states[psci_idx], psci_idx);
> +
> +			drv->state_count++;
> +			i++;
> +		}
> +		psci_pd_free_states(pd_states, pd_state_count);
> +	}
> +
> +	return 0;
> +}
>  #endif
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
