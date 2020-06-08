Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FED1F1ECC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 20:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Dtj3E0mh++3th7F5mErbWd60noFVLy5iIdbIYV3xjjg=; b=aGOuGbY/wneQEA
	QQGLB8X1efsSawdnI9UseP0ieyAUQJnThlwF3P4EtacfuSxhNarjLnkdFNIKRmXjjouCkMF2dy/tV
	VgHZ4+3kA+33fmjXJ9wH8mgYHADw11rPANtyMJqDnLNn+5NP8PwIhcxb09dvESDRSzGibqGdqjwWh
	pfIeGwKdk8MnHYk2sFNBmt4MH0xoO7L/DyQQjEJo64varM9vC1IxtESotsBN9ATPg7e+VxaILjABD
	SKogNO7Bmv1IVnpvpGajukczLlqQD6KUCfjTt+MrJAX+8Cfx0rwn8BxPZ12y9eNytb+ZOzmtDBP8g
	/3CCHuouEawnXqk6pFYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMI0-0007z2-S6; Mon, 08 Jun 2020 18:14:28 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMHs-0007yY-Vw
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 18:14:23 +0000
Received: by mail-qt1-x84a.google.com with SMTP id p9so16246728qtn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 11:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:subject:from:to:cc;
 bh=pbX7XNQ+xDGloQsY4W1iI3rbTsezKPwC2jiOmkRNUEI=;
 b=dp0KJ0yq84SJMO3KEg6QAkXKT6/LDs4JtmRDiYPxEnDHA5Kc7f2WoqWSVC7LeRwRl2
 ToX9fQC3WS6mnWlBAoo3naivAE18yoGcIIlG6BGCLmVrKJc9hfsLoyJaMnzQQwJkDPnw
 Y7swsGmOvz+VHTY8Wya+Kj2bSqErfjMA1BQIaY0oi5O5TupPZRtmxnjaC+nDrLhttXJN
 AmLFk/QdiWqbW9BLebqe9TNrWN9ytdIhbGci7iFF6VZo7/aQFpRbuvPt5XQt8lnUSyue
 I/35GFvnfrfXJdbLz9vro0CaXBvVFKeytVw9lfbbxdj2LT6F3MfJYfkrUofiYGwdU2UV
 7KwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version:subject
 :from:to:cc;
 bh=pbX7XNQ+xDGloQsY4W1iI3rbTsezKPwC2jiOmkRNUEI=;
 b=H8bvWXWn3BuW2sgy2O04PdPsj92ekA9se0S84W3gECSoQkWZKWJqf6n2Ev6JSsixUE
 KjXhfBOXanvLRSvEG145mgTTNk4PByc5Rnv9p3jfOevpqbjFWIoBl6sWnFYRYMGtoTQ5
 6qwDIqgY9BeDJr9rxEhC9NvzkiL5njtd8jJ97V64+gS2GbGp2rOpYdhCYPStgmj29ENl
 3MuHAoWFGHwsZGk26rRtvlVBPN8aWL6bv20KZzMl9yMjlDC4rla8SQVaMI4yWtmBm5TW
 seMYjgqx3ENsytEd8RFcR0j2wDO+4yU8RZKU2gBuh9mVUFklVvEymZlFZTJ5q9mi3N9A
 9PYw==
X-Gm-Message-State: AOAM531RPG/UL8J/JY25EJveQ1KpzrCdxDz95fwnenmTncORDrRNfPpw
 kiZfqm0tXlpjRSbIjZMC3tKX8L0=
X-Google-Smtp-Source: ABdhPJzLVEKCzoO3MpiMnWBrLINXcJVe1BUbgbeigNzjCzUVr4Jf30zVFgt0XbjdFWKu2pZmKfliTnE=
X-Received: by 2002:ad4:4309:: with SMTP id c9mr16063qvs.50.1591640059517;
 Mon, 08 Jun 2020 11:14:19 -0700 (PDT)
