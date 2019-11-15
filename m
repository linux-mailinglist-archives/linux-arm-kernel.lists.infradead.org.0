Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C371FE3C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 18:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjSbWziD0VTGL9FY+Xi4zdpQTBXIruIgDFin7Jp4K/I=; b=pEbd7SXHoMl/Pw
	c1jixG0KPF0lna9KJL3kjuYsoZYJCq+A+vi/1hYPT3dNqlD8MBBzu5rNYdM+eBak5SNalyB/izkaa
	3KFiMj3rx+4UNsYOo4J8GISxrQp8zReQJo3rhp06ZgBvKlkWdLpnx/0H3QTn0d5DxmJ1yum9dakhF
	ju/+RxCqLKYUFpC9L3uu5GJGLmM5iidpyZcvPRVzKKKHkIW2pM8KISeBxDDlhhHSF0+FGSyRTEFd/
	PCh0tiQvM5oZ0F1PRBQYQDym8R3xLtCJkpK2jQSjR6uSPFS5aQyibYToIk++qKF+gCSIBAJp/xUDV
	rUYEX0NdofCovf9UR1sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVfCd-0003pH-MI; Fri, 15 Nov 2019 17:16:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVfCS-0003oi-4a
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 17:16:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F99431B;
 Fri, 15 Nov 2019 09:15:59 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 994393F6C4;
 Fri, 15 Nov 2019 09:15:57 -0800 (PST)
Date: Fri, 15 Nov 2019 17:15:55 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 09/13] cpuidle: psci: Attach CPU devices to their PM
 domains
Message-ID: <20191115171555.GD27170@bogus>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-10-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029164438.17012-10-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_091600_348210_5E4B4913 
X-CRM114-Status: GOOD (  19.24  )
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

On Tue, Oct 29, 2019 at 05:44:34PM +0100, Ulf Hansson wrote:
> In order to enable a CPU to be power managed through its PM domain, let's
> try to attach it by calling psci_dt_attach_cpu() during the cpuidle
> initialization.
>
> psci_dt_attach_cpu() returns a pointer to the attached struct device, which
> later should be used for runtime PM, hence we need to store it somewhere.
> Rather than adding yet another per CPU variable, let's create a per CPU
> struct to collect the relevant per CPU variables.
>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes in v2:
> 	- Rebased.
>
> ---
>  drivers/cpuidle/cpuidle-psci.c | 24 ++++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index 830995b8a56f..167249d0493f 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -20,14 +20,20 @@
>
>  #include <asm/cpuidle.h>
>
> +#include "cpuidle-psci.h"
>  #include "dt_idle_states.h"
>
> -static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> +struct psci_cpuidle_data {
> +	u32 *psci_states;
> +	struct device *dev;
> +};
> +
> +static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
>
>  static int psci_enter_idle_state(struct cpuidle_device *dev,
>  				struct cpuidle_driver *drv, int idx)
>  {
> -	u32 *state = __this_cpu_read(psci_power_state);
> +	u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
>
>  	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
>  					   idx, state[idx]);
> @@ -78,7 +84,9 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
>  {
>  	int i, ret = 0;
>  	u32 *psci_states;
> +	struct device *dev;
>  	struct device_node *state_node;
> +	struct psci_cpuidle_data *data = per_cpu_ptr(&psci_cpuidle_data, cpu);
>
>  	state_count++; /* Add WFI state too */
>  	psci_states = kcalloc(state_count, sizeof(*psci_states), GFP_KERNEL);
> @@ -104,8 +112,16 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
>  		goto free_mem;
>  	}
>
> -	/* Idle states parsed correctly, initialize per-cpu pointer */
> -	per_cpu(psci_power_state, cpu) = psci_states;
> +	dev = psci_dt_attach_cpu(cpu);

Why do we need to call psci_dt_attach_cpu for even PC mode and ...

> +	if (IS_ERR(dev)) {
> +		ret = PTR_ERR(dev);
> +		goto free_mem;
> +	}
> +
> +	data->dev = dev;
> +

... assign NULL above. I don't see the need for one. Default it will be
NULL anyway and we can call psci_dt_attach_cpu only if psci_has_osi_support()

I will look through further patches to see if it make sense or not.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
