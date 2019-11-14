Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29629FC966
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2nyTk77ag8Vy39Z/d5imBEgUwmuWvkcw4D/1V3eu7I=; b=emSWmU5XYOrp6g
	NQDprJ+J9dbh7TuPucF2Ixj8IdaSOrQFnaE5BY4cH6loQVWbO3i934PaF6sDQiGZOePb+m/yzvs4g
	C+VP+lG1BEdyr/9K2Gg335cQtQqkJtEXrx8sp/mslCZbcnS6BDha7HdjQqBDMnMfmdF4UCrQUxKQK
	daztjb0ZYLMM4zWucxORvykmo8s4j+j1RiEZku2gD+vd+aWM8n8RnPz0DqRlaRjUr5LHX5RLPh52F
	mb9J3ed65NLbolcetfkPpSnnKDLhdG3/dx+9QT6ShwzI8QQTw84HO39Ht5BT6ePba71GHVkH3V/E5
	qlxf7XQg5e00l68FTzzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGc8-0008EH-Ov; Thu, 14 Nov 2019 15:00:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGbK-0006RB-Fl
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:00:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4107328;
 Thu, 14 Nov 2019 07:00:01 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B5F243F52E;
 Thu, 14 Nov 2019 07:00:00 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] arm64: Workaround Cortex-A77 erratum 1542418 on boot due
 to kexec
Date: Thu, 14 Nov 2019 14:59:16 +0000
Message-Id: <20191114145918.235339-4-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114145918.235339-1-suzuki.poulose@arm.com>
References: <20191114145918.235339-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_070002_623181_1FCD1590 
X-CRM114-Status: GOOD (  12.40  )
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, catalin.marinas@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

Kexec allows us to inherit dirty ASIDs from a previous kernel. We can't
wait until the next ASID rollover to cleanup, do it early as part of
the cpu-errata's enable callback.

This extends __arm64_workaround_1542418_asid_rollover() to put everything
back as it was.

Signed-off-by: James Morse <james.morse@arm.com>
[ skip CPUs not affected, refactor cpu_enable callback ]
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/include/asm/mmu_context.h |  1 +
 arch/arm64/kernel/cpu_errata.c       | 14 ++++++++++++++
 arch/arm64/mm/context.c              | 17 +++++++++++++++++
 3 files changed, 32 insertions(+)

diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 3827ff4040a3..434a5c661d78 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -247,6 +247,7 @@ switch_mm(struct mm_struct *prev, struct mm_struct *next,
 
 void verify_cpu_asid_bits(void);
 void post_ttbr_update_workaround(void);
+void arm64_workaround_1542418_asid_rollover(void);
 
 #endif /* !__ASSEMBLY__ */
 
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index a66d433d0113..4656157ffa36 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -12,6 +12,7 @@
 #include <asm/cpu.h>
 #include <asm/cputype.h>
 #include <asm/cpufeature.h>
+#include <asm/mmu_context.h>
 #include <asm/smp_plat.h>
 
 static bool __maybe_unused
@@ -650,6 +651,18 @@ needs_tx2_tvm_workaround(const struct arm64_cpu_capabilities *entry,
 	return false;
 }
 
+#ifdef CONFIG_ARM64_ERRATUM_1542418
+static void run_workaround_1542418_asid_rollover(const struct arm64_cpu_capabilities *c)
+{
+	/*
+	 * If this CPU is affected by the erratum, run the workaround
+	 * to protect us in case we are running on a kexec'ed kernel.
+	 */
+	if (c->matches(c, SCOPE_LOCAL_CPU))
+		arm64_workaround_1542418_asid_rollover();
+}
+#endif
+
 #ifdef CONFIG_HARDEN_EL2_VECTORS
 
 static const struct midr_range arm64_harden_el2_vectors[] = {
@@ -932,6 +945,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		.desc = "ARM erratum 1542418",
 		.capability = ARM64_WORKAROUND_1542418,
 		ERRATA_MIDR_RANGE(MIDR_CORTEX_A77, 0, 0, 1, 0),
+		.cpu_enable = run_workaround_1542418_asid_rollover,
 	},
 #endif
 	{
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index ae3ee8e101d6..ad4e78bb68ed 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -129,6 +129,23 @@ static void __arm64_workaround_1542418_asid_rollover(void)
 	 */
 }
 
+void arm64_workaround_1542418_asid_rollover(void)
+{
+	u64 ttbr0 = read_sysreg(ttbr0_el1);
+
+	lockdep_assert_irqs_disabled();
+
+	/* Mirror check_and_switch_context() */
+	if (system_supports_cnp())
+		cpu_set_reserved_ttbr0();
+
+	__arm64_workaround_1542418_asid_rollover();
+	isb();
+
+	write_sysreg(ttbr0, ttbr0_el1);
+	isb();
+}
+
 static void flush_context(void)
 {
 	int i;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
