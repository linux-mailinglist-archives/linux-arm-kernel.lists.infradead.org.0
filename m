Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2976990384
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=G9c6Op7EnLJaSJAWtoMGkD+3tUcJcDLF6pJfQ84bG4c=; b=m6I
	HqqdK7h1pOe26E3YSP4WlrSMMpdVtpWE+6OkYBCtfWKVkd2rI0ZU2p1+Ud0a2vUWcea//j4F0ysWJ
	09uQvu+cUQvvQRaoYQTYsVuDiV8XlHw7XEKIb43AwNvB9mm8+xLG81xNlLkuWeMwrPcxooff7iu0Z
	L4Wq15U8uemr3DObnj8Hb3cLWImixZVgYtY4WUC7XALwiz6/9rZdGVl93pE8s9U5dviBELFWMAUnD
	4EZbQmezp8cSWqwbGgi+UTx9/9XYO/PLXn6EspOyQ3Mf15YDEGP7Nom1PEAY08oFjhEE7Dq7XMUeB
	JsIFZE2qFTQAo7rCfA3YP8jkNehItAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyckf-0004b4-H2; Fri, 16 Aug 2019 13:58:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyckS-0004ad-VR
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 13:58:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AAE7B360;
 Fri, 16 Aug 2019 06:58:29 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C1F503F694;
 Fri, 16 Aug 2019 06:58:28 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: ftrace: Ensure module ftrace trampoline is coherent
 with I-side
Date: Fri, 16 Aug 2019 14:57:43 +0100
Message-Id: <20190816135743.13683-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_065833_055218_A5FB2515 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, stable@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The initial support for dynamic ftrace trampolines in modules made use
of an indirect branch which loaded its target from the beginning of
a special section (e71a4e1bebaf7 ("arm64: ftrace: add support for far
branches to dynamic ftrace")). Since no instructions were being patched,
no cache maintenance was needed. However, later in be0f272bfc83 ("arm64:
ftrace: emit ftrace-mod.o contents through code") this code was reworked
to output the trampoline instructions directly into the PLT entry but,
unfortunately, the necessary cache maintenance was overlooked.

Add a call to __flush_icache_range() after writing the new trampoline
instructions but before patching in the branch to the trampoline.

Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: <stable@vger.kernel.org>
Fixes: be0f272bfc83 ("arm64: ftrace: emit ftrace-mod.o contents through code")
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/ftrace.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 1285c7b2947f..171773257974 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -73,7 +73,7 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 
 	if (offset < -SZ_128M || offset >= SZ_128M) {
 #ifdef CONFIG_ARM64_MODULE_PLTS
-		struct plt_entry trampoline;
+		struct plt_entry trampoline, *dst;
 		struct module *mod;
 
 		/*
@@ -106,23 +106,27 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 		 * to check if the actual opcodes are in fact identical,
 		 * regardless of the offset in memory so use memcmp() instead.
 		 */
-		trampoline = get_plt_entry(addr, mod->arch.ftrace_trampoline);
-		if (memcmp(mod->arch.ftrace_trampoline, &trampoline,
-			   sizeof(trampoline))) {
-			if (plt_entry_is_initialized(mod->arch.ftrace_trampoline)) {
+		dst = mod->arch.ftrace_trampoline;
+		trampoline = get_plt_entry(addr, dst);
+		if (memcmp(dst, &trampoline, sizeof(trampoline))) {
+			if (plt_entry_is_initialized(dst)) {
 				pr_err("ftrace: far branches to multiple entry points unsupported inside a single module\n");
 				return -EINVAL;
 			}
 
 			/* point the trampoline to our ftrace entry point */
 			module_disable_ro(mod);
-			*mod->arch.ftrace_trampoline = trampoline;
+			*dst = trampoline;
 			module_enable_ro(mod, true);
 
-			/* update trampoline before patching in the branch */
-			smp_wmb();
+			/*
+			 * Ensure updated trampoline is visible to instruction
+			 * fetch before we patch in the branch.
+			 */
+			__flush_icache_range((unsigned long)&dst[0],
+					     (unsigned long)&dst[1]);
 		}
-		addr = (unsigned long)(void *)mod->arch.ftrace_trampoline;
+		addr = (unsigned long)dst;
 #else /* CONFIG_ARM64_MODULE_PLTS */
 		return -EINVAL;
 #endif /* CONFIG_ARM64_MODULE_PLTS */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
