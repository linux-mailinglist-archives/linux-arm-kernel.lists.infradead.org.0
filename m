Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850FD13E2F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNe9wudcmyfoDkFcnnCwwXYy7fMRfdk/cKjDOuS16Gc=; b=UwDLgpO2P08dAv
	QRxxsm9heZsXZR6oOg7XKDFrpOU6ghhRW9+oFCgCzJ+lXmTLZC0ZorUYl3G9eJFeyPHhgW+NekZJE
	/F/46YJGvCXjWXZl+T5xOn7Nss0rRy5C3wl9NT6UrZmHpxbzn47g5xI33VR2coSlvbrH/zHRPIR8B
	6kj61J1H35Lk3Gctepu++m8imwOew414afovga/SVvRbfsTizQx/0qol9MJeWOH1q4r1ln1cpw0y7
	tMDLV1C4cCH77F6Dj9PiO2KUKdtqQB4aiyFtZoXJVLxSPW9ViqMpE1385Dy8sMq5XaDHE1MuQNkDS
	y262n7oK//kWFN1AkJ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8U7-0006XS-Uy; Thu, 16 Jan 2020 16:59:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Pg-000191-2b
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:54:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06D5A22525;
 Thu, 16 Jan 2020 16:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193670;
 bh=1+Bt01W5dmc2vbQUMNlQA0sITApzXtOYMPiixaFAWXQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Uu6LmwA4870zB9grI71UQlwFZZ8dhmJInv8tOgwXpKH8ISD8jqhAU2rU+LSBL23Yf
 5XWc2pmQqTOH+xTRmigI+pvbTsT0iTgYe762SVMhZ3sXmz6JqMtfeSexPqVtz6M69p
 okXQideyUX6YkbSqG/l0Scv+QurwPiozJgl1PtwI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 196/205] ARM: 8943/1: Fix topology setup in case
 of CPU hotplug for CONFIG_SCHED_MC
Date: Thu, 16 Jan 2020 11:42:51 -0500
Message-Id: <20200116164300.6705-196-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085432_203174_82ACB291 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ondrej Jirman <megous@megous.com>, Sasha Levin <sashal@kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dietmar Eggemann <dietmar.eggemann@arm.com>

[ Upstream commit ff98a5f624d2910de050f1fc7f2a32769da86b51 ]

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
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
