Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54801D5891
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 00:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6PrM0dTyJjgwqeAGzooUPPHQDDjm45YaFl61ZV1dn4=; b=RDfG9ba/GWK+kr
	AdlxLwfcMqclbWrN2LT9nNt1xoGlmrz/RN+NelTcaviu1R8QO8SsbjqKD2hVw/c7i7w5Erezr1oHJ
	lJmFYq4GgDNgizs759fRCrI52hUzWKFu9RUwyjrFq8hzlKxmUnwNMHxNtDSdzwFRIbXEHgd7iNhti
	eF6UrpAgCwxDDZrcqUQrpGeajqyDpKkNaufVlNhMLdsUSXTVUmhhT+NnPIZXcxjR9uFLgb1Uh+hQc
	bMAfQWCUz1wREqDDH9lWBvzzK8LcdRsZ8pL3vrR3EQe4A1N69Of98UYGZNDI3nNws79hzf45JxZOk
	eRJ19OvuL2wq4Gy2iPmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm8b-00074Y-SU; Sun, 13 Oct 2019 22:14:53 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm7l-0006Sk-N0
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 22:14:03 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iJm7h-00089S-Jb; Mon, 14 Oct 2019 00:13:58 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/6] ARM: Use qrwlock implementation
Date: Mon, 14 Oct 2019 00:13:08 +0200
Message-Id: <20191013221310.30748-5-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191013221310.30748-1-sebastian@breakpoint.cc>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151401_756224_3421B53D 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the generic qrwlock implementation for rwlock. The WFE mechanism is
used as part of the spinlock implementation.

Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
 arch/arm/Kconfig                      |   1 +
 arch/arm/include/asm/Kbuild           |   1 +
 arch/arm/include/asm/spinlock.h       | 143 +-------------------------
 arch/arm/include/asm/spinlock_types.h |   2 +-
 4 files changed, 5 insertions(+), 142 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8a50efb559f35..6029d825671c6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -34,6 +34,7 @@ config ARM
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_CMPXCHG_LOCKREF
+	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select ARCH_WANT_IPC_PARSE_VERSION
 	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
diff --git a/arch/arm/include/asm/Kbuild b/arch/arm/include/asm/Kbuild
index 68ca86f85eb73..5327be7572cd2 100644
--- a/arch/arm/include/asm/Kbuild
+++ b/arch/arm/include/asm/Kbuild
@@ -18,6 +18,7 @@ generic-y += preempt.h
 generic-y += seccomp.h
 generic-y += serial.h
 generic-y += trace_clock.h
+generic-y += qrwlock.h
 
 generated-y += mach-types.h
 generated-y += unistd-nr.h
diff --git a/arch/arm/include/asm/spinlock.h b/arch/arm/include/asm/spinlock.h
index 8f009e788ad40..f250a5022d4f6 100644
--- a/arch/arm/include/asm/spinlock.h
+++ b/arch/arm/include/asm/spinlock.h
@@ -52,6 +52,8 @@ static inline void dsb_sev(void)
  * release it, because V6 CPUs are assumed to have weakly ordered
  * memory.
  */
+#include <asm/qrwlock.h>
+#define smp_mb__after_spinlock()	smp_mb()
 
 static inline void arch_spin_lock(arch_spinlock_t *lock)
 {
@@ -128,146 +130,5 @@ static inline int arch_spin_is_contended(arch_spinlock_t *lock)
 }
 #define arch_spin_is_contended	arch_spin_is_contended
 
