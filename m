Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA7E1A017D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 01:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ofmktIJRyEvGZ4qqNRrkzJl3Cp3//LrQyKeUv7bq94=; b=b71g+jphASZr4E
	2k63UoNlnGtq53frF3sl0MW3pSEaQXPHttfpUHY93ZyBRcOnU/lCqOUDsFzx5/DjTTcApTIfQiEP0
	fHakRB4++4x5+F5ErasvTg/eh/dfY46EWicINnHE1SawrillKGFkQWuBg4AvNhbsQfgeI7EoSYppq
	4+xHk4wqKJ3SPoqLoULKgm32d+ce1YiN0HoYq1/ZF9utfR5b6Zc4uJscpvhR6GJXQ7JHDBoiEOK5t
	k+wY/fBvaCy4gwL705TYbV1O59264KVPJqLnGt7gawOtvH7X+n+da/gRvgeoSzESU7SAMdAXeToKj
	273yfviwanL6uGOBV01g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLazJ-0004Hb-Es; Mon, 06 Apr 2020 23:17:05 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLayU-0003ds-K8
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 23:16:16 +0000
Received: by mail-pl1-x642.google.com with SMTP id e1so479465plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 16:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=afO1zKmkq1sj5aqNSAPmo8IRjezuEuKjnM3GlRCWtRE=;
 b=FAUou8gYmt2MCxO2cKyXhzSw4j1IC8KgeC+bXiqTqe5QqSNRmdnqOuVJoHQDJ+UyPU
 RdIafVDCCHUGnepHULs0h0QZtUehhYm52xPc8JIfEafNjj7L97tUHTMzVrIHdX23tu7T
 870tT8w8N8DbhdKYHGf474/jG4q9lS98mHNd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=afO1zKmkq1sj5aqNSAPmo8IRjezuEuKjnM3GlRCWtRE=;
 b=fursPZ7e+5FM8E25YFRnTICzcGvmw5oVkjpCG5LlH8pgjrg9kFmn7QK2KHWkrdaZaE
 ouRbjajoZQHlTyAmRkEJ37ccQypWKe3f4aNshDpQLMtvnmODuvhcfzCi1Z1GR8qbQ+hQ
 4gu/8Hf1BldFyq0OCJTnEPC3z0V35fxIto0u6bnWeFQ5SPCfYWt4WzFsk81Pb5y0RHEE
 g8ici7IdvUzK2fpeAy4Ffqwlq8LHyLLXR3G7AXXe24AUvZkYTUiBOQ8FFfW2Y790EgaX
 gHpR+6HxPRssigpcnCk0VD4VcMWf+jalFS4gQhA/UZKui8RSEIvEwnq/7+hAE6gWm+xV
 lwQg==
X-Gm-Message-State: AGi0Pua1Dr5Fh13tmrjQh8I3e2139P/uurykhMgyrsfHWZKJsMNtn6fo
 J1V++ePbVLTF8br1aEC5KE3S2A==
X-Google-Smtp-Source: APiQypLKqmE7eCIX43I8YR8JbiR94l3ZUUPoGei30hzmH3c+zDO2qS2G3j+Tlv/Caq6mWLyP6sMzhQ==
X-Received: by 2002:a17:902:788e:: with SMTP id
 q14mr22301315pll.72.1586214974066; 
 Mon, 06 Apr 2020 16:16:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f8sm10635773pgc.75.2020.04.06.16.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 16:16:10 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v3 4/5] x86/entry: Enable random_kstack_offset support
Date: Mon,  6 Apr 2020 16:16:05 -0700
Message-Id: <20200406231606.37619-5-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406231606.37619-1-keescook@chromium.org>
References: <20200406231606.37619-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_161614_667912_62D1C863 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Allow for a randomized stack offset on a per-syscall basis, with roughly
5 bits of entropy.

