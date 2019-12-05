Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF732114697
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVLPSoBlg+zg2zt+mWI7Poq1hi0FTsIwgoLz50t+SXo=; b=uRlMpD49fMCyqN
	3qoz8iALUYGfp2hPBLXCHOVIp1B5qh1WhRlEjVqoazN9yWHUvQ3DQEuyPPzW0H3BVgHRJAVpDuzwb
	yVZy3Cq9Ey4oQyO/bx6GvW9uhHmEoKTH4cb+76VkunZErwlJ0uxKETNh0CJmFwSDyCxlspqjyKaFu
	xp6R6fb8zWechpdHuNe0uxLsCF6ovIyNxs7DE9wq7JvY4e/Wj7OQxY2aHvQGLy0gp0ENANfcKh2kd
	QPMxFOs/eDEpV1hAfkdfu0RfSvNCuCIxgXvAUvgSZEiclx7oqjLET13UUtaLevnGcmDoAepFlgxMX
	Np+8LC2Dut8Q1c6ihsRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvXk-0004FW-2g; Thu, 05 Dec 2019 18:08:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvWp-0003WS-9A
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:07:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42338113E;
 Thu,  5 Dec 2019 10:07:01 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 613CE3F718;
 Thu,  5 Dec 2019 10:06:59 -0800 (PST)
Date: Thu, 5 Dec 2019 18:06:53 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH] cpuidle: psci: Support CPU hotplug for the hierarchical
 model
Message-ID: <20191205180653.GA1516@e121166-lin.cambridge.arm.com>
References: <20191205103330.27166-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205103330.27166-1-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_100703_423463_274DEE2F 
X-CRM114-Status: GOOD (  25.23  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
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

On Thu, Dec 05, 2019 at 11:33:30AM +0100, Ulf Hansson wrote:
> When the hierarchical CPU topology is used and when a CPU is put offline,
> that CPU prevents its PM domain from being powered off, which is because
> genpd observes the corresponding attached device as being active from a
> runtime PM point of view. Furthermore, any potential master PM domains are
> also prevented from being powered off.
> 
> To address this limitation, let's add add a new CPU hotplug state
> (CPUHP_AP_CPU_PM_STARTING) and register up/down callbacks for it, which
> allows us to deal with runtime PM accordingly.
> 
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
> 
> Lorenzo, Sudeep, Rafael, Daniel,
> 
> Note that, this patch is based upon a recently posted series [1] and the intent
> is to queue it on top. I can fold it into the series and resend it all, if that
> makes it easier for people. Just tell me what you prefer.
> 
> Kind regards
> Uffe
> 
> [1]
> https://patchwork.kernel.org/cover/11263735/
> 
> ---
>  drivers/cpuidle/cpuidle-psci.c | 45 +++++++++++++++++++++++++++++++++-
>  include/linux/cpuhotplug.h     |  1 +
>  2 files changed, 45 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index 835c7c3aa118..46b481c524cc 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -8,6 +8,7 @@
>  
>  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
>  
> +#include <linux/cpuhotplug.h>
>  #include <linux/cpuidle.h>
>  #include <linux/cpumask.h>
>  #include <linux/cpu_pm.h>
> @@ -31,6 +32,7 @@ struct psci_cpuidle_data {
>  
>  static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
>  static DEFINE_PER_CPU(u32, domain_state);
> +static bool psci_cpuidle_use_cpuhp;
>  
>  void psci_set_domain_state(u32 state)
>  {
> @@ -72,6 +74,44 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
>  	return ret;
>  }
>  
> +static int psci_idle_cpuhp_up(unsigned int cpu)
> +{
> +	struct device *pd_dev = __this_cpu_read(psci_cpuidle_data.dev);
> +
> +	if (pd_dev)
> +		pm_runtime_get_sync(pd_dev);
> +
> +	return 0;
> +}
> +
> +static int psci_idle_cpuhp_down(unsigned int cpu)
> +{
> +	struct device *pd_dev = __this_cpu_read(psci_cpuidle_data.dev);
> +
> +	if (pd_dev) {
> +		pm_runtime_put_sync(pd_dev);
> +		/* Clear domain state to start fresh at next online. */
> +		psci_set_domain_state(0);
> +	}
> +
> +	return 0;
> +}
> +
> +static void psci_idle_init_cpuhp(void)
> +{
> +	int err;
> +
> +	if (!psci_cpuidle_use_cpuhp)
> +		return;
> +
> +	err = cpuhp_setup_state_nocalls(CPUHP_AP_CPU_PM_STARTING,
> +					"cpuidle/psci:online",
> +					psci_idle_cpuhp_up,
> +					psci_idle_cpuhp_down);

I would make it a cpuhp_setup_state() call and remove

if (cpu_online(cpu))
	pm_runtime_get_sync_dev(dev);

in check in psci_dt_attach_cpu().

Lorenzo

> +	if (err)
> +		pr_warn("Failed %d while setup cpuhp state\n", err);
> +}
> +
>  static int psci_enter_idle_state(struct cpuidle_device *dev,
>  				struct cpuidle_driver *drv, int idx)
>  {
> @@ -161,9 +201,11 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
>  	}
>  
>  	/* Manage the deepest state via a dedicated enter-function. */
> -	if (dev)
> +	if (dev) {
>  		drv->states[state_count - 1].enter =
>  			psci_enter_domain_idle_state;
> +		psci_cpuidle_use_cpuhp = true;
> +	}
>  
>  	data->dev = dev;
>  
> @@ -285,6 +327,7 @@ static int __init psci_idle_init(void)
>  			goto out_fail;
>  	}
>  
> +	psci_idle_init_cpuhp();
>  	return 0;
>  
>  out_fail:
> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> index e51ee772b9f5..01f04ed6ad92 100644
> --- a/include/linux/cpuhotplug.h
> +++ b/include/linux/cpuhotplug.h
> @@ -95,6 +95,7 @@ enum cpuhp_state {
>  	CPUHP_AP_OFFLINE,
>  	CPUHP_AP_SCHED_STARTING,
>  	CPUHP_AP_RCUTREE_DYING,
> +	CPUHP_AP_CPU_PM_STARTING,
>  	CPUHP_AP_IRQ_GIC_STARTING,
>  	CPUHP_AP_IRQ_HIP04_STARTING,
>  	CPUHP_AP_IRQ_ARMADA_XP_STARTING,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