-/*
- * RWLOCKS
- *
- *
- * Write locks are easy - we just set bit 31.  When unlocking, we can
- * just write zero since the lock is exclusively held.
- */
-
-static inline void arch_write_lock(arch_rwlock_t *rw)
-{
-	unsigned long tmp;
-
-	prefetchw(&rw->lock);
-	__asm__ __volatile__(
-"1:	ldrex	%0, [%1]\n"
-"	teq	%0, #0\n"
-	WFE("ne")
-"	strexeq	%0, %2, [%1]\n"
-"	teq	%0, #0\n"
-"	bne	1b"
-	: "=&r" (tmp)
-	: "r" (&rw->lock), "r" (0x80000000)
-	: "cc");
-
-	smp_mb();
-}
-
-static inline int arch_write_trylock(arch_rwlock_t *rw)
-{
-	unsigned long contended, res;
-
-	prefetchw(&rw->lock);
-	do {
-		__asm__ __volatile__(
-		"	ldrex	%0, [%2]\n"
-		"	mov	%1, #0\n"
-		"	teq	%0, #0\n"
-		"	strexeq	%1, %3, [%2]"
-		: "=&r" (contended), "=&r" (res)
-		: "r" (&rw->lock), "r" (0x80000000)
-		: "cc");
-	} while (res);
-
-	if (!contended) {
-		smp_mb();
-		return 1;
-	} else {
-		return 0;
-	}
-}
-
-static inline void arch_write_unlock(arch_rwlock_t *rw)
-{
-	smp_mb();
-
-	__asm__ __volatile__(
-	"str	%1, [%0]\n"
-	:
-	: "r" (&rw->lock), "r" (0)
-	: "cc");
-
-	dsb_sev();
-}
-
-/*
- * Read locks are a bit more hairy:
- *  - Exclusively load the lock value.
- *  - Increment it.
- *  - Store new lock value if positive, and we still own this location.
- *    If the value is negative, we've already failed.
- *  - If we failed to store the value, we want a negative result.
- *  - If we failed, try again.
- * Unlocking is similarly hairy.  We may have multiple read locks
- * currently active.  However, we know we won't have any write
- * locks.
- */
-static inline void arch_read_lock(arch_rwlock_t *rw)
-{
-	unsigned long tmp, tmp2;
-
-	prefetchw(&rw->lock);
-	__asm__ __volatile__(
-"	.syntax unified\n"
-"1:	ldrex	%0, [%2]\n"
-"	adds	%0, %0, #1\n"
-"	strexpl	%1, %0, [%2]\n"
-	WFE("mi")
-"	rsbspl	%0, %1, #0\n"
-"	bmi	1b"
-	: "=&r" (tmp), "=&r" (tmp2)
-	: "r" (&rw->lock)
-	: "cc");
-
-	smp_mb();
-}
-
-static inline void arch_read_unlock(arch_rwlock_t *rw)
-{
-	unsigned long tmp, tmp2;
-
-	smp_mb();
-
-	prefetchw(&rw->lock);
-	__asm__ __volatile__(
-"1:	ldrex	%0, [%2]\n"
-"	sub	%0, %0, #1\n"
-"	strex	%1, %0, [%2]\n"
-"	teq	%1, #0\n"
-"	bne	1b"
-	: "=&r" (tmp), "=&r" (tmp2)
-	: "r" (&rw->lock)
-	: "cc");
-
-	if (tmp == 0)
-		dsb_sev();
-}
-
-static inline int arch_read_trylock(arch_rwlock_t *rw)
-{
-	unsigned long contended, res;
-
-	prefetchw(&rw->lock);
-	do {
-		__asm__ __volatile__(
-		"	ldrex	%0, [%2]\n"
-		"	mov	%1, #0\n"
-		"	adds	%0, %0, #1\n"
-		"	strexpl	%1, %0, [%2]"
-		: "=&r" (contended), "=&r" (res)
-		: "r" (&rw->lock)
-		: "cc");
-	} while (res);
-
-	/* If the lock is negative, then it is already held for write. */
-	if (contended < 0x80000000) {
-		smp_mb();
-		return 1;
-	} else {
-		return 0;
-	}
-}
 
 #endif /* __ASM_SPINLOCK_H */
diff --git a/arch/arm/include/asm/spinlock_types.h b/arch/arm/include/asm/spinlock_types.h
index 5976958647fe1..24a8a487e03b3 100644
--- a/arch/arm/include/asm/spinlock_types.h
+++ b/arch/arm/include/asm/spinlock_types.h
@@ -29,6 +29,6 @@ typedef struct {
 	u32 lock;
 } arch_rwlock_t;
 
-#define __ARCH_RW_LOCK_UNLOCKED		{ 0 }
+#include <asm-generic/qrwlock_types.h>
 
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
