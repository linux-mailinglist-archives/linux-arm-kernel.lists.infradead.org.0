Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD5E16BACE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tK6QB2+Mq1ZiZq4UefgJfaDQgh0NS2lQ0NCjb9KTaT8=; b=a04AOFTrOKEudZHQbDYMaLGRt1
	CTnY9xJPmz6J/vWqcdP2SwUGlxvjmzLjm+fS01qtKaR8hg52tNBXuHZQZALIayMj5CCDiCLC4PBWF
	ohGdOtV7HGKwZDus3vUYwPYue0tj4pDOrANmvpXQdYzzYEyjgglmsNSUpSY1/Ud5BFgVRjETpVqMH
	wuhV5tF4dpR8f6Jfjyp8EuBW39eHeTl25HK2BxMLl6fFMHC9iuncClAyOAuUfriu7SP9jImg6rgH5
	efceuAEFRgm0nz8w9CFrlDpwDs8IdvIr23lX+zEP/r+RteIJzJabd0EmHi1glckpCZPHbpUvOZJVM
	UqoKuI6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6UnH-0000M3-Hi; Tue, 25 Feb 2020 07:38:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Umj-00006G-NV
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:37:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so5125287pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 23:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fTm63vWBfzb1BdQ6B/CmE6SJCijkNB09UHlH94Y5uzA=;
 b=K+Ml/upn0oxvTo+3gRr3MfXbq8amghsNv5GktyPa1Bz9dIl4nWMHbaBhQYNQ6aszrz
 zm8G7MUyUXlzA1GvJ/5600wGmPeJXbjNXy/8mpDOuGJugnA7guDIbK8h/76jQQDmuUI8
 i6hbT8QosV3VkssGwCBeHYXolDg6ws+D9G7fX2VcSSOa4ITxIhhs5mxnjXCiD3HrjS4s
 mzGmmR0k0trfs8P3tZhMTBXB2o/Z+A8BC1jt/KfCY8ATrXdkQaNTPAcxtY1ZkGmaUtKY
 mFqk7ByJPLfAelkxnmvMvKy6IUbUMWgCf0+YqNGTdve3w12izGIve8+fAIUrtppB8Xec
 audQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fTm63vWBfzb1BdQ6B/CmE6SJCijkNB09UHlH94Y5uzA=;
 b=LogcajBLYvtdLjPVRjdFz/8MJ9aacDkE85NAjuUNTNenoHcb4IR2k8DlgsO+Q/jIOR
 dJskh897FSXZphHIsXIo8dhjEDs5MF6gde7gZUqA5f9wBKgoHUjPBup0UHxDrrlT/v8G
 WkHkLLTAEi8+a6Dag9kJQy2MPLDZdrZFYr/rYBHMwEkYeEH1zaUVZaFIawYgxNbRrZcw
 WVXskjLs42oEGTEOfa/Q5fWhZVfA5lyc667Rm8Bf8MlgMI3WONq0fHQMyy2zrsl/Z69R
 S3Y1BtfeezXrR12TskhaaCdCSkVXMGJsDPGqfPQtRoHA9Jc9fbDgqw7udXIJx0mq2N88
 PeGQ==
X-Gm-Message-State: APjAAAVcYZ4oLAWM1mS4HOfYm4m+2CIR5FH7UZpHiyi30MNJYVehFB00
 s7q4ZtVbnYfjFBgshzQXsyU=
X-Google-Smtp-Source: APXvYqxqGvlZHIvXAmalhDezZDCnSGjb/EEDWYMB9RmGsUbBfPun/pC4HedAaHvGDMV4hAB9Smnhhw==
X-Received: by 2002:a17:90a:a616:: with SMTP id
 c22mr3595342pjq.47.1582616260726; 
 Mon, 24 Feb 2020 23:37:40 -0800 (PST)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id m128sm15979390pfm.183.2020.02.24.23.37.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 23:37:40 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH v2 1/6] arm64/vdso: use the fault callback to map vvar pages
Date: Mon, 24 Feb 2020 23:37:26 -0800
Message-Id: <20200225073731.465270-2-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200225073731.465270-1-avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_233741_768796_5C8D057E 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 arch/arm64/kernel/vdso.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 354b11e27c07..290c36d74e03 100644
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
+			     struct vm_area_struct *vma, struct vm_fault *vmf)
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
@@ -215,6 +219,7 @@ static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 #ifdef CONFIG_COMPAT_VDSO
 	{
 		.name = "[vvar]",
+		.fault = vvar_fault,
 	},
 	{
 		.name = "[vdso]",
@@ -396,6 +401,7 @@ static int vdso_mremap(const struct vm_special_mapping *sm,
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
