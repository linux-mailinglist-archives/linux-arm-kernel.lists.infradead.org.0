Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C081DC536
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 04:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qp+LZq4RU9BXZ7Ft8RJdjmUkSTRNCZYDp0PKa0BjeKQ=; b=Pp0kcp8uV9AiiT
	M+rSy+BiblFBvhkjiLrwJQ9jiI2TNvnmpH0c/p5aBYwEUg9qErG9LXhKsVFPo0cW5cNTfJmHZZWAc
	86720nQaK+Hp2JEO5hnAihDpySeeZEpA03DMqJmtrhoxQfPl2YL5ZUR9I7Fx/AvyauoBlSCFht0bD
	ETtMPFNVnheyTM/ibE1KuwspL9hvJnpA6KlG/m0YXDXnKk8TE6jwupz33CCqH3l2XNHYu1MAXAZsi
	Kd+ctAMW85WahXiFmL8fqXVVG7aW9hZmSoJDLLgMQHnwRO2hJinYhMM29zfFXX8TaWaivs9WMI/uO
	JNGN7SD4k3ULAw/TVYhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbazd-00077w-9K; Thu, 21 May 2020 02:31:33 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbayQ-0006Yp-Vd
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 02:30:25 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id 186so3815075ybq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 19:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=VerQNHnEqtJVKigraWJilWCIs/X7yGTgZ4CjLx6EUiA=;
 b=ILPr+2ow7Am9c/dDPEcG+hIDoJIZnc13SGumXz/UTVwds909QX8skXaXTO+gOJPzp5
 KHOBzvFUAAyXoePlBtydeWQ7734bxHIM/NMWz89D0qB+tuYQXNKJiK5ZvcDB4Ck8Q4E1
 3PaZmcJ8nTtbvA4+Yx+mG3VcE2VUF//Csc1uJDYGamfJAlxHd2k/kHmzhHs3bGcWRgF9
 UlVHg+IOR5ntqGSOAcsLYlg5MrJ0oJhQdbdJVpyP0Lf2Tm4gM+m7/lcQYiaDymRfsWPQ
 oqHsqJyjbPzSgn4+WalOj9IjR6CBwrBbowXYukKs1WFX2gUCtdYxLad+P8jkbtd4dKbG
 VBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=VerQNHnEqtJVKigraWJilWCIs/X7yGTgZ4CjLx6EUiA=;
 b=JyT0IbLU5KJlW3vVa33WRQzSsj5b3BvWKqPV0hX4ce6NEwUCkuRWJ7rYxYrn6PR404
 2QFMedtjK3oVlmu95aT0m6HkA//jQEEjFSMTWWCmKZj4NP1nDZcSTdhHQqTmsu48qozA
 lZWDUZlE8oYKZXmMp+gRFa9q0ckfiuEaNH5Nk4j/YLuzMxs4I47x/bKo345/RAz/7Azu
 uxuMeC7/ypSld15HF5UJiEFPEG5XzlNdGILZT8uOxH65Caz/6ZhCzaaZY3OP0sH54IlR
 J325Xo4jpaMi1NnjvXJuVXJECCmb1M1928CVa+svilQB03nJXRI9ARXwSyviSnh9ahuv
 pM2A==
X-Gm-Message-State: AOAM532g/9BfRfSMslSMVrGFkD36Bg70Qzadz96JpeP7NBdpj/syHQe7
 pFsA9IWIOVAEwYfr9lWNb5Rmqcs=
X-Google-Smtp-Source: ABdhPJxtr8JN0VMtyuuIIgjXTLckPxQ1zHPAeM5ael24OSCU+XacK4C5YuZiKncWDDlY0EKdG/DK+Fw=
X-Received: by 2002:a25:9805:: with SMTP id a5mr6842626ybo.26.1590028217101;
 Wed, 20 May 2020 19:30:17 -0700 (PDT)
Date: Wed, 20 May 2020 19:29:43 -0700
In-Reply-To: <20200521022943.195898-1-pcc@google.com>
Message-Id: <20200521022943.195898-4-pcc@google.com>
Mime-Version: 1.0
References: <20200521022943.195898-1-pcc@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH v6 3/3] arm64: Expose FAR_EL1 tag bits in sigcontext
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, 
 Dave Martin <Dave.Martin@arm.com>, Will Deacon <will@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, 
 "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_193019_536797_6D793E48 
