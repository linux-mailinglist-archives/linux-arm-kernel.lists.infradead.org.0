Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA94A1F8618
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 03:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3Y/A/5/hAM1D5nNi0tHxSIALNahNEf8RuKMgCJORJQ=; b=g32NdBZOSGKGDF
	zuv1h9jfpIIWvUcWPNjtluPh4tWOVEZfIbo0fl2qGRuwiR0GSlMgpHqYG558tFxz0Xz+GOLGblfdW
	j7AfcOipkG7ARaIVRWq2Qfbi1OnVLPqrOe7cyYMDv1uxCuMCjVmW6ixXbkdftxhG9SHfO7Q+5Sgkv
	btRTpjpV0Ok0SHiicW3+gPUPmxzgyciG49ZQp6OvK95OAFfwSUrnLs/6tIRM3GAKSAtppjdBmgx9P
	dQ0T8XGkEXZ0PKEPyUA+fhDG2ZdUb0EueNcClZe0fk1BQ40RDcvhoab0lh9qBMkctqr3Op0EkLgmd
	ZAiOFSAlTO0tRr7XkUSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkHAP-0000Zo-GR; Sun, 14 Jun 2020 01:10:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkHAI-0000YR-JR
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 01:10:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70A9CC0A;
 Sat, 13 Jun 2020 18:10:23 -0700 (PDT)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8AB853F73C;
 Sat, 13 Jun 2020 18:10:21 -0700 (PDT)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: [PATCH 1/3] thermal/cpu-cooling,
 sched/core: Cleanup thermal pressure definition
Date: Sun, 14 Jun 2020 02:07:53 +0100
Message-Id: <20200614010755.9129-2-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200614010755.9129-1-valentin.schneider@arm.com>
References: <20200614010755.9129-1-valentin.schneider@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_181026_724831_1A45A101 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Thara Gopinath <thara.gopinath@linaro.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following commit:

  14533a16c46d ("thermal/cpu-cooling, sched/core: Move the arch_set_thermal_pressure() API to generic scheduler code")

moved the definition of arch_set_thermal_pressure() to sched/core.c, but
kept its declaration in linux/arch_topology.h. When building e.g. an x86
kernel with CONFIG_SCHED_THERMAL_PRESSURE=y, cpufreq_cooling.c ends up
getting the declaration of arch_set_thermal_pressure() from
include/linux/arch_topology.h, which is somewhat awkward.

On top of this, the public setter, arch_set_thermal_pressure(), is defined
unconditionally in sched/core.c while the public getter,
arch_scale_thermal_pressure(), is hardcoded to return 0 unless it has been
redefined by the architecture. arch_*() functions are meant to be defined
by architectures, so revert the aforementioned commit and re-implement it
in a way that keeps arch_set_thermal_pressure() architecture-definable.

Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
---
 drivers/base/arch_topology.c      | 11 +++++++++++
 drivers/thermal/cpufreq_cooling.c |  5 +++++
 include/linux/arch_topology.h     |  3 ---
 kernel/sched/core.c               | 11 -----------
 4 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
index 4d0a0038b476..d14cab7dfa3c 100644
--- a/drivers/base/arch_topology.c
+++ b/drivers/base/arch_topology.c
@@ -54,6 +54,17 @@ void topology_set_cpu_scale(unsigned int cpu, unsigned long capacity)
 	per_cpu(cpu_scale, cpu) = capacity;
 }
 
+DEFINE_PER_CPU(unsigned long, thermal_pressure);
+
+void arch_set_thermal_pressure(const struct cpumask *cpus,
+			       unsigned long th_pressure)
+{
+	int cpu;
+
+	for_each_cpu(cpu, cpus)
+		WRITE_ONCE(per_cpu(thermal_pressure, cpu), th_pressure);
+}
+
 static ssize_t cpu_capacity_show(struct device *dev,
 				 struct device_attribute *attr,
 				 char *buf)
diff --git a/drivers/thermal/cpufreq_cooling.c b/drivers/thermal/cpufreq_cooling.c
index e297e135c031..a1efd379b683 100644
--- a/drivers/thermal/cpufreq_cooling.c
+++ b/drivers/thermal/cpufreq_cooling.c
@@ -417,6 +417,11 @@ static int cpufreq_get_cur_state(struct thermal_cooling_device *cdev,
 	return 0;
 }
 
+__weak void
+arch_set_thermal_pressure(const struct cpumask *cpus, unsigned long th_pressure)
+{
+}
+
 /**
  * cpufreq_set_cur_state - callback function to set the current cooling state.
  * @cdev: thermal cooling device pointer.
diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
index 0566cb3314ef..81bd1c627195 100644
--- a/include/linux/arch_topology.h
+++ b/include/linux/arch_topology.h
@@ -39,9 +39,6 @@ static inline unsigned long topology_get_thermal_pressure(int cpu)
 	return per_cpu(thermal_pressure, cpu);
 }
 
-void arch_set_thermal_pressure(struct cpumask *cpus,
-			       unsigned long th_pressure);
-
 struct cpu_topology {
 	int thread_id;
 	int core_id;
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 43ba2d4a8eca..7861d21f3c2b 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -3628,17 +3628,6 @@ unsigned long long task_sched_runtime(struct task_struct *p)
 	return ns;
 }
 
-DEFINE_PER_CPU(unsigned long, thermal_pressure);
-
-void arch_set_thermal_pressure(struct cpumask *cpus,
-			       unsigned long th_pressure)
-{
-	int cpu;
-
-	for_each_cpu(cpu, cpus)
-		WRITE_ONCE(per_cpu(thermal_pressure, cpu), th_pressure);
-}
-
 /*
  * This function gets called by the timer code, with HZ frequency.
  * We call it with interrupts disabled.
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
