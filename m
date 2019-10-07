Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EBECEE89
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWpRurPoNA4s8n5UtkLY9Wdw1BqEnbxmk83AX6bOziU=; b=dhMNZTduIL2EAJ
	eEg+Jp/tzzvxKcGoA7+9AAnemoWwrd38rpXE/DErrtrlWSpzQu0//xHm9BNVnHy/EMvTO+Q7jbYSX
	/KgdW3npcWJ9Bhb842041pL/OSRm9qv9G0qoIWELzk5Hn2wSci+qry5Zim//J/3vIzF6vrtAjzlV7
	G4G9Pqg+QKe6EwvxTImLg6sjHmdWdb4X51W8s9Is9A/8jQtgKusr3UXjl9MAWj8jx8MkeT9e74YAj
	iigZgy4MVJNENzG1NSUexCKrkM203+9CiO3BNW59yC+zx2puvDV3W9zsOE3mF3T4/Bqu31P4r2BWD
	2zHAdzod8D8umx0wMBLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHapH-0000TG-2b; Mon, 07 Oct 2019 21:45:55 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHaoK-000776-V0
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:44:59 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iHaoE-0006R1-I6; Mon, 07 Oct 2019 23:44:50 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: Use qspinlock implementation
Date: Mon,  7 Oct 2019 23:44:38 +0200
Message-Id: <20191007214439.27891-3-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007214439.27891-1-sebastian@breakpoint.cc>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_144456_997232_EC5C9AC8 
X-CRM114-Status: GOOD (  12.62  )
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

Use the generic queued spinlock implementation for spinlock. The WFE
mechanism is used as part of arch_mcs_spin_lock_contended().

Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
 arch/arm/Kconfig                      | 1 +
 arch/arm/include/asm/Kbuild           | 1 +
 arch/arm/include/asm/spinlock.h       | 5 +++--
 arch/arm/include/asm/spinlock_types.h | 4 ++--
 4 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2f704531d883a..7eba89bb45755 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -35,6 +35,7 @@ config ARM
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_CMPXCHG_LOCKREF
 	select ARCH_USE_QUEUED_RWLOCKS if !CPU_V6
+	select ARCH_USE_QUEUED_SPINLOCKS if !CPU_V6
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
index e23f71b2cd43d..7f3477679eb58 100644
--- a/arch/arm/include/asm/spinlock.h
+++ b/arch/arm/include/asm/spinlock.h
@@ -45,6 +45,7 @@ static inline void dsb_sev(void)
 	__asm__(SEV);
 }
 
+#ifdef CONFIG_CPU_V6
 /*
  * ARMv6 ticket-based spin-locking.
  *
@@ -128,7 +129,6 @@ static inline int arch_spin_is_contended(arch_spinlock_t *lock)
 }
 #define arch_spin_is_contended	arch_spin_is_contended
 
-#ifdef CONFIG_CPU_V6
 /*
  * RWLOCKS
  *
@@ -274,7 +274,8 @@ static inline int arch_read_trylock(arch_rwlock_t *rw)
 #else
 
 #include <asm/qrwlock.h>
-#define smp_mb__after_spinlock()       smp_mb()
+#include <asm/qspinlock.h>
+#define smp_mb__after_spinlock()	smp_mb()
 
 #endif
 
diff --git a/arch/arm/include/asm/spinlock_types.h b/arch/arm/include/asm/spinlock_types.h
index c942a75250bb2..7d5200da6a5f8 100644
--- a/arch/arm/include/asm/spinlock_types.h
+++ b/arch/arm/include/asm/spinlock_types.h
@@ -6,6 +6,7 @@
 # error "please don't include this file directly"
 #endif
 
+#ifdef CONFIG_CPU_V6
 #define TICKET_SHIFT	16
 
 typedef struct {
@@ -29,12 +30,11 @@ typedef struct {
 	u32 lock;
 } arch_rwlock_t;
 
-#ifdef CONFIG_CPU_V6
-
 #define __ARCH_RW_LOCK_UNLOCKED                { 0 }
 
 #else
 
+#include <asm-generic/qspinlock_types.h>
 #include <asm-generic/qrwlock_types.h>
 
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