X-CRM114-Status: GOOD (  23.48  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
address exposed via siginfo.si_addr and sigcontext.fault_address. However,
the tag bits may be needed by tools in order to accurately diagnose
memory errors, such as HWASan [1] or future tools based on the Memory
Tagging Extension (MTE).

We should not stop clearing these bits in the existing fault address fields,
because there may be existing userspace applications that are expecting the tag
bits to be cleared. Instead, create a fault_addr_top_byte_context in sigcontext
(similar to the existing esr_context), and store the tag bits of FAR_EL1 there.

[1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html

Signed-off-by: Peter Collingbourne <pcc@google.com>
---
v6:
- move fault address and fault code into the kernel_siginfo data structure
- split the patch in three since it was getting large and now has
  generic and arch-specific parts

v5:
- add padding to fault_addr_top_byte_context in order to ensure the correct
  size and preserve sp alignment

v4:
- expose only the tag bits in the context instead of the entire FAR_EL1
- remove mention of the new context from the sigcontext.__reserved[] note

v3:
- add documentation to tagged-pointers.rst
- update comments in sigcontext.h

v2:
- revert changes to hw_breakpoint.c
- rename set_thread_esr to set_thread_far_esr

 Documentation/arm64/tagged-pointers.rst  | 17 ++++++++++------
 arch/arm64/include/asm/signal.h          |  3 +++
 arch/arm64/include/asm/traps.h           |  4 ++--
 arch/arm64/include/uapi/asm/sigcontext.h | 24 +++++++++++++++++------
 arch/arm64/kernel/debug-monitors.c       |  2 +-
 arch/arm64/kernel/ptrace.c               |  2 +-
 arch/arm64/kernel/signal.c               | 25 ++++++++++++++++++++++++
 arch/arm64/kernel/traps.c                | 10 ++++++----
 arch/arm64/mm/fault.c                    |  8 ++++----
 9 files changed, 71 insertions(+), 24 deletions(-)

diff --git a/Documentation/arm64/tagged-pointers.rst b/Documentation/arm64/tagged-pointers.rst
index eab4323609b9..c6e9592a9dea 100644
--- a/Documentation/arm64/tagged-pointers.rst
+++ b/Documentation/arm64/tagged-pointers.rst
@@ -53,12 +53,17 @@ visibility.
 Preserving tags
 ---------------
 
-Non-zero tags are not preserved when delivering signals. This means that
-signal handlers in applications making use of tags cannot rely on the
-tag information for user virtual addresses being maintained for fields
-inside siginfo_t. One exception to this rule is for signals raised in
-response to watchpoint debug exceptions, where the tag information will
-be preserved.
+Non-zero tags are not preserved in the fault address fields
+siginfo.si_addr or sigcontext.fault_address when delivering
+signals. This means that signal handlers in applications making use
+of tags cannot rely on the tag information for user virtual addresses
+being maintained in these fields. One exception to this rule is for
+signals raised in response to watchpoint debug exceptions, where the
+tag information will be preserved.
+
+The fault address tag is preserved in the fault_addr_top_byte field of
+the signal frame record fault_addr_top_byte_context, which is present
+for signals raised in response to data aborts and instruction aborts.
 
 The architecture prevents the use of a tagged PC, so the upper byte will
 be set to a sign-extension of bit 55 on exception return.
diff --git a/arch/arm64/include/asm/signal.h b/arch/arm64/include/asm/signal.h
index f5c001b0a125..c80eb3b3ea40 100644
--- a/arch/arm64/include/asm/signal.h
+++ b/arch/arm64/include/asm/signal.h
@@ -9,6 +9,9 @@ struct arch_private_siginfo {
 	/* FAR_EL1 value */
 	unsigned long fault_address;
 
+	/* Mask of defined bits in the top byte of FAR_EL1 */
+	unsigned char fault_address_top_byte_mask;
+
 	/* Sanitized ESR_EL1 value, or FSR/syscall number in compat mode */
 	unsigned long error_code;
 };
diff --git a/arch/arm64/include/asm/traps.h b/arch/arm64/include/asm/traps.h
index 5ed5be5347e6..981b930b1e6f 100644
--- a/arch/arm64/include/asm/traps.h
+++ b/arch/arm64/include/asm/traps.h
@@ -27,8 +27,8 @@ void unregister_undef_hook(struct undef_hook *hook);
 void force_signal_inject(int signal, int code, unsigned long address);
 void arm64_notify_segfault(unsigned long addr);
 void arm64_force_sig_fault(int signo, int code, void __user *addr,
-			   unsigned long far, unsigned long esr,
-			   const char *str);
+			   unsigned long far, unsigned char far_tb_mask,
+			   unsigned long esr, const char *str);
 void arm64_force_sig_mceerr(int code, void __user *addr, short lsb,
 			    unsigned long far, unsigned long esr,
 			    const char *str);
diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
index 8b0ebce92427..6ce5e1bb7efd 100644
--- a/arch/arm64/include/uapi/asm/sigcontext.h
+++ b/arch/arm64/include/uapi/asm/sigcontext.h
@@ -44,11 +44,12 @@ struct sigcontext {
  *
  *	0x210		fpsimd_context
  *	 0x10		esr_context
+ *	 0x10		fault_addr_top_byte_context
  *	0x8a0		sve_context (vl <= 64) (optional)
  *	 0x20		extra_context (optional)
  *	 0x10		terminator (null _aarch64_ctx)
  *
- *	0x510		(reserved for future allocation)
+ *	0x500		(reserved for future allocation)
  *
  * New records that can exceed this space need to be opt-in for userspace, so
  * that an expanded signal frame is not generated unexpectedly.  The mechanism
@@ -94,17 +95,28 @@ struct esr_context {
 	__u64 esr;
 };
 
+/* Top byte of fault address (normally not exposed via si_addr) */
+#define FAULT_ADDR_TOP_BYTE_MAGIC	0x46544201
+
+struct fault_addr_top_byte_context {
+	struct _aarch64_ctx head;
+	__u8 flags;
+	__u8 fault_addr_top_byte;
+	__u8 fault_addr_top_byte_mask;
+	__u8 __reserved[5];
+};
+
 /*
  * extra_context: describes extra space in the signal frame for
  * additional structures that don't fit in sigcontext.__reserved[].
  *
  * Note:
  *
- * 1) fpsimd_context, esr_context and extra_context must be placed in
- * sigcontext.__reserved[] if present.  They cannot be placed in the
- * extra space.  Any other record can be placed either in the extra
- * space or in sigcontext.__reserved[], unless otherwise specified in
- * this file.
+ * 1) fpsimd_context, esr_context, fault_addr_top_byte_context and
+ * extra_context must be placed in sigcontext.__reserved[] if present.
+ * They cannot be placed in the extra space.  Any other record can be
+ * placed either in the extra space or in sigcontext.__reserved[],
+ * unless otherwise specified in this file.
  *
  * 2) There must not be more than one extra_context.
  *
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 498e6393b2ca..575a907cd4fc 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -232,7 +232,7 @@ static void send_user_sigtrap(int si_code)
 		local_irq_enable();
 
 	arm64_force_sig_fault(SIGTRAP, si_code,
-			      (void __user *)instruction_pointer(regs), 0, 0,
+			      (void __user *)instruction_pointer(regs), 0, 0, 0,
 			      "User debug trap");
 }
 
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index 51bb8bcaf24b..9b20284df88b 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -198,7 +198,7 @@ static void ptrace_hbptriggered(struct perf_event *bp,
 	}
 #endif
 	arm64_force_sig_fault(SIGTRAP, TRAP_HWBKPT,
-			      (void __user *)(bkpt->trigger), 0, 0,
+			      (void __user *)(bkpt->trigger), 0, 0, 0,
 			      desc);
 }
 
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index 10d7e9832a89..f6783de54412 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -55,6 +55,7 @@ struct rt_sigframe_user_layout {
 
 	unsigned long fpsimd_offset;
 	unsigned long esr_offset;
+	unsigned long ftb_offset;
 	unsigned long sve_offset;
 	unsigned long extra_offset;
 	unsigned long end_offset;
@@ -383,6 +384,7 @@ static int parse_user_sigframe(struct user_ctxs *user,
 			break;
 
 		case ESR_MAGIC:
+		case FAULT_ADDR_TOP_BYTE_MAGIC:
 			/* ignore */
 			break;
 
@@ -582,6 +584,14 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
 				     sizeof(struct esr_context));
 		if (err)
 			return err;
+        }
+
+        if (add_all || info->arch.fault_address_top_byte_mask) {
+		err = sigframe_alloc(
+			user, &user->ftb_offset,
+			sizeof(struct fault_addr_top_byte_context));
+		if (err)
+			return err;
 	}
 
 	if (system_supports_sve()) {
@@ -644,6 +654,21 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
 		__put_user_error(info->arch.error_code, &esr_ctx->esr, err);
 	}
 