In order to avoid unconditional stack canaries on syscall entry, also
downgrade from -fstack-protector-strong to -fstack-protector to avoid
triggering checks due to alloca(). Examining the resulting canary coverage
changes to common.o, this also removes canaries in other functions,
due to a handful of declarations of "__u64 args[6]" (from seccomp) and
"unsigned long args[6]" (from tracepoints), but their accesses are indexed
(instead of via dynamically sized linear reads/writes) so the risk of
removing useful mitigation coverage here is very low.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Kconfig        |  1 +
 arch/x86/entry/Makefile |  9 +++++++++
 arch/x86/entry/common.c | 12 +++++++++++-
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index beea77046f9b..b9d449581eb6 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -150,6 +150,7 @@ config X86
 	select HAVE_ARCH_TRANSPARENT_HUGEPAGE
 	select HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD if X86_64
 	select HAVE_ARCH_VMAP_STACK		if X86_64
+	select HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET
 	select HAVE_ARCH_WITHIN_STACK_FRAMES
 	select HAVE_ASM_MODVERSIONS
 	select HAVE_CMPXCHG_DOUBLE
diff --git a/arch/x86/entry/Makefile b/arch/x86/entry/Makefile
index 06fc70cf5433..7b40e6ae2618 100644
--- a/arch/x86/entry/Makefile
+++ b/arch/x86/entry/Makefile
@@ -7,6 +7,15 @@ OBJECT_FILES_NON_STANDARD_entry_64_compat.o := y
 
 CFLAGS_syscall_64.o		+= $(call cc-option,-Wno-override-init,)
 CFLAGS_syscall_32.o		+= $(call cc-option,-Wno-override-init,)
+
+# Downgrade to -fstack-protector to avoid triggering unneeded stack canary
+# checks due to randomize_kstack_offset. This also removes canaries in
+# other places as well, due to a handful of declarations of __u64 args[6]
+# (seccomp) and unsigned long args[6] (tracepoints), but their accesses
+# are indexed (instead of via dynamically sized linear reads/writes) so
+# the risk of removing useful mitigation coverage here is very low.
+CFLAGS_common.o			+= $(subst -fstack-protector-strong,-fstack-protector,$(filter -fstack-protector-strong,$(KBUILD_CFLAGS)))
+
 obj-y				:= entry_$(BITS).o thunk_$(BITS).o syscall_$(BITS).o
 obj-y				+= common.o
 
diff --git a/arch/x86/entry/common.c b/arch/x86/entry/common.c
index 9747876980b5..086d7af570af 100644
--- a/arch/x86/entry/common.c
+++ b/arch/x86/entry/common.c
@@ -26,6 +26,7 @@
 #include <linux/livepatch.h>
 #include <linux/syscalls.h>
 #include <linux/uaccess.h>
+#include <linux/randomize_kstack.h>
 
 #include <asm/desc.h>
 #include <asm/traps.h>
@@ -189,6 +190,13 @@ __visible inline void prepare_exit_to_usermode(struct pt_regs *regs)
 	lockdep_assert_irqs_disabled();
 	lockdep_sys_exit();
 
+	/*
+	 * x86_64 stack alignment means 3 bits are ignored, so keep
+	 * the top 5 bits. x86_32 needs only 2 bits of alignment, so
+	 * the top 6 bits will be used.
+	 */
+	choose_random_kstack_offset(rdtsc() & 0xFF);
+
 	cached_flags = READ_ONCE(ti->flags);
 
 	if (unlikely(cached_flags & EXIT_TO_USERMODE_LOOP_FLAGS))
@@ -283,6 +291,7 @@ __visible void do_syscall_64(unsigned long nr, struct pt_regs *regs)
 {
 	struct thread_info *ti;
 
+	add_random_kstack_offset();
 	enter_from_user_mode();
 	local_irq_enable();
 	ti = current_thread_info();
@@ -355,6 +364,7 @@ static __always_inline void do_syscall_32_irqs_on(struct pt_regs *regs)
 /* Handles int $0x80 */
 __visible void do_int80_syscall_32(struct pt_regs *regs)
 {
+	add_random_kstack_offset();
 	enter_from_user_mode();
 	local_irq_enable();
 	do_syscall_32_irqs_on(regs);
@@ -378,8 +388,8 @@ __visible long do_fast_syscall_32(struct pt_regs *regs)
 	 */
 	regs->ip = landing_pad;
 
+	add_random_kstack_offset();
 	enter_from_user_mode();
-
 	local_irq_enable();
 
 	/* Fetch EBP from where the vDSO stashed it. */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
