Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096964E5BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnOK7gz2Kz8e7/0V4Nup65JudKDYCGQCl57t/9JVhgI=; b=OWemqsq5F6NhFi
	a+SOpA3z13an4lFl+JwuNtx31QJ4/QIsEsR11fG36nYwW89NXX8QJ3hAd4eDsxmvRldp0VNULSb6M
	q+ZSqCEB9E9xzIdvQxormTGzU20LLlvphRVMr19U1goUzc8LMPPGb0BB7lzLpY4lFSZvD0ZvINPjj
	6t/zN77E1CHszlDtcI3Hp3WszviB2tk967tY5y5Iq+gauEUYyPDG6M5hEHw7xfEVK0rUDRmtsbVZn
	fPeEJ6UONuK7ECeD25JyVUE6fx+Vzyd5QqzewNnBC1vMrg+QURO2Ki6rTb0sioxKAHOKcCEwhqcz9
	uVV25R+Os2HvLUHFPeQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGcq-0005nH-16; Fri, 21 Jun 2019 10:18:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGEk-000442-PY
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:53:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4491150C;
 Fri, 21 Jun 2019 02:53:37 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 591063F246;
 Fri, 21 Jun 2019 02:53:35 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v7 11/25] arm64: Refactor vDSO code
Date: Fri, 21 Jun 2019 10:52:38 +0100
Message-Id: <20190621095252.32307-12-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621095252.32307-1-vincenzo.frascino@arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_025339_382372_638FEADC 
X-CRM114-Status: GOOD (  20.23  )
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

Most of the code for initializing the vDSOs in arm64 and compat will
be in common, hence a refactor of the current code is required to avoid
duplication and simplify maintainability.

Refactor vdso.c to simplify the implementation of arm64 vDSO compat
(which will be pushed with a future patch).

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Tested-by: Shijith Thotton <sthotton@marvell.com>
Tested-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/kernel/vdso.c | 215 ++++++++++++++++++++++++++-------------
 1 file changed, 144 insertions(+), 71 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 23c38303a52a..aa1fb25a9fe4 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -40,7 +40,31 @@
 #include <asm/vdso.h>
 
 extern char vdso_start[], vdso_end[];
-static unsigned long vdso_pages __ro_after_init;
+
+/* vdso_lookup arch_index */
+enum arch_vdso_type {
+	ARM64_VDSO = 0,
+};
+#define VDSO_TYPES		(ARM64_VDSO + 1)
+
+struct __vdso_abi {
+	const char *name;
+	const char *vdso_code_start;
+	const char *vdso_code_end;
+	unsigned long vdso_pages;
+	/* Data Mapping */
+	struct vm_special_mapping *dm;
+	/* Code Mapping */
+	struct vm_special_mapping *cm;
+};
+
+static struct __vdso_abi vdso_lookup[VDSO_TYPES] __ro_after_init = {
+	{
+		.name = "vdso",
+		.vdso_code_start = vdso_start,
+		.vdso_code_end = vdso_end,
+	},
+};
 
 /*
  * The vDSO data page.
@@ -51,10 +75,110 @@ static union {
 } vdso_data_store __page_aligned_data;
 struct vdso_data *vdso_data = vdso_data_store.data;
 
+static int __vdso_remap(enum arch_vdso_type arch_index,
+			const struct vm_special_mapping *sm,
+			struct vm_area_struct *new_vma)
+{
+	unsigned long new_size = new_vma->vm_end - new_vma->vm_start;
+	unsigned long vdso_size = vdso_lookup[arch_index].vdso_code_end -
+				  vdso_lookup[arch_index].vdso_code_start;
+
+	if (vdso_size != new_size)
+		return -EINVAL;
+
+	current->mm->context.vdso = (void *)new_vma->vm_start;
+
+	return 0;
+}
+
+static int __vdso_init(enum arch_vdso_type arch_index)
+{
+	int i;
+	struct page **vdso_pagelist;
+	unsigned long pfn;
+
+	if (memcmp(vdso_lookup[arch_index].vdso_code_start, "\177ELF", 4)) {
+		pr_err("vDSO is not a valid ELF object!\n");
+		return -EINVAL;
+	}
+
+	vdso_lookup[arch_index].vdso_pages = (
+			vdso_lookup[arch_index].vdso_code_end -
+			vdso_lookup[arch_index].vdso_code_start) >>
+			PAGE_SHIFT;
+
+	/* Allocate the vDSO pagelist, plus a page for the data. */
+	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages + 1,
+				sizeof(struct page *),
+				GFP_KERNEL);
+	if (vdso_pagelist == NULL)
+		return -ENOMEM;
+
+	/* Grab the vDSO data page. */
+	vdso_pagelist[0] = phys_to_page(__pa_symbol(vdso_data));
+
+
+	/* Grab the vDSO code pages. */
+	pfn = sym_to_pfn(vdso_lookup[arch_index].vdso_code_start);
+
+	for (i = 0; i < vdso_lookup[arch_index].vdso_pages; i++)
+		vdso_pagelist[i + 1] = pfn_to_page(pfn + i);
+
+	vdso_lookup[arch_index].dm->pages = &vdso_pagelist[0];
+	vdso_lookup[arch_index].cm->pages = &vdso_pagelist[1];
+
+	return 0;
+}
+
+static int __setup_additional_pages(enum arch_vdso_type arch_index,
+				    struct mm_struct *mm,
+				    struct linux_binprm *bprm,
+				    int uses_interp)
+{
+	unsigned long vdso_base, vdso_text_len, vdso_mapping_len;
+	void *ret;
+
+	vdso_text_len = vdso_lookup[arch_index].vdso_pages << PAGE_SHIFT;
+	/* Be sure to map the data page */
+	vdso_mapping_len = vdso_text_len + PAGE_SIZE;
+
+	vdso_base = get_unmapped_area(NULL, 0, vdso_mapping_len, 0, 0);
+	if (IS_ERR_VALUE(vdso_base)) {
+		ret = ERR_PTR(vdso_base);
+		goto up_fail;
+	}
+
+	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
+				       VM_READ|VM_MAYREAD,
+				       vdso_lookup[arch_index].dm);
+	if (IS_ERR(ret))
+		goto up_fail;
+
+	vdso_base += PAGE_SIZE;
+	mm->context.vdso = (void *)vdso_base;
+	ret = _install_special_mapping(mm, vdso_base, vdso_text_len,
+				       VM_READ|VM_EXEC|
+				       VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
+				       vdso_lookup[arch_index].cm);
+	if (IS_ERR(ret))
+		goto up_fail;
+
+	return 0;
+
+up_fail:
+	mm->context.vdso = NULL;
+	return PTR_ERR(ret);
+}
+
 #ifdef CONFIG_COMPAT
 /*
  * Create and map the vectors page for AArch32 tasks.
  */
