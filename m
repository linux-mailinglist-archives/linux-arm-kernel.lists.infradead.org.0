Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726FAE36E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uh/qQAUrgriNFl+eayw7JoRKjOlY7Oa+0gd6El2tJx0=; b=HAPo0aZa1O68jU
	pcxfEQz1BXmHudPEAQOzoj89xNRGyWETKNO4Xnbd5KD/t74PMqzj97xO2rx3wiby2K1jNm5Ik8XrY
	h+coQBrJdfsJB6xBsS+Dz5DqJrBakJ7+7LUXmHMkNSpg2cggUqOlbfD4xYA6M5D1A2M9/5FvuhLVX
	dD9FFw3kdIPthli5qD31r6huO7EXHoOVgE88FKKtugONarA5JKFotjCX2EbOUnHCLMUQptyK4ZbwL
	ZxpDiwUAqNfxyJHflbZwxZvrU2eBx82C1qZLyARz1XEtlu3Vqny3aQaACgRsCbkYT2N6JpVsS1XSX
	vb0w1tHnn2wzU3XFt9OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfFt-0007PZ-AP; Thu, 24 Oct 2019 15:42:29 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfFi-0007OW-St
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:42:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 621BB328;
 Thu, 24 Oct 2019 08:42:08 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5CF5E3F71F;
 Thu, 24 Oct 2019 08:42:06 -0700 (PDT)
Date: Thu, 24 Oct 2019 16:42:04 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 08/13] cpuidle: psci: Prepare to use OS initiated suspend
 mode via PM domains
Message-ID: <20191024154204.GB21622@bogus>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-9-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010113937.15962-9-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_084219_022095_579BF3FB 
X-CRM114-Status: GOOD (  23.74  )
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

On Thu, Oct 10, 2019 at 01:39:32PM +0200, Ulf Hansson wrote:
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
> domain_state take precedence over the regular selected state, when idling
> the CPU in psci_enter_idle_state().
>
> This allows subsequent patches that implements support for PM domains for
> cpuidle-psci, to write the selected idle state parameter for the cluster
> into the domain_state variable. Furthermore, let's share the needed
> functions in a header file, to enable the support for PM domains to be
> implemented in a separate c-file.
>
> Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  drivers/cpuidle/cpuidle-psci.c | 31 ++++++++++++++++++++++++++++---
>  drivers/cpuidle/cpuidle-psci.h | 11 +++++++++++
>  2 files changed, 39 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/cpuidle/cpuidle-psci.h
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index 5c30f23a8a7b..a16467daf99d 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -20,17 +20,42 @@
>
>  #include <asm/cpuidle.h>
>
> +#include "cpuidle-psci.h"
>  #include "dt_idle_states.h"
>
>  static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> +static DEFINE_PER_CPU(u32, domain_state);
> +

[nit] for me name 'domain_state' is per domain and for one each in the
hierarchical topology. But here it's per cpu, just wondering if we can
rename it to provide implicit meaning ?

> +void psci_set_domain_state(u32 state)
> +{
> +	__this_cpu_write(domain_state, state);
> +}
> +
> +static inline u32 psci_get_domain_state(void)
> +{
> +	return __this_cpu_read(domain_state);
> +}
> +
> +static int __psci_enter_idle_state(int idx, u32 state)
> +{
> +	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
> +}
>
>  static int psci_enter_idle_state(struct cpuidle_device *dev,
>  				struct cpuidle_driver *drv, int idx)
>  {
> +	int ret;
>  	u32 *states = __this_cpu_read(psci_power_state);
> -	u32 state = idx ? states[idx - 1] : 0;
> +	u32 state = psci_get_domain_state();
>
> -	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
> +	if (!state && idx)
> +		state = states[idx - 1];

This can go as mentioned earlier once we have entry for WFI also.

> +
> +	ret = __psci_enter_idle_state(idx, state);
> +
> +	/* Clear the domain state to start fresh when back from idle. */
> +	psci_set_domain_state(0);
> +	return ret;
>  }
>
>  static struct cpuidle_driver psci_idle_driver __initdata = {
> @@ -56,7 +81,7 @@ static const struct of_device_id psci_idle_state_match[] __initconst = {
>  	{ },
>  };
>
> -static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
> +int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)

Can this me made part of patch that uses it instead of here ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
