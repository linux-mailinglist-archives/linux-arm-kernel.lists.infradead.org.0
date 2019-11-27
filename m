Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD9D10B037
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 14:32:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi+r/mPNYWcwPupxfjftUZT70vAMX5KkSuxcFIVt1QQ=; b=XlQCYrREbOrnvY
	XCXHsWV9fv2fx+Oym9Df+Kz8curQcHp0yBm7lwN+rAtvGwO1zQ9PjAmS+VD66qhc3VpG9rh9JwPwC
	RUaxcDFlNCV/gLgOmu1nETQzZmHSGj6lod9MELLw6k+mMw9gMMPtVge8MuiXRFrn6E/ND0UR75ZNU
	nvpdjJoJhBT6pSCY+7Ps7Mo7zjSu+IesLjF5/5Z6AMxiAqap6oNs6aIYICTopWD1z+mMjOcgr4T8Z
	CZG6kTMfyBn1eCUT0N+R1SSJFxE39F7xDLl1qSrTiJ4cJyGezGmTrSMHLoVcR+I2Ff8T7XSXNB7dK
	/W//6dpqbYDa9P9fwW7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZxQX-000525-4q; Wed, 27 Nov 2019 13:32:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZxQO-00051I-JU
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 13:32:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C58D31B;
 Wed, 27 Nov 2019 05:32:04 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D9A83F52E;
 Wed, 27 Nov 2019 05:32:03 -0800 (PST)
Date: Wed, 27 Nov 2019 13:32:01 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
Message-ID: <20191127133200.GE29301@bogus>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
 <20191127120816.GC29301@bogus>
 <20191127121402.vd3tul4gmqm6qtyb@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127121402.vd3tul4gmqm6qtyb@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_053208_686732_6DA1133D 
X-CRM114-Status: GOOD (  21.69  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 05:44:02PM +0530, Viresh Kumar wrote:
> On 27-11-19, 12:08, Sudeep Holla wrote:
> > On Wed, Nov 27, 2019 at 12:48:01PM +0100, Dietmar Eggemann wrote:
> > > Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
> > > functions.") the core cpumask has to be modified during cpu hotplug
> > > operations.
> > >
> > > ("arm: Fix topology setup in case of CPU hotplug for CONFIG_SCHED_MC")
> > > [1] fixed that but revealed another issue on TC2, i.e in its cpufreq
> > > driver.
> > >
> > > During CPU hp stress operations on multiple CPUs, policy->related_cpus
> > > can be altered. This is wrong since this cpumask should contain the
> > > online and offline CPUs.
> > >
> > > The WARN_ON(!cpumask_test_cpu(cpu, policy->related_cpus)) in
> > > cpufreq_online() triggers in this case.
> > >
> > > The core cpumask can't be used to set the policy->cpus in
> > > ve_spc_cpufreq_init() anymore in case it is called via
> > > cpuhp_cpufreq_online()->cpufreq_online()->cpufreq_driver->init().
> > >
> > > An empty online() callback can be used to avoid that the init()
> > > driver function is called during CPU hotplug in so that
> > > policy->related_cpus will not be changed.
> > >
> >
> > Unlike DT based drivers, it not easy to get the fixed cpumask unless we
> > add some mechanism to extract it based on clks/OPP added. I prefer
> > this simple solution instead.
>
> I will call this a work-around for the problem and not really the
> solution, though I won't necessarily oppose it. There are cases which
> will break even with this solution.
>

I agree and that's the reason I spoke out my thought aloud here :)

> - Boot board with cpufreq driver as module.
> - Offline all CPUs except CPU0.
> - insert cpufreq driver.
> - online all CPUs.
>

Indeed, not just boot anytime since it's a module :)

> Now there is no guarantee that the last online will get the mask
> properly, if I have understood the problem well :)
>

Yes

> But yeah, who does this kind of messy work anyway :)
>

I won't bet on that ;)

> FWIW, we need a proper way (may be from architecture code) to find
> list of all CPUs that share clock line.
>

Yes but there's no architectural way. I need to revise and see tc2_pm.c
to check if we can do any magic there.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
