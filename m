Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932801264CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:32:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNlqkVObXVbbXhlkzt474rRJqKjRT7dpJ48rP/oMvrA=; b=GTi7Z0HcYRgPOQ
	yqwpsi48dQAaxi/mi7NjLpDeQgsCLWdLvV+3OMFxfzXJl3ZB0u3JbsaXG0Y5ma8JQpywUVm2oFPfr
	y+Qv90AHNwdz0XG0+fu3G6yKxdzYXmsZp3X+8XgAEOGtgyqUaK7vX/VknsTG+4y3PJaCyMsRfZbm+
	jPKSR3EoRmEa7U9GQwvpOhU/nOhTdm55crnPL4FFSlkP2AwDyk8JSTkR+4EriQelizulXVgFE2VdE
	RepmvOCwboJygk6Wg1sasef/tEjDJnx+5jwo6n35jTcORVx9Q8FvVbbVwFQeZYwkm4VBlCwq2HZdF
	uX7jhRAu8P900FYLeX4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwqY-0003t5-1N; Thu, 19 Dec 2019 14:32:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwqN-0003sG-Tg
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:32:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1EF3031B;
 Thu, 19 Dec 2019 06:31:59 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0911B3F6CF;
 Thu, 19 Dec 2019 06:31:56 -0800 (PST)
Date: Thu, 19 Dec 2019 14:31:54 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 10/14] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
Message-ID: <20191219143154.GC20746@bogus>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-11-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211154343.29765-11-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_063200_707119_CB7B63AE 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 04:43:39PM +0100, Ulf Hansson wrote:
> The per CPU variable psci_power_state, contains an array of fixed values,
> which reflects the corresponding arm,psci-suspend-param parsed from DT, for
> each of the available CPU idle states.
>
> This isn't sufficient when using the hierarchical CPU topology in DT, in
> combination with having PSCI OS initiated (OSI) mode enabled. More
> precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
> idle state the cluster (a group of CPUs) should enter, while in PSCI
> Platform Coordinated (PC) mode, each CPU independently votes for an idle
> state of the cluster.
>
> For this reason, introduce a per CPU variable called domain_state and
> implement two helper functions to read/write its value. Then let the
> domain_state take precedence over the regular selected state, when entering
> and idle state.
>
> To avoid executing the above OSI specific code in the ->enter() callback,
> while operating in the default PSCI Platform Coordinated mode, let's also
> add a new enter-function and use it for OSI.
>
> Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes in v4:
> 	- Rebased on top of earlier changes.
> 	- Add comment about using the deepest cpuidle state for the domain state
> 	selection.
>
> ---
>  drivers/cpuidle/cpuidle-psci.c | 56 ++++++++++++++++++++++++++++++----
>  1 file changed, 50 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index 6a87848be3c3..9600fe674a89 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -29,14 +29,47 @@ struct psci_cpuidle_data {
>  };
>
>  static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
> +static DEFINE_PER_CPU(u32, domain_state);
> +

[...]

> +static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> +					struct cpuidle_driver *drv, int idx)
> +{
> +	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
> +	u32 *states = data->psci_states;

Why can't the above be like this for consistency(see below in
psci_enter_idle_state) ?

 	u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);

> +	u32 state = psci_get_domain_state();
> +	int ret;
> +
> +	if (!state)
> +		state = states[idx];
> +
> +	ret = psci_enter_state(idx, state);
> +
> +	/* Clear the domain state to start fresh when back from idle. */
> +	psci_set_domain_state(0);
> +	return ret;
> +}
>

[...]

> @@ -118,6 +152,15 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
>  			ret = PTR_ERR(data->dev);
>  			goto free_mem;
>  		}
> +
> +		/*
> +		 * Using the deepest state for the CPU to trigger a potential
> +		 * selection of a shared state for the domain, assumes the
> +		 * domain states are all deeper states.
> +		 */
> +		if (data->dev)

You can drop this check as return on error above.

> +			drv->states[state_count - 1].enter =
> +				psci_enter_domain_idle_state;

I see the comment above but this potential blocks retention mode at
cluster level when all cpu enter retention at CPU level. I don't like
this assumption, but I don't have any better suggestion. Please add the
note that we can't enter RETENTION state at cluster/domain level when
all CPUs enter at CPU level.

As I wrote above I got another doubt. What if platform specifies just
RETENTION state at CPU as well as Cluster/domain ? I think it should be
fine, just asking it out loud.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
