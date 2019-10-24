Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE00E37F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf8Hlk8iQ1Uvf0cMeFIoqSO+15pa7GJJi4HneYAB03I=; b=KgWKHMMmi/MQdR
	Op3JmB1aCQirLbDbPdaxqSr0xmopmkmUUFcYFC0OSKkllgQWGzP+DVyiHY53v7CxUTFpO7TTMC5LO
	OtmJw2mnTxpPFGs052IscVO0F1TjVofWyc499g+Df305BFHJjpiUq0lG0wr77C7CrGvKZmwnnLMf3
	h/Q9GVDK+HKJPD8Zc7zxeIGUGw+dkSHL3wGgyA+LffzTywSguvVg7EHtf1QhgNL+eR9qfdk00XSZq
	LnP2+CmQVPpYfJAiaWSLT4wy/BwUsFEgN81Xsv9xB/5NmV6q6u9lKjOCUeEzuZp7ziCSKxM9Itz/w
	q42aahHUQbK07slWe7nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg3F-0002KY-Ca; Thu, 24 Oct 2019 16:33:29 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg2y-0002HR-GN
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:33:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7B5832B;
 Thu, 24 Oct 2019 09:33:01 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE9223F71F;
 Thu, 24 Oct 2019 09:32:59 -0700 (PDT)
Date: Thu, 24 Oct 2019 17:32:57 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 12/13] cpuidle: psci: Manage runtime PM in the idle path
Message-ID: <20191024163257.GC22036@bogus>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-13-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010113937.15962-13-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093312_589913_2EEB4C72 
X-CRM114-Status: GOOD (  18.27  )
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

On Thu, Oct 10, 2019 at 01:39:36PM +0200, Ulf Hansson wrote:
> In case we have succeeded to attach a CPU to its PM domain, let's deploy
> runtime PM support for the corresponding attached device, to allow the CPU
> to be powered-managed accordingly.
>
> To set the triggering point for when runtime PM reference counting should
> be done, let's store the index of deepest idle state for the CPU in the per
> CPU struct. Then use this index to compare the selected idle state index
> when entering idle, as to understand whether runtime PM reference counting
> is needed or not.
>
> Note that, from the hierarchical point view, there may be good reasons to
> do runtime PM reference counting even on shallower idle states, but at this
> point this isn't supported, mainly due to limitations set by the generic PM
> domain.
>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  drivers/cpuidle/cpuidle-psci.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index 1510422c7a53..0919b40c1a85 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -16,6 +16,7 @@
>  #include <linux/of.h>
>  #include <linux/of_device.h>
>  #include <linux/psci.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/slab.h>
>
>  #include <asm/cpuidle.h>
> @@ -25,6 +26,7 @@
>
>  struct psci_cpuidle_data {
>  	u32 *psci_states;
> +	u32 rpm_state_id;
>  	struct device *dev;
>  };
>
> @@ -50,14 +52,28 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
>  				struct cpuidle_driver *drv, int idx)
>  {
>  	int ret;
> -	u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);
> -	u32 state = psci_get_domain_state();
> +	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
> +	u32 *states = data->psci_states;
> +	struct device *pd_dev = data->dev;
> +	bool runtime_pm = (pd_dev && data->rpm_state_id == idx);
> +	u32 state;

Wonder if we can have separate psci_enter_idle_state for OSI mode so
that all these runtime extra check can be reduced ? It will also make
sure there's no additional latency for PC mode because of OSI.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
