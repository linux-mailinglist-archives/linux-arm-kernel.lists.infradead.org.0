Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1567F164869
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nyTHKVKbqzbgvxN29MyTQCOrgwrx7GdLpLt+MB1Mn4Q=; b=tJZ
	2sPTYTkMDjk89LQBE+jMVt3jUgyik9WAdxEf0abrKd9ZzIJjnSzyWcqFL82F55VEtt10/jRZouUD0
	Wvshy8LbDOApCpMNVLdEJD/le1jTNywxHnC93JeWvPsCLiaPD2y/IxpiYvQoHe1U2kB8VW75EAfmb
	qhpP1dTh/tA21hEfCAqjFeYH65d68V4e0loY8/LbH8YMS31VgjO+ofJuPQDdv3tfkdV8jSEE4QrQ5
	oWYhdx+YPJ+BGk3vj/FPrHSw5r88V9i6aKDxlf5IpP60qdvPWAGFuEhb8PXkLi4Xp+4yasDmfJX8D
	M1PEXdklVcENnMOyXFD+3UYlJU3i4hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RD4-0005yB-Ov; Wed, 19 Feb 2020 15:24:22 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RCv-0005xK-SD
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:24:15 +0000
Received: by mail-oi1-x243.google.com with SMTP id q81so24193706oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 07:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=uwWDSeWWO0hR4DXyky1z9WU+ZPyabJEylY7QISm4rEM=;
 b=cfQXXJAVtFbqY95oRRM3/u/T7d6o8o7xoy26LHXqgG/x0cj4jHNx+Bs5wYSxL8Pv4q
 6yAsqx20aUt8Iw2wrq3daHlQtI2r0t4ymYYEdXvu8T2HUFM/sO72ampUQvhHuPCRYVC7
 ZBIBlf4OkDKEkOv9knQ5j2qTIO8NsQpL4wv4yKjmXTm/YeBDxP/L5qH3Mpqe4H4BeD0s
 CIJo3gr+zbTxp/eo5qy5fNEKbua7sUkr4AV2K48CR25etD5gdpIVzKblGi1Fu711zaWn
 V1IBXLKEbAQJA6iJa9UwcsfKX6gkiFP67FmHxzGXQFYh7rjM3HBYofuT+bAW2TAFx+NL
 aElg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=uwWDSeWWO0hR4DXyky1z9WU+ZPyabJEylY7QISm4rEM=;
 b=qnHUy6LGmH3LB8IRGazAKRaWasWPbHEQqSCZBBvvwUSWT5+mkTvM7sW71/C7sZWo+0
 E+Gjsi0KxruTxJ5TQPpR8Aa2qrBmNHI8Y3USBKNaig2ZoNNc+AhySelN0ZaXtONKg9ZG
 4EYte429HaP9meezamDywJX9EdKt4bFOLssSmS6ezpg30h453zrOpTiNpWSpg7zjhYAB
 78pTRWvFX7T6duAVHaIEmBhCOXX5MU8jfI4YdEQu55BV5J4fjiUw7Mlun/EcqFFUfzaz
 7cwK8Bm9mJFcnGx7ENDUkVoe5t4TVbb3ooRCnQeIx8SSBJI9R+jHNOiUtgu5IwD7aXwl
 OTqg==
X-Gm-Message-State: APjAAAWiuXEHUCftV2a6t2s7Y0MCa8ai1H+VSJ3m3GSaL3AQb9Bj5NMm
 gbLIYMd0Bvqi7XAF13zCDQ==
X-Google-Smtp-Source: APXvYqzWFfw4hNfHbE0m3TgSpLG8nJYVfSeUMd9Tf1P89i/qu+5G5Pa616ouzrYd5B0JR1EkqNqx9A==
X-Received: by 2002:aca:4b46:: with SMTP id y67mr4606544oia.122.1582125849490; 
 Wed, 19 Feb 2020 07:24:09 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id n2sm59434oia.58.2020.02.19.07.24.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 07:24:08 -0800 (PST)
