Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A06DF344
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2ihPpzuNQPKsqfuw7dlj+8whza0qjPRoqmNJCZgLt+o=; b=QaYcORsUctA4e5X7LWl1QuXApu
	eVHz05UY+sCjldbQUFoaLH6dSEqY082idF6TN6E8J8H/Nmc4GbPgHitNlduSz1IYcslpuur/5CZgN
	dESHcCJE7M+vGO2d2lgkZkL3VJ+RRdYQz0HMF6bkuILzWxUsOkwddAon8jErImVr0RwPSgdYeytoa
	TK8EEADd6XQEyO/jqRYstb18sFK4ltl3GiWTvogaPAqoxlcXihSMUKolEp+Ef2FdSMVfUzNzRYfZu
	9Dle3VxUJ37bdcg3g05cyys+3S7LKboThx7a8we1Ilrf/Y5bkmeQuNLCZiAhYiXTJklbNxWL/Xbdw
	3VRlhfvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMafj-0005g9-OA; Mon, 21 Oct 2019 16:36:43 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaeB-0002sw-Mq
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:35:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21ABE1758;
 Mon, 21 Oct 2019 09:35:00 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DD6703F71F;
 Mon, 21 Oct 2019 09:34:57 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 8/8] arm64: ftrace: minimize ifdeffery
Date: Mon, 21 Oct 2019 17:34:26 +0100
Message-Id: <20191021163426.9408-9-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191021163426.9408-1-mark.rutland@arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_093508_116247_5DE13708 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: mark.rutland@arm.com, jthierry@redhat.com, will@kernel.org,
 ard.biesheuvel@linaro.org, peterz@infradead.org, catalin.marinas@arm.com,
 deller@gmx.de, jpoimboe@redhat.com, rostedt@goodmis.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 jeyu@kernel.org, amit.kachhap@arm.com, svens@stackframe.org, duwe@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we no longer refer to mod->arch.ftrace_trampolines in the body
of ftrace_make_call(), we can use IS_ENABLED() rather than ifdeffery,
and make the code easier to follow. Likewise in ftrace_make_nop().

Let's do so.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/ftrace.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index aea652c33a38..8618faa82e6d 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -62,18 +62,18 @@ int ftrace_update_ftrace_func(ftrace_func_t func)
 	return ftrace_modify_code(pc, 0, new, false);
 }
 
-#ifdef CONFIG_ARM64_MODULE_PLTS
 static struct plt_entry *get_ftrace_plt(struct module *mod, unsigned long addr)
 {
+#ifdef CONFIG_ARM64_MODULE_PLTS
 	struct plt_entry *plt = mod->arch.ftrace_trampolines;
 
 	if (addr == FTRACE_ADDR)
 		return &plt[FTRACE_PLT_IDX];
 	if (addr == FTRACE_REGS_ADDR && IS_ENABLED(CONFIG_FTRACE_WITH_REGS))
 		return &plt[FTRACE_REGS_PLT_IDX];
+#endif
 	return NULL;
 }
-#endif
 
 /*
  * Turn on the call to ftrace_caller() in instrumented function
@@ -85,10 +85,12 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 	long offset = (long)pc - (long)addr;
 
 	if (offset < -SZ_128M || offset >= SZ_128M) {
-#ifdef CONFIG_ARM64_MODULE_PLTS
 		struct module *mod;
 		struct plt_entry *plt;
 
+		if (!IS_ENABLED(CONFIG_ARM64_MODULE_PLTS))
+			return -EINVAL;
+
 		/*
 		 * On kernels that support module PLTs, the offset between the
 		 * branch instruction and its target may legally exceed the
@@ -113,9 +115,6 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 		}
 
 		addr = (unsigned long)plt;
-#else /* CONFIG_ARM64_MODULE_PLTS */
-		return -EINVAL;
-#endif /* CONFIG_ARM64_MODULE_PLTS */
 	}
 
 	old = aarch64_insn_gen_nop();
@@ -185,9 +184,11 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 	long offset = (long)pc - (long)addr;
 
 	if (offset < -SZ_128M || offset >= SZ_128M) {
-#ifdef CONFIG_ARM64_MODULE_PLTS
 		u32 replaced;
 
+		if (!IS_ENABLED(CONFIG_ARM64_MODULE_PLTS))
+			return -EINVAL;
+
 		/*
 		 * 'mod' is only set at module load time, but if we end up
 		 * dealing with an out-of-range condition, we can assume it
@@ -218,9 +219,6 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 			return -EINVAL;
 
 		validate = false;
-#else /* CONFIG_ARM64_MODULE_PLTS */
-		return -EINVAL;
-#endif /* CONFIG_ARM64_MODULE_PLTS */
 	} else {
 		old = aarch64_insn_gen_branch_imm(pc, addr,
 						  AARCH64_INSN_BRANCH_LINK);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
