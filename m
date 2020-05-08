Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40F91CA075
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 04:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=65v14yPyqRTc7kEJ1ear69rh5RdOQTPvWx6b2/jW+xU=; b=RhcYZ0kH6AqhWh
	xS8sjZwJUsdv+OUgpf+VMPJ3nGnhXVrYzz10TtsmRLHeN5ZGFOCWkmiCisz+KcQNwE8L8razBX4nK
	MhWp9E5HDbHtykAnTMjCF3SHqO7qxGxv9KIbE5C4obmvUYu2RQYs2EQs/VcCPonQnUlyNlatZOHDT
	J+8rUnNm7UqkqbC+VVcVmAaKlSe/Io7wIvEkpWj3NRGEqqpUW4TWsmXb41tYBtd8jwYVAgbr4GMRx
	uAlj+6jKMrKdbFRS0hC6cceop+ZGha2eoagMY2yPfPTwFXEySfKOSuAsvBxqnKkOx/L08eprdhGCi
	vRUBLjCNZxmlz3sWaMwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWsKS-0006ST-Ia; Fri, 08 May 2020 02:01:32 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWsKF-0006Qh-Iq
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 02:01:23 +0000
Received: by mail-qt1-x84a.google.com with SMTP id l26so76731qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 19:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:subject:from:to:cc;
 bh=vyZ2mxGJH9CZO+PjUjs0TQshzaxIwglijDMSEPLiMPU=;
 b=GftXcH9ofaO0b3pYdbbHgysOwXOsTVpaIcHKujaN38813jo3S7G/+vdWbg4kRnxvNA
 OLwf0pU0E5F9rRJ2pqGm08B2yP+PN+f2jFoy0W4toLTnBuHEPldsguVvKuLkIrA4UoGJ
 285ehx39MMKYS9SzNGPjiaJiaJyxWx0Z71tTMM1kGxUwZapya9aStEXIy0O/3oR7jNxN
 viq2GZW/tNUP3xAc7jlD3cwV78X6sSMtQEEeJEeTAEtors5U9pPlIyms6Hu4vWjhTp+o
 LC70kHgetbVaI2102U6u81bABWCWvNkiVe18eXNhvwJr3e42NveX3tq6FJz4nte1ua3t
 m/VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version:subject
 :from:to:cc;
 bh=vyZ2mxGJH9CZO+PjUjs0TQshzaxIwglijDMSEPLiMPU=;
 b=I6aDp5uvG75lROH/utmYvCS2uI68KQwXm/qgZfOuZXRfhdhpoJxPNSeWAAbNUwh5WA
 A3/vw5w2ZNwuInAoOjrJ5ZwqGxd5JXEjzYuveD9YjKYeCsk1P34yKUoxCq1rUmOrc92p
 pTyky+dzAlNoCFZ3Z/gTii0z8sk8W7ovUI/2Wlhn1+dspwGpH8Sy4OZSF1N/zI8mqvXh
 m3Ibpat2LVbbIgcyN+5wUpr1drxiB/dt2zrGmJmQ7OXWtbAg/ecUnCl6rpgJDehv7/WT
 CvkL3up32TeyoyYQ48rfYJSiRAKaiVYT55+5UN3muKSYrM0e9XQGCm+0Xk9jo5uHSwT8
 Se+Q==
X-Gm-Message-State: AGi0PuadBEM6FbWrUV5VVyFYQ5ZSY93E8VQsOG8nlKZ0C5htX67CfXnn
 ok87LP2OXTsOzYf6lYsT7M75SNU=
X-Google-Smtp-Source: APiQypJFPDYZGFFyqhFrK3p8eMLl8IFAzQaP0uanIGBTbjp1yk+nJTGSFOuBYNJTKlukQaNPgEh4vgw=
X-Received: by 2002:a0c:fc0c:: with SMTP id z12mr457447qvo.41.1588903277565;
 Thu, 07 May 2020 19:01:17 -0700 (PDT)
Date: Thu,  7 May 2020 19:01:06 -0700
In-Reply-To: <20200507175713.162890-1-pcc@google.com>
Message-Id: <20200508020106.136652-1-pcc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.645.ge9eca65c58-goog
Subject: [PATCH v5] arm64: Expose FAR_EL1 tag bits in sigcontext
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, 
 Dave Martin <Dave.Martin@arm.com>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_190119_663712_2DC0802E 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

 Documentation/arm64/tagged-pointers.rst  | 17 +++++----
 arch/arm64/include/asm/exception.h       |  2 +-
 arch/arm64/include/asm/processor.h       |  2 +-
 arch/arm64/include/uapi/asm/sigcontext.h | 12 ++++++-
 arch/arm64/kernel/entry-common.c         |  2 --
 arch/arm64/kernel/signal.c               | 22 +++++++++++-
 arch/arm64/mm/fault.c                    | 45 ++++++++++++++----------
 7 files changed, 72 insertions(+), 30 deletions(-)

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
diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index 7a6e81ca23a8..90e772d9b2cd 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -32,7 +32,7 @@ static inline u32 disr_to_esr(u64 disr)
 }
 
 asmlinkage void enter_from_user_mode(void);
