Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587A3152021
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 18:59:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AczG0jnRV589ali8rJfwDN6FRDQmirPQ6A5a+GNnKsk=; b=oc8AiR1h6zhM0l+yLzYIvylIZz
	3czYJhl5iFCVDBpPFQTPNqi9+ufP7AuPw3Dulslgj65ZtzGhG+yx2RAp3EFP3RnIVi/sNI1ScWTgH
	O3iIBf8IjdW/ln7X4lce7gcagATWGbL+du+6ApQERPJCO0HpTQZ99muoePuQbUYj1NADG6bRXWlyv
	x1d4fGND38VnsAaX3jEyqns9cBA0XrWriWYklyZYAw/ZWQATK/eT4UqoBhHdlq6tTPxsBSJKIGze+
	ejiUmvT7FWTs6sYeHpplLHy5F2N4qQBJL+ocQhOIwZa/REq6KyE02y/o/E7wZrHl2dSsF3MmJmOaj
	hAWvieQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2UI-0007hv-RB; Tue, 04 Feb 2020 17:59:50 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2Tt-0007Wf-76
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:59:26 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ep11so1712787pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 09:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nfh22yuIBMeQ3kvIydY8ilzEcSZOCdGdBZ/eBSsIN/Q=;
 b=cZvdvgC6JY1X2WLdvXp4m3GQ+VLpqwAwdJRWr3OHt+mDbjcYTLQTWTP5LOy0VNI2J9
 GsZ6G3+eROIlZRwhBOKiZei6C4Y24+XLK6CnTNAVCElkoqyA2ndnkIHuaKxR5/ropUFE
 xt/v49ir5Air6MKMQtxu4OQjBsAEyLuuoJ13Kqn2lLoqUsdLN06QPqAg6XtiWVju/5RL
 RNfC7XniMD6tlt3sN0WYRTWli2s1MXpEmWdYaM6cWc23RpF4AnDSJYjuDGMa7mr17ylN
 /cQ8tR7Ax4Ee2JmrlRO+Tu4hKx/Pb4zCeLXk+x3gUjQ26RcxPCXJDcDbRpqSqACDBw23
 1igQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nfh22yuIBMeQ3kvIydY8ilzEcSZOCdGdBZ/eBSsIN/Q=;
 b=r/XvtNMRx6rNB3mCQC8FUhsyEtgXtpQvGAt2P5b+oZcUq625xojw1NXhcGiDblkQoT
 AlRvR1dLhCaRB9Fc4tI17tTcUtiZDjnHeqhx3bdLdYh1KNJVEh4E8InQte3BJtxuQRyV
 kOQ0wW9nxdzJySrOtnR38SsImjd2kIEhaSuhSAcBVQbLVg+2xYzLV+cgYP4jlz8PNMRe
 QyWa8j3kccpRbEnpWwGvut3axkH9l/fWnkNmMya7zB/tSyCDRrMaIHGdOiVXyBgD/oEy
 nUF6kCuxs6djh4Fckmdybq7Ot1T3X6UE3nKbANW6/hw0fOql0mvMfDxBw/T34L/Yicfs
 WRkA==
X-Gm-Message-State: APjAAAVW/9HoCTu5oA+vC04wzUJi4hASwS9i88ToBefAxZHhGLMyhJI6
 4k7Lxfw2GtABZKOWq1xWqvQ=
X-Google-Smtp-Source: APXvYqw9azuHvBSMLyzc/8cqmPByqTFaxmhbhNKiyzp8wI/JEy0MYOpijPSV6ICe+k2TNK2BwWVxAQ==
X-Received: by 2002:a17:90a:9c1:: with SMTP id 59mr305035pjo.65.1580839164471; 
 Tue, 04 Feb 2020 09:59:24 -0800 (PST)
Received: from localhost.localdomain ([2620:0:1008:fd00:25a6:3140:768c:a64d])
 by smtp.gmail.com with ESMTPSA id
 d73sm25414465pfd.109.2020.02.04.09.59.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 09:59:23 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH 1/5] arm64/vdso: use the fault callback to map vvar pages
Date: Tue,  4 Feb 2020 09:59:09 -0800
Message-Id: <20200204175913.74901-2-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200204175913.74901-1-avagin@gmail.com>
References: <20200204175913.74901-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_095925_266253_8ED73314 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Andrei Vagin <avagin@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dmitry Safonov <dima@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is required to support time namespaces where a time namespace data
page is different for each namespace.

Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 354b11e27c07..c4b4758eaf0b 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -114,28 +114,32 @@ static int __vdso_init(enum arch_vdso_type arch_index)
 			PAGE_SHIFT;
 
 	/* Allocate the vDSO pagelist, plus a page for the data. */
-	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages + 1,
+	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages,
 				sizeof(struct page *),
 				GFP_KERNEL);
 	if (vdso_pagelist == NULL)
 		return -ENOMEM;
 
-	/* Grab the vDSO data page. */
-	vdso_pagelist[0] = phys_to_page(__pa_symbol(vdso_data));
-
-
 	/* Grab the vDSO code pages. */
 	pfn = sym_to_pfn(vdso_lookup[arch_index].vdso_code_start);
 
 	for (i = 0; i < vdso_lookup[arch_index].vdso_pages; i++)
-		vdso_pagelist[i + 1] = pfn_to_page(pfn + i);
+		vdso_pagelist[i] = pfn_to_page(pfn + i);
 
-	vdso_lookup[arch_index].dm->pages = &vdso_pagelist[0];
-	vdso_lookup[arch_index].cm->pages = &vdso_pagelist[1];
+	vdso_lookup[arch_index].cm->pages = vdso_pagelist;
 
 	return 0;
 }
 
+static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
+		      struct vm_area_struct *vma, struct vm_fault *vmf)
+{
+	if (vmf->pgoff == 0)
+		return vmf_insert_pfn(vma, vmf->address,
+				sym_to_pfn(vdso_data));
+	return VM_FAULT_SIGBUS;
+}
+
 static int __setup_additional_pages(enum arch_vdso_type arch_index,
 				    struct mm_struct *mm,
 				    struct linux_binprm *bprm,
@@ -155,7 +159,7 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 	}
 
 	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
-				       VM_READ|VM_MAYREAD,
+				       VM_READ|VM_MAYREAD|VM_PFNMAP,
 				       vdso_lookup[arch_index].dm);
 	if (IS_ERR(ret))
 		goto up_fail;
@@ -206,6 +210,8 @@ static int aarch32_vdso_mremap(const struct vm_special_mapping *sm,
 #define C_SIGPAGE	1
 #define C_PAGES		(C_SIGPAGE + 1)
 #endif /* CONFIG_COMPAT_VDSO */
+static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
+		      struct vm_area_struct *vma, struct vm_fault *vmf);
 static struct page *aarch32_vdso_pages[C_PAGES] __ro_after_init;
 static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 	{
@@ -215,6 +221,7 @@ static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 #ifdef CONFIG_COMPAT_VDSO
 	{
 		.name = "[vvar]",
+		.fault = vvar_fault,
 	},
 	{
 		.name = "[vdso]",
@@ -396,6 +403,7 @@ static int vdso_mremap(const struct vm_special_mapping *sm,
 static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
 	{
 		.name	= "[vvar]",
+		.fault = vvar_fault,
 	},
 	{
 		.name	= "[vdso]",
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
