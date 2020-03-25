Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4954C192F7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 18:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYmsJzrUVbIub90vMPz88N5ob5wYDVFYwZMjBC+27Ro=; b=iwLAxDjJpZQbcA
	MphKUQExNDTLg9x+lQ9P4U4vZg4lL1nYccJUXVZGjN9+vMWxKRD9+oKKm5l7GfgSDnCtqEtFN0S+S
	orvkSYMy/EIUk78u55+C5oZi4sHEZBY3UF38ymhbdNyQQ4Ti3auTPrgSSgwr6crk3fzXGteYEKJPp
	a4mVBhVNABsr8lamdv+d0P+Wp03fAKi62lh06vzhOLEjtb+8spxa5e5lEou19pDSkANd6QN7Nnon+
	fTqv79LYn1w9kFwR6FRvn03nTMkoY4SVsYbv8HnHQhDwRTf6meIXrnc3g10tkXAQQkWhGMStmXuR5
	maPrYU5/GqNDdKrJljVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHA1e-00065l-Ao; Wed, 25 Mar 2020 17:41:10 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHA1T-00064v-IS
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 17:41:01 +0000
Received: by mail-qt1-x849.google.com with SMTP id g13so2625011qti.21
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 10:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=LxeGl8HMi5aNoMFV9sQFEPQevkzygqRQtmu675rSRkM=;
 b=HJZ73OeGzXvmuo8jiBMd3XDwV6TkgNonTuckHgyagMUzdx0BL9ziRvJWxmMQ+b64k8
 q66MxgmGXzkR47r2iXm3yaVLSDThpGQEFCIGgvMUV5DWQ6Fe4b7HpBhBCkT7lPRDcpk8
 USLeu0E2g6s/ueQxc9l/GCRLXwrtxVY+CrQHCcL50p1pqh/2cDT/rq4J/MUiVw4BD11D
 WdY8D8iN79rEEtEkTePxGfSVtiQoKbjmRdfL4D34qPWISoDNIfApTgdH6SrZ5NgbiCxB
 VHN7F6JyfG7rD2XRfQlEx6PzsdgGRwzR7R7imymF6jb8KUzd9lIzvSPzwyQHcQh+1Wod
 OrKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=LxeGl8HMi5aNoMFV9sQFEPQevkzygqRQtmu675rSRkM=;
 b=YjlqKxWuMnUoyB/PvAYwL8rBnGQ63q2NGcrVBw2HlSkGXD4Ub9egKavB/bb8Uo6nWc
 f6sJNwS1/RCfYPzEG0/KKNFD+mo+3Ji+ibCadb2Lim14AUoZzhV/YTkxx9B3yTz//0tU
 XR/VRCS92C8J9cSYVtBPNZvNq7ylmZEQxnMUZKJ/eHZzZHEPaELE03uo6Rn2aMKGbbwU
 pbFRMcY3r9iqfc8IWoDigTKSDO9NB/9jQjSuAe2SskrxqkaXzr/7o+LtnXWoIDYXpdXs
 7tk9g4dQ7pr1SmYxtY5XP8ZLTy7E3bQdlBDEL9BmX38UHSg4PjkX4XU4RZPBwqMk/clo
 OSow==
X-Gm-Message-State: ANhLgQ3fQZGb+zgiog82p+x6hdl065YAe2DbRTmvgDnrKirPpo0LSRfz
 CcD5GBUg44ZrIbJTb6Af/il1HHc=
X-Google-Smtp-Source: ADFU+vseLp9tJtEt6Kya9eUWFU44cPTJKLween/flZyYUHVH5li1VcTUExpJfpw14hiNWhW2H0iNyr4=
X-Received: by 2002:a0c:9102:: with SMTP id q2mr4299975qvq.161.1585158056487; 
 Wed, 25 Mar 2020 10:40:56 -0700 (PDT)
Date: Wed, 25 Mar 2020 10:40:01 -0700
In-Reply-To: <20200312171755.177743-1-pcc@google.com>
Message-Id: <20200325174001.234803-1-pcc@google.com>
Mime-Version: 1.0
References: <20200312171755.177743-1-pcc@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v2] arm64: Expose original FAR_EL1 value in sigcontext
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_104059_618055_5C800CF2 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Collingbourne <pcc@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will@kernel.org>,
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

We should not stop clearing these bits in the existing fault address
fields, because there may be existing userspace applications that are
expecting the tag bits to be cleared. Instead, create a far_context in
sigcontext (similar to the existing esr_context), and store the original
value of FAR_EL1 (including the tag bits) there.

