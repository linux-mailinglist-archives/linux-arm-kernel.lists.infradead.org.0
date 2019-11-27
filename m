Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94DD10ADCD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aPmI5Yh7OmEz5vVH0HfrwlA10iHFWtLBEYnzUAr8JAg=; b=E1q
	KmQjf4Ide/LlwxZ7IpuPxaDO4wUnv2rDIdW8DyAg4ja0Fc0F0a69+OEaNyy4pF3r+nw/QfhsCao3t
	gyV+HfSAsXdwP2Cn1c8MTLaaPnmKGhX+sDubDqWuiv/XOBWZ8hct0IjiXBjyEujfBGHW43oiEaH9O
	/UXjHwp14YlZNvQzd6H+vdAR0ePFVxojLRYukyw0nm2wXyl2f4cVJbajYm1vz/NLdqmtSGTn9C9tr
	QKKBAOEiqFAJ3uRCBoUO/LBQ+U1DmQcEJpzr5NmXn/VE6rTI2F2OtWM6K3nHrSPmWJbHbb75xle6h
	WHi+vm2Wo6J2vsqJCG97Ha7R+tCbn3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuei-00024q-90; Wed, 27 Nov 2019 10:34:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZueX-000241-AY
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:34:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A6DC30E;
 Wed, 27 Nov 2019 02:34:30 -0800 (PST)
Received: from dell3630.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 890C23F6C4;
 Wed, 27 Nov 2019 02:34:28 -0800 (PST)
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
To: Atish Patra <atish.patra@wdc.com>,
	Russell King <linux@armlinux.org.uk>
Subject: [PATCH v2] arm: Fix topology setup in case of CPU hotplug for
 CONFIG_SCHED_MC
Date: Wed, 27 Nov 2019 11:33:53 +0100
Message-Id: <20191127103353.12417-1-dietmar.eggemann@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_023433_458533_A1C599E6 
X-CRM114-Status: GOOD (  13.57  )
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
Cc: Ondrej Jirman <megous@megous.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Joel Stanley <joel@jms.id.au>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit ca74b316df96 ("arm: Use common cpu_topology structure and
functions.") changed cpu_coregroup_mask() from the ARM32 specific
implementation in arch/arm/include/asm/topology.h to the one shared
with ARM64 and RISCV in drivers/base/arch_topology.c.

Currently on ARM32 (TC2 w/ CONFIG_SCHED_MC) the task scheduler setup
code (w/ CONFIG_SCHED_DEBUG) shows this during CPU hotplug:

  ERROR: groups don't span domain->span

It happens to CPUs of the cluster of the CPU which gets hot-plugged
out on scheduler domain MC.

Turns out that the shared cpu_coregroup_mask() requires that the
hot-plugged CPU is removed from the core_sibling mask via
remove_cpu_topology(). Otherwise the 'is core_sibling subset of
cpumask_of_node()' doesn't work. In this case the task scheduler has to
deal with cpumask_of_node instead of core_sibling which is wrong on
scheduler domain MC.

e.g. CPU3 hot-plugged out on TC2 [cluster0: 0,3-4 cluster1: 1-2]:

  cpu_coregroup_mask(): CPU3 cpumask_of_node=0-2,4 core_sibling=0,3-4
                                                                  ^
should be:

  cpu_coregroup_mask(): CPU3 cpumask_of_node=0-2,4 core_sibling=0,4

Add remove_cpu_topology() to __cpu_disable() to remove the CPU from the
topology masks in case of a CPU hotplug out operation.

At the same time tweak store_cpu_topology() slightly so it will call
update_siblings_masks() in case of CPU hotplug in operation via
secondary_start_kernel()->smp_store_cpu_info().

This aligns the ARM32 implementation with the ARM64 one.

Guarding remove_cpu_topology() with CONFIG_GENERIC_ARCH_TOPOLOGY is
necessary since some Arm32 defconfigs (aspeed_g5_defconfig,
milbeaut_m10v_defconfig, spear13xx_defconfig) specify an explicit

 # CONFIG_ARM_CPU_TOPOLOGY is not set

w/ ./arch/arm/Kconfig: select GENERIC_ARCH_TOPOLOGY if ARM_CPU_TOPOLOGY

Fixes: ca74b316df96 ("arm: Use common cpu_topology structure and functions")
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>
Tested-by: Lukasz Luba <lukasz.luba@arm.com>
Tested-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
---

Changes in v2:

- Removed cosmetic cleanup in pr_info() of store_cpu_topology()
- Guarded remove_cpu_topology() with CONFIG_GENERIC_ARCH_TOPOLOGY

I opted for an #ifdef in __cpu_disable rather than a stub definition of
remove_cpu_topology() in include/linux/arch_topology.h to keep this
change small.

 arch/arm/kernel/smp.c      |  4 ++++
 arch/arm/kernel/topology.c | 10 +++++-----
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index 4b0bab2607e4..46e1be9e57a8 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -240,6 +240,10 @@ int __cpu_disable(void)
 	if (ret)
 		return ret;
 
+#ifdef CONFIG_GENERIC_ARCH_TOPOLOGY
+	remove_cpu_topology(cpu);
+#endif
+
 	/*
 	 * Take this CPU offline.  Once we clear this, we can't return,
 	 * and we must not schedule until we're ready to give up the cpu.
diff --git a/arch/arm/kernel/topology.c b/arch/arm/kernel/topology.c
index 5b9faba03afb..8d2e61d9e7a6 100644
--- a/arch/arm/kernel/topology.c
+++ b/arch/arm/kernel/topology.c
@@ -196,9 +196,8 @@ void store_cpu_topology(unsigned int cpuid)
 	struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
 	unsigned int mpidr;
 
-	/* If the cpu topology has been already set, just return */
-	if (cpuid_topo->core_id != -1)
-		return;
+	if (cpuid_topo->package_id != -1)
+		goto topology_populated;
 
 	mpidr = read_cpuid_mpidr();
 
@@ -231,14 +230,15 @@ void store_cpu_topology(unsigned int cpuid)
 		cpuid_topo->package_id = -1;
 	}
 
-	update_siblings_masks(cpuid);
-
 	update_cpu_capacity(cpuid);
 
 	pr_info("CPU%u: thread %d, cpu %d, socket %d, mpidr %x\n",
 		cpuid, cpu_topology[cpuid].thread_id,
 		cpu_topology[cpuid].core_id,
 		cpu_topology[cpuid].package_id, mpidr);
+
+topology_populated:
+	update_siblings_masks(cpuid);
 }
 
 static inline int cpu_corepower_flags(void)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
