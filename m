Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FD41BC5C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xkloEYD6smfFihcGZFgApJCf5sV/r1WgrkbKwwLt1Ik=; b=e9nz+55Ez0t+yXcXtccD8emp2f
	lJHnS8K+YmOz79R9Jlu1fS5mkxLtScIWi7sZMFnmwMmgmXl+G82BK98GEYCehT7O1i1noka+JiW4f
	SfrySA2K+k1DZxdZVqC5qAdjMI7hNL0TNHeFXn2UTE9Eccv1rm4Yre31erQDkU42KVn7BuWqnLgWO
	OMW6SjQdRvgFad3dQ4FVyqauxk2UztHO/yEL8jzv62xhzGqtVbIG5iRXAbzOG1U2nAGrB5M9aB5W7
	KIGqCY/jBreMPum7ApNBEA4KVolm4GPPJZgRJS15PK6urEkp6LRkVH7qV+LgRGpzRkTsYZRb3mewm
	+mi2cjyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTS4-0008Da-GY; Tue, 28 Apr 2020 16:51:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTQK-0004Gj-Dk
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:49:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E3BD30E;
 Tue, 28 Apr 2020 09:49:31 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 847BE3F305;
 Tue, 28 Apr 2020 09:49:30 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	will@kernel.org
Subject: [PATCHv2 3/4] arm64: vdso: use consistent 'abi' nomenclature
Date: Tue, 28 Apr 2020 17:49:20 +0100
Message-Id: <20200428164921.41641-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200428164921.41641-1-mark.rutland@arm.com>
References: <20200428164921.41641-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094932_594511_C14155E9 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, vincenzo.frascino@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code doesn't use a consistent naming scheme for structures,
enums, or variables, making it harder than necessary to determine the
relationship between these.

Let's make this easier by consistently using 'vdso_abi' nomenclature.
The 'vdso_lookup' array is renamed to 'vdso_info' to describe what it
contains rather than how it is consumed.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kernel/vdso.c | 69 ++++++++++++++++++++++++------------------------
 1 file changed, 34 insertions(+), 35 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index b4b01ac30112..89ef61686362 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -33,15 +33,14 @@ extern char vdso_start[], vdso_end[];
 extern char vdso32_start[], vdso32_end[];
 #endif /* CONFIG_COMPAT_VDSO */
 
