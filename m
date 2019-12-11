Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A7311BC22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vAPY+VM9GTjzBoWvI9lNB7MltemvkS8hkU0PIHCxSE=; b=Gh1HF8kJ2fUGLI
	xuuvJcGvCGw8kEafnNQcuhU1NOSgJWEUgg2XFKco/smbmaxASqDo7VIdisq8ZcHG+0ccQgq/6/e00
	sYXEsjtIws6DCZOXg7WAIIjuqIg9Nx5u3lWrsJtozC3LPMumxfPT2+gsysWArIVqiEyN9KcQGtt2f
	F8WsV4cl2AXe/qp2+J27l+V9nmNqBNLuL1wmQQqdZ2Aa4hS+GhJljt/r9u3+ysKQvifXmJaMuoTWS
	tVoFNUyZ6Tu9bqiXHLvTUM4zZvWg0YRNfX7HkLM6yD8nbXZEzgdEoHHoMmcz1stSWpTeqzkQva0lA
	8EzmyZbhKQpHQytNj7rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6zo-0000jX-7D; Wed, 11 Dec 2019 18:46:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6v9-0003VV-O4
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:41:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB91314FF;
 Wed, 11 Dec 2019 10:41:10 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 729483F6CF;
 Wed, 11 Dec 2019 10:41:09 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 20/22] arm64: mte: Allow user control of the excluded tags via
 prctl()
Date: Wed, 11 Dec 2019 18:40:25 +0000
Message-Id: <20191211184027.20130-21-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104111_923068_45408336 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IRG, ADDG and SUBG instructions insert a random tag in the resulting
address. Certain tags can be excluded via the GCR_EL1.Exclude bitmap
when, for example, the user wants a certain colour for freed buffers.
Since the GCR_EL1 register is not accessible at EL0, extend the
prctl(PR_SET_TAGGED_ADDR_CTRL) interface to include a 16-bit field in
the first argument for controlling the excluded tags. This setting is
pre-thread.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/processor.h |  1 +
 arch/arm64/include/asm/sysreg.h    |  7 +++++++
 arch/arm64/kernel/process.c        | 27 +++++++++++++++++++++++----
 include/uapi/linux/prctl.h         |  3 +++
 4 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 91aa270afc7d..5b6988035334 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -150,6 +150,7 @@ struct thread_struct {
 #endif
 #ifdef CONFIG_ARM64_MTE
 	u64			sctlr_tcf0;
+	u64			gcr_excl;
 #endif
 };
 
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 9e5753272f4b..b6bb6d31f1cd 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -901,6 +901,13 @@
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
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 47ce98f47253..5ec6889795fc 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -502,6 +502,15 @@ static void update_sctlr_el1_tcf0(u64 tcf0)
 	sysreg_clear_set(sctlr_el1, SCTLR_EL1_TCF0_MASK, tcf0);
 }
 
+static void update_gcr_el1_excl(u64 excl)
+{
+	/*
+	 * No need for ISB since this only affects EL0 currently, implicit
+	 * with ERET.
+	 */
+	sysreg_clear_set_s(SYS_GCR_EL1, SYS_GCR_EL1_EXCL_MASK, excl);
+}
+
 /* Handle MTE thread switch */
 static void mte_thread_switch(struct task_struct *next)
 {
@@ -511,6 +520,7 @@ static void mte_thread_switch(struct task_struct *next)
 	/* avoid expensive SCTLR_EL1 accesses if no change */
 	if (current->thread.sctlr_tcf0 != next->thread.sctlr_tcf0)
 		update_sctlr_el1_tcf0(next->thread.sctlr_tcf0);
+	update_gcr_el1_excl(next->thread.gcr_excl);
 }
 #else
 static void mte_thread_switch(struct task_struct *next)
@@ -641,22 +651,31 @@ static long set_mte_ctrl(unsigned long arg)
 	update_sctlr_el1_tcf0(tcf0);
 	preempt_enable();
 
+	current->thread.gcr_excl = (arg & PR_MTE_EXCL_MASK) >> PR_MTE_EXCL_SHIFT;
+	update_gcr_el1_excl(current->thread.gcr_excl);
+
 	return 0;
 }
 
 static long get_mte_ctrl(void)
 {
+	unsigned long ret;
+
 	if (!system_supports_mte())
 		return 0;
 
+	ret = current->thread.gcr_excl << PR_MTE_EXCL_SHIFT;
+
 	switch (current->thread.sctlr_tcf0) {
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
 #else
 static long set_mte_ctrl(unsigned long arg)
@@ -684,7 +703,7 @@ long set_tagged_addr_ctrl(unsigned long arg)
 		return -EINVAL;
 
 	if (system_supports_mte())
-		valid_mask |= PR_MTE_TCF_MASK;
+		valid_mask |= PR_MTE_TCF_MASK | PR_MTE_EXCL_MASK;
 
 	if (arg & ~valid_mask)
 		return -EINVAL;
diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
index 5e9323e66a38..749de5ab4f9f 100644
--- a/include/uapi/linux/prctl.h
+++ b/include/uapi/linux/prctl.h
@@ -239,5 +239,8 @@ struct prctl_mm_map {
 # define PR_MTE_TCF_SYNC		(1UL << PR_MTE_TCF_SHIFT)
 # define PR_MTE_TCF_ASYNC		(2UL << PR_MTE_TCF_SHIFT)
 # define PR_MTE_TCF_MASK		(3UL << PR_MTE_TCF_SHIFT)
+/* MTE tag exclusion mask */
+# define PR_MTE_EXCL_SHIFT		3
+# define PR_MTE_EXCL_MASK		(0xffffUL << PR_MTE_EXCL_SHIFT)
 
 #endif /* _LINUX_PRCTL_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
