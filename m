Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3B1D7FCA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxA2nsMmXf4gOrJM/QtuvCwKyfzUO0Gjz8ugg9oacr4=; b=lbTNs8u/JM9leL
	1mW4OzFdSZZJ6ogFnJuoK1wY1C7UEVLJoeeswoTaHA1cCAZTfC/cnLMXo4o6lAhEgzNqCs4GGk8LW
	iHAYA9xmQ6VALHRTUpY5HrthydeKf7TbJINENwgULYzsQ8VHPdLN7oIGYCFprvKeSjR5JHpqkBWJH
	kSkUGCZ76c9U7XGBsNO2NOyDFHJ7Mj7E1ow+Jid3d94bGJxdA4fRb76KK9nKan+eLtWjrWAf1EQPj
	vIsxupdBRDkLh1QuQ9T4HNiCFW7eGulQooLeqYa8Wk31/B5doWVqb4I90N5AY4IEpcnBQT9dj42OJ
	vxrH1sOjlNP9er9DwsaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSLd-0001cM-Ud; Tue, 15 Oct 2019 19:19:09 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSLD-0001Rs-Th
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 19:18:45 +0000
Received: from localhost ([127.0.0.1] helo=localhost.localdomain)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iKSL2-00067i-3h; Tue, 15 Oct 2019 21:18:32 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 01/34] ARM: Use CONFIG_PREEMPTION
Date: Tue, 15 Oct 2019 21:17:48 +0200
Message-Id: <20191015191821.11479-2-bigeasy@linutronix.de>
In-Reply-To: <20191015191821.11479-1-bigeasy@linutronix.de>
References: <20191015191821.11479-1-bigeasy@linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_121844_101529_DA8F4F15 
X-CRM114-Status: GOOD (  10.17  )
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
Cc: tglx@linutronix.de, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thomas Gleixner <tglx@linutronix.de>

CONFIG_PREEMPTION is selected by CONFIG_PREEMPT and by CONFIG_PREEMPT_RT.
Both PREEMPT and PREEMPT_RT require the same functionality which today
depends on CONFIG_PREEMPT.

Switch the entry code, cache over to use CONFIG_PREEMPTION and add
output in show_stack() for PREEMPT_RT.

Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
[bigeasy: +traps.c]
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 arch/arm/include/asm/switch_to.h | 2 +-
 arch/arm/kernel/entry-armv.S     | 4 ++--
 arch/arm/kernel/traps.c          | 2 ++
 arch/arm/mm/cache-v7.S           | 4 ++--
 arch/arm/mm/cache-v7m.S          | 4 ++--
 5 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm/include/asm/switch_to.h b/arch/arm/include/asm/switch_to.h
index d3e937dcee4d0..007d8fea71572 100644
--- a/arch/arm/include/asm/switch_to.h
+++ b/arch/arm/include/asm/switch_to.h
@@ -10,7 +10,7 @@
  * to ensure that the maintenance completes in case we migrate to another
  * CPU.
  */
-#if defined(CONFIG_PREEMPT) && defined(CONFIG_SMP) && defined(CONFIG_CPU_V7)
+#if defined(CONFIG_PREEMPTION) && defined(CONFIG_SMP) && defined(CONFIG_CPU_V7)
 #define __complete_pending_tlbi()	dsb(ish)
 #else
 #define __complete_pending_tlbi()
diff --git a/arch/arm/kernel/entry-armv.S b/arch/arm/kernel/entry-armv.S
index 858d4e5415326..77f54830554c3 100644
--- a/arch/arm/kernel/entry-armv.S
+++ b/arch/arm/kernel/entry-armv.S
@@ -211,7 +211,7 @@ ENDPROC(__dabt_svc)
 	svc_entry
 	irq_handler
 
-#ifdef CONFIG_PREEMPT
+#ifdef CONFIG_PREEMPTION
 	ldr	r8, [tsk, #TI_PREEMPT]		@ get preempt count
 	ldr	r0, [tsk, #TI_FLAGS]		@ get flags
 	teq	r8, #0				@ if preempt count != 0
@@ -226,7 +226,7 @@ ENDPROC(__irq_svc)
 
 	.ltorg
 
-#ifdef CONFIG_PREEMPT
+#ifdef CONFIG_PREEMPTION
 svc_preempt:
 	mov	r8, lr
 1:	bl	preempt_schedule_irq		@ irq en/disable is done inside
diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index c053abd1fb539..abb7dd7e656fd 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -248,6 +248,8 @@ void show_stack(struct task_struct *tsk, unsigned long *sp)
 
 #ifdef CONFIG_PREEMPT
 #define S_PREEMPT " PREEMPT"
+#elif defined(CONFIG_PREEMPT_RT)
+#define S_PREEMPT " PREEMPT_RT"
 #else
 #define S_PREEMPT ""
 #endif
diff --git a/arch/arm/mm/cache-v7.S b/arch/arm/mm/cache-v7.S
index 0ee8fc4b4672c..dc8f152f35566 100644
--- a/arch/arm/mm/cache-v7.S
+++ b/arch/arm/mm/cache-v7.S
@@ -135,13 +135,13 @@ ENTRY(v7_flush_dcache_all)
 	and	r1, r1, #7			@ mask of the bits for current cache only
 	cmp	r1, #2				@ see what cache we have at this level
 	blt	skip				@ skip if no cache, or just i-cache
-#ifdef CONFIG_PREEMPT
+#ifdef CONFIG_PREEMPTION
 	save_and_disable_irqs_notrace r9	@ make cssr&csidr read atomic
 #endif
 	mcr	p15, 2, r10, c0, c0, 0		@ select current cache level in cssr
 	isb					@ isb to sych the new cssr&csidr
 	mrc	p15, 1, r1, c0, c0, 0		@ read the new csidr
-#ifdef CONFIG_PREEMPT
+#ifdef CONFIG_PREEMPTION
 	restore_irqs_notrace r9
 #endif
 	and	r2, r1, #7			@ extract the length of the cache lines
diff --git a/arch/arm/mm/cache-v7m.S b/arch/arm/mm/cache-v7m.S
index a0035c426ce63..1bc3a0a507539 100644
--- a/arch/arm/mm/cache-v7m.S
+++ b/arch/arm/mm/cache-v7m.S
@@ -183,13 +183,13 @@ ENTRY(v7m_flush_dcache_all)
 	and	r1, r1, #7			@ mask of the bits for current cache only
 	cmp	r1, #2				@ see what cache we have at this level
 	blt	skip				@ skip if no cache, or just i-cache
-#ifdef CONFIG_PREEMPT
+#ifdef CONFIG_PREEMPTION
 	save_and_disable_irqs_notrace r9	@ make cssr&csidr read atomic
 #endif
 	write_csselr r10, r1			@ set current cache level
 	isb					@ isb to sych the new cssr&csidr
 	read_ccsidr r1				@ read the new csidr
-#ifdef CONFIG_PREEMPT
+#ifdef CONFIG_PREEMPTION
 	restore_irqs_notrace r9
 #endif
 	and	r2, r1, #7			@ extract the length of the cache lines
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
