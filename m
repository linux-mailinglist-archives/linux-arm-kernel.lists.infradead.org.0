Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF23E8D80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2nxbF1vs3Nj5kYlMbSxpud7xLt91oShNb1E3Lf5efZY=; b=YacW3RrTLIhdQlPlFU84PMliPt
	rvz5fwqUm1FI9bBoSaTjw45OTlLsKzSQE3vQbA3VnpN+FVGodoYRbvpWg0HeHmplDSSgqrO/INVfa
	fNm8VhdarHqaUfbtpt5G9Ij4QMj6gnELzFMTydB33NEf9aA9rri5oqwKXhnAJvq5ScC8eD36tprFg
	DEXlCQTNXVFfIME8LKSu+8QAwkGPbXuxtEgVA/kcx6mfLhSDoy+FiuY2XTA6HFEherp1VUxXb7GLL
	oo5z0EjE106kIJhE/M+XxJAorP+a7/Oa2OwoiIQwG3rx8+afjoe6X4wjQJ0mFM/HE25ndPHApqaiu
	fknEI2Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUrb-0008PA-Mc; Tue, 29 Oct 2019 17:00:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUq8-0005ni-6s
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:59:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F8347AD;
 Tue, 29 Oct 2019 09:59:27 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0B57C3F71F;
 Tue, 29 Oct 2019 09:59:24 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 8/8] arm64: ftrace: minimize ifdeffery
Date: Tue, 29 Oct 2019 16:58:32 +0000
Message-Id: <20191029165832.33606-9-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191029165832.33606-1-mark.rutland@arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_095928_510887_79D2B471 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, jthierry@redhat.com, linux-parisc@vger.kernel.org,
 peterz@infradead.org, catalin.marinas@arm.com, deller@gmx.de,
 jpoimboe@redhat.com, linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 amit.kachhap@arm.com, svens@stackframe.org, duwe@suse.de
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
Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
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
