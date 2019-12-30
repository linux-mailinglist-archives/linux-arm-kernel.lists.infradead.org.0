Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7C812D210
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 17:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AnVMSI5INvoXoW/SEkGi+yHJ315hzuqQLf6KWBfjeA=; b=fa5dc11wCsKk+Y
	9VND4EcPNtb5GwGZ+GWq2SlMnit4Q0ap9gG52NOrcvqcy/lJIUpzi1Q0/SDkv7o3IdhQXYNN8Ecf3
	PbWn7DeYdMB0zxpE0bwfBBmj1MF+nG7TD7CQzyzoCiWaLIAc3N0ilnajfZC36zNs0ja3GZaCCKmcv
	pCBggCDZ8Y0lcyDDy4WnPMMrjFdHG0Dx2FIIer8VJPq/1m5xeAJoli62+Pu3fwWoK95Y5qMT5vJcC
	uWLnZYpQC5vE4xuPQ5cNZOBHlK2dtD9NIjHErdsEsN0olk+0lTyjC6KXxMAkXjiXCK6CBBzg4DVTY
	XP4Hz6RfaUHkwBWp6XWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ily4T-0003Is-9A; Mon, 30 Dec 2019 16:39:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ily4J-0003IT-1f
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 16:39:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61FA331B;
 Mon, 30 Dec 2019 08:38:58 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 675723F703;
 Mon, 30 Dec 2019 08:38:56 -0800 (PST)
Date: Mon, 30 Dec 2019 16:38:54 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v5 14/15] cpuidle: psci: Add support for PM domains by
 using genpd
Message-ID: <20191230163854.GB16256@bogus>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
 <20191230144402.30195-15-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191230144402.30195-15-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_083859_180399_8FD15BD2 