Date: Mon,  8 Jun 2020 11:14:13 -0700
In-Reply-To: <CAMn1gO4CL6FVQh3dzxmYiuiOLKfEZi4jrKvc7N6UegxKSw7n2A@mail.gmail.com>
Message-Id: <20200608181413.260795-1-pcc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH v7] arm64: Expose FAR_EL1 tag bits in siginfo
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, 
 Dave Martin <Dave.Martin@arm.com>, Will Deacon <will@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, 
 "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_111421_048427_F5C5AC44 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

We should not stop clearing these bits in the existing fault address
fields, because there may be existing userspace applications that
are expecting the tag bits to be cleared. Instead, create a new
aarch64-specific union field in siginfo, and store the tag bits of
FAR_EL1 there, together with a mask specifying which bits are valid.

The new fields are laid out in a part of siginfo that is currently
unused due to having previously been used for padding between
si_addr_lsb and the union. Existing kernels will zero-initialize
the padding, setting both fields to 0, which is a valid value for
the fields.

[1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html

Signed-off-by: Peter Collingbourne <pcc@google.com>
---
v7:
- switch to a new siginfo field instead of using sigcontext
- merge the patch back into one since the other patches are now
  unnecessary

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
 Documentation/arm64/tagged-pointers.rst | 17 +++++---
 arch/arm64/include/asm/exception.h      |  2 +-
 arch/arm64/include/asm/traps.h          |  7 +++-
 arch/arm64/kernel/debug-monitors.c      |  4 +-
 arch/arm64/kernel/entry-common.c        |  2 -
 arch/arm64/kernel/ptrace.c              |  2 +-
 arch/arm64/kernel/traps.c               | 35 ++++++++++++----
 arch/arm64/mm/fault.c                   | 54 ++++++++++++++-----------
 include/uapi/asm-generic/siginfo.h      | 12 ++++++
 9 files changed, 90 insertions(+), 45 deletions(-)

diff --git a/Documentation/arm64/tagged-pointers.rst b/Documentation/arm64/tagged-pointers.rst
index eab4323609b9..f1880ed5cdf2 100644
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
+The fault address tag is preserved in the si_addr_top_byte field of
+siginfo, which is set for signals raised in response to data aborts
+and instruction aborts.
 
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
diff --git a/arch/arm64/include/asm/traps.h b/arch/arm64/include/asm/traps.h
index cee5928e1b7d..8e4f6c5b97af 100644
--- a/arch/arm64/include/asm/traps.h
+++ b/arch/arm64/include/asm/traps.h
@@ -26,8 +26,11 @@ void register_undef_hook(struct undef_hook *hook);
 void unregister_undef_hook(struct undef_hook *hook);
 void force_signal_inject(int signal, int code, unsigned long address);
 void arm64_notify_segfault(unsigned long addr);
-void arm64_force_sig_fault(int signo, int code, void __user *addr, const char *str);
-void arm64_force_sig_mceerr(int code, void __user *addr, short lsb, const char *str);
+void arm64_force_sig_fault(int signo, int code, void __user *addr,
+			   unsigned long far, unsigned char far_tb_mask,
+			   const char *str);
+void arm64_force_sig_mceerr(int code, void __user *addr, short lsb,
+			    unsigned long far, const char *str);
 void arm64_force_sig_ptrace_errno_trap(int errno, void __user *addr, const char *str);
 
 /*
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 48222a4760c2..498e6393b2ca 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -232,8 +232,8 @@ static void send_user_sigtrap(int si_code)
 		local_irq_enable();
 
 	arm64_force_sig_fault(SIGTRAP, si_code,
-			     (void __user *)instruction_pointer(regs),
-			     "User debug trap");
+			      (void __user *)instruction_pointer(regs), 0, 0,
+			      "User debug trap");
 }
 
 static int single_step_handler(unsigned long unused, unsigned int esr,
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
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index b3d3005d9515..51bb8bcaf24b 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -198,7 +198,7 @@ static void ptrace_hbptriggered(struct perf_event *bp,
 	}
 #endif
 	arm64_force_sig_fault(SIGTRAP, TRAP_HWBKPT,
-			      (void __user *)(bkpt->trigger),
+			      (void __user *)(bkpt->trigger), 0, 0,
 			      desc);
 }
 
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index cf402be5c573..53ddeb8bde0b 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -234,20 +234,41 @@ static void arm64_show_signal(int signo, const char *str)
 }
 
 void arm64_force_sig_fault(int signo, int code, void __user *addr,
+			   unsigned long far, unsigned char far_tb_mask,
 			   const char *str)
 {
 	arm64_show_signal(signo, str);
-	if (signo == SIGKILL)
+	if (signo == SIGKILL) {
 		force_sig(SIGKILL);
-	else
-		force_sig_fault(signo, code, addr);
+	} else {
+		struct kernel_siginfo info;
+		clear_siginfo(&info);
+		info.si_signo = signo;
+		info.si_errno = 0;
+		info.si_code = code;
+		info.si_addr = addr;
+		info.si_addr_top_byte = (far >> 56) & far_tb_mask;
+		info.si_addr_top_byte_mask = far_tb_mask;
+		force_sig_info(&info);
+	}
 }
 
 void arm64_force_sig_mceerr(int code, void __user *addr, short lsb,
-			    const char *str)
+			    unsigned long far, const char *str)
 {
+	struct kernel_siginfo info;
+
 	arm64_show_signal(SIGBUS, str);
-	force_sig_mceerr(code, addr, lsb);
+
+	clear_siginfo(&info);
+	info.si_signo = SIGBUS;
+	info.si_errno = 0;
+	info.si_code = code;
+	info.si_addr = addr;
+	info.si_addr_lsb = lsb;
+	info.si_addr_top_byte = far >> 56;
+	info.si_addr_top_byte_mask = 0xff;
+	force_sig_info(&info);
 }
 
 void arm64_force_sig_ptrace_errno_trap(int errno, void __user *addr,
@@ -266,7 +287,7 @@ void arm64_notify_die(const char *str, struct pt_regs *regs,
 		current->thread.fault_address = 0;
 		current->thread.fault_code = err;
 
-		arm64_force_sig_fault(signo, sicode, addr, str);
+		arm64_force_sig_fault(signo, sicode, addr, 0, 0, str);
 	} else {
 		die(str, regs, err);
 	}
@@ -816,7 +837,7 @@ void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr)
 	current->thread.fault_address = 0;
 	current->thread.fault_code = esr;
 
-	arm64_force_sig_fault(SIGILL, ILL_ILLOPC, pc,
+	arm64_force_sig_fault(SIGILL, ILL_ILLOPC, pc, 0, 0,
 			      "Bad EL0 synchronous exception");
 }
 
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index c9cedc0432d2..724e896674e6 100644
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
@@ -377,8 +377,11 @@ static void set_thread_esr(unsigned long address, unsigned int esr)
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
@@ -388,7 +391,7 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
 
 		set_thread_esr(addr, esr);
 		arm64_force_sig_fault(inf->sig, inf->code, (void __user *)addr,
-				      inf->name);
+				      far, 0xff, inf->name);
 	} else {
 		__do_kernel_fault(addr, esr, regs);
 	}
@@ -439,7 +442,7 @@ static bool is_write_abort(unsigned int esr)
 	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
 }
 
-static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
+static int __kprobes do_page_fault(unsigned long far, unsigned int esr,
 				   struct pt_regs *regs)
 {
 	const struct fault_info *inf;
@@ -447,6 +450,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	vm_fault_t fault, major = 0;
 	unsigned long vm_flags = VM_ACCESS_FLAGS;
 	unsigned int mm_flags = FAULT_FLAG_DEFAULT;
+	unsigned long addr = untagged_addr(far);
 
 	if (kprobe_page_fault(regs, esr))
 		return 0;
@@ -577,7 +581,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 		 * this page fault.
 		 */
 		arm64_force_sig_fault(SIGBUS, BUS_ADRERR, (void __user *)addr,
-				      inf->name);
+				      far, 0xff, inf->name);
 	} else if (fault & (VM_FAULT_HWPOISON_LARGE | VM_FAULT_HWPOISON)) {
 		unsigned int lsb;
 
@@ -586,7 +590,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 			lsb = hstate_index_to_shift(VM_FAULT_GET_HINDEX(fault));
 
 		arm64_force_sig_mceerr(BUS_MCEERR_AR, (void __user *)addr, lsb,
-				       inf->name);
+				       far, inf->name);
 	} else {
 		/*
 		 * Something tried to access memory that isn't in our memory
@@ -594,8 +598,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 		 */
 		arm64_force_sig_fault(SIGSEGV,
 				      fault == VM_FAULT_BADACCESS ? SEGV_ACCERR : SEGV_MAPERR,
-				      (void __user *)addr,
-				      inf->name);
+				      (void __user *)addr, far, 0xff, inf->name);
 	}
 
 	return 0;
