Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A16382667E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jEPopMSCalFNC3RDAb750eARA9tkWcq0jzQ9B1siEjo=; b=QxZ
	Md8Dne62scHGH2xqgs5Eocw8F3V8gBXjbI2mcgrrvlLkPYU3GwJgtT4dOX+duhbsJeJhxfn1scsIh
	ZUEgHY+GtkCCbcRVYYeP3zDANnP4cW0R+2FC+EnJwOhw6XQA1F188qCDe1dJ18sAPQBegC2KCSSwb
	STqVdubzGqWesayoOtZ5gKhzbZcPXTyQShqVp5jbYYWZHJxNQQIMHfgkyCQmeXUBaGLBxzflyJ5j3
	npioj9kcapPvZCYO8RviJqTNzmUFm02ceCYSF/cUA66bhTytxGM153u9d/ipjobmXKlgyJAevt9a3
	tM9exSFqQ1xjDX5YC+1ybqSoke0pBCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTSlk-0003BF-FF; Wed, 22 May 2019 15:03:04 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTSlS-0002yD-Gf
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:02:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4733380D;
 Wed, 22 May 2019 08:02:44 -0700 (PDT)
Received: from e111045-lin.cambridge.arm.com
 (apickardsiphone.cambridge.arm.com [10.1.30.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF30E3F718;
 Wed, 22 May 2019 08:02:41 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] module/ksymtab: use 64-bit relative reference for target
 symbol
Date: Wed, 22 May 2019 16:02:39 +0100
Message-Id: <20190522150239.19314-1-ard.biesheuvel@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_080246_566043_A74D8B18 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org, arnd@arndb.de,
 guillaume.gardet@arm.com, marc.zyngier@arm.com, x86@kernel.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, jeyu@kernel.org, mingo@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following commit

  7290d5809571 ("module: use relative references for __ksymtab entries")

updated the ksymtab handling of some KASLR capable architectures
so that ksymtab entries are emitted as pairs of 32-bit relative
references. This reduces the size of the entries, but more
importantly, it gets rid of statically assigned absolute
addresses, which require fixing up at boot time if the kernel
is self relocating (which takes a 24 byte RELA entry for each
member of the ksymtab struct).

Since ksymtab entries are always part of the same module as the
symbol they export (or of the core kernel), it was assumed at the
time that a 32-bit relative reference is always sufficient to
capture the offset between a ksymtab entry and its target symbol.

Unfortunately, this is not always true: in the case of per-CPU
variables, a per-CPU variable's base address (which usually differs
from the actual address of any of its per-CPU copies) could be at
an arbitrary offset from the ksymtab entry, and so it may be out
of range for a 32-bit relative reference.

To make matters worse, we identified an issue in the arm64 module
loader, where the overflow check applied to 32-bit place relative
relocations uses the range that is specified in the AArch64 psABI,
which is documented as having a 'blind spot' unless you explicitly
narrow the range to match the signed vs unsigned interpretation of
the relocation target [0]. This means that, in some cases, code
importing those per-CPU variables from other modules may obtain a
bogus reference and corrupt unrelated data.

So let's fix this issue by switching to a 64-bit place relative
reference on 64-bit architectures for the ksymtab entry's target
symbol. This uses a bit more memory in the entry itself, which is
unfortunate, but it preserves the original intent, which was to
make the value invariant under runtime relocation of the core
kernel.

[0] https://lore.kernel.org/linux-arm-kernel/20190521125707.6115-1-ard.biesheuvel@arm.com

Cc: Jessica Yu <jeyu@kernel.org>
Cc: <stable@vger.kernel.org> # v4.19+
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
---

Note that the name 'CONFIG_HAVE_ARCH_PREL32_RELOCATIONS' is no longer
entirely accurate after this patch, so I will follow up with a patch
to rename it to CONFIG_HAVE_ARCH_PREL_RELOCATIONS, but that doesn't
require a backport to -stable so I have omitted it here.

