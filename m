Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B835DF32E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2cH/5ouk8CLFwI4xFvKXoftiy5wU76dRDENWUZigXV4=; b=ACE28fzMyrveSo2cbcm8RQC04b
	NTIwxWnPS32rIl2hkwosuayrJ8vOyd1c5zctYqoVtCWTJbp1G1Ka054fRr5ObZe64SRWcNCPXmJZm
	Vc1PKnrK4Tv2iiROx672XwdmytHCU6ZvhwPSZ/FjmoQQaGT9HZMlRai2u44yn1UeCdSrJOVu5/DvI
	+9bQoBAJnesXwqVTXyzAnTd5j/XbZBFnokCRFFzqk3TdclhJks/TTxlzkaGI0sZ7MhX4CRpKovBri
	i2ZXtnS2YGcv2xmD6X028hH/VXZVdtqiY2zWqO6zaJ5rhUUZi56T5IK0crizGZjAp4Rmpx3l7ugJC
	0UAHP+mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaeR-0002od-Ag; Mon, 21 Oct 2019 16:35:23 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMadp-0002fG-4B
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:34:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32A7611B3;
 Mon, 21 Oct 2019 09:34:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EF0613F71F;
 Mon, 21 Oct 2019 09:34:40 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/8] arm64: module: rework special section handling
Date: Mon, 21 Oct 2019 17:34:21 +0100
Message-Id: <20191021163426.9408-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191021163426.9408-1-mark.rutland@arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_093445_215477_7FBCE7C5 
X-CRM114-Status: GOOD (  12.97  )
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
Cc: Ard Bieshsheuvel <ard.biesheuvel@linaro.org>
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