-/* vdso_lookup arch_index */
-enum arch_vdso_type {
-	ARM64_VDSO,
+enum vdso_abi {
+	VDSO_ABI_AA64,
 #ifdef CONFIG_COMPAT_VDSO
-	ARM64_VDSO32,
+	VDSO_ABI_AA32,
 #endif /* CONFIG_COMPAT_VDSO */
 };
 
-struct __vdso_abi {
+struct vdso_abi_info {
 	const char *name;
 	const char *vdso_code_start;
 	const char *vdso_code_end;
@@ -52,14 +51,14 @@ struct __vdso_abi {
 	struct vm_special_mapping *cm;
 };
 
-static struct __vdso_abi vdso_lookup[] __ro_after_init = {
-	[ARM64_VDSO] = {
+static struct vdso_abi_info vdso_info[] __ro_after_init = {
+	[VDSO_ABI_AA64] = {
 		.name = "vdso",
 		.vdso_code_start = vdso_start,
 		.vdso_code_end = vdso_end,
 	},
 #ifdef CONFIG_COMPAT_VDSO
-	[ARM64_VDSO32] = {
+	[VDSO_ABI_AA32] = {
 		.name = "vdso32",
 		.vdso_code_start = vdso32_start,
 		.vdso_code_end = vdso32_end,
@@ -76,13 +75,13 @@ static union {
 } vdso_data_store __page_aligned_data;
 struct vdso_data *vdso_data = vdso_data_store.data;
 
-static int __vdso_remap(enum arch_vdso_type arch_index,
+static int __vdso_remap(enum vdso_abi abi,
 			const struct vm_special_mapping *sm,
 			struct vm_area_struct *new_vma)
 {
 	unsigned long new_size = new_vma->vm_end - new_vma->vm_start;
-	unsigned long vdso_size = vdso_lookup[arch_index].vdso_code_end -
-				  vdso_lookup[arch_index].vdso_code_start;
+	unsigned long vdso_size = vdso_info[abi].vdso_code_end -
+				  vdso_info[abi].vdso_code_start;
 
 	if (vdso_size != new_size)
 		return -EINVAL;
@@ -92,24 +91,24 @@ static int __vdso_remap(enum arch_vdso_type arch_index,
 	return 0;
 }
 
-static int __vdso_init(enum arch_vdso_type arch_index)
+static int __vdso_init(enum vdso_abi abi)
 {
 	int i;
 	struct page **vdso_pagelist;
 	unsigned long pfn;
 
-	if (memcmp(vdso_lookup[arch_index].vdso_code_start, "\177ELF", 4)) {
+	if (memcmp(vdso_info[abi].vdso_code_start, "\177ELF", 4)) {
 		pr_err("vDSO is not a valid ELF object!\n");
 		return -EINVAL;
 	}
 
-	vdso_lookup[arch_index].vdso_pages = (
-			vdso_lookup[arch_index].vdso_code_end -
-			vdso_lookup[arch_index].vdso_code_start) >>
+	vdso_info[abi].vdso_pages = (
+			vdso_info[abi].vdso_code_end -
+			vdso_info[abi].vdso_code_start) >>
 			PAGE_SHIFT;
 
 	/* Allocate the vDSO pagelist, plus a page for the data. */
-	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages + 1,
+	vdso_pagelist = kcalloc(vdso_info[abi].vdso_pages + 1,
 				sizeof(struct page *),
 				GFP_KERNEL);
 	if (vdso_pagelist == NULL)
@@ -120,18 +119,18 @@ static int __vdso_init(enum arch_vdso_type arch_index)
 
 
 	/* Grab the vDSO code pages. */
-	pfn = sym_to_pfn(vdso_lookup[arch_index].vdso_code_start);
+	pfn = sym_to_pfn(vdso_info[abi].vdso_code_start);
 
-	for (i = 0; i < vdso_lookup[arch_index].vdso_pages; i++)
+	for (i = 0; i < vdso_info[abi].vdso_pages; i++)
 		vdso_pagelist[i + 1] = pfn_to_page(pfn + i);
 
-	vdso_lookup[arch_index].dm->pages = &vdso_pagelist[0];
-	vdso_lookup[arch_index].cm->pages = &vdso_pagelist[1];
+	vdso_info[abi].dm->pages = &vdso_pagelist[0];
+	vdso_info[abi].cm->pages = &vdso_pagelist[1];
 
 	return 0;
 }
 
-static int __setup_additional_pages(enum arch_vdso_type arch_index,
+static int __setup_additional_pages(enum vdso_abi abi,
 				    struct mm_struct *mm,
 				    struct linux_binprm *bprm,
 				    int uses_interp)
@@ -139,7 +138,7 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 	unsigned long vdso_base, vdso_text_len, vdso_mapping_len;
 	void *ret;
 
-	vdso_text_len = vdso_lookup[arch_index].vdso_pages << PAGE_SHIFT;
+	vdso_text_len = vdso_info[abi].vdso_pages << PAGE_SHIFT;
 	/* Be sure to map the data page */
 	vdso_mapping_len = vdso_text_len + PAGE_SIZE;
 
@@ -151,7 +150,7 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 
 	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
 				       VM_READ|VM_MAYREAD,
-				       vdso_lookup[arch_index].dm);
+				       vdso_info[abi].dm);
 	if (IS_ERR(ret))
 		goto up_fail;
 
@@ -160,7 +159,7 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 	ret = _install_special_mapping(mm, vdso_base, vdso_text_len,
 				       VM_READ|VM_EXEC|
 				       VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
-				       vdso_lookup[arch_index].cm);
+				       vdso_info[abi].cm);
 	if (IS_ERR(ret))
 		goto up_fail;
 
@@ -179,7 +178,7 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 static int aarch32_vdso_mremap(const struct vm_special_mapping *sm,
 		struct vm_area_struct *new_vma)
 {
-	return __vdso_remap(ARM64_VDSO32, sm, new_vma);
+	return __vdso_remap(VDSO_ABI_AA32, sm, new_vma);
 }
 #endif /* CONFIG_COMPAT_VDSO */
 
@@ -253,10 +252,10 @@ static int __aarch32_alloc_vdso_pages(void)
 {
 	int ret;
 
-	vdso_lookup[ARM64_VDSO32].dm = &aarch32_vdso_spec[C_VVAR];
-	vdso_lookup[ARM64_VDSO32].cm = &aarch32_vdso_spec[C_VDSO];
+	vdso_info[VDSO_ABI_AA32].dm = &aarch32_vdso_spec[C_VVAR];
+	vdso_info[VDSO_ABI_AA32].cm = &aarch32_vdso_spec[C_VDSO];
 
-	ret = __vdso_init(ARM64_VDSO32);
+	ret = __vdso_init(VDSO_ABI_AA32);
 	if (ret)
 		return ret;
 
@@ -354,7 +353,7 @@ int aarch32_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
 		goto out;
 
 #ifdef CONFIG_COMPAT_VDSO
-	ret = __setup_additional_pages(ARM64_VDSO32,
+	ret = __setup_additional_pages(VDSO_ABI_AA32,
 				       mm,
 				       bprm,
 				       uses_interp);
@@ -371,7 +370,7 @@ int aarch32_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
 static int vdso_mremap(const struct vm_special_mapping *sm,
 		struct vm_area_struct *new_vma)
 {
-	return __vdso_remap(ARM64_VDSO, sm, new_vma);
+	return __vdso_remap(VDSO_ABI_AA64, sm, new_vma);
 }
 
 /*
@@ -394,10 +393,10 @@ static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
 
 static int __init vdso_init(void)
 {
-	vdso_lookup[ARM64_VDSO].dm = &vdso_spec[A_VVAR];
-	vdso_lookup[ARM64_VDSO].cm = &vdso_spec[A_VDSO];
+	vdso_info[VDSO_ABI_AA64].dm = &vdso_spec[A_VVAR];
+	vdso_info[VDSO_ABI_AA64].cm = &vdso_spec[A_VDSO];
 
-	return __vdso_init(ARM64_VDSO);
+	return __vdso_init(VDSO_ABI_AA64);
 }
 arch_initcall(vdso_init);
 
@@ -410,7 +409,7 @@ int arch_setup_additional_pages(struct linux_binprm *bprm,
 	if (down_write_killable(&mm->mmap_sem))
 		return -EINTR;
 
-	ret = __setup_additional_pages(ARM64_VDSO,
+	ret = __setup_additional_pages(VDSO_ABI_AA64,
 				       mm,
 				       bprm,
 				       uses_interp);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
