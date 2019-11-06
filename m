Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D597F0C63
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIOHz33ETf7dr/tlg/p0yZUolFszIXqgjZ7uj2wfvhQ=; b=SuUxQ+CFXdtgUp
	4tUmnasF/q3u1qt3bN9D1uDwTWwyOqmPD5l80+ZVZ1q5vj436MRxlp7LgFnEIATiHMNYYmede8Eab
	04Ux/fc1Zzf3k6gOX/KFpBGlI+eahN4sIoRUx1xMVyVq4GbiAI1nNYVLY3XonFZGil5gTja7SBv7q
	Tj9x8V1m4JYkQb0Mgz72/Sxvu0mgzg07VAxSWaC29/s6UtrJs+wZLs6J1fVFvuJWQJQUWh52p5E1r
	vAwa2De5mssYMSxsPwi2mz81z9sUXrqm2spcpW5ukpPPsfXxMp3gM4yzFPTPCjTTZxGL24Mp3oaJI
	i0fAe/S6CxsMrdxxWIEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBeX-0001h2-TV; Wed, 06 Nov 2019 03:06:37 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBeL-0001fx-Fk
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:06:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id p24so11221592pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VBtxih23xWrgcRmf1jKFKRXIiDXyNW7ostp5IRFGwGg=;
 b=YHgqLF/xf0UfV56unVpiD7gs58hGrp5nU7zsBUKicmNd+VCnpD1Smm1JT0NFvwwYmh
 sbNt65jdDRLxtA9uG85IVtWgRSJIe45kuDbhTiQF8jFVxUEz3iq0Syw+EBrMd3NOLga4
 hJE2UxaVEH8ZBFR4f7HCE7c6xOxCtR4jLj446GcXnaS6oCmpJPpNyQwew64qjAu8gv2G
 GCoTuMcAU0iuqFbhRNKPIhN2zQVNrucMPXI1a2tjJJW+IQFUUZfPiltyCJAAY6PWAzZ9
 WY0GHQMeb2DA1hx6641aebmUQjrONvPwfIC/s7C9UQhPYv5/qBs2eqEOPgeP6/MsxyNU
 J+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VBtxih23xWrgcRmf1jKFKRXIiDXyNW7ostp5IRFGwGg=;
 b=Q16i3ewSVLmwzP8F98NuiA1TiIWeFHVDiwgrxOyrOx/9hzbWS22PhSuOyZA9+gxFgf
 S/wM3aWIIi6St4KcGibOyyDGrMShTh62M8V0FZ+QGglN7KUFDyYz92oHEHcnCUW+ERmz
 sef3tYQV5P+So4YuEw1ZAKhMigkO/AmYhzVL84ri7M87g+TM1gP90n3k6/9+hRih1AxM
 TMTp/tfvpO44LZlqF8xC00M64Rna7OfdujDrlFsncvyrnnCe/JhQdUfsAV7r07Jb+TPg
 BGdgloKw+DPWywDrpTFmTKS/gShdOoI/vVfWdZacP78vHBdvcWqm33WoYKg5dTcJCVRl
 pWHQ==
X-Gm-Message-State: APjAAAWKI12gv7YhDmvai6ZN1/TaeXN6wk3FtuvVxSporC6qsUmievMq
 ccrXmFh9f+JqvduAhZVhQlWPlA==
X-Google-Smtp-Source: APXvYqwGXT2UHNWFnuY01bYCY/ThDRYp5oUVdZdP80+BlNvF2mPcn9yXz3RJrA4HPh9kgHhIoFpvIg==
X-Received: by 2002:a65:49c7:: with SMTP id t7mr155165pgs.431.1573009584201;
 Tue, 05 Nov 2019 19:06:24 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:06:23 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 04/50] arm/asm: Add loglvl to c_backtrace()
Date: Wed,  6 Nov 2019 03:04:55 +0000
Message-Id: <20191106030542.868541-5-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_190625_527085_7621A6CB 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Dmitry Safonov <dima@arista.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 clang-built-linux@googlegroups.com, Jiri Slaby <jslaby@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the log-level of show_stack() depends on a platform
realization. It creates situations where the headers are printed with
lower log level or higher than the stacktrace (depending on
a platform or user).

Furthermore, it forces the logic decision from user to an architecture
side. In result, some users as sysrq/kdb/etc are doing tricks with
temporary rising console_loglevel while printing their messages.
And in result it not only may print unwanted messages from other CPUs,
but also omit printing at all in the unlucky case where the printk()
was deferred.

Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
an easier approach than introducing more printk buffers.
Also, it will consolidate printings with headers.

