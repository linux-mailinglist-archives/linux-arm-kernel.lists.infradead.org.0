Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0405CDF32F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z0CxpcptidcRLIhDLMqjU3PhlgTF4xQXcGzBNErrUg4=; b=ihgDV0If2OJ5zh3GbLFjG4mHbT
	KhgL+7J1LbcGNhv7MXQzV3GhC0OaY454vzuAyIQcRv9hLkESogG4sYgvD7sccdRHWtzNBWJwKReXT
	l2jlvXQbfhdjyXKtJL6I6dK5slWtgJLwTY++AEl2apZ72pEI+2wpl5jfet/We9vbGW738ehGn1tkp
	Y0Ofspn6XG9AcT6CoVqpK7htcDQCco7D09wMPLZ5FqUFH7NJHKAq+ZYWEnsExR/sXEHm4v5OqXnJJ
	wB4yw3hKHCti1g2ssttFMSTD/V1pE2PpJwGa3f0CpbChrCQlrNzovnUc6ihyXP/f513BUXEFBhYPC
	mHAXCyEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaem-0004RA-I5; Mon, 21 Oct 2019 16:35:44 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMadp-0002f5-4C
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:34:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C4C8105A;
 Mon, 21 Oct 2019 09:34:40 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 04AA83F71F;
 Mon, 21 Oct 2019 09:34:37 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] module/ftrace: handle patchable-function-entry
Date: Mon, 21 Oct 2019 17:34:20 +0100
Message-Id: <20191021163426.9408-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191021163426.9408-1-mark.rutland@arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_093445_255594_A662B984 
X-CRM114-Status: GOOD (  17.60  )
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

When using patchable-function-entry, the compiler will record the
callsites into a section named "__patchable_function_entries" rather
than "__mcount_loc". Let's abstract this difference behind a new
FTRACE_CALLSITE_SECTION, so that architectures don't have to handle this
explicitly (e.g. with custom module linker scripts).

As parisc currently handles this explicitly, it is fixed up accordingly,
with its custom linker script removed. Since FTRACE_CALLSITE_SECTION is
only defined when DYNAMIC_FTRACE is selected, the parisc module loading
code is updated to only use the definition in that case. When
DYNAMIC_FTRACE is not selected, modules shouldn't have this section, so
this removes some redundant work in that case.

I built parisc generic-{32,64}bit_defconfig with DYNAMIC_FTRACE enabled,
and verified that the section made it into the .ko files for modules.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Helge Deller <deller@gmx.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Jessica Yu <jeyu@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Sven Schnelle <svens@stackframe.org>
---
 arch/parisc/Makefile          |  1 -
 arch/parisc/kernel/module.c   | 10 +++++++---
 arch/parisc/kernel/module.lds |  7 -------
 include/linux/ftrace.h        |  5 +++++
 kernel/module.c               |  2 +-
 5 files changed, 13 insertions(+), 12 deletions(-)
 delete mode 100644 arch/parisc/kernel/module.lds

diff --git a/arch/parisc/Makefile b/arch/parisc/Makefile
index 36b834f1c933..dca8f2de8cf5 100644
--- a/arch/parisc/Makefile
+++ b/arch/parisc/Makefile
@@ -60,7 +60,6 @@ KBUILD_CFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY=1 \
 		 -DFTRACE_PATCHABLE_FUNCTION_SIZE=$(NOP_COUNT)
 
 CC_FLAGS_FTRACE := -fpatchable-function-entry=$(NOP_COUNT),$(shell echo $$(($(NOP_COUNT)-1)))
-KBUILD_LDS_MODULE += $(srctree)/arch/parisc/kernel/module.lds
 endif
 
 OBJCOPY_FLAGS =-O binary -R .note -R .comment -S
diff --git a/arch/parisc/kernel/module.c b/arch/parisc/kernel/module.c
index ac5f34993b53..1c50093e2ebe 100644
--- a/arch/parisc/kernel/module.c
+++ b/arch/parisc/kernel/module.c
@@ -43,6 +43,7 @@
 #include <linux/elf.h>
 #include <linux/vmalloc.h>
 #include <linux/fs.h>
+#include <linux/ftrace.h>
 #include <linux/string.h>
 #include <linux/kernel.h>
 #include <linux/bug.h>
@@ -862,7 +863,7 @@ int module_finalize(const Elf_Ehdr *hdr,
 	const char *strtab = NULL;
 	const Elf_Shdr *s;
 	char *secstrings;
-	int err, symindex = -1;
+	int symindex = -1;
 	Elf_Sym *newptr, *oldptr;
 	Elf_Shdr *symhdr = NULL;
 #ifdef DEBUG
@@ -946,11 +947,13 @@ int module_finalize(const Elf_Ehdr *hdr,
 			/* patch .altinstructions */
 			apply_alternatives(aseg, aseg + s->sh_size, me->name);
 
+#ifdef CONFIG_DYNAMIC_FTRACE
 		/* For 32 bit kernels we're compiling modules with
 		 * -ffunction-sections so we must relocate the addresses in the
-		 *__mcount_loc section.
+		 *  ftrace callsite section.
 		 */
-		if (symindex != -1 && !strcmp(secname, "__mcount_loc")) {
+		if (symindex != -1 && !strcmp(secname, FTRACE_CALLSITE_SECTION)) {
+			int err;
 			if (s->sh_type == SHT_REL)
 				err = apply_relocate((Elf_Shdr *)sechdrs,
 							strtab, symindex,
@@ -962,6 +965,7 @@ int module_finalize(const Elf_Ehdr *hdr,
 			if (err)
 				return err;
 		}
+#endif
 	}
 	return 0;
 }
diff --git a/arch/parisc/kernel/module.lds b/arch/parisc/kernel/module.lds
deleted file mode 100644
index 1a9a92aca5c8..000000000000
--- a/arch/parisc/kernel/module.lds
+++ /dev/null
@@ -1,7 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-
-SECTIONS {
-	__mcount_loc : {
-		*(__patchable_function_entries)
-	}
-}
diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
index 8a8cb3c401b2..cea0746c8f4c 100644
--- a/include/linux/ftrace.h
+++ b/include/linux/ftrace.h
@@ -709,6 +709,11 @@ static inline unsigned long get_lock_parent_ip(void)
 
 #ifdef CONFIG_FTRACE_MCOUNT_RECORD
 extern void ftrace_init(void);
+#ifdef CC_USING_PATCHABLE_FUNCTION_ENTRY
+#define FTRACE_CALLSITE_SECTION	"__patchable_function_entries"
+#else
+#define FTRACE_CALLSITE_SECTION	"__mcount_loc"
+#endif
 #else
 static inline void ftrace_init(void) { }
 #endif
diff --git a/kernel/module.c b/kernel/module.c
index ff2d7359a418..acf7962936c4 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -3222,7 +3222,7 @@ static int find_module_sections(struct module *mod, struct load_info *info)
 #endif
 #ifdef CONFIG_FTRACE_MCOUNT_RECORD
 	/* sechdrs[0].sh_size is always zero */
-	mod->ftrace_callsites = section_objs(info, "__mcount_loc",
+	mod->ftrace_callsites = section_objs(info, FTRACE_CALLSITE_SECTION,
 					     sizeof(*mod->ftrace_callsites),
 					     &mod->num_ftrace_callsites);
 #endif
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