[1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html

Signed-off-by: Peter Collingbourne <pcc@google.com>
---
v2:
- revert changes to hw_breakpoint.c
- rename set_thread_esr to set_thread_far_esr

 arch/arm64/include/asm/exception.h       |  2 +-
 arch/arm64/include/asm/processor.h       |  2 +-
 arch/arm64/include/uapi/asm/sigcontext.h |  9 +++++
 arch/arm64/kernel/entry-common.c         |  2 --
 arch/arm64/kernel/signal.c               | 20 ++++++++++-
 arch/arm64/mm/fault.c                    | 45 ++++++++++++++----------
 6 files changed, 57 insertions(+), 23 deletions(-)

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
index 5ba63204d078..77d916c07531 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -142,7 +142,7 @@ struct thread_struct {
 	void			*sve_state;	/* SVE registers, if any */
 	unsigned int		sve_vl;		/* SVE vector length */
 	unsigned int		sve_vl_onexec;	/* SVE vl after next exec */
-	unsigned long		fault_address;	/* fault info */
+	unsigned long		fault_address;	/* FAR_EL1 value */
 	unsigned long		fault_code;	/* ESR_EL1 value */
 	struct debug_info	debug;		/* debugging */
 #ifdef CONFIG_ARM64_PTR_AUTH
diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
index 8b0ebce92427..f532a2505d5e 100644
--- a/arch/arm64/include/uapi/asm/sigcontext.h
+++ b/arch/arm64/include/uapi/asm/sigcontext.h
@@ -44,6 +44,7 @@ struct sigcontext {
  *
  *	0x210		fpsimd_context
  *	 0x10		esr_context
+ *	 0x10		far_context
  *	0x8a0		sve_context (vl <= 64) (optional)
  *	 0x20		extra_context (optional)
  *	 0x10		terminator (null _aarch64_ctx)
@@ -94,6 +95,14 @@ struct esr_context {
 	__u64 esr;
 };
 
+/* FAR_EL1 context */
+#define FAR_MAGIC	0x46415201
+
+struct far_context {
+	struct _aarch64_ctx head;
+	__u64 far;
+};
+
 /*
  * extra_context: describes extra space in the signal frame for
  * additional structures that don't fit in sigcontext.__reserved[].
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index fde59981445c..290ea59c68b8 100644
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
index 339882db5a91..48e8b6c7b536 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -55,6 +55,7 @@ struct rt_sigframe_user_layout {
 
 	unsigned long fpsimd_offset;
 	unsigned long esr_offset;
+	unsigned long far_offset;
 	unsigned long sve_offset;
 	unsigned long extra_offset;
 	unsigned long end_offset;
@@ -383,6 +384,7 @@ static int parse_user_sigframe(struct user_ctxs *user,
 			break;
 
 		case ESR_MAGIC:
+		case FAR_MAGIC:
 			/* ignore */
 			break;
 
@@ -581,6 +583,11 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
 				     sizeof(struct esr_context));
 		if (err)
 			return err;
+
+		err = sigframe_alloc(user, &user->far_offset,
+				     sizeof(struct far_context));
+		if (err)
+			return err;
 	}
 
 	if (system_supports_sve()) {
@@ -621,7 +628,8 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
 	__put_user_error(regs->pc, &sf->uc.uc_mcontext.pc, err);
 	__put_user_error(regs->pstate, &sf->uc.uc_mcontext.pstate, err);
 
-	__put_user_error(current->thread.fault_address, &sf->uc.uc_mcontext.fault_address, err);
+	__put_user_error(untagged_addr(current->thread.fault_address),
+			 &sf->uc.uc_mcontext.fault_address, err);
 
 	err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
 
@@ -641,6 +649,16 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
 		__put_user_error(current->thread.fault_code, &esr_ctx->esr, err);
 	}
 
+	if (err == 0 && user->far_offset) {
+		struct far_context __user *far_ctx =
+			apply_user_offset(user, user->far_offset);
+
+		__put_user_error(FAR_MAGIC, &far_ctx->head.magic, err);
+		__put_user_error(sizeof(*far_ctx), &far_ctx->head.size, err);
+		__put_user_error(current->thread.fault_address, &far_ctx->far,
+				 err);
+	}
+
 	/* Scalable Vector Extension state, if present */
 	if (system_supports_sve() && err == 0 && user->sve_offset) {
 		struct sve_context __user *sve_ctx =
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 85566d32958f..738adc950012 100644
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
 	unsigned long vm_flags = VM_READ | VM_WRITE | VM_EXEC;
 	unsigned int mm_flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
+	unsigned long addr = untagged_addr(far);
 
 	if (kprobe_page_fault(regs, esr))
 		return 0;
@@ -580,7 +586,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	}
 
 	inf = esr_to_fault_info(esr);
-	set_thread_esr(addr, esr);
+	set_thread_far_esr(far, esr);
 	if (fault & VM_FAULT_SIGBUS) {
 		/*
 		 * We had some memory, but were unable to successfully fix up
@@ -615,30 +621,32 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
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
@@ -654,7 +662,7 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 	if (esr & ESR_ELx_FnV)
 		siaddr = NULL;
 	else
-		siaddr  = (void __user *)addr;
+		siaddr  = (void __user *)untagged_addr(far);
 	arm64_notify_die(inf->name, regs, inf->sig, inf->code, siaddr, esr);
 
 	return 0;
@@ -727,11 +735,12 @@ static const struct fault_info fault_info[] = {
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
2.25.1.696.g5e7596f4ac-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