Add log level argument to c_backtrace() as a preparation for introducing
show_stack_loglvl().

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/include/asm/bug.h     |  3 ++-
 arch/arm/include/asm/traps.h   |  3 ++-
 arch/arm/kernel/traps.c        |  9 +++++----
 arch/arm/kernel/unwind.c       |  2 +-
 arch/arm/lib/backtrace-clang.S |  9 +++++++--
 arch/arm/lib/backtrace.S       | 14 ++++++++++----
 6 files changed, 27 insertions(+), 13 deletions(-)

diff --git a/arch/arm/include/asm/bug.h b/arch/arm/include/asm/bug.h
index deef4d0cb3b5..673c7dd75ab9 100644
--- a/arch/arm/include/asm/bug.h
+++ b/arch/arm/include/asm/bug.h
@@ -82,7 +82,8 @@ void hook_ifault_code(int nr, int (*fn)(unsigned long, unsigned int,
 				       struct pt_regs *),
 		     int sig, int code, const char *name);
 
-extern asmlinkage void c_backtrace(unsigned long fp, int pmode);
+extern asmlinkage void c_backtrace(unsigned long fp, int pmode,
+				   const char *loglvl);
 
 struct mm_struct;
 void show_pte(const char *lvl, struct mm_struct *mm, unsigned long addr);
diff --git a/arch/arm/include/asm/traps.h b/arch/arm/include/asm/traps.h
index 172b08ff3760..987fefb0a4db 100644
--- a/arch/arm/include/asm/traps.h
+++ b/arch/arm/include/asm/traps.h
@@ -29,7 +29,8 @@ static inline int __in_irqentry_text(unsigned long ptr)
 }
 
 extern void __init early_trap_init(void *);
-extern void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long frame);
+extern void dump_backtrace_entry(unsigned long where, unsigned long from,
+				 unsigned long frame, const char *loglvl);
 extern void ptrace_break(struct pt_regs *regs);
 
 extern void *vectors_page;
diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index c053abd1fb53..7c3f32b26585 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -62,7 +62,8 @@ __setup("user_debug=", user_debug_setup);
 
 static void dump_mem(const char *, const char *, unsigned long, unsigned long);
 
-void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long frame)
+void dump_backtrace_entry(unsigned long where, unsigned long from,
+			  unsigned long frame, const char *loglvl)
 {
 #ifdef CONFIG_KALLSYMS
 	printk("[<%08lx>] (%ps) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
@@ -74,7 +75,7 @@ void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long
 		dump_mem("", "Exception stack", frame + 4, frame + 4 + sizeof(struct pt_regs));
 }
 
-void dump_backtrace_stm(u32 *stack, u32 instruction)
+void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
 {
 	char str[80], *p;
 	unsigned int x;
@@ -236,7 +237,7 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 	pr_cont("\n");
 
 	if (ok)
-		c_backtrace(fp, mode);
+		c_backtrace(fp, mode, NULL);
 }
 #endif
 
@@ -662,7 +663,7 @@ asmlinkage int arm_syscall(int no, struct pt_regs *regs)
 		dump_instr("", regs);
 		if (user_mode(regs)) {
 			__show_regs(regs);
-			c_backtrace(frame_pointer(regs), processor_mode(regs));
+			c_backtrace(frame_pointer(regs), processor_mode(regs), NULL);
 		}
 	}
 #endif
diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
index 4574e6aea0a5..0a65005e10f0 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -493,7 +493,7 @@ void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		urc = unwind_frame(&frame);
 		if (urc < 0)
 			break;
-		dump_backtrace_entry(where, frame.pc, frame.sp - 4);
+		dump_backtrace_entry(where, frame.pc, frame.sp - 4, NULL);
 	}
 }
 
diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
index 2ff375144b55..6174c45f53a5 100644
--- a/arch/arm/lib/backtrace-clang.S
+++ b/arch/arm/lib/backtrace-clang.S
@@ -17,6 +17,7 @@
 #define sv_pc	r6
 #define mask	r7
 #define sv_lr	r8
+#define loglvl	r9
 
 ENTRY(c_backtrace)
 
@@ -99,6 +100,7 @@ ENDPROC(c_backtrace)
 						@ to ensure 8 byte alignment
 		movs	frame, r0		@ if frame pointer is zero
 		beq	no_frame		@ we have no stack frames
