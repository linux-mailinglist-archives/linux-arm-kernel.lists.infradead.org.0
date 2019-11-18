Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DFD100F57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 00:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9XaSxBaNQM0R2N06lh7lfqCWItx5adP/983/zDcm3M=; b=hj5sa31DzHd9CB
	tyna7BZegLzdERjkgSBkrCzY8jOhgynSgOqmfR5L3nnTvnJA9ftk438OXRPsLEUS4zllNekmA74fe
	Tfx/83wS54sjscr73r/I2mC/dM7IQfJAf8q38X3jBaudsG+sjO4B9wdXzQiqgWxkfUEt1U4JVsgID
	3TVYOLnqoklwsjLyPpoVbyQkEk/mBPPAi/B61ukGywFDzKadAhT2VGNR8Mi8SisW+pld17qSl1ohX
	ea1MuUcejY/6DiG+9rMva5/Y2eTD4XaEoTEDZK8Rxq2QweJwgSdvBIj/KGrpg3G2TpBx7zDEQ5wp6
	dgUV3h77aTan/ZTCLLzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWqDc-0004Gm-Jd; Mon, 18 Nov 2019 23:14:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWqDS-0004Fr-Ss
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 23:13:58 +0000
Received: by mail-pg1-x541.google.com with SMTP id h27so10376164pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 15:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qUJh1Kxa/O0dbHY+8/bDJj9IILwdUvsp2P0za4TSTpc=;
 b=LQSUtQxMg2dkBxnifgBx+acnXe4M0kG6IjxmvrL72vK1j4b6WbQO1pQmzc43ue3xcx
 mqoop43yC9eMPolAHaMXumodOBnN6dU4M2bl1OixPCs/Lr0WrT+rIQ9Xs0ReR6eup1Yb
 vsXrNI09oEUvJZM6X1unWYGIfqYqYxVzEvsXtWkWr9VqhaQmjpRtIFlmhuqcyBIQdR9L
 EicpfsQ7tZ1RTD/X2JgsHShA21dwkF/ngX6Cud7viXIB0l8eoM4LbxtviF3zkB/Fmm67
 hKqo4QnpxOgu0fbMUcy4QrackDoplphN+WVpWdHexkWUc9HETUcrP9QV4m5Odxi66hRF
 3FJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qUJh1Kxa/O0dbHY+8/bDJj9IILwdUvsp2P0za4TSTpc=;
 b=kKMUMGyiTolQNFCw1pDv1OcjH8EgKm/5Nuizw5s7sRnnhPZhiM7OYIs+Si4M+rQmeh
 ozPnTlvZDyTwa7kpyZY6qlcI8obLaizokXZrUsal5yxozkirIZRqOgJjZw0zUYUg6Sa8
 HY4Kkmpg3oMjR2oDRD1F8w8AOM1ttM8jOKHZMwk4oOnhrlfV8TIT2D8HiN5L/torVUh1
 QWZSoB0eocImPlSlZVeAdAY6mSkzAEOEpH0F06sI+ciWFsDZxOz3qCXzMCQmwpBvK4pi
 SjW67dbuBIdLKufBIbEXIWKEbdOegJt9CaPnUumEX4bDSGsFRIknxzzsuwxVzM0nO6SJ
 zULQ==
X-Gm-Message-State: APjAAAX/Dk0HDoLuyFE+3QQb3p9wX3vRzXaEZPvte3WmhcPbQ8TmlNBS
 H9QOQTbIwn1qlJeHqtf0R9YMrw==
X-Google-Smtp-Source: APXvYqzAUXRC6SbTRv4jb/B5oz18PJBvPfFvJ1B1FzwsBf1n0/ZufwfY/f2j2TS4Qyi62GQ4PZOUAQ==
X-Received: by 2002:a65:418d:: with SMTP id a13mr2039184pgq.208.1574118830980; 
 Mon, 18 Nov 2019 15:13:50 -0800 (PST)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id fh11sm551294pjb.2.2019.11.18.15.13.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 15:13:48 -0800 (PST)
Date: Mon, 18 Nov 2019 15:13:43 -0800
From: Sami Tolvanen <samitolvanen@google.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v5 14/14] arm64: implement Shadow Call Stack
Message-ID: <20191118231343.GA231930@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-15-samitolvanen@google.com>
 <20191115152047.GI41572@lakrids.cambridge.arm.com>
 <CABCJKudm28QaKRxPHWgKuEfRvm=EvuUEmcAVOnNkbxBCJcYX5A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKudm28QaKRxPHWgKuEfRvm=EvuUEmcAVOnNkbxBCJcYX5A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_151354_934920_8D4A2FEC 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 12:19:20PM -0800, Sami Tolvanen wrote:
