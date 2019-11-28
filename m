Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6621B10C680
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 11:16:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nzl6U/mthDOPFJYInGkYM4nWSmzqu/WAQyHigXy20yg=; b=MhNcbXgYf/Fh696jwySktIzDsh
	Ul0q4EdiaEOsZq7Ha8Tm2n5CqdeaDw3tUZTRzsyzxx3mpD6vsYpQuiLNF7FSFmuUp4JfA9eh2rmB3
	RM8Yo5kKt0MTeJ8AsB+GOcU3bfLOnmo5kdCY3sNdCKNZSHCT7IAdnKU5imEqICcJ1QACjQj9hFMpi
	Cp5bu369tPjGqHMCifM7IAEMcAyvuKJyBbU/26n0RDbiF7PChHuaoxMvAHVjaWClwDkNPXFZDJplx
	fv856CkY9hzaRoVVjmRScYS5hU2S9NvCbXzHKfMNsy0QO6tAkS8wwZ/BH0NSBjI69yBKzyFjEPWUy
	K7l4QR+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaGqn-0002bF-OG; Thu, 28 Nov 2019 10:16:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaGqA-0002Li-Kx
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 10:16:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 308F61042;
 Thu, 28 Nov 2019 02:16:01 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AC69D3F6C4;
 Thu, 28 Nov 2019 02:15:59 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] cpufreq: vexpress-spc: Switch cpumask from topology core
 to OPP sharing
Date: Thu, 28 Nov 2019 10:15:47 +0000
Message-Id: <20191128101547.519-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128101547.519-1-sudeep.holla@arm.com>
References: <20191128101547.519-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_021602_728024_65961929 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Morten Rasmussen <morten.rasmussen@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
functions.") the core cpumask has to be modified during cpu hotplug
operations. So using them to set up cpufreq policy cpumask may be
incorrect as it may contain only cpus that are online at that instance.

Instead, we can use the cpumask setup by OPP library that contains all
the cpus sharing OPP table using dev_pm_opp_get_sharing_cpus.

Cc: Viresh Kumar <viresh.kumar@linaro.org>
Tested-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/cpufreq/vexpress-spc-cpufreq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/cpufreq/vexpress-spc-cpufreq.c b/drivers/cpufreq/vexpress-spc-cpufreq.c
index 506e3f2bf53a..83c85d3d67e3 100644
--- a/drivers/cpufreq/vexpress-spc-cpufreq.c
+++ b/drivers/cpufreq/vexpress-spc-cpufreq.c
@@ -434,7 +434,7 @@ static int ve_spc_cpufreq_init(struct cpufreq_policy *policy)
 	if (cur_cluster < MAX_CLUSTERS) {
 		int cpu;
 
-		cpumask_copy(policy->cpus, topology_core_cpumask(policy->cpu));
+		dev_pm_opp_get_sharing_cpus(cpu_dev, policy->cpus);
 
 		for_each_cpu(cpu, policy->cpus)
 			per_cpu(physical_cluster, cpu) = cur_cluster;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
