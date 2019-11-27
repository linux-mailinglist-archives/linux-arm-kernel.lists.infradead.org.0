Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A7910B291
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 16:41:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMHsMOio0S4D9P96MTqBHAoGeSDHoTMdDcb+13jTNWY=; b=gSggR6Z4UV/DMs
	LJnFSZ6Z4Ja53utx9DX8VeeZlorTH+6zJ6g/yKKQrdVOon0LF82T8PGr9pg4G1WdnJb2GiCtbLK8t
	591vS2XJq18p6ijRk0gyfTLoJtoRnL1Fhb/1AhaobAblclR7h52uFE7nxAxDQr50vPcDun5ahWv57
	TedTamZu5prioYmMk+1++q/FTCsex+QmRbTMoXs8F4SqGXX4z2c+E9HPy5P+bWBDGK1ncBLgicFGl
	AbOMSDlmDXe/b7bXTHHwvJfhjD8a28gltTKF4Gbs6+7EG/VBeMLMttTWTvzK8bXd6h0a8zCafQS5M
	Negsus3b6sVXcOEfWthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZzRc-00042r-LK; Wed, 27 Nov 2019 15:41:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZzRS-000421-2H
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 15:41:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42FDF1045;
 Wed, 27 Nov 2019 07:41:19 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB58F3F68E;
 Wed, 27 Nov 2019 07:41:17 -0800 (PST)
Date: Wed, 27 Nov 2019 15:40:29 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
Message-ID: <20191127154029.GA4826@bogus>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
 <20191127120816.GC29301@bogus>
 <20191127121402.vd3tul4gmqm6qtyb@vireshk-i7>
 <20191127133200.GE29301@bogus>
 <a60cab69-4d47-d418-94bd-74630bf9e846@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a60cab69-4d47-d418-94bd-74630bf9e846@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_074122_195640_D62B80BE 
X-CRM114-Status: GOOD (  17.83  )
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

On Wed, Nov 27, 2019 at 03:58:49PM +0100, Dietmar Eggemann wrote:
> On 27/11/2019 14:32, Sudeep Holla wrote:

[...]

> >
> > Yes but there's no architectural way. I need to revise and see tc2_pm.c
> > to check if we can do any magic there.
>
> I'm fine with finding a better solution to return a fixed topology core
> cpumask or calling this patch a workaround. AFAICS, only TC2 is affected.
>
> ("arm: Fix topology setup in case of CPU hotplug for CONFIG_SCHED_MC")
> is needed for other systems as well in case we have commit ca74b316df96
> ("arm: Use common cpu_topology structure and functions."). We probably
> don't want to revert commit ca74b316df96?
>

Correct

> We do CPU hp stress tests in our EAS mainline integration test suite
> https://developer.arm.com/tools-and-software/open-source-software/linux-kernel/energy-aware-scheduling/eas-mainline-development
> and there is where we initially encountered this issue on TC2.

I could come up with the patch below. If this is any cleaner and acceptable
I am happy to post it. One advantage of moving the use of topology_core_cpumask
inside ve_spc_clk_init is that it's just device_initcall and not a module.
It allows to handle ve_spc_cpufreq as module. I prefer this than the
previous solution/workaround. Let me know.

Regards,
Sudeep

-->8

diff --git i/arch/arm/mach-vexpress/spc.c w/arch/arm/mach-vexpress/spc.c
index 354e0e7025ae..e0e2e789a0b7 100644
--- i/arch/arm/mach-vexpress/spc.c
+++ w/arch/arm/mach-vexpress/spc.c
@@ -551,8 +551,9 @@ static struct clk *ve_spc_clk_register(struct device *cpu_dev)

 static int __init ve_spc_clk_init(void)
 {
-       int cpu;
+       int cpu, cluster;
        struct clk *clk;
+       bool init_opp_table[MAX_CLUSTERS] = { false };

        if (!info)
                return 0; /* Continue only if SPC is initialised */
@@ -578,8 +579,17 @@ static int __init ve_spc_clk_init(void)
                        continue;
                }

+               cluster = topology_physical_package_id(cpu_dev->id);
+               if (init_opp_table[cluster])
+                       continue;
+
                if (ve_init_opp_table(cpu_dev))
                        pr_warn("failed to initialise cpu%d opp table\n", cpu);
+               else if (dev_pm_opp_set_sharing_cpus(cpu_dev,
+                        topology_core_cpumask(cpu_dev->id)))
+                       pr_warn("failed to mark OPPs shared for cpu%d\n", cpu);
+
+               init_opp_table[cluster] = true;
        }

        platform_device_register_simple("vexpress-spc-cpufreq", -1, NULL, 0);
diff --git i/drivers/cpufreq/vexpress-spc-cpufreq.c w/drivers/cpufreq/vexpress-spc-cpufreq.c
index 506e3f2bf53a..83c85d3d67e3 100644
--- i/drivers/cpufreq/vexpress-spc-cpufreq.c
+++ w/drivers/cpufreq/vexpress-spc-cpufreq.c
@@ -434,7 +434,7 @@ static int ve_spc_cpufreq_init(struct cpufreq_policy *policy)
        if (cur_cluster < MAX_CLUSTERS) {
                int cpu;

-               cpumask_copy(policy->cpus, topology_core_cpumask(policy->cpu));
+               dev_pm_opp_get_sharing_cpus(cpu_dev, policy->cpus);

                for_each_cpu(cpu, policy->cpus)
                        per_cpu(physical_cluster, cpu) = cur_cluster;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