-void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
+void do_mem_abort(unsigned long far, unsigned int esr, struct pt_regs *regs);
 void do_undefinstr(struct pt_regs *regs);
 asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
 void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 240fe5e5b720..63185be29ff9 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -144,7 +144,7 @@ struct thread_struct {
 	void			*sve_state;	/* SVE registers, if any */
 	unsigned int		sve_vl;		/* SVE vector length */
 	unsigned int		sve_vl_onexec;	/* SVE vl after next exec */
-	unsigned long		fault_address;	/* fault info */
+	unsigned long		fault_address;	/* FAR_EL1 value */
 	unsigned long		fault_code;	/* ESR_EL1 value */
 	struct debug_info	debug;		/* debugging */
 #ifdef CONFIG_ARM64_PTR_AUTH
diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
index 8b0ebce92427..1a2d23092d8f 100644
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
@@ -94,6 +95,15 @@ struct esr_context {
 	__u64 esr;
 };
 
+/* Top byte of fault address (normally not exposed via si_addr) */
+#define FAULT_ADDR_TOP_BYTE_MAGIC	0x46544201
+
+struct fault_addr_top_byte_context {
+	struct _aarch64_ctx head;
+	__u8 fault_addr_top_byte;
+	__u8 __reserved[7];
+};
+
 /*
  * extra_context: describes extra space in the signal frame for
  * additional structures that don't fit in sigcontext.__reserved[].
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index c839b5bf1904..045b4f518836 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -22,7 +22,6 @@ static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
 	unsigned long far = read_sysreg(far_el1);
 
 	local_daif_inherit(regs);
-	far = untagged_addr(far);
 	do_mem_abort(far, esr, regs);
 }
 NOKPROBE_SYMBOL(el1_abort);
@@ -104,7 +103,6 @@ static void notrace el0_da(struct pt_regs *regs, unsigned long esr)
 
 	user_exit_irqoff();
 	local_daif_restore(DAIF_PROCCTX);
-	far = untagged_addr(far);
 	do_mem_abort(far, esr, regs);
 }
 NOKPROBE_SYMBOL(el0_da);
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index 339882db5a91..baa88dc02e5c 100644
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
 
@@ -581,6 +583,12 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
 				     sizeof(struct esr_context));
 		if (err)
 			return err;
+
+		err = sigframe_alloc(
+			user, &user->ftb_offset,
+			sizeof(struct fault_addr_top_byte_context));
+		if (err)
+			return err;
 	}
 
 	if (system_supports_sve()) {
@@ -621,7 +629,8 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
 	__put_user_error(regs->pc, &sf->uc.uc_mcontext.pc, err);
 	__put_user_error(regs->pstate, &sf->uc.uc_mcontext.pstate, err);
 
-	__put_user_error(current->thread.fault_address, &sf->uc.uc_mcontext.fault_address, err);
+	__put_user_error(untagged_addr(current->thread.fault_address),
+			 &sf->uc.uc_mcontext.fault_address, err);
 
 	err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
 
@@ -641,6 +650,17 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
 		__put_user_error(current->thread.fault_code, &esr_ctx->esr, err);
 	}
 
+	if (err == 0 && user->ftb_offset) {
+		struct fault_addr_top_byte_context __user *ftb_ctx =
+			apply_user_offset(user, user->ftb_offset);
+
+		__put_user_error(FAULT_ADDR_TOP_BYTE_MAGIC,
+				 &ftb_ctx->head.magic, err);
+		__put_user_error(sizeof(*ftb_ctx), &ftb_ctx->head.size, err);
+		__put_user_error(current->thread.fault_address >> 56,
+				 &ftb_ctx->fault_addr_top_byte, err);
+	}
+
 	/* Scalable Vector Extension state, if present */
 	if (system_supports_sve() && err == 0 && user->sve_offset) {
 		struct sve_context __user *sve_ctx =
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index c9cedc0432d2..39bbaa05f162 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -41,7 +41,7 @@
 #include <asm/traps.h>
 
 struct fault_info {
-	int	(*fn)(unsigned long addr, unsigned int esr,
+	int	(*fn)(unsigned long far, unsigned int esr,
 		      struct pt_regs *regs);
 	int	sig;
 	int	code;
@@ -320,9 +320,11 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
 	die_kernel_fault(msg, addr, esr, regs);
 }
 
-static void set_thread_esr(unsigned long address, unsigned int esr)
+static void set_thread_far_esr(unsigned long far, unsigned int esr)
 {
-	current->thread.fault_address = address;
+	unsigned long addr = untagged_addr(far);
+
+	current->thread.fault_address = far;
 
 	/*
 	 * If the faulting address is in the kernel, we must sanitize the ESR.
@@ -336,7 +338,7 @@ static void set_thread_esr(unsigned long address, unsigned int esr)
 	 * type", so we ignore this wrinkle and just return the translation
 	 * fault.)
 	 */
-	if (!is_ttbr0_addr(current->thread.fault_address)) {
+	if (!is_ttbr0_addr(addr)) {
 		switch (ESR_ELx_EC(esr)) {
 		case ESR_ELx_EC_DABT_LOW:
 			/*
@@ -377,8 +379,11 @@ static void set_thread_esr(unsigned long address, unsigned int esr)
 	current->thread.fault_code = esr;
 }
 
-static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *regs)
+static void do_bad_area(unsigned long far, unsigned int esr,
+			struct pt_regs *regs)
 {
+	unsigned long addr = untagged_addr(far);
+
 	/*
 	 * If we are in kernel mode at this point, we have no context to
 	 * handle this fault with.
@@ -386,7 +391,7 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
 	if (user_mode(regs)) {
 		const struct fault_info *inf = esr_to_fault_info(esr);
 
-		set_thread_esr(addr, esr);
+		set_thread_far_esr(far, esr);
 		arm64_force_sig_fault(inf->sig, inf->code, (void __user *)addr,
 				      inf->name);
 	} else {
@@ -439,7 +444,7 @@ static bool is_write_abort(unsigned int esr)
 	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
 }
 
-static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
+static int __kprobes do_page_fault(unsigned long far, unsigned int esr,
 				   struct pt_regs *regs)
 {
 	const struct fault_info *inf;
@@ -447,6 +452,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	vm_fault_t fault, major = 0;
 	unsigned long vm_flags = VM_ACCESS_FLAGS;
 	unsigned int mm_flags = FAULT_FLAG_DEFAULT;
+	unsigned long addr = untagged_addr(far);
 
 	if (kprobe_page_fault(regs, esr))
 		return 0;
@@ -570,7 +576,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	}
 
 	inf = esr_to_fault_info(esr);
-	set_thread_esr(addr, esr);
+	set_thread_far_esr(far, esr);
 	if (fault & VM_FAULT_SIGBUS) {
 		/*
 		 * We had some memory, but were unable to successfully fix up
@@ -605,30 +611,32 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	return 0;
 }
 
-static int __kprobes do_translation_fault(unsigned long addr,
+static int __kprobes do_translation_fault(unsigned long far,
 					  unsigned int esr,
 					  struct pt_regs *regs)
 {
+	unsigned long addr = untagged_addr(far);
+
 	if (is_ttbr0_addr(addr))
-		return do_page_fault(addr, esr, regs);
+		return do_page_fault(far, esr, regs);
 
-	do_bad_area(addr, esr, regs);
+	do_bad_area(far, esr, regs);
 	return 0;
 }
 
-static int do_alignment_fault(unsigned long addr, unsigned int esr,
+static int do_alignment_fault(unsigned long far, unsigned int esr,
 			      struct pt_regs *regs)
 {
-	do_bad_area(addr, esr, regs);
+	do_bad_area(far, esr, regs);
 	return 0;
 }
 
-static int do_bad(unsigned long addr, unsigned int esr, struct pt_regs *regs)
+static int do_bad(unsigned long far, unsigned int esr, struct pt_regs *regs)
 {
 	return 1; /* "fault" */
 }
 
-static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
+static int do_sea(unsigned long far, unsigned int esr, struct pt_regs *regs)
 {
 	const struct fault_info *inf;
 	void __user *siaddr;
@@ -644,7 +652,7 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 	if (esr & ESR_ELx_FnV)
 		siaddr = NULL;
 	else
-		siaddr  = (void __user *)addr;
+		siaddr  = (void __user *)untagged_addr(far);
 	arm64_notify_die(inf->name, regs, inf->sig, inf->code, siaddr, esr);
 
 	return 0;
@@ -717,11 +725,12 @@ static const struct fault_info fault_info[] = {
 	{ do_bad,		SIGKILL, SI_KERNEL,	"unknown 63"			},
 };
 
-void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
+void do_mem_abort(unsigned long far, unsigned int esr, struct pt_regs *regs)
 {
 	const struct fault_info *inf = esr_to_fault_info(esr);
+	unsigned long addr = untagged_addr(far);
 
-	if (!inf->fn(addr, esr, regs))
+	if (!inf->fn(far, esr, regs))
 		return;
 
 	if (!user_mode(regs)) {
-- 
2.26.2.645.ge9eca65c58-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