+		mov	loglvl, r2
 		tst	r1, #0x10		@ 26 or 32-bit mode?
 		moveq	mask, #0xfc000003
 		movne	mask, #0		@ mask for 32-bit
@@ -167,6 +169,7 @@ finished_setup:
 		mov	r1, sv_lr
 		mov	r2, frame
 		bic	r1, r1, mask		@ mask PC/LR for the mode
+		mov	r3, loglvl
 		bl	dump_backtrace_entry
 
 /*
@@ -183,6 +186,7 @@ finished_setup:
 		ldr	r0, [frame]		@ locals are stored in
 						@ the preceding frame
 		subeq	r0, r0, #4
+		mov	r2, loglvl
 		bleq	dump_backtrace_stm	@ dump saved registers
 
 /*
@@ -196,7 +200,8 @@ finished_setup:
 		bhi	for_each_frame
 
 1006:		adr	r0, .Lbad
-		mov	r1, frame
+		mov	r1, loglvl
+		mov	r2, frame
 		bl	printk
 no_frame:	ldmfd	sp!, {r4 - r9, fp, pc}
 ENDPROC(c_backtrace)
@@ -209,7 +214,7 @@ ENDPROC(c_backtrace)
 		.long   1005b, 1006b
 		.popsection
 
-.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
+.Lbad:		.asciz	"%sBacktrace aborted due to bad frame pointer <%p>\n"
 		.align
 .Lopcode:	.word	0xe92d4800 >> 11	@ stmfd sp!, {... fp, lr}
 		.word	0x0b000000		@ bl if these bits are set
diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
index 582925238d65..872f658638d9 100644
--- a/arch/arm/lib/backtrace.S
+++ b/arch/arm/lib/backtrace.S
@@ -18,6 +18,7 @@
 #define sv_pc	r6
 #define mask	r7
 #define offset	r8
+#define loglvl	r9
 
 ENTRY(c_backtrace)
 
@@ -25,9 +26,10 @@ ENTRY(c_backtrace)
 		ret	lr
 ENDPROC(c_backtrace)
 #else
-		stmfd	sp!, {r4 - r8, lr}	@ Save an extra register so we have a location...
+		stmfd	sp!, {r4 - r9, lr}	@ Save an extra register so we have a location...
 		movs	frame, r0		@ if frame pointer is zero
 		beq	no_frame		@ we have no stack frames
+		mov	loglvl, r2
 
 		tst	r1, #0x10		@ 26 or 32-bit mode?
  ARM(		moveq	mask, #0xfc000003	)
@@ -73,6 +75,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		ldr	r1, [frame, #-4]	@ get saved lr
 		mov	r2, frame
 		bic	r1, r1, mask		@ mask PC/LR for the mode
+		mov	r3, loglvl
 		bl	dump_backtrace_entry
 
 		ldr	r1, [sv_pc, #-4]	@ if stmfd sp!, {args} exists,
@@ -80,12 +83,14 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		teq	r3, r1, lsr #11
 		ldreq	r0, [frame, #-8]	@ get sp
 		subeq	r0, r0, #4		@ point at the last arg
+		mov	r2, loglvl
 		bleq	dump_backtrace_stm	@ dump saved registers
 
 1004:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, ip, lr, pc}
 		ldr	r3, .Ldsi		@ instruction exists,
 		teq	r3, r1, lsr #11
 		subeq	r0, frame, #16
+		mov	r2, loglvl
 		bleq	dump_backtrace_stm	@ dump saved registers
 
 		teq	sv_fp, #0		@ zero saved fp means
@@ -96,9 +101,10 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		bhi	for_each_frame
 
 1006:		adr	r0, .Lbad
-		mov	r1, frame
+		mov	r1, loglvl
+		mov	r2, frame
 		bl	printk
-no_frame:	ldmfd	sp!, {r4 - r8, pc}
+no_frame:	ldmfd	sp!, {r4 - r9, pc}
 ENDPROC(c_backtrace)
 		
 		.pushsection __ex_table,"a"
@@ -109,7 +115,7 @@ ENDPROC(c_backtrace)
 		.long	1004b, 1006b
 		.popsection
 
-.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
+.Lbad:		.asciz	"%sBacktrace aborted due to bad frame pointer <%p>\n"
 		.align
 .Ldsi:		.word	0xe92dd800 >> 11	@ stmfd sp!, {... fp, ip, lr, pc}
 		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
