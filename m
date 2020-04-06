Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADAF1A017E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 01:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7c/E3jbfel8TkytpYzJU+/6RuctWpBWFvBI9Z2MhAQ=; b=H2fyzj5b9KUhnV
	X9P2jzFTDQVo8kXAN6/KFAsNCsGdYl/vK4kKkoSKhMnBX1PvIm3JzvKDVyZAEmCiJOUbu43Ab1QMo
	BXjGbZVVjmIEQwE7xQIZo+7KbAPGO+b4+tfAzHg7dT2l+4leucq/HOPkCT/1yX6ZQDoDMQtg3eq65
	PownZvKlPSKrX1qoCUrR5QXIfyQV/SbQHOsKb3vCTq7KUc5L8y+kM5lObK7nhbsooK7dlacLMBV1d
	MB5Lm8JFOAhIgIsO53ePXwCSsEvwPcfP8seKyz3QUcLvsph+UyAS/VL6dOpNU3XEf23Y4HqQd9YOG
	94ds+2l/NvNBk0j58NfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLazZ-0004XK-Fn; Mon, 06 Apr 2020 23:17:21 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLayU-0003dl-Dt
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 23:16:16 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ng8so565840pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 16:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gI5IFR42YfojEVReCokIL0PkImea/rfn/M9y/tkHY3U=;
 b=jFwMyhOoOhIidIm2MRbLuwmjjsTl0duo2bGeUwCoUDkarOJ9jJsT13+uJWwEt5weB7
 uBqhEnMU5ufwmm6gsM6owJ74S1MB1iiKDZl4BywfhE04wcjYNTqGdNXMKBkwSCibT2Q2
 Ppmgzkw/R5mxGJHXnmX3KKpxpDz0ThfqUGMAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gI5IFR42YfojEVReCokIL0PkImea/rfn/M9y/tkHY3U=;
 b=GKJlNH/XwavSbm+R3uKo4zPybyieZUQ1YKO256OWzfTdDRai5HSAlpd0fUovRP1aTe
 W7gb/bqH3fVBOBcjcU2Bi2sTAZ1zS9pVhREFy2dfl61/NUS3c0Dv7jdaUJfL8HXnIBM2
 H2atYL7b63oDMcx/eEHk75kChe65KSo08Qp6zLX0tTvgXZSK6WVfhYfykmgsudDiLf+I
 8xxumIrhy2+VrSHvY20LNcT+q69vC73pBJpB2yYFYM8Jml+0QuWK0v0ZiLrkB0V20rBw
 ZpvNCt6a86ICFP/G81yf4pUOVX8P1Kxq5tucQaFsfBm7L5reh7MeVcJBARRZ+OnTOEJl
 0fhA==
X-Gm-Message-State: AGi0PubycVIIA7unn6Q8X8wus4KK2yXEqNV2caN81Og8GcnBkTfz8Eq7
 /p8i7YZTgazhdXx0/ArAoiLeNw==
X-Google-Smtp-Source: APiQypLr0HSVNkvDvGSyptY8A0rxNb1GV4o+xBzFEZBbbppMCeIsWmsRLIX7ABdxlixe031V5gjLuA==
X-Received: by 2002:a17:902:8c94:: with SMTP id
 t20mr21940332plo.336.1586214973377; 
 Mon, 06 Apr 2020 16:16:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t27sm3727621pgn.53.2020.04.06.16.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 16:16:10 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v3 3/5] stack: Optionally randomize kernel stack offset each
 syscall
