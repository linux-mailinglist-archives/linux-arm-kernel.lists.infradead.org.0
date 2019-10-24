Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEE4E36CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMy+U1O/z/mt0uKfhV2Ti4Oz3pim9sGkWYqwD4jAAPw=; b=nVXBxFVOM06EwI
	sxtr++0gbNUHUcLKgwy3TkCe1QTzeGFQMd52Hy7Q1BqgJEFGJOd5Iyb6gp2QfaRvLXrAMLOQGX9Vy
	70r8cpqvpaWIPnSQY1gar5NTa5XAV3hmE0nLvux7wEEj0SR0PLB/xIlC1i12c4rr2QfXuZS/daYZV
	gnwTKrWNrqZqDDtJVM/1s1Cn70a5FnF42tsgRCo1xuF6x8jjjnR3urqCRIUToKAFCl6neMdJI6CSX
	unsiymgn6Wc1VzLTWvyekEO7e+BXqhnOhbYT3+rIHW/6OmeS0Nk1oxDzDO6aV2j4v2jchaC2rFEIU
	OH/ndTJlHHCrnFM0rtaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfAO-00055K-E5; Thu, 24 Oct 2019 15:36:48 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfAB-00053z-Qy
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:36:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A6EB31F;
 Thu, 24 Oct 2019 08:36:25 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B1A03F71F;
 Thu, 24 Oct 2019 08:36:23 -0700 (PDT)
Date: Thu, 24 Oct 2019 16:36:21 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 06/13] cpuidle: psci: Simplify OF parsing of CPU idle
 state nodes
Message-ID: <20191024153621.GE11467@bogus>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-7-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010113937.15962-7-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_083635_964951_DD8E7352 
X-CRM114-Status: GOOD (  21.13  )
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
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 01:39:30PM +0200, Ulf Hansson wrote:
> Iterating through the idle state nodes in DT, to find out the number of
> states that needs to be allocated is unnecessary, as it has already been
> done from dt_init_idle_driver(). Therefore, drop the iteration and use the
> number we already have at hand.
>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  drivers/cpuidle/cpuidle-psci.c | 33 ++++++++++++++++-----------------
>  1 file changed, 16 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index 2e91c8d6c211..1195a1056139 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -73,28 +73,22 @@ static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
>  	return 0;
>  }
>
> -static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
> +static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> +				unsigned int state_nodes, int cpu)

[super nit] Too much in the beginning of the patch to not notice this ;)
May need some '(' alignment here and other places in general.

>  {
> -	int i, ret = 0, count = 0;
> +	int i, ret = 0;
>  	u32 *psci_states;
>  	struct device_node *state_node;
>
> -	/* Count idle states */
> -	while ((state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
> -					      count))) {
> -		count++;
> -		of_node_put(state_node);
> -	}
> -
> -	if (!count)
> -		return -ENODEV;
> -
> -	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
> +	psci_states = kcalloc(state_nodes, sizeof(*psci_states), GFP_KERNEL);
>  	if (!psci_states)
>  		return -ENOMEM;
>
> -	for (i = 0; i < count; i++) {
> +	for (i = 0; i < state_nodes; i++) {
>  		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);

Can we move above to use of_get_cpu_state_node ? Since it also handles
domain-idle-states.

> +		if (!state_node)
> +			break;
> +
>  		ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
>  		of_node_put(state_node);
>
> @@ -104,6 +98,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
>  		pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
>  	}
>
> +	if (i != state_nodes) {
> +		ret = -ENODEV;
> +		goto free_mem;
> +	}
> +
>  	/* Idle states parsed correctly, initialize per-cpu pointer */
>  	per_cpu(psci_power_state, cpu) = psci_states;
>  	return 0;
> @@ -113,7 +112,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
>  	return ret;
>  }
>
> -static __init int psci_cpu_init_idle(unsigned int cpu)
> +static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_nodes)

Does it make sense to rename it as state_count or something similar ?
And it may need + 1 once we add wfi also as entry as suggested by
Lorenzo.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