X-CRM114-Status: GOOD (  32.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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

On Mon, Dec 30, 2019 at 03:44:01PM +0100, Ulf Hansson wrote:
> When the hierarchical CPU topology layout is used in DT and the PSCI OSI
> mode is supported by the PSCI FW, let's initialize a corresponding PM
> domain topology by using genpd. This enables a CPU and a group of CPUs,
> when attached to the topology, to be power-managed accordingly.
> 
> To trigger the attempt to initialize the genpd data structures let's use a
> subsys_initcall, which should be early enough to allow CPUs, but also other
> devices to be attached.
> 
> The initialization consists of parsing the PSCI OF node for the topology
> and the "domain idle states" DT bindings. In case the idle states are
> compatible with "domain-idle-state", the initialized genpd becomes
> responsible of selecting an idle state for the PM domain, via assigning it
> a genpd governor.
> 
> Note that, a successful initialization of the genpd data structures, is
> followed by a call to psci_set_osi_mode(), as to try to enable the OSI mode
> in the PSCI FW. In case this fails, we fall back into a degraded mode
> rather than bailing out and returning error codes.
> 
> Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
> 
> Changes in v5:
> 	- Remove genpds in the error path, when enabling OSI failed.
> 	- Let psci_dt_attach_cpu() return NULL if OSI mode isn't enabled.
> 	- Make the osi_mode_enabled variable __initdata.
> 	- Drop some DT compatible strings, as PSCI v1.0 introduces OSI.
> 
> ---
>  drivers/cpuidle/cpuidle-psci-domain.c | 277 ++++++++++++++++++++++++++
>  drivers/cpuidle/cpuidle-psci.c        |   4 +-
>  drivers/cpuidle/cpuidle-psci.h        |   5 +
>  3 files changed, 284 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> index 87f881c21af1..423f03bbeb74 100644
> --- a/drivers/cpuidle/cpuidle-psci-domain.c
> +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> @@ -7,18 +7,295 @@
>   *
>   */
>  
> +#define pr_fmt(fmt) "CPUidle PSCI: " fmt
> +

Looks like a candidate for cpuidle-psci.h so that it's effective even for
cpuidle-psci.c, if you re-spin(I don't see any reasons to) or if you are
sending PR, you can fix-up this along with dropping data->dev :)

Anyways,

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

>  #include <linux/cpu.h>
>  #include <linux/device.h>
>  #include <linux/kernel.h>
>  #include <linux/pm_domain.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/psci.h>
> +#include <linux/slab.h>
> +#include <linux/string.h>
>  
>  #include "cpuidle-psci.h"
>  
> +struct psci_pd_provider {
> +	struct list_head link;
> +	struct device_node *node;
> +};
> +
> +static LIST_HEAD(psci_pd_providers);
> +static bool osi_mode_enabled __initdata;
> +
> +static int psci_pd_power_off(struct generic_pm_domain *pd)
> +{
> +	struct genpd_power_state *state = &pd->states[pd->state_idx];
> +	u32 *pd_state;
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
> +	pd->power_off = psci_pd_power_off;
> +	pd->states = states;
> +	pd->state_count = state_count;
> +	pd->flags |= GENPD_FLAG_IRQ_SAFE | GENPD_FLAG_CPU_DOMAIN;
> +
> +	/* Use governor for CPU PM domains if it has some states to manage. */
> +	pd_gov = state_count > 0 ? &pm_domain_cpu_gov : NULL;
> +
> +	ret = pm_genpd_init(pd, pd_gov, false);
> +	if (ret) {
> +		psci_pd_free_states(states, state_count);
> +		goto free_name;
> +	}
> +
> +	ret = of_genpd_add_provider_simple(np, pd);
> +	if (ret)
> +		goto remove_pd;
> +
> +	pd_provider->node = of_node_get(np);
> +	list_add(&pd_provider->link, &psci_pd_providers);
> +
> +	pr_debug("init PM domain %s\n", pd->name);
> +	return 0;
> +
> +remove_pd:
> +	pm_genpd_remove(pd);
> +free_name:
> +	kfree(pd->name);
> +free_pd_prov:
> +	kfree(pd_provider);
> +free_pd:
> +	kfree(pd);
> +out:
> +	pr_err("failed to init PM domain ret=%d %pOF\n", ret, np);
> +	return ret;
> +}
> +
> +static void __init psci_pd_remove(void)
> +{
> +	struct psci_pd_provider *pd_provider, *it;
> +	struct generic_pm_domain *genpd;
> +
> +	list_for_each_entry_safe(pd_provider, it, &psci_pd_providers, link) {
> +		of_genpd_del_provider(pd_provider->node);
> +
> +		genpd = of_genpd_remove_last(pd_provider->node);
> +		if (!IS_ERR(genpd))
> +			kfree(genpd);
> +
> +		of_node_put(pd_provider->node);
> +		list_del(&pd_provider->link);
> +		kfree(pd_provider);
> +	}
> +}
> +
> +static int __init psci_pd_init_topology(struct device_node *np, bool add)
> +{
> +	struct device_node *node;
> +	struct of_phandle_args child, parent;
> +	int ret;
> +
> +	for_each_child_of_node(np, node) {
> +		if (of_parse_phandle_with_args(node, "power-domains",
> +					"#power-domain-cells", 0, &parent))
> +			continue;
> +
> +		child.np = node;
> +		child.args_count = 0;
> +
> +		ret = add ? of_genpd_add_subdomain(&parent, &child) :
> +			of_genpd_remove_subdomain(&parent, &child);
> +		of_node_put(parent.np);
> +		if (ret) {
> +			of_node_put(node);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int __init psci_pd_add_topology(struct device_node *np)
> +{
> +	return psci_pd_init_topology(np, true);
> +}
> +
> +static void __init psci_pd_remove_topology(struct device_node *np)
> +{
> +	psci_pd_init_topology(np, false);
> +}
> +
> +static const struct of_device_id psci_of_match[] __initconst = {
> +	{ .compatible = "arm,psci-1.0" },
> +	{}
> +};
> +
> +static int __init psci_idle_init_domains(void)
> +{
> +	struct device_node *np = of_find_matching_node(NULL, psci_of_match);
> +	struct device_node *node;
> +	int ret = 0, pd_count = 0;
> +
> +	if (!np)
> +		return -ENODEV;
> +
> +	/* Currently limit the hierarchical topology to be used in OSI mode. */
> +	if (!psci_has_osi_support())
> +		goto out;
> +
> +	/*
> +	 * Parse child nodes for the "#power-domain-cells" property and
> +	 * initialize a genpd/genpd-of-provider pair when it's found.
> +	 */
> +	for_each_child_of_node(np, node) {
> +		if (!of_find_property(node, "#power-domain-cells", NULL))
> +			continue;
> +
> +		ret = psci_pd_init(node);
> +		if (ret)
> +			goto put_node;
> +
> +		pd_count++;
> +	}
> +
> +	/* Bail out if not using the hierarchical CPU topology. */
> +	if (!pd_count)
> +		goto out;
> +
> +	/* Link genpd masters/subdomains to model the CPU topology. */
> +	ret = psci_pd_add_topology(np);
> +	if (ret)
> +		goto remove_pd;
> +
> +	/* Try to enable OSI mode. */
> +	ret = psci_set_osi_mode();
> +	if (ret) {
> +		pr_warn("failed to enable OSI mode: %d\n", ret);
> +		psci_pd_remove_topology(np);
> +		goto remove_pd;
> +	}
> +
> +	osi_mode_enabled = true;
> +	of_node_put(np);
> +	pr_info("Initialized CPU PM domain topology\n");
> +	return pd_count;
> +
> +put_node:
> +	of_node_put(node);
> +remove_pd:
> +	if (pd_count)
> +		psci_pd_remove();
> +	pr_err("failed to create CPU PM domains ret=%d\n", ret);
> +out:
> +	of_node_put(np);
> +	return ret;
> +}
> +subsys_initcall(psci_idle_init_domains);
> +
>  struct device __init *psci_dt_attach_cpu(int cpu)
>  {
>  	struct device *dev;
>  
> +	if (!osi_mode_enabled)
> +		return NULL;
> +
>  	dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
>  	if (IS_ERR_OR_NULL(dev))
>  		return dev;
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index 9d779be27071..edd7a54ef0d3 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -34,7 +34,7 @@ static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
>  static DEFINE_PER_CPU(u32, domain_state);
>  static bool psci_cpuidle_use_cpuhp __initdata;
>  
> -static inline void psci_set_domain_state(u32 state)
> +void psci_set_domain_state(u32 state)
>  {
>  	__this_cpu_write(domain_state, state);
>  }
> @@ -143,7 +143,7 @@ static const struct of_device_id psci_idle_state_match[] __initconst = {
>  	{ },
>  };
>  
> -static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
> +int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
>  {
>  	int err = of_property_read_u32(np, "arm,psci-suspend-param", state);
>  
> diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
> index 8609482cf490..7299a04dd467 100644
> --- a/drivers/cpuidle/cpuidle-psci.h
> +++ b/drivers/cpuidle/cpuidle-psci.h
> @@ -3,6 +3,11 @@
>  #ifndef __CPUIDLE_PSCI_H
>  #define __CPUIDLE_PSCI_H
>  
> +struct device_node;
> +
> +void psci_set_domain_state(u32 state);
> +int __init psci_dt_parse_state_node(struct device_node *np, u32 *state);
> +
>  #ifdef CONFIG_PM_GENERIC_DOMAINS_OF
>  struct device __init *psci_dt_attach_cpu(int cpu);
>  #else
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
