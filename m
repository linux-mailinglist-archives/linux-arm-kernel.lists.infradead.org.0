Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE17426AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3on9DKAnPp3aZvNONBDZ8w3J2USWhaxImlFmlCxF0oE=; b=q1K
	rPbhP+LY9QXWGAbYY3fAY9u/BfZwTWXDXbj2uLzTIL4gpZecubuc7SiWN6WLmrWkvRImPvHbHKiVz
	uuZ/isUWuKpdrgiDnB/sFziIsO5PADA3Hdg6oHp2ABeO4e8I4BwF14BHj83KY9IPVse/hfxMQppMM
	PSSP+0+Md6i/gL2nwFF5MqlK5bJdGeRb/MJPjgAeXtb5DHZQA5oOcmFAg/VYwPXn8Gf4rJpXaZS3A
	l5bTIT6rlBMfPBtYRhqwnwIP95AuL7xCYZRQHuklmZPDG2WsulfBreFC+NW8L6UagilzlzLHcO+CE
	jDPNOiiGVVdQFYteDsjaI4WSc60pQqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2jP-00069W-LA; Wed, 12 Jun 2019 12:51:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2jF-00068z-J5
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:51:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD27C28;
 Wed, 12 Jun 2019 05:51:48 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DF38E3F246;
 Wed, 12 Jun 2019 05:51:47 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH] arm64: smp: disable hotplug on trusted OS resident CPU
Date: Wed, 12 Jun 2019 13:51:37 +0100
Message-Id: <20190612125137.10260-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_055149_723457_FF5CCEFB 
X-CRM114-Status: GOOD (  14.58  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will.deacon@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The trusted OS may reject CPU_OFF calls to its resident CPU, so we must
avoid issuing those. We never migrate a Trusted OS and we already take
care to prevent CPU_OFF PSCI call. However, this is not reflected
explicitly to the userspace. Any user can attempt to hotplug trusted OS
resident CPU. The entire motion of going through the various state
transitions in the CPU hotplug state machine gets executed and the
PSCI layer finally refuses to make CPU_OFF call.

This results is unnecessary unwinding of CPU hotplug state machine in
the kernel. Instead we can mark the trusted OS resident CPU as not
available for hotplug, so that the user attempt or request to do the
same will get immediately rejected.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/include/asm/cpu_ops.h |  3 +++
 arch/arm64/kernel/psci.c         |  6 ++++++
 arch/arm64/kernel/setup.c        | 11 ++++++++++-
 3 files changed, 19 insertions(+), 1 deletion(-)

v1->v2:
	- Renamed cpu_is_hotpluggable to cpu_can_disable
	- Added kernel doc entry for cpu_can_disable
	- Dropped else segment as suggested

diff --git a/arch/arm64/include/asm/cpu_ops.h b/arch/arm64/include/asm/cpu_ops.h
index 8f03446cf89f..8ce85449b502 100644
--- a/arch/arm64/include/asm/cpu_ops.h
+++ b/arch/arm64/include/asm/cpu_ops.h
@@ -34,6 +34,8 @@
  * @cpu_boot:	Boots a cpu into the kernel.
  * @cpu_postboot: Optionally, perform any post-boot cleanup or necesary
  *		synchronisation. Called from the cpu being booted.
+ * @cpu_can_disable: Determines whether a CPU can be disabled based on
+ *		mechanism-specific information.
  * @cpu_disable: Prepares a cpu to die. May fail for some mechanism-specific
  * 		reason, which will cause the hot unplug to be aborted. Called
  * 		from the cpu to be killed.
@@ -53,6 +55,7 @@ struct cpu_operations {
 	int		(*cpu_boot)(unsigned int);
 	void		(*cpu_postboot)(void);
 #ifdef CONFIG_HOTPLUG_CPU
+	bool		(*cpu_can_disable)(unsigned int cpu);
 	int		(*cpu_disable)(unsigned int cpu);
 	void		(*cpu_die)(unsigned int cpu);
 	int		(*cpu_kill)(unsigned int cpu);
diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
index 85ee7d07889e..97902639feb3 100644
--- a/arch/arm64/kernel/psci.c
+++ b/arch/arm64/kernel/psci.c
@@ -46,6 +46,11 @@ static int cpu_psci_cpu_boot(unsigned int cpu)
 }
 
 #ifdef CONFIG_HOTPLUG_CPU
+static bool cpu_psci_cpu_can_disable(unsigned int cpu)
+{
+	return !psci_tos_resident_on(cpu);
+}
+
 static int cpu_psci_cpu_disable(unsigned int cpu)
 {
 	/* Fail early if we don't have CPU_OFF support */
@@ -113,6 +118,7 @@ const struct cpu_operations cpu_psci_ops = {
 	.cpu_prepare	= cpu_psci_cpu_prepare,
 	.cpu_boot	= cpu_psci_cpu_boot,
 #ifdef CONFIG_HOTPLUG_CPU
+	.cpu_can_disable = cpu_psci_cpu_can_disable,
 	.cpu_disable	= cpu_psci_cpu_disable,
 	.cpu_die	= cpu_psci_cpu_die,
 	.cpu_kill	= cpu_psci_cpu_kill,
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..fb9915aa250d 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -363,6 +363,15 @@ void __init setup_arch(char **cmdline_p)
 	}
 }
 
+static inline bool cpu_can_disable(unsigned int cpu)
+{
+#ifdef CONFIG_HOTPLUG_CPU
+	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_can_disable)
+		return cpu_ops[cpu]->cpu_can_disable(cpu);
+#endif
+	return false;
+}
+
 static int __init topology_init(void)
 {
 	int i;
@@ -372,7 +381,7 @@ static int __init topology_init(void)
 
 	for_each_possible_cpu(i) {
 		struct cpu *cpu = &per_cpu(cpu_data.cpu, i);
-		cpu->hotpluggable = 1;
+		cpu->hotpluggable = cpu_can_disable(i);
 		register_cpu(cpu, i);
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
