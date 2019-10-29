Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3ABE8D75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:59:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yMKdXk+2JDEyxq7O+CA8moOMcrAkGMRVSynKdhQux9U=; b=PCQdHuyayztxwMmJf0At0T5qDU
	R3DdGRiEStjHVdXD0Ron+ZqoXNnOGjwKAN4Wk/eDkKhUjb9PZq7pT5g30YMp9MnkpV5v8ysg9V0r4
	phZU1q3cM6w676wNk4ycf+ljWOWDkrM+8hnpkm7ozvbnhoZYACPxoutcaJ4NJmxOz99klwkX3xMe8
	/xaIO6w/9CUwV8gL9Vx9Cc2VVjfhOVHQIdZEpm4dThfGe9PzvpzEbb33w+X99PyBXLmtztRcwZRrn
	g4FxJ6NNVuE4ILFzqWJNgP/Tmgw+bM36O4wEUyweOm0BdKCZlOLZJb+uTc7eEfxQUrVVhzZDpSPzL
	96kSBFnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUqV-0005wG-RR; Tue, 29 Oct 2019 16:59:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUpg-0005Nz-I0
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:59:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41AB94B2;
 Tue, 29 Oct 2019 09:58:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D887C3F71F;
 Tue, 29 Oct 2019 09:58:56 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 3/8] arm64: module: rework special section handling
Date: Tue, 29 Oct 2019 16:58:27 +0000
Message-Id: <20191029165832.33606-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191029165832.33606-1-mark.rutland@arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_095900_821273_23F16886 
X-CRM114-Status: GOOD (  12.48  )
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

When we load a module, we have to perform some special work for a couple
of named sections. To do this, we iterate over all of the module's
sections, and perform work for each section we recognize.

To make it easier to handle the unexpected absence of a section, and to
make the section-specific logic easer to read, let's factor the section
search into a helper. Similar is already done in the core module loader,
and other architectures (and ideally we'd unify these in future).

If we expect a module to have an ftrace trampoline section, but it
doesn't have one, we'll now reject loading the module. When
ARM64_MODULE_PLTS is selected, any correctly built module should have
one (and this is assumed by arm64's ftrace PLT code) and the absence of
such a section implies something has gone wrong at build time.

Subsequent patches will make use of the new helper.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/module.c | 35 ++++++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index 03ff15bffbb6..763a86d52fef 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -470,22 +470,39 @@ int apply_relocate_add(Elf64_Shdr *sechdrs,
 	return -ENOEXEC;
 }
 
-int module_finalize(const Elf_Ehdr *hdr,
-		    const Elf_Shdr *sechdrs,
-		    struct module *me)
+static const Elf_Shdr *find_section(const Elf_Ehdr *hdr,
+				    const Elf_Shdr *sechdrs,
+				    const char *name)
 {
 	const Elf_Shdr *s, *se;
 	const char *secstrs = (void *)hdr + sechdrs[hdr->e_shstrndx].sh_offset;
 
 	for (s = sechdrs, se = sechdrs + hdr->e_shnum; s < se; s++) {
-		if (strcmp(".altinstructions", secstrs + s->sh_name) == 0)
-			apply_alternatives_module((void *)s->sh_addr, s->sh_size);
+		if (strcmp(name, secstrs + s->sh_name) == 0)
+			return s;
+	}
+
+	return NULL;
+}
+
+int module_finalize(const Elf_Ehdr *hdr,
+		    const Elf_Shdr *sechdrs,
+		    struct module *me)
+{
+	const Elf_Shdr *s;
+
+	s = find_section(hdr, sechdrs, ".altinstructions");
+	if (s)
+		apply_alternatives_module((void *)s->sh_addr, s->sh_size);
+
 #ifdef CONFIG_ARM64_MODULE_PLTS
-		if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE) &&
-		    !strcmp(".text.ftrace_trampoline", secstrs + s->sh_name))
-			me->arch.ftrace_trampoline = (void *)s->sh_addr;
-#endif
+	if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE)) {
+		s = find_section(hdr, sechdrs, ".text.ftrace_trampoline");
+		if (!s)
+			return -ENOEXEC;
+		me->arch.ftrace_trampoline = (void *)s->sh_addr;
 	}
+#endif
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
