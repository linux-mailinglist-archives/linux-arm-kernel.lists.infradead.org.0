Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75F3D7FC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocw6yWuIxm+1spfOAMkc9yojcu/8isSb1mus3Y1u8uo=; b=oUdqtYYY/ufTJ0
	+usV3KWb/2/5O5ibi0OUzYhBcStqHsEQVwOq2ez/RzcBljJMvx88jtgIaWfLzUYhdHWjYn7/MTmep
	edflGzktlbsxhVpTTTd50JJJ66LuoZslELthCWzPbVfxT65pF4igIycBmsvx1+Y7XHdscmTyFbTmh
	eCjT53mZE+9E+f55jZycPCEdBMhfZD+iZHU8w5T5Oj5v1EEPF7LOO4kfVPKdNdOqRuEbI7bKqf/sP
	7+/JIKYMWheXxzuHMe0eN7qahF/r+D5VCuFXXDMJ+ONiAg5CWpGyvfoKPiGL7xz009esHgdpOyfhf
	JxuFX40jxejgRYUsPzMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSLL-0001Rz-JY; Tue, 15 Oct 2019 19:18:51 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSLA-0001Q7-8R
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 19:18:42 +0000
Received: from localhost ([127.0.0.1] helo=localhost.localdomain)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iKSL2-00067i-HU; Tue, 15 Oct 2019 21:18:32 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 02/34] arm64: Use CONFIG_PREEMPTION
Date: Tue, 15 Oct 2019 21:17:49 +0200
Message-Id: <20191015191821.11479-3-bigeasy@linutronix.de>
In-Reply-To: <20191015191821.11479-1-bigeasy@linutronix.de>
References: <20191015191821.11479-1-bigeasy@linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_121840_439379_45FB2F50 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, tglx@linutronix.de,
 Will Deacon <will@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thomas Gleixner <tglx@linutronix.de>

CONFIG_PREEMPTION is selected by CONFIG_PREEMPT and by CONFIG_PREEMPT_RT.
Both PREEMPT and PREEMPT_RT require the same functionality which today
depends on CONFIG_PREEMPT.

Switch the Kconfig dependency, entry code and preemption handling over
to use CONFIG_PREEMPTION. Add PREEMPT_RT output in show_stack().

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
[bigeasy: +traps.c, Kconfig]
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 arch/arm64/Kconfig                 | 52 +++++++++++++++---------------
 arch/arm64/crypto/sha256-glue.c    |  2 +-
 arch/arm64/include/asm/assembler.h |  6 ++--
 arch/arm64/include/asm/preempt.h   |  4 +--
 arch/arm64/kernel/entry.S          |  2 +-
 arch/arm64/kernel/traps.c          |  3 ++
 6 files changed, 36 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 950a56b71ff0d..4a621d6c6e676 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -35,32 +35,32 @@ config ARM64
 	select ARCH_HAS_TEARDOWN_DMA_OPS if IOMMU_SUPPORT
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
 	select ARCH_HAVE_NMI_SAFE_CMPXCHG
-	select ARCH_INLINE_READ_LOCK if !PREEMPT
-	select ARCH_INLINE_READ_LOCK_BH if !PREEMPT
-	select ARCH_INLINE_READ_LOCK_IRQ if !PREEMPT
-	select ARCH_INLINE_READ_LOCK_IRQSAVE if !PREEMPT
-	select ARCH_INLINE_READ_UNLOCK if !PREEMPT
-	select ARCH_INLINE_READ_UNLOCK_BH if !PREEMPT
-	select ARCH_INLINE_READ_UNLOCK_IRQ if !PREEMPT
-	select ARCH_INLINE_READ_UNLOCK_IRQRESTORE if !PREEMPT
-	select ARCH_INLINE_WRITE_LOCK if !PREEMPT
-	select ARCH_INLINE_WRITE_LOCK_BH if !PREEMPT
-	select ARCH_INLINE_WRITE_LOCK_IRQ if !PREEMPT
-	select ARCH_INLINE_WRITE_LOCK_IRQSAVE if !PREEMPT
-	select ARCH_INLINE_WRITE_UNLOCK if !PREEMPT
-	select ARCH_INLINE_WRITE_UNLOCK_BH if !PREEMPT
-	select ARCH_INLINE_WRITE_UNLOCK_IRQ if !PREEMPT
-	select ARCH_INLINE_WRITE_UNLOCK_IRQRESTORE if !PREEMPT
-	select ARCH_INLINE_SPIN_TRYLOCK if !PREEMPT
-	select ARCH_INLINE_SPIN_TRYLOCK_BH if !PREEMPT
-	select ARCH_INLINE_SPIN_LOCK if !PREEMPT
-	select ARCH_INLINE_SPIN_LOCK_BH if !PREEMPT
-	select ARCH_INLINE_SPIN_LOCK_IRQ if !PREEMPT
-	select ARCH_INLINE_SPIN_LOCK_IRQSAVE if !PREEMPT
-	select ARCH_INLINE_SPIN_UNLOCK if !PREEMPT
-	select ARCH_INLINE_SPIN_UNLOCK_BH if !PREEMPT
-	select ARCH_INLINE_SPIN_UNLOCK_IRQ if !PREEMPT
-	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPT
+	select ARCH_INLINE_READ_LOCK if !PREEMPTION
+	select ARCH_INLINE_READ_LOCK_BH if !PREEMPTION
+	select ARCH_INLINE_READ_LOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_READ_LOCK_IRQSAVE if !PREEMPTION
+	select ARCH_INLINE_READ_UNLOCK if !PREEMPTION
+	select ARCH_INLINE_READ_UNLOCK_BH if !PREEMPTION
+	select ARCH_INLINE_READ_UNLOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_READ_UNLOCK_IRQRESTORE if !PREEMPTION
+	select ARCH_INLINE_WRITE_LOCK if !PREEMPTION
+	select ARCH_INLINE_WRITE_LOCK_BH if !PREEMPTION
+	select ARCH_INLINE_WRITE_LOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_WRITE_LOCK_IRQSAVE if !PREEMPTION
+	select ARCH_INLINE_WRITE_UNLOCK if !PREEMPTION
+	select ARCH_INLINE_WRITE_UNLOCK_BH if !PREEMPTION
+	select ARCH_INLINE_WRITE_UNLOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_WRITE_UNLOCK_IRQRESTORE if !PREEMPTION
+	select ARCH_INLINE_SPIN_TRYLOCK if !PREEMPTION
+	select ARCH_INLINE_SPIN_TRYLOCK_BH if !PREEMPTION
+	select ARCH_INLINE_SPIN_LOCK if !PREEMPTION
+	select ARCH_INLINE_SPIN_LOCK_BH if !PREEMPTION
+	select ARCH_INLINE_SPIN_LOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_SPIN_LOCK_IRQSAVE if !PREEMPTION
+	select ARCH_INLINE_SPIN_UNLOCK if !PREEMPTION
+	select ARCH_INLINE_SPIN_UNLOCK_BH if !PREEMPTION
+	select ARCH_INLINE_SPIN_UNLOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
 	select ARCH_KEEP_MEMBLOCK
 	select ARCH_USE_CMPXCHG_LOCKREF
 	select ARCH_USE_QUEUED_RWLOCKS