@@ -605,30 +608,32 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
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
@@ -644,7 +649,7 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 	if (esr & ESR_ELx_FnV)
 		siaddr = NULL;
 	else
-		siaddr  = (void __user *)addr;
+		siaddr  = (void __user *)untagged_addr(far);
 	arm64_notify_die(inf->name, regs, inf->sig, inf->code, siaddr, esr);
 
 	return 0;
@@ -717,11 +722,12 @@ static const struct fault_info fault_info[] = {
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
@@ -730,8 +736,8 @@ void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 		show_pte(addr);
 	}
 
-	arm64_notify_die(inf->name, regs,
-			 inf->sig, inf->code, (void __user *)addr, esr);
+	arm64_notify_die(inf->name, regs, inf->sig, inf->code,
+			 (void __user *)addr, esr);
 }
 NOKPROBE_SYMBOL(do_mem_abort);
 
@@ -744,8 +750,8 @@ NOKPROBE_SYMBOL(do_el0_irq_bp_hardening);
 
 void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 {
-	arm64_notify_die("SP/PC alignment exception", regs,
-			 SIGBUS, BUS_ADRALN, (void __user *)addr, esr);
+	arm64_notify_die("SP/PC alignment exception", regs, SIGBUS, BUS_ADRALN,
+			 (void __user *)addr, esr);
 }
 NOKPROBE_SYMBOL(do_sp_pc_abort);
 
