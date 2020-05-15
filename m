Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563CD1D57D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHnITG6E9HSu5c/xfXiSJmzZCbsc5CXkQTsnNedp6uM=; b=BfKgpJkTeJc5Ha
	GanC5wQadVvy0rvLCA9HzaYahDMRJYpKWNJveLCfkzAlHupQTNQ89dWdgK1bi5EhTA2ZuEL4QD/9W
	Bq0Al/ABcesL8KAOQwluX96BV/tRRPmbbkRuSv0q7D5JwlNtMgiJa6ZlN3LCg1ezJn5y+P+n9e7eS
	4S2iiUAtAm7TQP3ojSDf/Q1zEab2/qkCVQ91DkeVWZgTnSIWPoQ+lx/deuvwNoCXDRHg+oEy6Wiih
	sE4OqCkFDN2mbOFABqvjlg2EGl2jMtHZGl5Mg/2P8DuwUNX2o2hHZP6UKCLd0tmF4b9mT037t5vOu
	Vlwhn3ruScKURNhKZ3fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe8Z-0000K0-QE; Fri, 15 May 2020 17:28:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZe81-00006p-1z
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:28:10 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF3E92073E;
 Fri, 15 May 2020 17:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589563688;
 bh=fLJmnHjaGKDfs+Gb3LVnn2aRUVteAb4UfTr5WAVaLiE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YUMdl8UVD1wbfLieayUNpca2emxYYKWi0iAXuBeyCak2VV0iNSLbcfw5GtTRdwo5l
 vzd4LIUFQNWi7JUqr2nb9ZCq8mQr0a/00VVMJBzmRtFd855hECkL4C6lSwGbEWPuqv
 K8AHLB7hqv4S5/iEUVX+vGGvRZhblP19B/Kx21II=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] arm64: scs: Store absolute SCS stack pointer value in
 thread_info
Date: Fri, 15 May 2020 18:27:51 +0100
Message-Id: <20200515172756.27185-2-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515172756.27185-1-will@kernel.org>
References: <20200515172756.27185-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_102809_133255_2A1A12B3 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-team@android.com, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@am.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Storing the SCS information in thread_info as a {base,offset} pair
introduces an additional load instruction on the ret-to-user path,
since the SCS stack pointer in x18 has to be converted back to an offset
by subtracting the base.

Replace the offset with the absolute SCS stack pointer value instead
and avoid the redundant load.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/scs.h         | 9 ++++-----
 arch/arm64/include/asm/thread_info.h | 4 ++--
 arch/arm64/kernel/asm-offsets.c      | 2 +-
 include/linux/scs.h                  | 8 ++++----
 kernel/scs.c                         | 3 +--
 5 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
index 96549353b0cb..6b8cf4352fe3 100644
--- a/arch/arm64/include/asm/scs.h
+++ b/arch/arm64/include/asm/scs.h
@@ -4,16 +4,15 @@
 
 #ifdef __ASSEMBLY__
 
+#include <asm/asm-offsets.h>
+
 #ifdef CONFIG_SHADOW_CALL_STACK
 	.macro scs_load tsk, tmp
-	ldp	x18, \tmp, [\tsk, #TSK_TI_SCS_BASE]
-	add	x18, x18, \tmp
+	ldr	x18, [\tsk, #TSK_TI_SCS_SP]
 	.endm
 
 	.macro scs_save tsk, tmp
-	ldr	\tmp, [\tsk, #TSK_TI_SCS_BASE]
-	sub	\tmp, x18, \tmp
-	str	\tmp, [\tsk, #TSK_TI_SCS_OFFSET]
+	str	x18, [\tsk, #TSK_TI_SCS_SP]
 	.endm
 #else
 	.macro scs_load tsk, tmp
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index 9df79c0a4c43..6ea8b6a26ae9 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -43,7 +43,7 @@ struct thread_info {
 	};
 #ifdef CONFIG_SHADOW_CALL_STACK
 	void			*scs_base;
-	unsigned long		scs_offset;
+	void			*scs_sp;
 #endif
 };
 
@@ -107,7 +107,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #ifdef CONFIG_SHADOW_CALL_STACK
 #define INIT_SCS							\
 	.scs_base	= init_shadow_call_stack,			\
-	.scs_offset	= 0,
+	.scs_sp		= init_shadow_call_stack,
 #else
 #define INIT_SCS
 #endif
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index d7934250b68c..a098a45f63d8 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -36,7 +36,7 @@ int main(void)
 #endif
 #ifdef CONFIG_SHADOW_CALL_STACK
   DEFINE(TSK_TI_SCS_BASE,	offsetof(struct task_struct, thread_info.scs_base));
-  DEFINE(TSK_TI_SCS_OFFSET,	offsetof(struct task_struct, thread_info.scs_offset));
+  DEFINE(TSK_TI_SCS_SP,		offsetof(struct task_struct, thread_info.scs_sp));
 #endif
   DEFINE(TSK_STACK,		offsetof(struct task_struct, stack));
 #ifdef CONFIG_STACKPROTECTOR
diff --git a/include/linux/scs.h b/include/linux/scs.h
index 3f3662621a27..0eb2485ef832 100644
--- a/include/linux/scs.h
+++ b/include/linux/scs.h
@@ -27,7 +27,7 @@
 #define SCS_END_MAGIC		(0x5f6UL + POISON_POINTER_DELTA)
 
 #define task_scs(tsk)		(task_thread_info(tsk)->scs_base)
-#define task_scs_offset(tsk)	(task_thread_info(tsk)->scs_offset)
+#define task_scs_sp(tsk)	(task_thread_info(tsk)->scs_sp)
 
 void scs_init(void);
 int scs_prepare(struct task_struct *tsk, int node);
@@ -39,7 +39,7 @@ static inline void scs_task_reset(struct task_struct *tsk)
 	 * Reset the shadow stack to the base address in case the task
 	 * is reused.
 	 */
-	task_scs_offset(tsk) = 0;
+	task_scs_sp(tsk) = task_scs(tsk);
 }
 
 static inline unsigned long *__scs_magic(void *s)
@@ -50,9 +50,9 @@ static inline unsigned long *__scs_magic(void *s)
 static inline bool scs_corrupted(struct task_struct *tsk)
 {
 	unsigned long *magic = __scs_magic(task_scs(tsk));
+	unsigned long sz = task_scs_sp(tsk) - task_scs(tsk);
 
-	return (task_scs_offset(tsk) >= SCS_SIZE - 1 ||
-		READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC);
+	return sz >= SCS_SIZE - 1 || READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC;
 }
 
 #else /* CONFIG_SHADOW_CALL_STACK */
diff --git a/kernel/scs.c b/kernel/scs.c
index 9389c28f0853..5ff8663e4a67 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -60,8 +60,7 @@ int scs_prepare(struct task_struct *tsk, int node)
 	if (!s)
 		return -ENOMEM;
 
-	task_scs(tsk) = s;
-	task_scs_offset(tsk) = 0;
+	task_scs(tsk) = task_scs_sp(tsk) = s;
 	scs_account(tsk, 1);
 	return 0;
 }
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