Received: from t560.mvista.com (unknown
 [IPv6:2001:470:b8f6:1b:9129:b2b8:445c:a4ff])
 by serve.minyard.net (Postfix) with ESMTPA id 1986218016D;
 Wed, 19 Feb 2020 15:24:08 +0000 (UTC)
From: minyard@acm.org
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
Date: Wed, 19 Feb 2020 09:24:03 -0600
Message-Id: <20200219152403.3495-1-minyard@acm.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_072413_941851_D824157B 
X-CRM114-Status: GOOD (  35.71  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Corey Minyard <cminyard@mvista.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Corey Minyard <cminyard@mvista.com>

I was working on a single-step bug on kgdb on an ARM64 system, and I saw
this scenario:

* A single step is setup to return to el1
* The ERET return to el1
* An interrupt is pending and runs before the instruction
* As soon as PSTATE.D (the debug disable bit) is cleared, the single
    step happens in that location, not where it should have.

This appears to be due to PSTATE.SS not being cleared when the exception
happens.  Per section D.2.12.5 of the ARMv8 reference manual, that
appears to be incorrect, it says "As part of exception entry, the PE
does all of the following: ...  Sets PSTATE.SS to 0."

However, I appear to not be the first person who has noticed this.  In
the el0-only portion of the kernel_entry macro in entry.S, I found the
following comment: "Ensure MDSCR_EL1.SS is clear, since we can unmask
debug exceptions when scheduling."  Exactly the same scenario, except
coming from a userland single step, not a kernel one.

As I was studying this, though, I realized that the following scenario
had an issue:

* Kernel enables MDSCR.SS, MDSCR.KDE, MDSCR.MDE (unnecessary), and
  PSTATE.SS to enable a single step in el1, for kgdb or kprobes,
  on the current CPU's MDSCR register and the process' PSTATE.SS
  register.
* Kernel returns from the exception with ERET.
* An interrupt or page fault happens on the instruction, causing the
  instruction to not be run, but the exception handler runs.
* The exception causes the task to migrate to a new core.
* The return from the exception runs on a different processor now,
  where the MDSCR values are not set up for a single step.
* The single step fails to happen.

This is bad for kgdb, of course, but it seems really bad for kprobes if
this happens.

To fix both these problems, rework the handling of single steps to clear
things out upon entry to the kernel from el1, and then to set up single
step when returning to el1, and not do the setup in debug-monitors.c.
This means that single stepping does not use
enable/disable_debug_monitors(); it is no longer necessary to track
those flags for single stepping.  This is much like single stepping is
handled for el0.  A new flag is added in pt_regs to enable single
stepping from el1.  Unfortunately, the old value of PSTATE.SS cannot be
used for this because of the hardware bug mentioned earlier.

As part of this, there is an interaction between single stepping and the
other users of debug monitors with the MDSCR.KDE bit.  That bit has to
be set for both hardware breakpoints at el1 and single stepping at el1.
A new variable was created to store the cpu-wide value of MDSCR.KDE; the
single stepping code makes sure not to clear that bit on kernel entry if
it's set in the per-cpu variable.

After fixing this and doing some more testing, I ran into another issue:

* Kernel enables the pt_regs single step
* Kernel returns from the exception with ERET.
* An interrupt or page fault happens on the instruction, causing the
  instruction to not be run, but the exception handler runs.
* The exception handling hits a breakpoint and stops.
* The user continues from the breakpoint, so the kernel is no longer
  expecting a single step.
* On the return from the first exception, the single step flag in
  pt_regs is still set, so a single step trap happens.
* The kernel keels over from an unexpected single step.

There's no easy way to find the pt_regs that has the single step flag
set.  So a thread info flag was added so that the single step could be
disabled in this case.  Both that flag and the flag in pt_regs must be
set to enable a single step.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
Changes from v1:

After studying the EL0 handling for this, I realized an issue with using
MDSCR to check if single step is enabled: it can be expensive on a VM.
So check the task flag first to see if single step is enabled.  Then
check MDSCR if the task flag is set.

 arch/arm64/include/asm/debug-monitors.h |  3 +-
 arch/arm64/include/asm/ptrace.h         |  4 +-
 arch/arm64/include/asm/thread_info.h    |  1 +
 arch/arm64/kernel/asm-offsets.c         |  1 +
 arch/arm64/kernel/debug-monitors.c      | 61 ++++++++++++++++++++++---
 arch/arm64/kernel/entry.S               | 44 ++++++++++++++++++
 arch/arm64/kernel/kgdb.c                |  6 ++-
 7 files changed, 109 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
index 7619f473155f..02842fef74bb 100644
--- a/arch/arm64/include/asm/debug-monitors.h
+++ b/arch/arm64/include/asm/debug-monitors.h
@@ -13,7 +13,8 @@
 #include <asm/ptrace.h>
 
 /* Low-level stepping controls. */
-#define DBG_MDSCR_SS		(1 << 0)
+#define DBG_MDSCR_SS_BIT	0
+#define DBG_MDSCR_SS		(1 << DBG_MDSCR_SS_BIT)
 #define DBG_SPSR_SS		(1 << 21)
 
 /* MDSCR_EL1 enabling bits */
diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index bf57308fcd63..61b69f1f7c26 100644
--- a/arch/arm64/include/asm/ptrace.h
+++ b/arch/arm64/include/asm/ptrace.h
@@ -169,11 +169,11 @@ struct pt_regs {
 	};
 	u64 orig_x0;
 #ifdef __AARCH64EB__
-	u32 unused2;
+	u32 ss_enable; /* Kernel single-step for a task */
 	s32 syscallno;
 #else
 	s32 syscallno;
-	u32 unused2;
+	u32 ss_enable;
 #endif
 
 	u64 orig_addr_limit;
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index f0cec4160136..445519a5d2c9 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -78,6 +78,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define TIF_SVE_VL_INHERIT	24	/* Inherit sve_vl_onexec across exec */
 #define TIF_SSBD		25	/* Wants SSB mitigation */
 #define TIF_TAGGED_ADDR		26	/* Allow tagged user addresses */
+#define TIF_KERNEL_SINGLESTEP	27	/* Single-stepping in EL1. */
 
 #define _TIF_SIGPENDING		(1 << TIF_SIGPENDING)
 #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index a5bdce8af65b..038e76d2f0c4 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -62,6 +62,7 @@ int main(void)
   DEFINE(S_PSTATE,		offsetof(struct pt_regs, pstate));
   DEFINE(S_PC,			offsetof(struct pt_regs, pc));
   DEFINE(S_SYSCALLNO,		offsetof(struct pt_regs, syscallno));
+  DEFINE(S_SS_ENABLE,		offsetof(struct pt_regs, ss_enable));
   DEFINE(S_ORIG_ADDR_LIMIT,	offsetof(struct pt_regs, orig_addr_limit));
   DEFINE(S_PMR_SAVE,		offsetof(struct pt_regs, pmr_save));
   DEFINE(S_STACKFRAME,		offsetof(struct pt_regs, stackframe));
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 48222a4760c2..9260f1cfe985 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -77,6 +77,14 @@ early_param("nodebugmon", early_debug_disable);
 static DEFINE_PER_CPU(int, mde_ref_count);
 static DEFINE_PER_CPU(int, kde_ref_count);
 
+/*
+ * The KDE bit must be set for hardware breakpoints or single stepping
+ * to work in the kernel.  So when a kernel single-step finishes, it
+ * will clear the SS bit and the KDE bit.  It uses the below to restore
+ * the KDE bit if we need it set for hardware breakpoints.
+ */
+DEFINE_PER_CPU_READ_MOSTLY(u64, mdscr_debug_bits);
+
 void enable_debug_monitors(enum dbg_active_el el)
 {
 	u32 mdscr, enable = 0;
@@ -94,6 +102,7 @@ void enable_debug_monitors(enum dbg_active_el el)
 		mdscr = mdscr_read();
 		mdscr |= enable;
 		mdscr_write(mdscr);
+		__this_cpu_write(mdscr_debug_bits, mdscr & DBG_MDSCR_KDE);
 	}
 }
 NOKPROBE_SYMBOL(enable_debug_monitors);