> On Fri, Nov 15, 2019 at 7:20 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Tue, Nov 05, 2019 at 03:56:08PM -0800, Sami Tolvanen wrote:
> > > This change implements shadow stack switching, initial SCS set-up,
> > > and interrupt shadow stacks for arm64.
> >
> > Each CPU also has an overflow stack, and two SDEI stacks, which should
> > presumably be given their own SCS. SDEI is effectively a software-NMI,
> > so it should almost certainly have the same treatement as IRQ.
> 
> Makes sense. I'll take a look at adding shadow stacks for the SDEI handler.

Mark, I wrote a preliminary patch for adding SDEI shadow stacks, but
turns out I don't really have a way to test the SDEI code. Does the approach
below look sane to you?

Sami


---
 arch/arm64/include/asm/scs.h        |   2 +
 arch/arm64/include/asm/stacktrace.h |   4 --
 arch/arm64/kernel/entry.S           |  14 +++-
 arch/arm64/kernel/scs.c             | 106 +++++++++++++++++++++++-----
 arch/arm64/kernel/sdei.c            |   7 ++
 5 files changed, 112 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
index c50d2b0c6c5f..8e327e14bc15 100644
--- a/arch/arm64/include/asm/scs.h
+++ b/arch/arm64/include/asm/scs.h
@@ -9,6 +9,7 @@
 #ifdef CONFIG_SHADOW_CALL_STACK
 
 extern void scs_init_irq(void);
+extern int scs_init_sdei(void);
 
 static __always_inline void scs_save(struct task_struct *tsk)
 {
@@ -27,6 +28,7 @@ static inline void scs_overflow_check(struct task_struct *tsk)
 #else /* CONFIG_SHADOW_CALL_STACK */
 
 static inline void scs_init_irq(void) {}
+static inline int scs_init_sdei(void) { return 0; }
 static inline void scs_save(struct task_struct *tsk) {}
 static inline void scs_overflow_check(struct task_struct *tsk) {}
 
diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index b6cf32fb4efe..4d9b1f48dc39 100644
--- a/arch/arm64/include/asm/stacktrace.h
+++ b/arch/arm64/include/asm/stacktrace.h
@@ -68,10 +68,6 @@ extern void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk);
 
 DECLARE_PER_CPU(unsigned long *, irq_stack_ptr);
 
-#ifdef CONFIG_SHADOW_CALL_STACK
-DECLARE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
-#endif
-
 static inline bool on_irq_stack(unsigned long sp,
 				struct stack_info *info)
 {
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 5a02b61fc3e6..ac9dfb3da440 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1309,13 +1309,16 @@ ENTRY(__sdei_asm_handler)
 
 	mov	x19, x1
 
+#if defined(CONFIG_VMAP_STACK) || defined(CONFIG_SHADOW_CALL_STACK)
+	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
+#endif
+
 #ifdef CONFIG_VMAP_STACK
 	/*
 	 * entry.S may have been using sp as a scratch register, find whether
 	 * this is a normal or critical event and switch to the appropriate
 	 * stack for this CPU.
 	 */
-	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
 	cbnz	w4, 1f
 	ldr_this_cpu dst=x5, sym=sdei_stack_normal_ptr, tmp=x6
 	b	2f
@@ -1325,6 +1328,15 @@ ENTRY(__sdei_asm_handler)
 	mov	sp, x5
 #endif
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Use a separate shadow call stack for normal and critical events */
+	cbnz	w4, 3f
+	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal_ptr, tmp=x6
+	b	4f
+3:	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical_ptr, tmp=x6
+4:
+#endif
+
 	/*
 	 * We may have interrupted userspace, or a guest, or exit-from or
 	 * return-to either of these. We can't trust sp_el0, restore it.
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
index 9a1305a6eb5b..dddb7c56518b 100644
--- a/arch/arm64/kernel/scs.c
+++ b/arch/arm64/kernel/scs.c
@@ -10,31 +10,105 @@
 #include <asm/pgtable.h>
 #include <asm/scs.h>
 
-DEFINE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
+#define DECLARE_SCS(name)						\
+	DECLARE_PER_CPU(unsigned long *, name ## _ptr);			\
+	DECLARE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)
 
-#ifndef CONFIG_SHADOW_CALL_STACK_VMAP
-DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], irq_shadow_call_stack)
-	__aligned(SCS_SIZE);
+#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
+#define DEFINE_SCS(name)						\
+	DEFINE_PER_CPU(unsigned long *, name ## _ptr)
+#else
+/* Allocate a static per-CPU shadow stack */
+#define DEFINE_SCS(name)						\
+	DEFINE_PER_CPU(unsigned long *, name ## _ptr);			\
+	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
+		__aligned(SCS_SIZE)
+#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
+
+DECLARE_SCS(irq_shadow_call_stack);
+DECLARE_SCS(sdei_shadow_call_stack_normal);
+DECLARE_SCS(sdei_shadow_call_stack_critical);
+
+DEFINE_SCS(irq_shadow_call_stack);
+#ifdef CONFIG_ARM_SDE_INTERFACE
+DEFINE_SCS(sdei_shadow_call_stack_normal);
+DEFINE_SCS(sdei_shadow_call_stack_critical);
 #endif
 
+static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
+{
+	unsigned long *p;
+
+	p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
+				 VMALLOC_START, VMALLOC_END,
+				 GFP_SCS, PAGE_KERNEL,
+				 0, cpu_to_node(cpu),
+				 __builtin_return_address(0));
+
+	if (!p)
+		return -ENOMEM;
+	per_cpu(*ptr, cpu) = p;
+
+	return 0;
+}
+
+static void scs_free_percpu(unsigned long * __percpu *ptr, int cpu)
+{
+	unsigned long *p = per_cpu(*ptr, cpu);
+
+	if (p) {
+		per_cpu(*ptr, cpu) = NULL;
+		vfree(p);
+	}
+}
+
+static void scs_free_sdei(void)
+{
+	int cpu;
+
+	for_each_possible_cpu(cpu) {
+		scs_free_percpu(&sdei_shadow_call_stack_normal_ptr, cpu);
+		scs_free_percpu(&sdei_shadow_call_stack_critical_ptr, cpu);
+	}
+}
+
 void scs_init_irq(void)
 {
 	int cpu;
 
 	for_each_possible_cpu(cpu) {
-#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
-		unsigned long *p;
+		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP))
+			WARN_ON(scs_alloc_percpu(&irq_shadow_call_stack_ptr,
+						 cpu));
+		else
+			per_cpu(irq_shadow_call_stack_ptr, cpu) =
+				per_cpu(irq_shadow_call_stack, cpu);
+	}
+}
 
