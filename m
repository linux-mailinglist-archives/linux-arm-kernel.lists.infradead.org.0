Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1939A16F43A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 01:25:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QB6OGSeVHzUffDtFkqCA6s37Mwkkh4za3rhti3deFqY=; b=LEvrbMRCsnDEok
	jjGuXiHegx6DUkLMRKHp6MGAv5iO5xig0L3AZDIhCYyrveyUmPXPy3vY1G91ZXbl/xWD34i7sPK+C
	s6ky9l6KTXUNAdXRjyf4fMNdbD6vmpX0TG3Nnvn0NQWvwP1M0U4dNLMPjfSsiyb7uNKYPkEu5vIPm
	0g8gD6VPHZWVaR6+LFCfOIpeOjZNmdK5EDSV8d6jxh1nNdfvu7OjimUa8rETITjSuZS7AGkaB5VaO
	iDS2ggB7B5zpRYpshMCTQMeBnY1ylwTP+s9vQcdI69mBrTKK115bipSWOHUDqBZ34ZWfaIIJIk47+
	q6Ils56Eqe6v9zKMmmjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kWR-0003YJ-1H; Wed, 26 Feb 2020 00:25:55 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kV5-0001OG-Cf
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 00:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582676669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=e7LACCPtQ03qHcRT0uU2IDihmnW0G2do+jgbgZNye9E=;
 b=UuYh+5wEQIaMKX3v9XY8E5u74jP76zp2sXZaqItbMmn7+sMn3bIMwFfZr+E6Td56QP6o6A
 7Hmw3F61YIz6K1XR4t9vDNSUgzuV8xAbEzGSX4/Kw91rDx+pjce0nC6VNAvfFwVy91TPmf
 6hW6+3OVsi7KxuUxHCBFN6iq2zMGCIc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-250-xJk-phLaN2-LqoYkaJFTRw-1; Tue, 25 Feb 2020 19:24:27 -0500
X-MC-Unique: xJk-phLaN2-LqoYkaJFTRw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E85E5107ACC9;
 Wed, 26 Feb 2020 00:24:25 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-83.bne.redhat.com
 [10.64.54.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 541765C21B;
 Wed, 26 Feb 2020 00:24:23 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 5/5] arm64: Remove argument @cpu of get_cpu_ops()
Date: Wed, 26 Feb 2020 11:23:56 +1100
Message-Id: <20200226002356.86986-6-gshan@redhat.com>
In-Reply-To: <20200226002356.86986-1-gshan@redhat.com>
References: <20200226002356.86986-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_162431_517785_E82FE57B 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, catalin.marinas@arm.com,
 robin.murphy@arm.com, shan.gavin@gmail.com, sudeep.holla@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This removes the argument (@cpu) of get_cpu_ops() as it's not used.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/include/asm/cpu_ops.h |  2 +-
 arch/arm64/kernel/cpu_ops.c      |  2 +-
 arch/arm64/kernel/cpuidle.c      |  5 ++---
 arch/arm64/kernel/setup.c        |  2 +-
 arch/arm64/kernel/smp.c          | 21 ++++++++++-----------
 5 files changed, 15 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/include/asm/cpu_ops.h b/arch/arm64/include/asm/cpu_ops.h
index d28e8f37d3b4..1d5c514ca053 100644
--- a/arch/arm64/include/asm/cpu_ops.h
+++ b/arch/arm64/include/asm/cpu_ops.h
@@ -56,7 +56,7 @@ struct cpu_operations {
 };
 
 int __init init_cpu_ops(int cpu);
-extern const struct cpu_operations *get_cpu_ops(int cpu);
+extern const struct cpu_operations *get_cpu_ops(void);
 
 static inline void __init init_bootcpu_ops(void)
 {
diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index af73ca502b95..a32a2e07e7e6 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -106,7 +106,7 @@ int __init init_cpu_ops(int cpu)
 	return 0;
 }
 
-const struct cpu_operations *get_cpu_ops(int cpu)
+const struct cpu_operations *get_cpu_ops(void)
 {
 	return cpu_ops;
 }