Date: Mon,  6 Apr 2020 16:16:04 -0700
Message-Id: <20200406231606.37619-4-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406231606.37619-1-keescook@chromium.org>
References: <20200406231606.37619-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_161614_477104_514CA65F 
X-CRM114-Status: GOOD (  29.91  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This provides the ability for architectures to enable kernel stack base
address offset randomization. This feature is controlled by the boot
param "randomize_kstack_offset=on/off", with its default value set by
CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT.

This feature is based on the original idea from the last public release
of PaX's RANDKSTACK feature: https://pax.grsecurity.net/docs/randkstack.txt
All the credit for the original idea goes to the PaX team. Note that
the design and implementation of this upstream randomize_kstack_offset
feature differs greatly from the RANDKSTACK feature (see below).

Reasoning for the feature:

This feature aims to make harder the various stack-based attacks that
rely on deterministic stack structure. We have had many such attacks in
past (just to name few):

https://jon.oberheide.org/files/infiltrate12-thestackisback.pdf
https://jon.oberheide.org/files/stackjacking-infiltrate11.pdf
https://googleprojectzero.blogspot.com/2016/06/exploiting-recursion-in-linux-kernel_20.html

As Linux kernel stack protections have been constantly improving
(vmap-based stack allocation with guard pages, removal of thread_info,
STACKLEAK), attackers have had to find new ways for their exploits
to work. They have done so, continuing to rely on the kernel's stack
determinism, in situations where VMAP_STACK and THREAD_INFO_IN_TASK_STRUCT
were not relevant. For example, the following recent attacks would have
been hampered if the stack offset was non-deterministic between syscalls:

https://repositorio-aberto.up.pt/bitstream/10216/125357/2/374717.pdf
(page 70: targeting the pt_regs copy with linear stack overflow)

https://a13xp0p0v.github.io/2020/02/15/CVE-2019-18683.html
(leaked stack address from one syscall as a target during next syscall)

The main idea is that since the stack offset is randomized on each system
call, it is harder for an attack to reliably land in any particular place
on the thread stack, even with address exposures, as the stack base will
change on the next syscall. Also, since randomization is performed after
placing pt_regs, the ptrace-based approach[1] to discover the randomized
offset during a long-running syscall should not be possible.

Design description:

During most of the kernel's execution, it runs on the "thread stack",
which is pretty deterministic in its structure: it is fixed in size,
and on every entry from userspace to kernel on a syscall the thread
stack starts construction from an address fetched from the per-cpu
cpu_current_top_of_stack variable. The first element to be pushed to the
thread stack is the pt_regs struct that stores all required CPU registers
and syscall parameters. Finally the specific syscall function is called,
with the stack being used as the kernel executes the resulting request.

The goal of randomize_kstack_offset feature is to add a random offset
after the pt_regs has been pushed to the stack and before the rest of the
thread stack is used during the syscall processing, and to change it every
time a process issues a syscall. The source of randomness is currently
architecture-defined (but x86 is using the low byte of rdtsc()). Future
improvements for different entropy sources is possible, but out of scope
for this patch. As suggested by Andy Lutomirski, the offset is added
using alloca() and an empty asm() statement with an output constraint,
since it avoid changes to assembly syscall entry code, to the unwinder,
and provides correct stack alignment as defined by the compiler.

In order to make this available by default with zero performance impact
for those that don't want it, it is boot-time selectable with static
branches. This way, if the overhead is not wanted, it can just be
left turned off with no performance impact.

The generated assembly for x86_64 with GCC looks like this:

...
ffffffff81003977: 65 8b 05 02 ea 00 7f  mov %gs:0x7f00ea02(%rip),%eax
					    # 12380 <kstack_offset>
ffffffff8100397e: 25 ff 03 00 00        and $0x3ff,%eax
ffffffff81003983: 48 83 c0 0f           add $0xf,%rax
ffffffff81003987: 25 f8 07 00 00        and $0x7f8,%eax
ffffffff8100398c: 48 29 c4              sub %rax,%rsp
ffffffff8100398f: 48 8d 44 24 0f        lea 0xf(%rsp),%rax
ffffffff81003994: 48 83 e0 f0           and $0xfffffffffffffff0,%rax
...

As a result of the above stack alignment, this patch introduces about
5 bits of randomness after pt_regs is spilled to the thread stack on
x86_64, and 6 bits on x86_32 (since its has 1 fewer bit required for
stack alignment). The amount of entropy could be adjusted based on how
much of the stack space we wish to trade for security.

My measure of syscall performance overhead (on x86_64):

lmbench: /usr/lib/lmbench/bin/x86_64-linux-gnu/lat_syscall -N 10000 null
    randomize_kstack_offset=y	Simple syscall: 0.7082 microseconds
    randomize_kstack_offset=n	Simple syscall: 0.7016 microseconds

So, roughly 0.9% overhead growth for a no-op syscall, which is very
manageable. And for people that don't want this, it's off by default.

There are two gotchas with using the alloca() trick. First,
compilers that have Stack Clash protection (-fstack-clash-protection)
enabled by default (e.g. Ubuntu[3]) add pagesize stack probes to
any dynamic stack allocations. While the randomization offset is
always less than a page, the resulting assembly would still contain
(unreachable!) probing routines, bloating the resulting assembly. To
avoid this, -fno-stack-clash-protection is unconditionally added to
the kernel Makefile since this is the only dynamic stack allocation in
the kernel (now that VLAs have been removed) and it is provably safe
from Stack Clash style attacks.

The second gotcha with alloca() is a negative interaction with
-fstack-protector-strong, in that it see the alloca() as an array
allocation, which triggers the unconditional addition of the stack
canary function pre/post-amble which slows down syscalls regardless of
the static branch. In order to avoid adding this unneeded check and its
associated performance impact, architectures need to downgrade uses of
-fstack-protector-strong to -fstack-protector (which only triggers for
char arrays) in the compilation units that use the add_random_kstack()
macro and to audit the resulting stack mitigation coverage (to make sure
no desired coverage disappears). This is done in the next patches for
x86 and arm64. There is, unfortunately, no attribute that can be used
to disable stack protector for specific functions.

Comparison to PaX RANDKSTACK feature:

The RANDKSTACK feature randomizes the location of the stack start
(cpu_current_top_of_stack), i.e. including the location of pt_regs
structure itself on the stack. Initially this patch followed the same
approach, but during the recent discussions[2], it has been determined
to be of a little value since, if ptrace functionality is available for
an attacker, they can use PTRACE_PEEKUSR/PTRACE_POKEUSR to read/write
different offsets in the pt_regs struct, observe the cache behavior of
the pt_regs accesses, and figure out the random stack offset. Another
difference is that the random offset is stored in a per-cpu variable,
rather than having it be per-thread. As a result, these implementations
differ a fair bit in their implementation details and results, though
obviously the intent is similar.

[1] https://lore.kernel.org/kernel-hardening/2236FBA76BA1254E88B949DDB74E612BA4BC57C1@IRSMSX102.ger.corp.intel.com/
[2] https://lore.kernel.org/kernel-hardening/20190329081358.30497-1-elena.reshetova@intel.com/
[3] https://lists.ubuntu.com/archives/ubuntu-devel/2019-June/040741.html

Co-developed-by: Elena Reshetova <elena.reshetova@intel.com>
Signed-off-by: Elena Reshetova <elena.reshetova@intel.com>
Link: https://lore.kernel.org/r/20190415060918.3766-1-elena.reshetova@intel.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Makefile                         |  4 ++++
 arch/Kconfig                     | 23 ++++++++++++++++++
 include/linux/randomize_kstack.h | 40 ++++++++++++++++++++++++++++++++
 init/main.c                      | 23 ++++++++++++++++++
 4 files changed, 90 insertions(+)
 create mode 100644 include/linux/randomize_kstack.h

diff --git a/Makefile b/Makefile
index 4d0711f54047..1d4a8b9a6b02 100644
--- a/Makefile
+++ b/Makefile
@@ -779,6 +779,10 @@ ifdef CONFIG_INIT_STACK_ALL
 KBUILD_CFLAGS	+= -ftrivial-auto-var-init=pattern
 endif
 
+# While VLAs have been removed, GCC produces unreachable stack probes
+# for the randomize_kstack_offset feature. Disable it for all compilers.
+KBUILD_CFLAGS	+= $(call cc-option,-fno-stack-clash-protection,)
+
 DEBUG_CFLAGS	:= $(call cc-option, -fno-var-tracking-assignments)
 
 ifdef CONFIG_DEBUG_INFO
diff --git a/arch/Kconfig b/arch/Kconfig
index 17fe351cdde0..701c7d842714 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -854,6 +854,29 @@ config VMAP_STACK
 	  virtual mappings with real shadow memory, and KASAN_VMALLOC must
 	  be enabled.
 
+config HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET
+	def_bool n
+	help
+	  An arch should select this symbol if it can support kernel stack
+	  offset randomization with calls to add_random_kstack_offset()
+	  during syscall entry and choose_random_kstack_offset() during
+	  syscall exit. Downgrading of -fstack-protector-strong to
+	  -fstack-protector should also be applied to the entry code and
+	  closely examined, as the artificial stack bump looks like an array
+	  to the compiler, so it will attempt to add canary checks regardless
+	  of the static branch state.
+
+config RANDOMIZE_KSTACK_OFFSET_DEFAULT
+	bool "Randomize kernel stack offset on syscall entry"
+	depends on HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET
+	help
+	  The kernel stack offset can be randomized (after pt_regs) by
+	  roughly 5 bits of entropy, frustrating memory corruption
+	  attacks that depend on stack address determinism or
+	  cross-syscall address exposures. This feature is controlled
+	  by kernel boot param "randomize_kstack_offset=on/off", and this
+	  config chooses the default boot state.
+
 config ARCH_OPTIONAL_KERNEL_RWX
 	def_bool n
 
diff --git a/include/linux/randomize_kstack.h b/include/linux/randomize_kstack.h
new file mode 100644
index 000000000000..1df0dc52cadc
--- /dev/null
+++ b/include/linux/randomize_kstack.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _LINUX_RANDOMIZE_KSTACK_H
+#define _LINUX_RANDOMIZE_KSTACK_H
+
+#include <linux/kernel.h>
+#include <linux/jump_label.h>
+#include <linux/percpu-defs.h>
+
+DECLARE_STATIC_KEY_MAYBE(CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT,
+			 randomize_kstack_offset);
+DECLARE_PER_CPU(u32, kstack_offset);
+
+/*
+ * Do not use this anywhere else in the kernel. This is used here because
+ * it provides an arch-agnostic way to grow the stack with correct
+ * alignment. Also, since this use is being explicitly masked to a max of
+ * 10 bits, stack-clash style attacks are unlikely. For more details see
+ * "VLAs" in Documentation/process/deprecated.rst
+ */
+void *__builtin_alloca(size_t size);
+
+#define add_random_kstack_offset() do {					\
+	if (static_branch_maybe(CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT,	\
+				&randomize_kstack_offset)) {		\
+		u32 offset = this_cpu_read(kstack_offset);		\
+		u8 *ptr = __builtin_alloca(offset & 0x3FF);		\
+		asm volatile("" : "=m"(*ptr));				\
+	}								\
+} while (0)
+
+#define choose_random_kstack_offset(rand) do {				\
+	if (static_branch_maybe(CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT,	\
+				&randomize_kstack_offset)) {		\
+		u32 offset = this_cpu_read(kstack_offset);		\
+		offset ^= (rand);					\
+		this_cpu_write(kstack_offset, offset);			\
+	}								\
+} while (0)
+
+#endif
diff --git a/init/main.c b/init/main.c
index ee4947af823f..78fe3aea00b0 100644
--- a/init/main.c
+++ b/init/main.c
@@ -777,6 +777,29 @@ static void __init mm_init(void)
 	pti_init();
 }
 
+#ifdef CONFIG_HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET
+DEFINE_STATIC_KEY_MAYBE_RO(CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT,
+			   randomize_kstack_offset);
+DEFINE_PER_CPU(u32, kstack_offset);
+
+static int __init early_randomize_kstack_offset(char *buf)
+{
+	int ret;
+	bool bool_result;
+
+	ret = kstrtobool(buf, &bool_result);
+	if (ret)
+		return ret;
+
+	if (bool_result)
+		static_branch_enable(&randomize_kstack_offset);
+	else
+		static_branch_disable(&randomize_kstack_offset);
+	return 0;
+}
+early_param("randomize_kstack_offset", early_randomize_kstack_offset);
+#endif
+
 void __init __weak arch_call_rest_init(void)
 {
 	rest_init();
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