+	if (err == 0 && user->ftb_offset) {
+		struct fault_addr_top_byte_context __user *ftb_ctx =
+			apply_user_offset(user, user->ftb_offset);
+
+		__put_user_error(FAULT_ADDR_TOP_BYTE_MAGIC,
+				 &ftb_ctx->head.magic, err);
+		__put_user_error(sizeof(*ftb_ctx), &ftb_ctx->head.size, err);
+		__put_user_error(0, &ftb_ctx->flags, err);
+		__put_user_error((info->arch.fault_address >> 56) &
+					 info->arch.fault_address_top_byte_mask,
+				 &ftb_ctx->fault_addr_top_byte, err);
+		__put_user_error(info->arch.fault_address_top_byte_mask,
+				 &ftb_ctx->fault_addr_top_byte_mask, err);
+	}
+
 	/* Scalable Vector Extension state, if present */
 	if (system_supports_sve() && err == 0 && user->sve_offset) {
 		struct sve_context __user *sve_ctx =
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 4545fe067ea9..8154f2562f74 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -295,8 +295,8 @@ static unsigned long esr_to_error_code(unsigned long esr, unsigned long far)
 }
 
 void arm64_force_sig_fault(int signo, int code, void __user *addr,
-			   unsigned long far, unsigned long esr,
-			   const char *str)
+			   unsigned long far, unsigned char far_tb_mask,
+			   unsigned long esr, const char *str)
 {
 	arm64_show_signal(signo, esr, str);
 	if (signo == SIGKILL) {
@@ -309,6 +309,7 @@ void arm64_force_sig_fault(int signo, int code, void __user *addr,
 		info.si_code = code;
 		info.si_addr = addr;
 		info.arch.fault_address = far;
+		info.arch.fault_address_top_byte_mask = far_tb_mask;
 		info.arch.error_code = esr_to_error_code(esr, far);
 		force_sig_info(&info);
 	}
@@ -329,6 +330,7 @@ void arm64_force_sig_mceerr(int code, void __user *addr, short lsb,
 	info.si_addr = addr;
 	info.si_addr_lsb = lsb;
 	info.arch.fault_address = far;
+	info.arch.fault_address_top_byte_mask = 0xff;
 	info.arch.error_code = esr_to_error_code(esr, far);
 	force_sig_info(&info);
 }
@@ -346,7 +348,7 @@ void arm64_notify_die(const char *str, struct pt_regs *regs,
 {
 	if (user_mode(regs)) {
 		WARN_ON(regs != current_pt_regs());
-		arm64_force_sig_fault(signo, sicode, addr, 0, esr, str);
+		arm64_force_sig_fault(signo, sicode, addr, 0, 0, esr, str);
 	} else {
 		die(str, regs, esr);
 	}
@@ -893,7 +895,7 @@ void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr)
 {
 	void __user *pc = (void __user *)instruction_pointer(regs);
 
-	arm64_force_sig_fault(SIGILL, ILL_ILLOPC, pc, 0, esr,
+	arm64_force_sig_fault(SIGILL, ILL_ILLOPC, pc, 0, 0, esr,
 			      "Bad EL0 synchronous exception");
 }
 
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index a7bada1392b3..1ba95f308c10 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -332,7 +332,7 @@ static void do_bad_area(unsigned long far, unsigned int esr,
 	if (user_mode(regs)) {
 		const struct fault_info *inf = esr_to_fault_info(esr);
 		arm64_force_sig_fault(inf->sig, inf->code, (void __user *)addr,
-				      far, esr, inf->name);
+				      far, 0xff, esr, inf->name);
 	} else {
 		__do_kernel_fault(addr, esr, regs);
 	}
@@ -520,8 +520,8 @@ static int __kprobes do_page_fault(unsigned long far, unsigned int esr,
 		 * We had some memory, but were unable to successfully fix up
 		 * this page fault.
 		 */
-		arm64_force_sig_fault(SIGBUS, BUS_ADRERR, (void __user *)addr, far, esr,
-				      inf->name);
+		arm64_force_sig_fault(SIGBUS, BUS_ADRERR, (void __user *)addr,
+				      far, 0xff, esr, inf->name);
 	} else if (fault & (VM_FAULT_HWPOISON_LARGE | VM_FAULT_HWPOISON)) {
 		unsigned int lsb;
 
@@ -538,7 +538,7 @@ static int __kprobes do_page_fault(unsigned long far, unsigned int esr,
 		 */
 		arm64_force_sig_fault(SIGSEGV,
 				      fault == VM_FAULT_BADACCESS ? SEGV_ACCERR : SEGV_MAPERR,
-				      (void __user *)addr, far, esr,
+				      (void __user *)addr, far, 0xff, esr,
 				      inf->name);
 	}
 
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
