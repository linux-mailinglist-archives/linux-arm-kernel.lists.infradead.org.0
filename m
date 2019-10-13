Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAD1D5892
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 00:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huGCxbkmQyl5PcucaHCGatfgbbM4xYVPfdzyz3UvJp8=; b=O1pWzMNU26/ivq
	JbLwAbqbqVyGBkOtZYjyJlN3RB/D3dEw16Ow4B7/lqAYx6aq1kuEcl1k5HbkFZgp1hOdLVS7PUPNS
	oXpkQNxLOOzs7BfLpwaMxqjayGvJWzBXot4RlJQpJL1WxwN+fNhcckxkPdmOtsQDn5+jFpuzo0PP4
	AffjlX9h3BUTTp657HdgpPZAIhxB6ye2BWnz62pkUm+RN3i3aRefNdq0/3pc+WOTXHNwKbR3ELddY
	r5sbcZvxCvuZ6U2RmSWaIBRuotKCGGq154SCez7m95WlwGGkbp4CywbIgOSOO4CC7TJJDh/7s6zFJ
	yFrVCGwRTlyuSfWl76FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm8n-0007Id-HE; Sun, 13 Oct 2019 22:15:05 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm7n-0006U3-2v
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 22:14:04 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iJm7j-00089S-Bv; Mon, 14 Oct 2019 00:14:00 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/6] ARM: Use qspinlock implementation
Date: Mon, 14 Oct 2019 00:13:09 +0200
Message-Id: <20191013221310.30748-6-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191013221310.30748-1-sebastian@breakpoint.cc>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151403_169950_8963511D 
X-CRM114-Status: GOOD (  13.60  )
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

Use the generic queued spinlock implementation for spinlock. The WFE
mechanism is used as part of arch_mcs_spin_lock_contended().

Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
 arch/arm/Kconfig                      |  1 +
 arch/arm/include/asm/Kbuild           |  1 +
 arch/arm/include/asm/spinlock.h       | 77 +--------------------------
 arch/arm/include/asm/spinlock_types.h | 24 +--------
 4 files changed, 5 insertions(+), 98 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6029d825671c6..4c780e7387208 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -35,6 +35,7 @@ config ARM
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_CMPXCHG_LOCKREF
 	select ARCH_USE_QUEUED_RWLOCKS
+	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select ARCH_WANT_IPC_PARSE_VERSION
 	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
diff --git a/arch/arm/include/asm/Kbuild b/arch/arm/include/asm/Kbuild
index 5327be7572cd2..f98bcfd9612b6 100644
--- a/arch/arm/include/asm/Kbuild
+++ b/arch/arm/include/asm/Kbuild
@@ -18,6 +18,7 @@ generic-y += preempt.h
 generic-y += seccomp.h
 generic-y += serial.h
 generic-y += trace_clock.h
+generic-y += qspinlock.h
 generic-y += qrwlock.h
 
 generated-y += mach-types.h
diff --git a/arch/arm/include/asm/spinlock.h b/arch/arm/include/asm/spinlock.h
index f250a5022d4f6..5d491abfefd02 100644
--- a/arch/arm/include/asm/spinlock.h
+++ b/arch/arm/include/asm/spinlock.h
@@ -52,83 +52,10 @@ static inline void dsb_sev(void)
  * release it, because V6 CPUs are assumed to have weakly ordered
  * memory.
  */
+
 #include <asm/qrwlock.h>
+#include <asm/qspinlock.h>
 #define smp_mb__after_spinlock()	smp_mb()
 
-static inline void arch_spin_lock(arch_spinlock_t *lock)
-{
-	unsigned long tmp;
-	u32 newval;
-	arch_spinlock_t lockval;
-
-	prefetchw(&lock->slock);
-	__asm__ __volatile__(
-"1:	ldrex	%0, [%3]\n"
-"	add	%1, %0, %4\n"
-"	strex	%2, %1, [%3]\n"
-"	teq	%2, #0\n"
-"	bne	1b"
-	: "=&r" (lockval), "=&r" (newval), "=&r" (tmp)
-	: "r" (&lock->slock), "I" (1 << TICKET_SHIFT)
-	: "cc");
-
-	while (lockval.tickets.next != lockval.tickets.owner) {
-		wfe();
-		lockval.tickets.owner = READ_ONCE(lock->tickets.owner);
-	}
-
-	smp_mb();
-}
-
-static inline int arch_spin_trylock(arch_spinlock_t *lock)
-{
-	unsigned long contended, res;
-	u32 slock;
-
-	prefetchw(&lock->slock);
-	do {
-		__asm__ __volatile__(
-		"	ldrex	%0, [%3]\n"
-		"	mov	%2, #0\n"
-		"	subs	%1, %0, %0, ror #16\n"
-		"	addeq	%0, %0, %4\n"
-		"	strexeq	%2, %0, [%3]"
-		: "=&r" (slock), "=&r" (contended), "=&r" (res)
-		: "r" (&lock->slock), "I" (1 << TICKET_SHIFT)
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
-static inline void arch_spin_unlock(arch_spinlock_t *lock)
-{
-	smp_mb();
-	lock->tickets.owner++;
-	dsb_sev();
-}
-
-static inline int arch_spin_value_unlocked(arch_spinlock_t lock)
-{
-	return lock.tickets.owner == lock.tickets.next;
-}
-
-static inline int arch_spin_is_locked(arch_spinlock_t *lock)
-{
-	return !arch_spin_value_unlocked(READ_ONCE(*lock));
-}
-
-static inline int arch_spin_is_contended(arch_spinlock_t *lock)
-{
-	struct __raw_tickets tickets = READ_ONCE(lock->tickets);
-	return (tickets.next - tickets.owner) > 1;
-}
-#define arch_spin_is_contended	arch_spin_is_contended
-
 
 #endif /* __ASM_SPINLOCK_H */
diff --git a/arch/arm/include/asm/spinlock_types.h b/arch/arm/include/asm/spinlock_types.h
index 24a8a487e03b3..ecd3c45b19740 100644
--- a/arch/arm/include/asm/spinlock_types.h
+++ b/arch/arm/include/asm/spinlock_types.h
@@ -6,29 +6,7 @@
 # error "please don't include this file directly"
 #endif
 
-#define TICKET_SHIFT	16
-
-typedef struct {
-	union {
-		u32 slock;
-		struct __raw_tickets {
-#ifdef __ARMEB__
-			u16 next;
-			u16 owner;
-#else
-			u16 owner;
-			u16 next;
-#endif
-		} tickets;
-	};
-} arch_spinlock_t;
-
-#define __ARCH_SPIN_LOCK_UNLOCKED	{ { 0 } }
-
-typedef struct {
-	u32 lock;
-} arch_rwlock_t;
-
+#include <asm-generic/qspinlock_types.h>
 #include <asm-generic/qrwlock_types.h>
 
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
