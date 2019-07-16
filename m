Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291C86AB05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3ll1XkBE7oU3d1o+YbiSdVSVaoa1Igx1q+EWSALRcM=; b=BsoTiY7+7ximYX
	lNlAqaRD5x0Fkr0VBLO8+uZvzoxEgx7FnZx/maXHsQw3kIjpXYOA4exgT25Q9SY5gJlxHixfwchT9
	pqs/Ms2B0KA2eGKUQ94JlNeY27mON74MpkhUkJDTEHCS1jcULtPIMpiLDr1vDg3pLUb/PTibGZ9CB
	zfyQjaGCudAKENjRj1wQlgcMk8fR9mbrj/VcYfJ0VRw7xPaG8Rn2suoYkWLKW/Jjji9lizELQigpu
	914ZVaFziN2reFWYISvSkHWlJ2/FdiL/JnSEcZeTWUMIz4LlbBec2y3LhW1dAPERfkraTeBf1qT4b
	8qTXQfp0uv2rKlnT3AKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOq5-0001wr-Qs; Tue, 16 Jul 2019 14:53:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOpq-0001vZ-IT
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 14:53:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54E0A337;
 Tue, 16 Jul 2019 07:53:41 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A28203F59C;
 Tue, 16 Jul 2019 07:53:38 -0700 (PDT)
Date: Tue, 16 Jul 2019 15:53:36 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 07/18] drivers: firmware: psci: Prepare to use OS
 initiated suspend mode
Message-ID: <20190716145336.GC7250@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-8-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513192300.653-8-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_075342_701361_AA97845F 
X-CRM114-Status: GOOD (  21.74  )
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 09:22:49PM +0200, Ulf Hansson wrote:
> The per CPU variable psci_power_state, contains an array of fixed values,
> which reflects the corresponding arm,psci-suspend-param parsed from DT, for
> each of the available CPU idle states.
>
> This isn't sufficient when using the hierarchical CPU topology in DT in
> combination with having PSCI OS initiated (OSI) mode enabled. More
> precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
> idle state the cluster (a group of CPUs) should enter, while in PSCI
> Platform Coordinated (PC) mode, each CPU independently votes for an idle
> state of the cluster.
>
> For this reason, let's introduce an additional per CPU variable called
> domain_state and implement two helper functions to read/write its values.
> Following patches, which implements PM domain support for PSCI, will use
> the domain_state variable and set it to corresponding bits that represents
> the selected idle state for the cluster.
>
> Finally, in psci_cpu_suspend_enter() and psci_suspend_finisher(), let's
> take into account the values in the domain_state, as to get the complete
> suspend parameter.
>
> Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes:
> 	- Clarify changelog.
> 	- Drop changes in psci_cpu_on() as it belongs in the patch for hotplug.
> 	- Move some code inside "#ifdef CONFIG_CPU_IDLE".
>
> ---
>  drivers/firmware/psci/psci.c | 24 ++++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index b11560f7c4b9..4aec513136e4 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -285,6 +285,17 @@ static int __init psci_features(u32 psci_func_id)
>
>  #ifdef CONFIG_CPU_IDLE
>  static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> +static DEFINE_PER_CPU(u32, domain_state);
> +
> +static inline u32 psci_get_domain_state(void)
> +{
> +	return __this_cpu_read(domain_state);
> +}
> +
> +static inline void psci_set_domain_state(u32 state)
> +{
> +	__this_cpu_write(domain_state, state);
> +}
>
>  static int psci_dt_parse_state_node(struct device_node *np, u32 *state)
>  {
> @@ -420,15 +431,17 @@ int psci_cpu_init_idle(struct cpuidle_driver *drv, unsigned int cpu)
>  static int psci_suspend_finisher(unsigned long index)
>  {
>  	u32 *state = __this_cpu_read(psci_power_state);
> +	u32 composite_state = state[index - 1] | psci_get_domain_state();
>

The more I read this code and PSCI spec, I think it's not simple OR here
unless the specification states that. ACPI LPI explicitly stated that as
it was generic and PSCI doesn't. It can be made workable for original
format, but I think it's not that simple for extended format unless the
suspend parameters are carefully designed to achieve that, so we can't
just convert existing platforms the way it's shown on HiKey in this series.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
