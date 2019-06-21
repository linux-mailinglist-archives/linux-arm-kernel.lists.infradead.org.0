Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CAD4E5BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWzIICvQbsBEzs+m3d99IiNxn3qIWiLr7e05grVMXMo=; b=TxIcuJ8hWBRgNi
	NU6z3cguKK70MvoPg+45luY+cXJ0yQdB6j2Eq7/FrYB6U9Lg1ficmdQcXtXuTD6po9lE2rJtca5L+
	bVrY9HG5+PkiHZSH4xjrCl/8z6wEpUGfsp9cAB658qDxANjRcBmtnV2C5yAPC9PZvr3mJQIVKr4FF
	EHU+Mp8JbkILu6+A+ud+M0M5R5c7/XIgv24CAHDNY+bkrxKGXxOj4faZRWJ1fc4ihyQyseqqqZL6W
	XlwSHpbYK34t3d0RNQJYU5CYaAbJKqlRjg2X5tfSIKyGd6HPQP9ycNicFcw3Ouat4ZMmdBGEAjTH4
	94ZeAwA9k7+QXEs6xNaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGd3-00064G-UA; Fri, 21 Jun 2019 10:18:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGEn-00045o-3M
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:53:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF10414FF;
 Fri, 21 Jun 2019 02:53:40 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25B8B3F246;
 Fri, 21 Jun 2019 02:53:38 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v7 12/25] arm64: compat: vDSO setup for compat layer
Date: Fri, 21 Jun 2019 10:52:39 +0100
Message-Id: <20190621095252.32307-13-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621095252.32307-1-vincenzo.frascino@arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_025341_731328_2103F7B6 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Shuah Khan <shuah@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Thomas Gleixner <tglx@linutronix.de>, Shijith Thotton <sthotton@marvell.com>,
 Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If CONFIG_GENERIC_COMPAT_VDSO is enabled, compat vDSO are installed in a
compat (32 bit) process instead of sigpage.

Add the necessary code to setup the vDSO required pages.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Tested-by: Shijith Thotton <sthotton@marvell.com>
Tested-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/kernel/vdso.c | 90 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 88 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index aa1fb25a9fe4..ad3a81b2c7ce 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -40,12 +40,22 @@
 #include <asm/vdso.h>
 
 extern char vdso_start[], vdso_end[];
+#ifdef CONFIG_COMPAT_VDSO
+extern char vdso32_start[], vdso32_end[];
+#endif /* CONFIG_COMPAT_VDSO */
 
 /* vdso_lookup arch_index */
 enum arch_vdso_type {
 	ARM64_VDSO = 0,
+#ifdef CONFIG_COMPAT_VDSO
+	ARM64_VDSO32 = 1,
+#endif /* CONFIG_COMPAT_VDSO */
 };
+#ifdef CONFIG_COMPAT_VDSO
+#define VDSO_TYPES		(ARM64_VDSO32 + 1)
+#else
 #define VDSO_TYPES		(ARM64_VDSO + 1)
+#endif /* CONFIG_COMPAT_VDSO */
 
 struct __vdso_abi {
 	const char *name;
@@ -64,6 +74,13 @@ static struct __vdso_abi vdso_lookup[VDSO_TYPES] __ro_after_init = {
 		.vdso_code_start = vdso_start,
 		.vdso_code_end = vdso_end,
 	},
+#ifdef CONFIG_COMPAT_VDSO
+	{
+		.name = "vdso32",
+		.vdso_code_start = vdso32_start,
+		.vdso_code_end = vdso32_end,
+	},
+#endif /* CONFIG_COMPAT_VDSO */
 };
 
 /*
@@ -174,24 +191,52 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 /*
  * Create and map the vectors page for AArch32 tasks.
  */
+#ifdef CONFIG_COMPAT_VDSO
+static int aarch32_vdso_mremap(const struct vm_special_mapping *sm,
+		struct vm_area_struct *new_vma)
+{
+	return __vdso_remap(ARM64_VDSO32, sm, new_vma);
+}
+#endif /* CONFIG_COMPAT_VDSO */
+
 /*
  * aarch32_vdso_pages:
  * 0 - kuser helpers
  * 1 - sigreturn code
+ * or (CONFIG_COMPAT_VDSO):
+ * 0 - kuser helpers
+ * 1 - vdso data
+ * 2 - vdso code
  */
 #define C_VECTORS	0
