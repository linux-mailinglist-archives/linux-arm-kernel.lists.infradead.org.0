Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6A0DF343
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8oirWp/Zm/89SrT+6d2GSkn7i6yYG1i0aUkR6oM7x4c=; b=QRaGrBW1u0SBX5Bd3fHfD/n1aU
	R8PMwoX2FxTb0Dsr87xmunLqm+RtGRWdGY+fAebAM0x5rLvoQIlkG447F8zr/jkAO1aX98DWAhKRA
	vCV9CEig4QNCLJarVnyyQS4jU1yFjJFn7zZORWH6ZlBvj4Lxs7aOIMju/DYKsP7XHiMhysIvEigHX
	p0m+oMM/0aCFU83qnyVO7Yw7KlWjEyLHRcT4BGbP9DiYD8+dqiHb7Qr31RihVIalg3jV8HzcPk+mv
	L8PnHhh2PURQRD9zmUKbq8VENe+3s9cPEmVzFpWqzE0IIWYDiwIoAsB2bd9/CrLlUjJPHBwfxRaLM
	R0rGB/+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMafY-0005P3-4N; Mon, 21 Oct 2019 16:36:32 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMae0-0002g7-Fr
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:35:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1636211D4;
 Mon, 21 Oct 2019 09:34:46 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D1B883F71F;
 Mon, 21 Oct 2019 09:34:43 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/8] arm64: module/ftrace: intialize PLT at load time
Date: Mon, 21 Oct 2019 17:34:22 +0100
Message-Id: <20191021163426.9408-5-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191021163426.9408-1-mark.rutland@arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_093456_656078_518EC7A9 
X-CRM114-Status: GOOD (  23.97  )
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

Currently we lazily-initialize a module's ftrace PLT at runtime when we
install the first ftrace call. To do so we have to apply a number of
sanity checks, transiently mark the module text as RW, and perform an
IPI as part of handling Neoverse-N1 erratum #1542419.

We only expect the ftrace trampoline to point at ftrace_caller() (AKA
FTRACE_ADDR), so let's simplify all of this by intializing the PLT at
module load time, before the module loader marks the module RO and
performs the intial I-cache maintenance for the module.

Thus we can rely on the module having been correctly intialized, and can
simplify the runtime work necessary to install an ftrace call in a
module. This will also allow for the removal of module_disable_ro().

Tested by forcing ftrace_make_call() to use the module PLT, and then
loading up a module after setting up ftrace with:

| echo ":mod:<module-name>" > set_ftrace_filter;
| echo function > current_tracer;
| modprobe <module-name>

Since FTRACE_ADDR is only defined when CONFIG_DYNAMIC_FTRACE is
selected, we wrap its use along with most of module_init_ftrace_plt()
with ifdeffery rather than using IS_ENABLED().

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/ftrace.c | 55 ++++++++++++----------------------------------
 arch/arm64/kernel/module.c | 32 +++++++++++++++++----------
 2 files changed, 35 insertions(+), 52 deletions(-)

diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 06e56b470315..822718eafdb4 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -73,10 +73,22 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 
 	if (offset < -SZ_128M || offset >= SZ_128M) {
 #ifdef CONFIG_ARM64_MODULE_PLTS
-		struct plt_entry trampoline, *dst;
 		struct module *mod;
 
 		/*
+		 * There is only one ftrace trampoline per module. For now,
+		 * this is not a problem since on arm64, all dynamic ftrace
+		 * invocations are routed via ftrace_caller(). This will need
+		 * to be revisited if support for multiple ftrace entry points
+		 * is added in the future, but for now, the pr_err() below
+		 * deals with a theoretical issue only.
+		 */
+		if (addr != FTRACE_ADDR) {
+			pr_err("ftrace: far branches to multiple entry points unsupported inside a single module\n");
+			return -EINVAL;
+		}
+
+		/*
 		 * On kernels that support module PLTs, the offset between the
 		 * branch instruction and its target may legally exceed the
 		 * range of an ordinary relative 'bl' opcode. In this case, we
@@ -93,46 +105,7 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 		if (WARN_ON(!mod))
 			return -EINVAL;
 
-		/*
-		 * There is only one ftrace trampoline per module. For now,
-		 * this is not a problem since on arm64, all dynamic ftrace
-		 * invocations are routed via ftrace_caller(). This will need
-		 * to be revisited if support for multiple ftrace entry points
-		 * is added in the future, but for now, the pr_err() below
-		 * deals with a theoretical issue only.
-		 *
-		 * Note that PLTs are place relative, and plt_entries_equal()
-		 * checks whether they point to the same target. Here, we need
-		 * to check if the actual opcodes are in fact identical,
-		 * regardless of the offset in memory so use memcmp() instead.
-		 */
-		dst = mod->arch.ftrace_trampoline;
-		trampoline = get_plt_entry(addr, dst);
-		if (memcmp(dst, &trampoline, sizeof(trampoline))) {
-			if (plt_entry_is_initialized(dst)) {
-				pr_err("ftrace: far branches to multiple entry points unsupported inside a single module\n");
-				return -EINVAL;
-			}
-
-			/* point the trampoline to our ftrace entry point */
-			module_disable_ro(mod);
-			*dst = trampoline;
-			module_enable_ro(mod, true);
-
-			/*
-			 * Ensure updated trampoline is visible to instruction
-			 * fetch before we patch in the branch. Although the
-			 * architecture doesn't require an IPI in this case,
-			 * Neoverse-N1 erratum #1542419 does require one
-			 * if the TLB maintenance in module_enable_ro() is
-			 * skipped due to rodata_enabled. It doesn't seem worth
-			 * it to make it conditional given that this is
-			 * certainly not a fast-path.
-			 */
-			flush_icache_range((unsigned long)&dst[0],
-					   (unsigned long)&dst[1]);
-		}
-		addr = (unsigned long)dst;
+		addr = (unsigned long)mod->arch.ftrace_trampoline;
 #else /* CONFIG_ARM64_MODULE_PLTS */
 		return -EINVAL;
 #endif /* CONFIG_ARM64_MODULE_PLTS */
diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index 763a86d52fef..5f5bc3b94da7 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -9,6 +9,7 @@
 
 #include <linux/bitops.h>
 #include <linux/elf.h>
+#include <linux/ftrace.h>
 #include <linux/gfp.h>
 #include <linux/kasan.h>
 #include <linux/kernel.h>
@@ -485,24 +486,33 @@ static const Elf_Shdr *find_section(const Elf_Ehdr *hdr,
 	return NULL;
 }
 
+int module_init_ftrace_plt(const Elf_Ehdr *hdr,
+			   const Elf_Shdr *sechdrs,
+			   struct module *mod)
+{
+#if defined(CONFIG_ARM64_MODULE_PLTS) && defined(CONFIG_DYNAMIC_FTRACE)
+	const Elf_Shdr *s;
+	struct plt_entry *plt;
+
+	s = find_section(hdr, sechdrs, ".text.ftrace_trampoline");
+	if (!s)
+		return -ENOEXEC;
+
+	plt = (void *)s->sh_addr;
+	*plt = get_plt_entry(FTRACE_ADDR, plt);
+	mod->arch.ftrace_trampoline = plt;
+#endif
+	return 0;
+}
+
 int module_finalize(const Elf_Ehdr *hdr,
 		    const Elf_Shdr *sechdrs,
 		    struct module *me)
 {
 	const Elf_Shdr *s;
-
 	s = find_section(hdr, sechdrs, ".altinstructions");
 	if (s)
 		apply_alternatives_module((void *)s->sh_addr, s->sh_size);
 
-#ifdef CONFIG_ARM64_MODULE_PLTS
-	if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE)) {
-		s = find_section(hdr, sechdrs, ".text.ftrace_trampoline");
-		if (!s)
-			return -ENOEXEC;
-		me->arch.ftrace_trampoline = (void *)s->sh_addr;
-	}
-#endif
-
-	return 0;
+	return module_init_ftrace_plt(hdr, sechdrs, me);
 }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
