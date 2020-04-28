Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E748B1BC5C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D/TBfS2OqFNZnyLVt/EObheHjUML3rhd/OW71l6f4j8=; b=aHN3iFAbLb8LFmDlwemh+ro4aZ
	EEQmE2l4ACAxsgFWhd0Q2l/NT9xK00cyodz7lskW4hyER55We9yEYbwpQzNq2PFR5VbDv8ArouznY
	ruzmtLoPBl19wUPSD6KmwwOvRfjgsUvw20fWmZANGV5EJfA+imIxwVGKPMLQpDuLfCI1e3sqCy5zg
	qndQYjuMGNvVo2PrBbrCFNpk5Qk94koWkbR0z96+HXsUxNi5K9YH6StJ/x8OWL6560H8p01CAfSlX
	1c4WqAwbY7Q8cK9LJ6Mpky8a7QQMDpM1p+3nWW2NtApmKarW6bi8WorojZmwy6Ch2Oge0Gjsty6HF
	aOrGEQBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTRj-00082V-Rx; Tue, 28 Apr 2020 16:50:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTQL-0004Hj-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:49:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE7F9C14;
 Tue, 28 Apr 2020 09:49:32 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E4A5B3F305;
 Tue, 28 Apr 2020 09:49:31 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	will@kernel.org
Subject: [PATCHv2 4/4] arm64: vdso: use consistent 'map' nomenclature
Date: Tue, 28 Apr 2020 17:49:21 +0100
Message-Id: <20200428164921.41641-5-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200428164921.41641-1-mark.rutland@arm.com>
References: <20200428164921.41641-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094933_435940_76DF7A20 
X-CRM114-Status: GOOD (  13.20  )
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

Let's make this easier by consistently using 'map' nomenclature for
mappings created in userspace, minimizing redundant comments, and
using designated array initializers to tie indices to their respective
elements.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kernel/vdso.c | 64 ++++++++++++++++++++----------------------------
 1 file changed, 26 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 89ef61686362..f3eea5e20a41 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -182,45 +182,36 @@ static int aarch32_vdso_mremap(const struct vm_special_mapping *sm,
 }
 #endif /* CONFIG_COMPAT_VDSO */
 
-/*
- * aarch32_vdso_pages:
- * 0 - kuser helpers
- * 1 - sigreturn code
- * or (CONFIG_COMPAT_VDSO):
- * 0 - kuser helpers
- * 1 - vdso data
- * 2 - vdso code
- */
-#define C_VECTORS	0
+enum aarch32_map {
+	AA32_MAP_VECTORS, /* kuser helpers */
 #ifdef CONFIG_COMPAT_VDSO
-#define C_VVAR		1
-#define C_VDSO		2
-#define C_PAGES		(C_VDSO + 1)
+	AA32_MAP_VVAR,
+	AA32_MAP_VDSO,
 #else
-#define C_SIGPAGE	1
-#define C_PAGES		(C_SIGPAGE + 1)
-#endif /* CONFIG_COMPAT_VDSO */
+	AA32_MAP_SIGPAGE
+#endif
+};
 
 static struct page *aarch32_vectors_page __ro_after_init;
 #ifndef CONFIG_COMPAT_VDSO
 static struct page *aarch32_sig_page __ro_after_init;
 #endif
 
-static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
-	{
+static struct vm_special_mapping aarch32_vdso_maps[] = {
+	[AA32_MAP_VECTORS] = {
 		.name	= "[vectors]", /* ABI */
 		.pages	= &aarch32_vectors_page,
 	},
 #ifdef CONFIG_COMPAT_VDSO
-	{
+	[AA32_MAP_VVAR] = {
 		.name = "[vvar]",
 	},
-	{
+	[AA32_MAP_VDSO] = {
 		.name = "[vdso]",
 		.mremap = aarch32_vdso_mremap,
 	},
 #else
-	{
+	[AA32_MAP_SIGPAGE] = {
 		.name	= "[sigpage]", /* ABI */
 		.pages	= &aarch32_sig_page,
 	},
@@ -252,8 +243,8 @@ static int __aarch32_alloc_vdso_pages(void)
 {
 	int ret;
 
-	vdso_info[VDSO_ABI_AA32].dm = &aarch32_vdso_spec[C_VVAR];
-	vdso_info[VDSO_ABI_AA32].cm = &aarch32_vdso_spec[C_VDSO];
+	vdso_info[VDSO_ABI_AA32].dm = &aarch32_vdso_maps[AA32_MAP_VVAR];
+	vdso_info[VDSO_ABI_AA32].cm = &aarch32_vdso_maps[AA32_MAP_VDSO];
 
 	ret = __vdso_init(VDSO_ABI_AA32);
 	if (ret)
@@ -305,7 +296,7 @@ static int aarch32_kuser_helpers_setup(struct mm_struct *mm)
 	ret = _install_special_mapping(mm, AARCH32_VECTORS_BASE, PAGE_SIZE,
 				       VM_READ | VM_EXEC |
 				       VM_MAYREAD | VM_MAYEXEC,
-				       &aarch32_vdso_spec[C_VECTORS]);
+				       &aarch32_vdso_maps[AA32_MAP_VECTORS]);
 
 	return PTR_ERR_OR_ZERO(ret);
 }
@@ -329,7 +320,7 @@ static int aarch32_sigreturn_setup(struct mm_struct *mm)
 	ret = _install_special_mapping(mm, addr, PAGE_SIZE,
 				       VM_READ | VM_EXEC | VM_MAYREAD |
 				       VM_MAYWRITE | VM_MAYEXEC,
-				       &aarch32_vdso_spec[C_SIGPAGE]);
+				       &aarch32_vdso_maps[AA32_MAP_SIGPAGE]);
 	if (IS_ERR(ret))
 		goto out;
 
@@ -373,19 +364,16 @@ static int vdso_mremap(const struct vm_special_mapping *sm,
 	return __vdso_remap(VDSO_ABI_AA64, sm, new_vma);
 }
 
-/*
- * aarch64_vdso_pages:
- * 0 - vvar
- * 1 - vdso
- */
-#define A_VVAR		0
-#define A_VDSO		1
-#define A_PAGES		(A_VDSO + 1)
-static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
-	{
+enum aarch64_map {
+	AA64_MAP_VVAR,
+	AA64_MAP_VDSO,
+};
+
+static struct vm_special_mapping aarch64_vdso_maps[] __ro_after_init = {
+	[AA64_MAP_VVAR] = {
 		.name	= "[vvar]",
 	},
-	{
+	[AA64_MAP_VDSO] = {
 		.name	= "[vdso]",
 		.mremap = vdso_mremap,
 	},
@@ -393,8 +381,8 @@ static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
 
 static int __init vdso_init(void)
 {
-	vdso_info[VDSO_ABI_AA64].dm = &vdso_spec[A_VVAR];
-	vdso_info[VDSO_ABI_AA64].cm = &vdso_spec[A_VDSO];
+	vdso_info[VDSO_ABI_AA64].dm = &aarch64_vdso_maps[AA64_MAP_VVAR];
+	vdso_info[VDSO_ABI_AA64].cm = &aarch64_vdso_maps[AA64_MAP_VDSO];
 
 	return __vdso_init(VDSO_ABI_AA64);
 }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