@@ -871,8 +877,8 @@ void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
 		arm64_apply_bp_hardening();
 
 	if (inf->fn(addr_if_watchpoint, esr, regs)) {
-		arm64_notify_die(inf->name, regs,
-				 inf->sig, inf->code, (void __user *)pc, esr);
+		arm64_notify_die(inf->name, regs, inf->sig, inf->code,
+				 (void __user *)pc, esr);
 	}
 
 	debug_exception_exit(regs);
diff --git a/include/uapi/asm-generic/siginfo.h b/include/uapi/asm-generic/siginfo.h
index cb3d6c267181..6dd82373eb2d 100644
--- a/include/uapi/asm-generic/siginfo.h
+++ b/include/uapi/asm-generic/siginfo.h
@@ -91,6 +91,14 @@ union __sifields {
 				char _dummy_pkey[__ADDR_BND_PKEY_PAD];
 				__u32 _pkey;
 			} _addr_pkey;
+#ifdef __aarch64__
+			/* used with all si_codes */
+			struct {
+				short _dummy_top_byte;
+				unsigned char _top_byte;
+				unsigned char _top_byte_mask;
+			} _addr_top_byte;
+#endif
 		};
 	} _sigfault;
 
@@ -148,6 +156,10 @@ typedef struct siginfo {
 #define si_int		_sifields._rt._sigval.sival_int
 #define si_ptr		_sifields._rt._sigval.sival_ptr
 #define si_addr		_sifields._sigfault._addr
+#ifdef __aarch64__
+#define si_addr_top_byte	_sifields._sigfault._addr_top_byte._top_byte
+#define si_addr_top_byte_mask	_sifields._sigfault._addr_top_byte._top_byte_mask
+#endif
 #ifdef __ARCH_SI_TRAPNO
 #define si_trapno	_sifields._sigfault._trapno
 #endif
-- 
2.27.0.278.ge193c7cf3a9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