Also note that for x86, this patch depends on b40a142b12b5 ("x86: Add
support for 64-bit place relative relocations"), which will need to
be backported to v4.19 (from v4.20) if this patch is applied to
-stable.

 include/asm-generic/export.h |  9 +++++++--
 include/linux/compiler.h     |  9 +++++++++
 include/linux/export.h       | 14 ++++++++++----
 kernel/module.c              |  2 +-
 4 files changed, 27 insertions(+), 7 deletions(-)

diff --git a/include/asm-generic/export.h b/include/asm-generic/export.h
index 294d6ae785d4..4d658b1e4707 100644
--- a/include/asm-generic/export.h
+++ b/include/asm-generic/export.h
@@ -4,7 +4,7 @@
 #ifndef KSYM_FUNC
 #define KSYM_FUNC(x) x
 #endif
-#ifdef CONFIG_64BIT
+#if defined(CONFIG_64BIT) && !defined(CONFIG_HAVE_ARCH_PREL32_RELOCATIONS)
 #ifndef KSYM_ALIGN
 #define KSYM_ALIGN 8
 #endif
@@ -19,7 +19,12 @@
 
 .macro __put, val, name
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-	.long	\val - ., \name - .
+#ifdef CONFIG_64BIT
+	.quad	\val - .
+#else
+	.long	\val - .
+#endif
+	.long	\name - .
 #elif defined(CONFIG_64BIT)
 	.quad	\val, \name
 #else
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 8aaf7cd026b0..33c65ebb7cfe 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -305,6 +305,15 @@ static inline void *offset_to_ptr(const int *off)
 	return (void *)((unsigned long)off + *off);
 }
 
+/**
+ * loffset_to_ptr - convert a relative memory offset to an absolute pointer
+ * @off:	the address of the signed long offset value
+ */
+static inline void *loffset_to_ptr(const long *off)
+{
+	return (void *)((unsigned long)off + *off);
+}
+
 #endif /* __ASSEMBLY__ */
 
 /* Compile time object size, -1 for unknown */
diff --git a/include/linux/export.h b/include/linux/export.h
index fd8711ed9ac4..8f805b9f1c25 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -43,6 +43,12 @@ extern struct module __this_module;
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
 #include <linux/compiler.h>
+#ifdef CONFIG_64BIT
+#define __KSYMTAB_REL	".quad "
+#else
+#define __KSYMTAB_REL	".long "
+#endif
+
 /*
  * Emit the ksymtab entry as a pair of relative references: this reduces
  * the size by half on 64-bit architectures, and eliminates the need for
@@ -52,16 +58,16 @@ extern struct module __this_module;
 #define __KSYMTAB_ENTRY(sym, sec)					\
 	__ADDRESSABLE(sym)						\
 	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
-	    "	.balign	8					\n"	\
+	    "	.balign	4					\n"	\
 	    "__ksymtab_" #sym ":				\n"	\
-	    "	.long	" #sym "- .				\n"	\
+	    __KSYMTAB_REL #sym "- .				\n"	\
 	    "	.long	__kstrtab_" #sym "- .			\n"	\
 	    "	.previous					\n")
 
 struct kernel_symbol {
-	int value_offset;
+	long value_offset;
 	int name_offset;
-};
+} __packed;
 #else
 #define __KSYMTAB_ENTRY(sym, sec)					\
 	static const struct kernel_symbol __ksymtab_##sym		\
diff --git a/kernel/module.c b/kernel/module.c
index 6e6712b3aaf5..43efd46feeee 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -541,7 +541,7 @@ static bool check_exported_symbol(const struct symsearch *syms,
 static unsigned long kernel_symbol_value(const struct kernel_symbol *sym)
 {
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-	return (unsigned long)offset_to_ptr(&sym->value_offset);
+	return (unsigned long)loffset_to_ptr(&sym->value_offset);
 #else
 	return sym->value;
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
