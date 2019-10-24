Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E98E37EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxmZ4O5OOhnE8SdLJ65h4jLvIBymd3739uT1tphTrIs=; b=Jhbc9z+nbo30wf
	VSM9ZKQpte1DinwCV0gNGw7QPqExazXTQFlbz3ZsV+wVXGuPDN2I9ngd+jWfpXZBx8RWlxEVjhDZV
	TQer/3E1ayfwUla87WQCh8/bs8u3P1V7EtLzNLEYZphTkJSiS4fuznLpbrDsk78KyGwAlGQ4hJOu1
	S21ykb3WYpmtWvc4TFYRxO1fY1oZYuAgFvS6tXWOBuJxH77itst6ULf1+jVwSqj1lm2STeRTbi+9Z
	G8fugMcr+e+juSJJ9rmyA4iL4uhnYk2N/NSUJ9bOup1vKrVsDdAlojp6WuEaYeT4QimtRwL5SQW15
	tDk+ewAZ6MHxSokNRpuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg1U-0001he-9d; Thu, 24 Oct 2019 16:31:40 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg1L-0001gc-Mb
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:31:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1545C32B;
 Thu, 24 Oct 2019 09:31:21 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B0643F71F;
 Thu, 24 Oct 2019 09:31:19 -0700 (PDT)
Date: Thu, 24 Oct 2019 17:31:17 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 10/13] cpuidle: psci: Add a helper to attach a CPU to its
 PM domain
Message-ID: <20191024163117.GB22036@bogus>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-11-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010113937.15962-11-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093131_781548_6E5445D4 
X-CRM114-Status: GOOD (  17.09  )
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

On Thu, Oct 10, 2019 at 01:39:34PM +0200, Ulf Hansson wrote:
> Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> CPU number as an in-parameter and tries to attach the CPU's struct device
> to its corresponding PM domain.
> 
> Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> specify "psci" as the "name" of the PM domain to attach to. Additionally,
> let's also prepare the attached device to be power managed via runtime PM.
> 
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  drivers/cpuidle/cpuidle-psci-domain.c | 21 +++++++++++++++++++++
>  drivers/cpuidle/cpuidle-psci.h        |  6 ++++++
>  2 files changed, 27 insertions(+)
> 
> diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> index 3f5143ccc3e0..7429fd7626a1 100644
> --- a/drivers/cpuidle/cpuidle-psci-domain.c
> +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> @@ -9,9 +9,11 @@
>  
>  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
>  
> +#include <linux/cpu.h>
>  #include <linux/device.h>
>  #include <linux/kernel.h>
>  #include <linux/pm_domain.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/psci.h>
>  #include <linux/slab.h>
>  #include <linux/string.h>
> @@ -279,3 +281,22 @@ static int __init psci_idle_init_domains(void)
>  	return ret;
>  }
>  subsys_initcall(psci_idle_init_domains);
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

This clarifies the need for the fixed name. But why not just go by index 0
as the consumer of these psci power-domains will have only one power domain
entry. Why do we need this name compulsory ? Further, it's specified as
optional in the generic binding, do we make it "required" for this psci
idle states binding anywhere that I missed ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
