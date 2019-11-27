Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E3110AF4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 13:08:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFKWZEl7mGS9qkRh/ilucLhg6wSxs6SVHUvCvMiWHJw=; b=opoido2ABYAVGt
	KlP+i7uPxFmlBaDXetBqY707SLrjwtN6m1Z73c557S0DKsQfWrqMGcJ7hfgJZLN8qAWbLHDZVEnIs
	1o3stcuwzt4vvMZ8KgKwc3BR+eo4JKVLWIb41M0eRkk08FtflON6dX9nXvFfqC9dDYs0dAHAeIZpQ
	05e9ywSnWpIZzPEEB3Yazcsah5sbfsl1SkGUj1a6mAT0ZwNBbevvXGEnY1xqnJ1F5+bpytIyOdgFs
	xqaepjXOmngDtZsAtI7virD+23kWncwEJJqiKJWAIUFIMasDZ7xWeVt5zbVvLQlbtpkuxmtCfldrC
	h7tMZwgLbTYjzwQEBLOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZw7Y-0000lk-7p; Wed, 27 Nov 2019 12:08:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZw7J-0000i4-3P
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 12:08:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2325530E;
 Wed, 27 Nov 2019 04:08:20 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A73C73F6C4;
 Wed, 27 Nov 2019 04:08:18 -0800 (PST)
Date: Wed, 27 Nov 2019 12:08:16 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
Message-ID: <20191127120816.GC29301@bogus>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127114801.23837-1-dietmar.eggemann@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_040821_221573_3B5C76DC 
X-CRM114-Status: GOOD (  14.80  )
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 12:48:01PM +0100, Dietmar Eggemann wrote:
> Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
> functions.") the core cpumask has to be modified during cpu hotplug
> operations.
>
> ("arm: Fix topology setup in case of CPU hotplug for CONFIG_SCHED_MC")
> [1] fixed that but revealed another issue on TC2, i.e in its cpufreq
> driver.
>
> During CPU hp stress operations on multiple CPUs, policy->related_cpus
> can be altered. This is wrong since this cpumask should contain the
> online and offline CPUs.
>
> The WARN_ON(!cpumask_test_cpu(cpu, policy->related_cpus)) in
> cpufreq_online() triggers in this case.
>
> The core cpumask can't be used to set the policy->cpus in
> ve_spc_cpufreq_init() anymore in case it is called via
> cpuhp_cpufreq_online()->cpufreq_online()->cpufreq_driver->init().
>
> An empty online() callback can be used to avoid that the init()
> driver function is called during CPU hotplug in so that
> policy->related_cpus will not be changed.
>

Unlike DT based drivers, it not easy to get the fixed cpumask unless we
add some mechanism to extract it based on clks/OPP added. I prefer
this simple solution instead.

> Implementing an online() also requires an offline() callback.
>
> Tested on TC2 with CPU hp stress test (CPU hp from multiple CPUs at
> the same time).
>
> [1]
> https://lore.kernel.org/r/20191127103353.12417-1-dietmar.eggemann@arm.com
>

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Tested-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
