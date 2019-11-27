Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D1610AF60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 13:10:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSSdNe9c9AgTMTspfNvg5phH3Jg+6Cdf8BynZNq2Esk=; b=hB9bU/6yW306ZP
	KA2y3PqIvBMFSJhyBMiglf5E+43URpO8LQtFJJgAhl8l36WB0vvHwH3ZK2AFiQxE7E2TgcDfMVENz
	EDcH/1WTQ2Rzm4yvmCKPGO6JIu3VMdSjeiU+mIEUsdGNFIRuEOiRe8Mw4dEYmpmRQ/x5uem39dWdQ
	E2kqyBGvSI+LVdNn+kzzDMIzTXt0iwVsa+C0Vy+bp/MQUCC0HgWrgkr+BtYv1/uT0q9dr5a5elneG
	yGxVnjwyMCvv2ZCS0LNQ6uIQjATni2W2kg5MG/JRs2GuJp14gix6iQ46o+VmNpy1tApnRo0zp4lrb
	zpgbdPSieGGX745OoZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZw9Y-0002MQ-VK; Wed, 27 Nov 2019 12:10:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZw9O-0002LU-3B
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 12:10:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C48DF30E;
 Wed, 27 Nov 2019 04:10:28 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54C553F6C4;
 Wed, 27 Nov 2019 04:10:27 -0800 (PST)
Date: Wed, 27 Nov 2019 12:10:25 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
Message-ID: <20191127121025.GD29301@bogus>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
 <20191127120744.iivgw25nixovfj7i@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127120744.iivgw25nixovfj7i@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_041030_189076_7075C643 
X-CRM114-Status: GOOD (  19.35  )
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
 linux-kernel@vger.kernel.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 05:37:44PM +0530, Viresh Kumar wrote:
> On 27-11-19, 12:48, Dietmar Eggemann wrote:
> > Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
> > functions.") the core cpumask has to be modified during cpu hotplug
> > operations.
> >
> > ("arm: Fix topology setup in case of CPU hotplug for CONFIG_SCHED_MC")
> > [1] fixed that but revealed another issue on TC2, i.e in its cpufreq
> > driver.
> >
> > During CPU hp stress operations on multiple CPUs, policy->related_cpus
> > can be altered. This is wrong since this cpumask should contain the
> > online and offline CPUs.
> >
> > The WARN_ON(!cpumask_test_cpu(cpu, policy->related_cpus)) in
> > cpufreq_online() triggers in this case.
> >
> > The core cpumask can't be used to set the policy->cpus in
> > ve_spc_cpufreq_init() anymore in case it is called via
> > cpuhp_cpufreq_online()->cpufreq_online()->cpufreq_driver->init().
> >
> > An empty online() callback can be used to avoid that the init()
> > driver function is called during CPU hotplug in so that
> > policy->related_cpus will not be changed.
> >
> > Implementing an online() also requires an offline() callback.
> >
> > Tested on TC2 with CPU hp stress test (CPU hp from multiple CPUs at
> > the same time).
> >
> > [1]
> > https://lore.kernel.org/r/20191127103353.12417-1-dietmar.eggemann@arm.com
> >
> > Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
>
> Wanna provide any fixes tag ?
>
> > ---
> >  drivers/cpufreq/vexpress-spc-cpufreq.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
>
> This is 5.5 material or 5.6 ?
>

v5.5 for sure, broken even on v5.4 but unless someone really cares for
stable on TC2, I am happy to skip it.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