+/*
+ * aarch32_vdso_pages:
+ * 0 - kuser helpers
+ * 1 - sigreturn code
+ */
 #define C_VECTORS	0
 #define C_SIGPAGE	1
 #define C_PAGES		(C_SIGPAGE + 1)
@@ -183,18 +307,18 @@ int aarch32_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
 static int vdso_mremap(const struct vm_special_mapping *sm,
 		struct vm_area_struct *new_vma)
 {
-	unsigned long new_size = new_vma->vm_end - new_vma->vm_start;
-	unsigned long vdso_size = vdso_end - vdso_start;
-
-	if (vdso_size != new_size)
-		return -EINVAL;
-
-	current->mm->context.vdso = (void *)new_vma->vm_start;
-
-	return 0;
+	return __vdso_remap(ARM64_VDSO, sm, new_vma);
 }
 
-static struct vm_special_mapping vdso_spec[2] __ro_after_init = {
+/*
+ * aarch64_vdso_pages:
+ * 0 - vvar
+ * 1 - vdso
+ */
+#define A_VVAR		0
+#define A_VDSO		1
+#define A_PAGES		(A_VDSO + 1)
+static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
 	{
 		.name	= "[vvar]",
 	},
@@ -206,37 +330,10 @@ static struct vm_special_mapping vdso_spec[2] __ro_after_init = {
 
 static int __init vdso_init(void)
 {
-	int i;
-	struct page **vdso_pagelist;
-	unsigned long pfn;
-
-	if (memcmp(vdso_start, "\177ELF", 4)) {
-		pr_err("vDSO is not a valid ELF object!\n");
-		return -EINVAL;
-	}
-
-	vdso_pages = (vdso_end - vdso_start) >> PAGE_SHIFT;
-
-	/* Allocate the vDSO pagelist, plus a page for the data. */
-	vdso_pagelist = kcalloc(vdso_pages + 1, sizeof(struct page *),
-				GFP_KERNEL);
-	if (vdso_pagelist == NULL)
-		return -ENOMEM;
-
-	/* Grab the vDSO data page. */
-	vdso_pagelist[0] = phys_to_page(__pa_symbol(vdso_data));
-
+	vdso_lookup[ARM64_VDSO].dm = &vdso_spec[A_VVAR];
+	vdso_lookup[ARM64_VDSO].cm = &vdso_spec[A_VDSO];
 
-	/* Grab the vDSO code pages. */
-	pfn = sym_to_pfn(vdso_start);
-
-	for (i = 0; i < vdso_pages; i++)
-		vdso_pagelist[i + 1] = pfn_to_page(pfn + i);
-
-	vdso_spec[0].pages = &vdso_pagelist[0];
-	vdso_spec[1].pages = &vdso_pagelist[1];
-
-	return 0;
+	return __vdso_init(ARM64_VDSO);
 }
 arch_initcall(vdso_init);
 
@@ -244,41 +341,17 @@ int arch_setup_additional_pages(struct linux_binprm *bprm,
 				int uses_interp)
 {
 	struct mm_struct *mm = current->mm;
-	unsigned long vdso_base, vdso_text_len, vdso_mapping_len;
-	void *ret;
-
-	vdso_text_len = vdso_pages << PAGE_SHIFT;
-	/* Be sure to map the data page */
-	vdso_mapping_len = vdso_text_len + PAGE_SIZE;
+	int ret;
 
 	if (down_write_killable(&mm->mmap_sem))
 		return -EINTR;
-	vdso_base = get_unmapped_area(NULL, 0, vdso_mapping_len, 0, 0);
-	if (IS_ERR_VALUE(vdso_base)) {
-		ret = ERR_PTR(vdso_base);
-		goto up_fail;
-	}
-	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
-				       VM_READ|VM_MAYREAD,
-				       &vdso_spec[0]);
-	if (IS_ERR(ret))
-		goto up_fail;
-
-	vdso_base += PAGE_SIZE;
-	mm->context.vdso = (void *)vdso_base;
-	ret = _install_special_mapping(mm, vdso_base, vdso_text_len,
-				       VM_READ|VM_EXEC|
-				       VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
-				       &vdso_spec[1]);
-	if (IS_ERR(ret))
-		goto up_fail;
 
+	ret = __setup_additional_pages(ARM64_VDSO,
+				       mm,
+				       bprm,
+				       uses_interp);
 
 	up_write(&mm->mmap_sem);
-	return 0;
 
-up_fail:
-	mm->context.vdso = NULL;
-	up_write(&mm->mmap_sem);
-	return PTR_ERR(ret);
+	return ret;
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