+#ifdef CONFIG_COMPAT_VDSO
+#define C_VVAR		1
+#define C_VDSO		2
+#define C_PAGES		(C_VDSO + 1)
+#else
 #define C_SIGPAGE	1
 #define C_PAGES		(C_SIGPAGE + 1)
+#endif /* CONFIG_COMPAT_VDSO */
 static struct page *aarch32_vdso_pages[C_PAGES] __ro_after_init;
-static const struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
+static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 	{
 		.name	= "[vectors]", /* ABI */
 		.pages	= &aarch32_vdso_pages[C_VECTORS],
 	},
+#ifdef CONFIG_COMPAT_VDSO
+	{
+		.name = "[vvar]",
+	},
+	{
+		.name = "[vdso]",
+		.mremap = aarch32_vdso_mremap,
+	},
+#else
 	{
 		.name	= "[sigpage]", /* ABI */
 		.pages	= &aarch32_vdso_pages[C_SIGPAGE],
 	},
+#endif /* CONFIG_COMPAT_VDSO */
 };
 
 static int aarch32_alloc_kuser_vdso_page(void)
@@ -214,7 +259,33 @@ static int aarch32_alloc_kuser_vdso_page(void)
 	return 0;
 }
 
-static int __init aarch32_alloc_vdso_pages(void)
+#ifdef CONFIG_COMPAT_VDSO
+static int __aarch32_alloc_vdso_pages(void)
+{
+	int ret;
+
+	vdso_lookup[ARM64_VDSO32].dm = &aarch32_vdso_spec[C_VVAR];
+	vdso_lookup[ARM64_VDSO32].cm = &aarch32_vdso_spec[C_VDSO];
+
+	ret = __vdso_init(ARM64_VDSO32);
+	if (ret)
+		return ret;
+
+	ret = aarch32_alloc_kuser_vdso_page();
+	if (ret) {
+		unsigned long c_vvar =
+			(unsigned long)page_to_virt(aarch32_vdso_pages[C_VVAR]);
+		unsigned long c_vdso =
+			(unsigned long)page_to_virt(aarch32_vdso_pages[C_VDSO]);
+
+		free_page(c_vvar);
+		free_page(c_vdso);
+	}
+
+	return ret;
+}
+#else
+static int __aarch32_alloc_vdso_pages(void)
 {
 	extern char __aarch32_sigret_code_start[], __aarch32_sigret_code_end[];
 	int sigret_sz = __aarch32_sigret_code_end - __aarch32_sigret_code_start;
@@ -235,6 +306,12 @@ static int __init aarch32_alloc_vdso_pages(void)
 
 	return ret;
 }
+#endif /* CONFIG_COMPAT_VDSO */
+
+static int __init aarch32_alloc_vdso_pages(void)
+{
+	return __aarch32_alloc_vdso_pages();
+}
 arch_initcall(aarch32_alloc_vdso_pages);
 
 static int aarch32_kuser_helpers_setup(struct mm_struct *mm)
@@ -256,6 +333,7 @@ static int aarch32_kuser_helpers_setup(struct mm_struct *mm)
 	return PTR_ERR_OR_ZERO(ret);
 }
 
+#ifndef CONFIG_COMPAT_VDSO
 static int aarch32_sigreturn_setup(struct mm_struct *mm)
 {
 	unsigned long addr;
@@ -283,6 +361,7 @@ static int aarch32_sigreturn_setup(struct mm_struct *mm)
 out:
 	return PTR_ERR_OR_ZERO(ret);
 }
+#endif /* !CONFIG_COMPAT_VDSO */
 
 int aarch32_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
 {
@@ -296,7 +375,14 @@ int aarch32_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
 	if (ret)
 		goto out;
 
+#ifdef CONFIG_COMPAT_VDSO
+	ret = __setup_additional_pages(ARM64_VDSO32,
+				       mm,
+				       bprm,
+				       uses_interp);
+#else
 	ret = aarch32_sigreturn_setup(mm);
+#endif /* CONFIG_COMPAT_VDSO */
 
 out:
 	up_write(&mm->mmap_sem);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
