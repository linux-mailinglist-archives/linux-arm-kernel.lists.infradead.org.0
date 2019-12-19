Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F0E1264DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:34:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2WnND/C8SDm0+92ib1u5oM2h7+QI9x3wDAaEGqOZIM=; b=lz6oIOXH2AE+gR
	V1K60D8Y6ekCUm+O1a7YxfJUpZKaLGdwSXSpYoPccTybskqHEIW3VOjpDd0tJ+N4AO47JXfjUHRCG
	rrqRM8VI6XB86T+T2T1de1+wYdN+kr2YpVWI5euEMpdrgJREPx3beLqIovJypP0ON4wHHYSmz/ueM
	sSxxGP0WLH8DkRNeMJrZHZ588xI0JB5pSkYkfFztgyOs7gOovTfQYvQvd109/pGI2QyPgOggt+EXa
	kTfXcmDXgBfEX9LdCWoAIogMLrGNx91nZysXQGR+sbA5AYZzKcED+Ta5EH9NeaQrEqxV56dPvjZSd
	jLEl+kvZXkHJ0ZQ3lnVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwsH-0004xM-6V; Thu, 19 Dec 2019 14:33:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihws5-0004wx-B6
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:33:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90F9031B;
 Thu, 19 Dec 2019 06:33:44 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 982CF3F6CF;
 Thu, 19 Dec 2019 06:33:42 -0800 (PST)
Date: Thu, 19 Dec 2019 14:33:40 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 12/14] cpuidle: psci: Support CPU hotplug for the
 hierarchical model
Message-ID: <20191219143340.GE20746@bogus>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-13-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211154343.29765-13-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_063345_423342_0C3826B0 
X-CRM114-Status: GOOD (  19.14  )
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
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 04:43:41PM +0100, Ulf Hansson wrote:
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
> Changes in v4:
> 	- Folded in the patch to be part of the series.
> 	- Rebased on top of earlier changes.
>
> ---
>  drivers/cpuidle/cpuidle-psci.c | 45 +++++++++++++++++++++++++++++++++-
>  include/linux/cpuhotplug.h     |  1 +
>  2 files changed, 45 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index 6e7804e697ed..34a89d99bb0f 100644
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

[...]

> +
> +static void psci_idle_init_cpuhp(void)
> +{

Can this be made __init along with the boolean psci_cpuidle_use_cpuhp ?

With that,
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