@@ -115,6 +124,7 @@ void disable_debug_monitors(enum dbg_active_el el)
 		mdscr = mdscr_read();
 		mdscr &= disable;
 		mdscr_write(mdscr);
+		__this_cpu_write(mdscr_debug_bits, mdscr & DBG_MDSCR_KDE);
 	}
 }
 NOKPROBE_SYMBOL(disable_debug_monitors);
@@ -405,27 +415,66 @@ void user_fastforward_single_step(struct task_struct *task)
 }
 
 /* Kernel API */
+
+/*
+ * The task that is currently being single-stepped.  There can be only
+ * one.
+ */
+struct task_struct *single_step_task;
+
+/*
+ * Why, you may ask, does this have both regs->ss_enable and
+ * TIF_KERNEL_SINGLESTEP to enable single stepping?  The trouble lies
+ * in nested exceptions in the kernel.  If an interrupt is pending
+ * when a single-step occurs, it will happen before the single step,
+ * and it will go through the el1 kernel entry.
+ *
+ * One scenario is that another exception may occur during this
+ * interrupt processing.  If you only had TIF_KERNEL_SINGLESTEP, single
+ * stepping would be enabled there, but that's the wrong place.  So you
+ * have to rely on regs->ss_enabled to tell you if that is the case,
+ * since it won't be enabled in the second interrupt handler.
+ *
+ * A breakpoint may be hit during this interrupt, and the kernel will
+ * stop there.  But if you only had regs->ss_enabled, you couldn't
+ * disable the single stepping since you have no idea where regs is
+ * you return from kgdb.  So when it returned, it would hit the single
+ * step, and the kernel would die from an unknown single step source.
+ * So you have TIF_KERNEL_SINGLESTEP to prevent that problem.  The
+ * task being single-stepped is saved and the flag cleared when it is
+ * disabled.
+ *
+ * It would be nice to be able to use SPSR.SS instead of having a
+ * separate regs->ss_enable flag.  However, some processors don't
+ * clear PSTATE.SS on an exception, so SPSR.SS will be set in
+ * subsequent exception handlers.
+ */
 void kernel_enable_single_step(struct pt_regs *regs)
 {
 	WARN_ON(!irqs_disabled());
-	set_regs_spsr_ss(regs);
-	mdscr_write(mdscr_read() | DBG_MDSCR_SS);
-	enable_debug_monitors(DBG_ACTIVE_EL1);
+	regs->ss_enable = DBG_MDSCR_SS;
+	set_ti_thread_flag(task_thread_info(current), TIF_KERNEL_SINGLESTEP);
+	get_task_struct(current);
+	single_step_task = current;
 }
 NOKPROBE_SYMBOL(kernel_enable_single_step);
 
 void kernel_disable_single_step(void)
 {
 	WARN_ON(!irqs_disabled());
-	mdscr_write(mdscr_read() & ~DBG_MDSCR_SS);
-	disable_debug_monitors(DBG_ACTIVE_EL1);
+	if (single_step_task) {
+		clear_ti_thread_flag(task_thread_info(single_step_task),
+				     TIF_KERNEL_SINGLESTEP);
+		put_task_struct(single_step_task);
+		single_step_task = NULL;
+	}
 }
 NOKPROBE_SYMBOL(kernel_disable_single_step);
 
 int kernel_active_single_step(void)
 {
 	WARN_ON(!irqs_disabled());
-	return mdscr_read() & DBG_MDSCR_SS;
+	return single_step_task != NULL;
 }
 NOKPROBE_SYMBOL(kernel_active_single_step);
 
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 9461d812ae27..336fc667bf04 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -25,6 +25,7 @@
 #include <asm/thread_info.h>
 #include <asm/asm-uaccess.h>
 #include <asm/unistd.h>