-		p = __vmalloc_node_range(SCS_SIZE, SCS_SIZE,
-					 VMALLOC_START, VMALLOC_END,
-					 GFP_SCS, PAGE_KERNEL,
-					 0, cpu_to_node(cpu),
-					 __builtin_return_address(0));
+int scs_init_sdei(void)
+{
+	int cpu;
 
-		per_cpu(irq_shadow_call_stack_ptr, cpu) = p;
-#else
-		per_cpu(irq_shadow_call_stack_ptr, cpu) =
-			per_cpu(irq_shadow_call_stack, cpu);
-#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
+	if (!IS_ENABLED(CONFIG_ARM_SDE_INTERFACE))
+		return 0;
+
+	for_each_possible_cpu(cpu) {
+		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP)) {
+			if (scs_alloc_percpu(
+				&sdei_shadow_call_stack_normal_ptr, cpu) ||
+			    scs_alloc_percpu(
+				&sdei_shadow_call_stack_critical_ptr, cpu)) {
+				scs_free_sdei();
+				return -ENOMEM;
+			}
+		} else {
+			per_cpu(sdei_shadow_call_stack_normal_ptr, cpu) =
+				per_cpu(sdei_shadow_call_stack_normal, cpu);
+			per_cpu(sdei_shadow_call_stack_critical_ptr, cpu) =
+				per_cpu(sdei_shadow_call_stack_critical, cpu);
+		}
 	}
+
+	return 0;
 }
diff --git a/arch/arm64/kernel/sdei.c b/arch/arm64/kernel/sdei.c
index ea94cf8f9dc6..3e85017a9c8b 100644
--- a/arch/arm64/kernel/sdei.c
+++ b/arch/arm64/kernel/sdei.c
@@ -12,6 +12,7 @@
 #include <asm/kprobes.h>
 #include <asm/mmu.h>
 #include <asm/ptrace.h>
+#include <asm/scs.h>
 #include <asm/sections.h>
 #include <asm/stacktrace.h>
 #include <asm/sysreg.h>
@@ -161,6 +162,12 @@ unsigned long sdei_arch_get_entry_point(int conduit)
 			return 0;
 	}
 
+	if (scs_init_sdei()) {
+		if (IS_ENABLED(CONFIG_VMAP_STACK))
+			free_sdei_stacks();
+		return 0;
+	}
+
 	sdei_exit_mode = (conduit == CONDUIT_HVC) ? SDEI_EXIT_HVC : SDEI_EXIT_SMC;
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
