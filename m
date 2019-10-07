Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3970FCEE88
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrF8GwGdwgJsQ9Xhfz89Tu+HzJ1g72qK77mgOQltCkw=; b=eF1USXOwCs5c6d
	r/pr68B8ReQX4lG1/99JBOE4H7nlD6R+Y90OqdqyHzGxL6RIW3BUHffc5wr2/RLY+2P0WOyRdl6PZ
	N/ES2uWtunNb0046VOMJ9x54kxCY1/YIwfqL427M0OO0bQjnnP1tz1xYW6WE31H5aqhXjnGpUNlJI
	jVxLAckPJO9pjPO1Ov46fA2Xwq9SQOr3pgPVtpu/cJ8mlcSRkW97+sbPZYJLbGPYgMMGIy5LdV5k4
	AdTwR7mzL5Biwggz/N1lodhREGHduV0+ehpL0KfMdzPYNuyWharYh8/fYveEBPuqUZ7sccEwo9WLN
	FdAccxjAuBtgsnYkwMWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHap0-0000Fg-Is; Mon, 07 Oct 2019 21:45:38 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHaoK-000777-UX
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:44:59 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iHaoD-0006R1-V0; Mon, 07 Oct 2019 23:44:50 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: Use qrwlock implementation
Date: Mon,  7 Oct 2019 23:44:37 +0200
Message-Id: <20191007214439.27891-2-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007214439.27891-1-sebastian@breakpoint.cc>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_144456_990471_F408736D 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 arch/arm/Kconfig                      |  1 +
 arch/arm/include/asm/Kbuild           |  1 +
 arch/arm/include/asm/spinlock.h       |  8 ++++++++
 arch/arm/include/asm/spinlock_types.h | 10 +++++++++-
 4 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8a50efb559f35..2f704531d883a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -34,6 +34,7 @@ config ARM
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_CMPXCHG_LOCKREF
+	select ARCH_USE_QUEUED_RWLOCKS if !CPU_V6
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
index 8f009e788ad40..e23f71b2cd43d 100644
--- a/arch/arm/include/asm/spinlock.h
+++ b/arch/arm/include/asm/spinlock.h
@@ -128,6 +128,7 @@ static inline int arch_spin_is_contended(arch_spinlock_t *lock)
 }
 #define arch_spin_is_contended	arch_spin_is_contended
 
+#ifdef CONFIG_CPU_V6
 /*
  * RWLOCKS
  *
@@ -270,4 +271,11 @@ static inline int arch_read_trylock(arch_rwlock_t *rw)
 	}
 }
 
+#else
+
+#include <asm/qrwlock.h>
+#define smp_mb__after_spinlock()       smp_mb()
+
+#endif
+
 #endif /* __ASM_SPINLOCK_H */
diff --git a/arch/arm/include/asm/spinlock_types.h b/arch/arm/include/asm/spinlock_types.h
index 5976958647fe1..c942a75250bb2 100644
--- a/arch/arm/include/asm/spinlock_types.h
+++ b/arch/arm/include/asm/spinlock_types.h
@@ -29,6 +29,14 @@ typedef struct {
 	u32 lock;
 } arch_rwlock_t;
 
-#define __ARCH_RW_LOCK_UNLOCKED		{ 0 }
+#ifdef CONFIG_CPU_V6
+
+#define __ARCH_RW_LOCK_UNLOCKED                { 0 }
+
+#else
+
+#include <asm-generic/qrwlock_types.h>
+
+#endif
 
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
