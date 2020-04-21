Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754F21B29B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neanf1qPJFR8GrwYQLFQA/XsSPa8fnWOcDwQaO76OEg=; b=nwnxBOM/Bpluxz
	2Exf7NLPXJbY58rvWhWfOw/fwGvi9MgfPDADRia01IvR8jhUxZIv0R2rSuXoMO+TXVzf+BAQDFmLe
	18a32UwHLBaij1dCITeO7UdbSvPWYiuAavQh05j3AQJ0u4/IYbzaGMNQYO3yp6KU3W25ejrygdYJ/
	63Klbj61SDmQoCZHGs/X9Tx3F8dSYpVISW+VKhC7r+QLhBkGzJJMXNJ7caYqc+Im3qvI/qbJZQNW7
	sTXjYOP19H7ITu5hzDcPatIk1HMSYQtpda9HBvzD1vTDSz9oSkT7Uu4naLoFt6hB794qBEFps3pZW
	B9ZRZjpEpjdVD55NXzIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtvw-0006Cu-6C; Tue, 21 Apr 2020 14:31:32 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtrJ-0008VP-H8
 for linux-arm-kernel@bombadil.infradead.org; Tue, 21 Apr 2020 14:26:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=lhRWRDrvY13Rgjqs3vDy2G1eLYLCDXGnOHre+ZTxyOI=; b=cFkZnB7RbhHhldHv88zaG82btH
 QS03vCB8vGjarzZ8bUyKLvssaGU24Tk8GJrRIVlEqmbjW6jzSWW8u2qbbBWq+8llA/bSwQ9/+soL0
 FJrIW1hF+BkC+EaOS36N9Sd0bcPnwg5Z43wSQmQSaSLDczXsnxFxmncPF8OZvkUxnOde+ieBxNV7B
 xkQ5MJK1izu7ICeQsv6b3FWw04uk2GmtVOzuJjvJ4Xabq/UCWppDofkb9LYRE8RRHM7n7E4BDFdKR
 LTahbm8PbM+l7Wd6KYiSGEivh9rivCvNULMtAgjpfT9kk4rekSD7nSXJpNe/36gcZu7WVPM0wKdis
 +R06kplQ==;
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtrG-0000mH-St
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:26:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B783FC14;
 Tue, 21 Apr 2020 07:26:42 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C1FB63F68F;
 Tue, 21 Apr 2020 07:26:40 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 17/23] arm64: mte: Allow user control of the generated
 random tags via prctl()
Date: Tue, 21 Apr 2020 15:25:57 +0100
Message-Id: <20200421142603.3894-18-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421142603.3894-1-catalin.marinas@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IRG, ADDG and SUBG instructions insert a random tag in the resulting
address. Certain tags can be excluded via the GCR_EL1.Exclude bitmap
when, for example, the user wants a certain colour for freed buffers.
Since the GCR_EL1 register is not accessible at EL0, extend the
prctl(PR_SET_TAGGED_ADDR_CTRL) interface to include a 16-bit field in
the first argument for controlling which tags can be generated by the
above instruction (an include rather than exclude mask). Note that by
default all non-zero tags are excluded. This setting is per-thread.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---

Notes:
    v2:
    - Switch from an exclude mask to an include one for the prctl()
      interface.
    - Reset the allowed tags mask during flush_thread().

 arch/arm64/include/asm/processor.h |  1 +
 arch/arm64/include/asm/sysreg.h    |  7 ++++++
 arch/arm64/kernel/mte.c            | 35 +++++++++++++++++++++++++++---
 arch/arm64/kernel/process.c        |  2 +-
 include/uapi/linux/prctl.h         |  3 +++
 5 files changed, 44 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 80e7f0573309..996b882a32d9 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -153,6 +153,7 @@ struct thread_struct {
 #endif
 #ifdef CONFIG_ARM64_MTE
 	u64			sctlr_tcf0;
+	u64			gcr_incl;
 #endif
 };
 
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 86236ae6c4e7..cb247f2f75ca 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -981,6 +981,13 @@
 		write_sysreg(__scs_new, sysreg);			\
 } while (0)
 
+#define sysreg_clear_set_s(sysreg, clear, set) do {			\
+	u64 __scs_val = read_sysreg_s(sysreg);				\
+	u64 __scs_new = (__scs_val & ~(u64)(clear)) | (set);		\
+	if (__scs_new != __scs_val)					\
+		write_sysreg_s(__scs_new, sysreg);			\
+} while (0)
+
 #endif
 
 #endif	/* __ASM_SYSREG_H */
diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
index e62d02890d12..212b9fac294d 100644
--- a/arch/arm64/kernel/mte.c
+++ b/arch/arm64/kernel/mte.c
@@ -31,6 +31,25 @@ static void set_sctlr_el1_tcf0(u64 tcf0)
 	preempt_enable();
 }
 
+static void update_gcr_el1_excl(u64 incl)
+{
+	u64 excl = ~incl & SYS_GCR_EL1_EXCL_MASK;
+
+	/*
+	 * Note that 'incl' is an include mask (controlled by the user via
+	 * prctl()) while GCR_EL1 accepts an exclude mask.
+	 * No need for ISB since this only affects EL0 currently, implicit
+	 * with ERET.
+	 */
+	sysreg_clear_set_s(SYS_GCR_EL1, SYS_GCR_EL1_EXCL_MASK, excl);
+}
+
+static void set_gcr_el1_excl(u64 incl)
+{
+	current->thread.gcr_incl = incl;
+	update_gcr_el1_excl(incl);
+}
+
 void flush_mte_state(void)
 {
 	if (!system_supports_mte())
@@ -42,6 +61,8 @@ void flush_mte_state(void)
 	clear_thread_flag(TIF_MTE_ASYNC_FAULT);
 	/* disable tag checking */
 	set_sctlr_el1_tcf0(SCTLR_EL1_TCF0_NONE);
+	/* reset tag generation mask */
+	set_gcr_el1_excl(0);
 }
 
 void mte_thread_switch(struct task_struct *next)
@@ -52,6 +73,7 @@ void mte_thread_switch(struct task_struct *next)
 	/* avoid expensive SCTLR_EL1 accesses if no change */
 	if (current->thread.sctlr_tcf0 != next->thread.sctlr_tcf0)
 		update_sctlr_el1_tcf0(next->thread.sctlr_tcf0);
+	update_gcr_el1_excl(next->thread.gcr_incl);
 }
 
 long set_mte_ctrl(unsigned long arg)
@@ -76,23 +98,30 @@ long set_mte_ctrl(unsigned long arg)
 	}
 
 	set_sctlr_el1_tcf0(tcf0);
+	set_gcr_el1_excl((arg & PR_MTE_TAG_MASK) >> PR_MTE_TAG_SHIFT);
 
 	return 0;
 }
 
 long get_mte_ctrl(void)
 {
+	unsigned long ret;
+
 	if (!system_supports_mte())
 		return 0;
 
+	ret = current->thread.gcr_incl << PR_MTE_TAG_SHIFT;
+
 	switch (current->thread.sctlr_tcf0) {
 	case SCTLR_EL1_TCF0_NONE:
 		return PR_MTE_TCF_NONE;
 	case SCTLR_EL1_TCF0_SYNC:
-		return PR_MTE_TCF_SYNC;
+		ret |= PR_MTE_TCF_SYNC;
+		break;
 	case SCTLR_EL1_TCF0_ASYNC:
-		return PR_MTE_TCF_ASYNC;
+		ret |= PR_MTE_TCF_ASYNC;
+		break;
 	}
 
-	return 0;
+	return ret;
 }
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index ff6031a398d0..697571be259b 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -601,7 +601,7 @@ long set_tagged_addr_ctrl(unsigned long arg)
 		return -EINVAL;
 
 	if (system_supports_mte())
-		valid_mask |= PR_MTE_TCF_MASK;
+		valid_mask |= PR_MTE_TCF_MASK | PR_MTE_TAG_MASK;
 
 	if (arg & ~valid_mask)
 		return -EINVAL;
diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
index 2390ab324afa..7f0827705c9a 100644
--- a/include/uapi/linux/prctl.h
+++ b/include/uapi/linux/prctl.h
@@ -239,6 +239,9 @@ struct prctl_mm_map {
 # define PR_MTE_TCF_SYNC		(1UL << PR_MTE_TCF_SHIFT)
 # define PR_MTE_TCF_ASYNC		(2UL << PR_MTE_TCF_SHIFT)
 # define PR_MTE_TCF_MASK		(3UL << PR_MTE_TCF_SHIFT)
+/* MTE tag inclusion mask */
+# define PR_MTE_TAG_SHIFT		3
+# define PR_MTE_TAG_MASK		(0xffffUL << PR_MTE_TAG_SHIFT)
 
 /* Control reclaim behavior when allocating memory */
 #define PR_SET_IO_FLUSHER		57

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