+#include <asm/debug-monitors.h>
 
 /*
  * Context tracking subsystem.  Used to instrument transitions
@@ -191,6 +192,32 @@ alternative_cb_end
 	mrs	x23, spsr_el1
 	stp	lr, x21, [sp, #S_LR]
 
+	.if \el != 0
+	/*
+	 * If single-step was enabled, save it off and disable it,
+	 * or it will trap on enable_dbg.
+	 * The restore code will re-enable it if necessary.
+	 * Use the task flag to know if kernel single step might be enabled,
+	 * not the mdscr value first, accessing mdscr in a VM is expensive.
+	 * But the task flag MDSCR.SS must be set for it to be enabled,
+	 * so that has to be checked, if the task flag is set.
+	 */
+	mov	w21, #0
+	ldr	x20, [tsk, #TSK_TI_FLAGS]
+	tbz	x20, #TIF_KERNEL_SINGLESTEP, 1f
+	mrs	x20, mdscr_el1
+	tbz	x20, #DBG_MDSCR_SS_BIT, 1f
+	ldr_this_cpu x19, mdscr_debug_bits, x21
+	bic	x20, x20, #DBG_MDSCR_SS
+	bic	x20, x20, #DBG_MDSCR_KDE
+	orr	x20, x20, x19
+	msr	mdscr_el1, x20
+	mov	w21, #DBG_MDSCR_SS
+1:
+	str	w21, [sp, #S_SS_ENABLE]
+	bic	x23, x23, #DBG_SPSR_SS
+	.endif /* \el != 0 */
+
 	/*
 	 * In order to be able to dump the contents of struct pt_regs at the
 	 * time the exception was taken (in case we attempt to walk the call
@@ -344,6 +371,23 @@ alternative_else_nop_endif
 	apply_ssbd 0, x0, x1
 	.endif
 
+	.if	\el != 0
+	/* Restore the single-step bit. */
+	ldr	w20, [sp, #S_SS_ENABLE]
+	tbz	w20, #DBG_MDSCR_SS_BIT, 6f
+	ldr	x20, [tsk, #TSK_TI_FLAGS]
+	tbz	x20, #TIF_KERNEL_SINGLESTEP, 6f
+	disable_daif
+	mrs	x20, mdscr_el1
+	orr	x20, x20, #DBG_MDSCR_SS // Enable single step
+	/* KDE must be set for SS in EL1 */
+	orr     x20, x20, #DBG_MDSCR_KDE
+	msr	mdscr_el1, x20
+	orr	x22, x22, #DBG_SPSR_SS
+6:
+	/* PSTATE.D and PSTATE.SS will be restored from SPSR_EL1. */
+	.endif
+
 	msr	elr_el1, x21			// set up the return data
 	msr	spsr_el1, x22
 	ldp	x0, x1, [sp, #16 * 0]
diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
index 43119922341f..5b40f190f455 100644
--- a/arch/arm64/kernel/kgdb.c
+++ b/arch/arm64/kernel/kgdb.c
@@ -221,8 +221,10 @@ int kgdb_arch_handle_exception(int exception_vector, int signo,
 		/*
 		 * Enable single step handling
 		 */
-		if (!kernel_active_single_step())
-			kernel_enable_single_step(linux_regs);
+		if (kernel_active_single_step())
+			/* Clear out the old one */
+			kernel_disable_single_step();
+		kernel_enable_single_step(linux_regs);
 		err = 0;
 		break;
 	default:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