diff --git a/arch/arm64/crypto/sha256-glue.c b/arch/arm64/crypto/sha256-glue.c
index e273faca924f9..999da59f03a9d 100644
--- a/arch/arm64/crypto/sha256-glue.c
+++ b/arch/arm64/crypto/sha256-glue.c
@@ -97,7 +97,7 @@ static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
 		 * input when running on a preemptible kernel, but process the
 		 * data block by block instead.
 		 */
-		if (IS_ENABLED(CONFIG_PREEMPT) &&
+		if (IS_ENABLED(CONFIG_PREEMPTION) &&
 		    chunk + sctx->count % SHA256_BLOCK_SIZE > SHA256_BLOCK_SIZE)
 			chunk = SHA256_BLOCK_SIZE -
 				sctx->count % SHA256_BLOCK_SIZE;
diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index b8cf7c85ffa2a..2cc0dd8bd9f78 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -699,8 +699,8 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
  * where <label> is optional, and marks the point where execution will resume
  * after a yield has been performed. If omitted, execution resumes right after
  * the endif_yield_neon invocation. Note that the entire sequence, including
- * the provided patchup code, will be omitted from the image if CONFIG_PREEMPT
- * is not defined.
+ * the provided patchup code, will be omitted from the image if
+ * CONFIG_PREEMPTION is not defined.
  *
  * As a convenience, in the case where no patchup code is required, the above
  * sequence may be abbreviated to
@@ -728,7 +728,7 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 	.endm
 
 	.macro		if_will_cond_yield_neon
-#ifdef CONFIG_PREEMPT
+#ifdef CONFIG_PREEMPTION
 	get_current_task	x0
 	ldr		x0, [x0, #TSK_TI_PREEMPT]
 	sub		x0, x0, #PREEMPT_DISABLE_OFFSET
diff --git a/arch/arm64/include/asm/preempt.h b/arch/arm64/include/asm/preempt.h
index d499516470149..80e946b2abee2 100644
--- a/arch/arm64/include/asm/preempt.h
+++ b/arch/arm64/include/asm/preempt.h
@@ -79,11 +79,11 @@ static inline bool should_resched(int preempt_offset)
 	return pc == preempt_offset;
 }
 
-#ifdef CONFIG_PREEMPT
+#ifdef CONFIG_PREEMPTION
 void preempt_schedule(void);
 #define __preempt_schedule() preempt_schedule()
 void preempt_schedule_notrace(void);
 #define __preempt_schedule_notrace() preempt_schedule_notrace()
-#endif /* CONFIG_PREEMPT */
+#endif /* CONFIG_PREEMPTION */
 
 #endif /* __ASM_PREEMPT_H */
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index e304fe04b098d..a3f5e757983ff 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -669,7 +669,7 @@ ENDPROC(el1_sync)
 
 	irq_handler
 
-#ifdef CONFIG_PREEMPT
+#ifdef CONFIG_PREEMPTION
 	ldr	x24, [tsk, #TSK_TI_PREEMPT]	// get preempt count
 alternative_if ARM64_HAS_IRQ_PRIO_MASKING
 	/*
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 34739e80211bc..0bf934257744d 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -143,9 +143,12 @@ void show_stack(struct task_struct *tsk, unsigned long *sp)
 
 #ifdef CONFIG_PREEMPT
 #define S_PREEMPT " PREEMPT"
+#elif defined(CONFIG_PREEMPT_RT)
+#define S_PREEMPT " PREEMPT_RT"
 #else
 #define S_PREEMPT ""
 #endif
+
 #define S_SMP " SMP"
 
 static int __die(const char *str, int err, struct pt_regs *regs)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
