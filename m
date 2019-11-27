Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6143610AEEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 12:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=334cx0R5QRg0ht6bqW4FyjJ96His5do99EBI6cJiALc=; b=AHb
	SMd9xLq+tcs2FzLdiP5Buq0fXB6cmHFi0Zet52YK0Z6aYzM9YmeLB99N0Qe2Xo0X8fLK6uzU0M1eY
	VdZKWQOKnjOFych/IleGKo46Y7oeNy5f7ImNAeoLcc8viCBjNGPudqWUspJ25ZZp/IvUtU8vvu4/G
	tg7rN73efPds/GPZ41XK/2NrTjJf+TnAcAk3sHMpXRrqbo7E3GgrIRjVcS1Mt8roxAhDrMJiCuz1i
	H3dpPhE4aAdjbb1RGpJyMHXC+PzZuU6KyMc/ntYDTTYQC4eCdTsnNL8SsSITYwaToBF97w1SO2fjn
	2/bUjVwD+w1gup7UvnTlZyqK4KYrjdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvoW-00014E-E7; Wed, 27 Nov 2019 11:48:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvno-0000FT-HH
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 11:48:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A34AB30E;
 Wed, 27 Nov 2019 03:48:09 -0800 (PST)
Received: from dell3630.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 05CFC3F6C4;
 Wed, 27 Nov 2019 03:48:07 -0800 (PST)
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>
Subject: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
Date: Wed, 27 Nov 2019 12:48:01 +0100
Message-Id: <20191127114801.23837-1-dietmar.eggemann@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_034812_671859_E39B497B 
X-CRM114-Status: GOOD (  10.96  )
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
 Liviu Dudau <liviu.dudau@arm.com>, linux-kernel@vger.kernel.org,
 Lukasz Luba <lukasz.luba@arm.com>, Morten Rasmussen <morten.rasmussen@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
functions.") the core cpumask has to be modified during cpu hotplug
operations.

("arm: Fix topology setup in case of CPU hotplug for CONFIG_SCHED_MC")
[1] fixed that but revealed another issue on TC2, i.e in its cpufreq
driver.

During CPU hp stress operations on multiple CPUs, policy->related_cpus
can be altered. This is wrong since this cpumask should contain the
online and offline CPUs.

The WARN_ON(!cpumask_test_cpu(cpu, policy->related_cpus)) in
cpufreq_online() triggers in this case.

The core cpumask can't be used to set the policy->cpus in
ve_spc_cpufreq_init() anymore in case it is called via
cpuhp_cpufreq_online()->cpufreq_online()->cpufreq_driver->init().

An empty online() callback can be used to avoid that the init()
driver function is called during CPU hotplug in so that
policy->related_cpus will not be changed.

Implementing an online() also requires an offline() callback.

Tested on TC2 with CPU hp stress test (CPU hp from multiple CPUs at
the same time).

[1]
https://lore.kernel.org/r/20191127103353.12417-1-dietmar.eggemann@arm.com

Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
---
 drivers/cpufreq/vexpress-spc-cpufreq.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/cpufreq/vexpress-spc-cpufreq.c b/drivers/cpufreq/vexpress-spc-cpufreq.c
index 506e3f2bf53a..857dcb535e97 100644
--- a/drivers/cpufreq/vexpress-spc-cpufreq.c
+++ b/drivers/cpufreq/vexpress-spc-cpufreq.c
@@ -492,6 +492,16 @@ static void ve_spc_cpufreq_ready(struct cpufreq_policy *policy)
 	cdev[cur_cluster] = of_cpufreq_cooling_register(policy);
 }
 
+static int ve_spc_cpufreq_online(struct cpufreq_policy *policy)
+{
+	return 0;
+}
+
+static int ve_spc_cpufreq_offline(struct cpufreq_policy *policy)
+{
+	return 0;
+}
+
 static struct cpufreq_driver ve_spc_cpufreq_driver = {
 	.name			= "vexpress-spc",
 	.flags			= CPUFREQ_STICKY |
@@ -503,6 +513,8 @@ static struct cpufreq_driver ve_spc_cpufreq_driver = {
 	.init			= ve_spc_cpufreq_init,
 	.exit			= ve_spc_cpufreq_exit,
 	.ready			= ve_spc_cpufreq_ready,
+	.online                 = ve_spc_cpufreq_online,
+	.offline                = ve_spc_cpufreq_offline,
 	.attr			= cpufreq_generic_attr,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
