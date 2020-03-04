Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10A8179040
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LR3jgHE2AKiZQ+THT0t1C7jtGwdPQjWywvrnceLDygA=; b=V+wB5j9CHTSmvb
	CddNxzjZnXGwtIevWAYdQBVXZz97OpfA/u4ArofZ2C7sjkTz1V+6F0N6Fb8t+SJjiC9N0KV+MafpY
	CT+aEHVngTI9mymytT2e03ubEv+SfAE4QVmWab+DIOFGoRKM9KuWg4w295nc3aV+F3qKYzyUqHLPd
	u1RUhVkn1IoW5rIZ/lO7efikqJZcLR6O/L8m9TeKiH0shIDLOh4CTCWKFNN6+DguYWPxH0l2IouQ2
	VPUhTNKl0KsVSW12NhwnIIKNJAQr+nDh4aHP8hGbcGDfPEK/a0uNCGHos5FlOf27PAJ6uY5I9YNvT
	kBhwn7XMu6BCxE/3bHBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9T3c-00070p-Kp; Wed, 04 Mar 2020 12:23:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9T3U-000705-Fz
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:23:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4C6331B;
 Wed,  4 Mar 2020 04:23:15 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B76E3F534;
 Wed,  4 Mar 2020 04:23:14 -0800 (PST)
Date: Wed, 4 Mar 2020 12:23:12 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
Message-ID: <20200304122312.GE25004@bogus>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-5-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303203559.23995-5-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_042316_616235_EE0A34E7 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 FILL_THIS_FORM_SHORT   Fill in a short form with personal
 information
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The $subject is bit confusing. IIUC, if there are no idle states to
manage including hierarchical domain states you will not register the driver
right ? If so, you are not allowing WFI to be the only state, hence my
concern with $subject.

On Tue, Mar 03, 2020 at 09:35:59PM +0100, Ulf Hansson wrote:
> It's possible that only the WFI state is supported for the CPU, while also
> a shared idle state exists for a group of CPUs.
>
> When the hierarchical topology is used, the shared idle state may not be
> compatible with arm,idle-state, rather with "domain-idle-state", which
> makes dt_init_idle_driver() to return zero. This leads to that the
> cpuidle-psci driver bails out during initialization, avoiding to register a
> cpuidle driver and instead relies on the default architectural back-end
> (called via cpu_do_idle()). In other words, the shared idle state becomes
> unused.
>
> Let's fix this behaviour, by allowing the dt_init_idle_driver() to return 0
> and then continue with the initialization. If it turns out that the
> hierarchical topology is used and we have some additional states to manage,
> then continue with the cpuidle driver registration, otherwise bail out as
> before.
>
> Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>
> Changes in v2:
> 	- Convert the error code returned from psci_cpu_suspend_enter() into an
> 	expected error code by cpuidle core.
>
> ---
>  drivers/cpuidle/cpuidle-psci.c | 48 +++++++++++++++++++++-------------
>  1 file changed, 30 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index bae9140a65a5..ae0fabec2742 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -56,16 +56,19 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
>  	u32 *states = data->psci_states;
>  	struct device *pd_dev = data->dev;
>  	u32 state;
> -	int ret;
> +	int ret = 0;
>
>  	/* Do runtime PM to manage a hierarchical CPU toplogy. */
>  	pm_runtime_put_sync_suspend(pd_dev);
>
>  	state = psci_get_domain_state();
> -	if (!state)
> +	if (!state && states)
>  		state = states[idx];
>
> -	ret = psci_enter_state(idx, state);
> +	if (state)
> +		ret = psci_cpu_suspend_enter(state) ? -1 : idx;
> +	else
> +		cpu_do_idle();

May be, I haven't followed this completely yet, but I don't want to be
in the position to replicated default arch idle hook. Just use the one
that exist by simply not registering the driver.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
