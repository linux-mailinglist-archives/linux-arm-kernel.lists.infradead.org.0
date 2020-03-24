Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75345191B12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 21:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNj0RmqafA9jFkHNOg1T2nqT+tYhSq+J6YWagN86sDg=; b=HxTJ0Yr5bxaJfF
	UVHY4CuhKVYcn2B+Bxt389IRfVeMgNXQwVZDkJhGpJbK6ytk8kMcsGL8s6Nj30lR5FUn4Ngplc2iX
	LdzM4mBc0c3h+TlrXYTc4RoRRTP+zc/bkNEYC+h4+WaQYI9WFkvGLXnU0A+dRD7T/RDDshqKkEjzo
	KqzYJh6PnG5oVZhqj/3ybK6KxiFXH25Y+A9sGafmxdRC3aWKPC/OgbA7ZVRXNFBi5Nccr1f+hs3T6
	m5ESJYmDwoLTDIkFmuYTJDcybR/yj+62UPSY7sO6O/RJ4cocBsKWbfdmESIhUJp6THSlS2wdd2XNW
	W566imnM7csmZa9VTObQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGqEZ-00027s-QC; Tue, 24 Mar 2020 20:33:11 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGqE4-0001vg-El
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 20:32:42 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ng8so45106pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 13:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tXxslwRt84lo46s4AfUIy0jwZL6qW/F8aLPlGo+Vuzs=;
 b=T/YXNFJYjvxaejU1cNn6KiZWcTChX5JBh8J6KYpqLsCb4Zi/vVIMOgsSl+o1HY1WJ2
 vWHAi9J3xlxnvLtkfEmpWoe/DsoFGZbmYUNMbqksBmf+pmqHgLFCCUoxSz+q/p2uCZ5s
 HUkzy9HRyx5OmeeEAodSW6aIsMJPc3Pvav6+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tXxslwRt84lo46s4AfUIy0jwZL6qW/F8aLPlGo+Vuzs=;
 b=InZswGQAfGptJ/97s82fppwYH1Hpj+cWhK4IlxeczpTuBxaQuqX9o7Uf18xZRRM3Wi
 61ZjsIiDmOcaKBW/ugvru+aEcnajJmT6yQ8hzCTj9ZVQ4/4dLQZSON9sFVJBWEsBqwB0
 6mb8LJKKU1uex4bO4FC7XFf9pHJVs03RAS71OTZqgKjYblldagbgIrosah1gGhpqtygt
 3EiEr1gpqvizcl2H0DV4xEDVtD/Nbeiqoa5Vp7YhL4LAv3hti8MzniUy2llrhc9lFkMo
 gq58/QvhfcBqPrG2paND/7FQf7x9OjJN86pVOy6LzmdYqC5TvNRxCH0OUxKqUOehAUHs
 5PPg==
X-Gm-Message-State: ANhLgQ0uzzpJQdqrP4hNO0h8pivJqCricuCIcj1hItZqsQEG4WELEtsi
 z7LTrl9D2Zin9LRYTpVHkkyscw==
X-Google-Smtp-Source: ADFU+vuPz1pOMJKdmnm1JY1Cd9NWe+ToQ10sdatj73bSqAyNgc+HS1jzGaTvvHVtjKzMIO9M2dV0uA==
X-Received: by 2002:a17:902:8bc8:: with SMTP id
 r8mr27618425plo.48.1585081958998; 
 Tue, 24 Mar 2020 13:32:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 135sm17497623pfu.207.2020.03.24.13.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 13:32:37 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v2 4/5] x86/entry: Enable random_kstack_offset support
Date: Tue, 24 Mar 2020 13:32:30 -0700
Message-Id: <20200324203231.64324-5-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324203231.64324-1-keescook@chromium.org>
References: <20200324203231.64324-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_133240_492606_E6DAB84D 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Will Deacon <will@kernel.org>,
 Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow for a randomized stack offset on a per-syscall basis, with roughly
5 bits of entropy.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Kconfig        |  1 +
 arch/x86/entry/common.c | 12 +++++++++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

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