diff --git a/arch/arm64/kernel/cpuidle.c b/arch/arm64/kernel/cpuidle.c
index b512b5503f6e..da2db14d2d45 100644
--- a/arch/arm64/kernel/cpuidle.c
+++ b/arch/arm64/kernel/cpuidle.c
@@ -18,7 +18,7 @@
 
 int arm_cpuidle_init(unsigned int cpu)
 {
-	const struct cpu_operations *ops = get_cpu_ops(cpu);
+	const struct cpu_operations *ops = get_cpu_ops();
 	int ret = -EOPNOTSUPP;
 
 	if (ops && ops->cpu_suspend && ops->cpu_init_idle)
@@ -36,8 +36,7 @@ int arm_cpuidle_init(unsigned int cpu)
  */
 int arm_cpuidle_suspend(int index)
 {
-	int cpu = smp_processor_id();
-	const struct cpu_operations *ops = get_cpu_ops(cpu);
+	const struct cpu_operations *ops = get_cpu_ops();
 
 	return ops->cpu_suspend(index);
 }
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 3fd2c11c09fc..5c68fa2d9d1b 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -371,7 +371,7 @@ void __init setup_arch(char **cmdline_p)
 static inline bool cpu_can_disable(unsigned int cpu)
 {
 #ifdef CONFIG_HOTPLUG_CPU
-	const struct cpu_operations *ops = get_cpu_ops(cpu);
+	const struct cpu_operations *ops = get_cpu_ops();
 
 	if (ops && ops->cpu_can_disable)
 		return ops->cpu_can_disable(cpu);
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 5e1af1a3c521..0180d4163e17 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -93,7 +93,7 @@ static inline int op_cpu_kill(unsigned int cpu)
  */
 static int boot_secondary(unsigned int cpu, struct task_struct *idle)
 {
-	const struct cpu_operations *ops = get_cpu_ops(cpu);
+	const struct cpu_operations *ops = get_cpu_ops();
 
 	if (ops->cpu_boot)
 		return ops->cpu_boot(cpu);
@@ -230,7 +230,7 @@ asmlinkage notrace void secondary_start_kernel(void)
 	 */
 	check_local_cpu_capabilities();
 
-	ops = get_cpu_ops(cpu);
+	ops = get_cpu_ops();
 	if (ops->cpu_postboot)
 		ops->cpu_postboot();
 
@@ -270,7 +270,7 @@ asmlinkage notrace void secondary_start_kernel(void)
 #ifdef CONFIG_HOTPLUG_CPU
 static int op_cpu_disable(unsigned int cpu)
 {
-	const struct cpu_operations *ops = get_cpu_ops(cpu);
+	const struct cpu_operations *ops = get_cpu_ops();
 
 	/*
 	 * If we don't have a cpu_die method, abort before we reach the point
@@ -320,7 +320,7 @@ int __cpu_disable(void)
 
 static int op_cpu_kill(unsigned int cpu)
 {
-	const struct cpu_operations *ops = get_cpu_ops(cpu);
+	const struct cpu_operations *ops = get_cpu_ops();
 
 	/*
 	 * If we have no means of synchronising with the dying CPU, then assume
@@ -365,7 +365,7 @@ void __cpu_die(unsigned int cpu)
 void cpu_die(void)
 {
 	unsigned int cpu = smp_processor_id();
-	const struct cpu_operations *ops = get_cpu_ops(cpu);
+	const struct cpu_operations *ops = get_cpu_ops();
 
 	idle_task_exit();
 
@@ -392,7 +392,7 @@ void cpu_die(void)
 void cpu_die_early(void)
 {
 	int cpu = smp_processor_id();
-	const struct cpu_operations *ops = get_cpu_ops(cpu);
+	const struct cpu_operations *ops = get_cpu_ops();
 
 	pr_crit("CPU%d: will not boot\n", cpu);
 
@@ -503,7 +503,7 @@ static int __init smp_cpu_setup(int cpu)
 	if (init_cpu_ops(cpu))
 		return -ENODEV;
 
-	ops = get_cpu_ops(cpu);
+	ops = get_cpu_ops();
 	if (ops->cpu_init(cpu))
 		return -ENODEV;
 
@@ -758,7 +758,7 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
 		if (cpu == smp_processor_id())
 			continue;
 
-		ops = get_cpu_ops(cpu);
+		ops = get_cpu_ops();
 		if (!ops)
 			continue;
 
@@ -883,7 +883,7 @@ static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
 	sdei_mask_local_cpu();
 
 #ifdef CONFIG_HOTPLUG_CPU
-	ops = get_cpu_ops(cpu);
+	ops = get_cpu_ops();
 	if (ops->cpu_die)
 		ops->cpu_die(cpu);
 #endif
@@ -1063,8 +1063,7 @@ int setup_profiling_timer(unsigned int multiplier)
 static bool have_cpu_die(void)
 {
 #ifdef CONFIG_HOTPLUG_CPU
-	int any_cpu = raw_smp_processor_id();
-	const struct cpu_operations *ops = get_cpu_ops(any_cpu);
+	const struct cpu_operations *ops = get_cpu_ops();
 
 	if (ops && ops->cpu_die)
 		return true;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
