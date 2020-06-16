Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4849A1FAA8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1/TgXIx4FNAMGNIkmHqGrZc59ss9oPyehpTcrzaElVw=; b=WK3mfRRi+iu0gddvc2s9Io/Z1b
	ybXY5Nd2//XFs3hs4U5xirAbDM7zMBeS6QOeRVIEZnPbxvN5rDEiOCOkr84oOLUr4wUYZnggjA44/
	88p+t7+DcxYaICFIMcWxpbwurEWtaILRxw/1E1ZWXL2osjtitOPdxYGBCi0ad9kkueK1zeHgRTaou
	NGow9t6iufmEGqw3eOqUh1QYF+5QxOH3UBjr6Fatuc6c8mr5qiKZS1gAT+xvGKtyTG3B6XvO4+P5Z
	ZPST3nCNIqiN90GWO2cyY2b3KSN4m8WlHk1sDFK5mvZq3jWrx0e0bMqPikA4zuZgCVh1Tden9/7kB
	0/3Mz3Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6SH-0000C5-HR; Tue, 16 Jun 2020 07:56:25 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6Rp-0008Un-Uj
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:55:59 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ne5so1060834pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3w3acXY0ruvQ2cOAk5Y6lKlS5LzTqXqZJuB6w0EA294=;
 b=Cp8t/bjOY0qFMLYTzt16FoouVp9eINWmU8mmUpHX+AsFrDKIXkcT19z0suqBLghibO
 OsWPTbNQ78wf/cMk9oUek30lb6kngbCTL91Ip4B4OBjsGHxi5xA/ijlrqrQlNLoGn/bn
 l/7vyPUklqJG1Baun2pVxMHTasoW42ICl3Es6lVrZb83u6aebgtl+kJzIuZw8wkSuD5y
 eWg48lc4rfg+C2iE2LQQqoBLqeCS++0+HVWVXWygJpkK1vDfoep1tzRrEdYp2cVb/jvQ
 JC/cob986QCwZA/FpwkUZqZkbS85NacBJV0l0OpFKfn0vQWwu3XC3bjPcGWjDJb+aU5E
 KZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3w3acXY0ruvQ2cOAk5Y6lKlS5LzTqXqZJuB6w0EA294=;
 b=pseeP7N6XcCvFIeEqd8/iMTJgjxH/wDvDz81oVnrzqgNSJB/8WMuHUUuXv+OPEOZaI
 1qiDFJvU7zYJ/TIqlGNH5RSnO93f/Cq2KVl10YOuE2bNJFP7mzPcWHyOrJb4gGkXyGRI
 rTzQ7RSPpQOGd7Qpg8t0Owf6/NBtIXXwYxPi6yIu9aQvbs3izwknjmORtsZU26m4GvGQ
 NqW+P0bQT4Ebpy9ArNcMJwNCqf57IdtYPOAfleIWts6MByOkyzu1AxvnBS5wDFLXJZFT
 78jZg6gwLI8SVJj8x+Oi6rO/ZJ7bsyesL8vX0g2BfRI1rPNd/uLn8hmco/Bqz7PAzlAN
 yUHw==
X-Gm-Message-State: AOAM530QZu3P8uXodeyHOWfV9DXWw6hyGfOV8bGTRDoc1u1Ri8aYxrNT
 OO+37qF+F8mQZwk7W9R3nsqP4vO5
X-Google-Smtp-Source: ABdhPJxhqk6SDQGJkU/TNYIJx17AQr2syQ5Y+J3NJhmvTDGSm/ZNzAFmXitcdYEV3AsxC8vPnrV8xw==
X-Received: by 2002:a17:90a:356a:: with SMTP id
 q97mr1861201pjb.110.1592294155840; 
 Tue, 16 Jun 2020 00:55:55 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id g6sm16168984pfb.164.2020.06.16.00.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:55:55 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 1/6] arm64/vdso: use the fault callback to map vvar pages
Date: Tue, 16 Jun 2020 00:55:40 -0700
Message-Id: <20200616075545.312684-2-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200616075545.312684-1-avagin@gmail.com>
References: <20200616075545.312684-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_005557_986961_425E4EB5 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is required to support time namespaces where a time namespace data
page is different for each namespace.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Dmitry Safonov <dima@arista.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 4e016574bd91..b0aec4e8c9b4 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -108,28 +108,32 @@ static int __vdso_init(enum vdso_abi abi)
 			PAGE_SHIFT;
 
 	/* Allocate the vDSO pagelist, plus a page for the data. */
-	vdso_pagelist = kcalloc(vdso_info[abi].vdso_pages + 1,
+	vdso_pagelist = kcalloc(vdso_info[abi].vdso_pages,
 				sizeof(struct page *),
 				GFP_KERNEL);
 	if (vdso_pagelist == NULL)
 		return -ENOMEM;
 
-	/* Grab the vDSO data page. */
-	vdso_pagelist[0] = phys_to_page(__pa_symbol(vdso_data));
-
-
 	/* Grab the vDSO code pages. */
 	pfn = sym_to_pfn(vdso_info[abi].vdso_code_start);
 
 	for (i = 0; i < vdso_info[abi].vdso_pages; i++)
-		vdso_pagelist[i + 1] = pfn_to_page(pfn + i);
+		vdso_pagelist[i] = pfn_to_page(pfn + i);
 
-	vdso_info[abi].dm->pages = &vdso_pagelist[0];
-	vdso_info[abi].cm->pages = &vdso_pagelist[1];
+	vdso_info[abi].cm->pages = vdso_pagelist;
 
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
 static int __setup_additional_pages(enum vdso_abi abi,
 				    struct mm_struct *mm,
 				    struct linux_binprm *bprm,
@@ -150,7 +154,7 @@ static int __setup_additional_pages(enum vdso_abi abi,
 	}
 
 	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
-				       VM_READ|VM_MAYREAD,
+				       VM_READ|VM_MAYREAD|VM_PFNMAP,
 				       vdso_info[abi].dm);
 	if (IS_ERR(ret))
 		goto up_fail;
@@ -209,6 +213,7 @@ static struct vm_special_mapping aarch32_vdso_maps[] = {
 #ifdef CONFIG_COMPAT_VDSO
 	[AA32_MAP_VVAR] = {
 		.name = "[vvar]",
+		.fault = vvar_fault,
 	},
 	[AA32_MAP_VDSO] = {
 		.name = "[vdso]",
@@ -376,6 +381,7 @@ enum aarch64_map {
 static struct vm_special_mapping aarch64_vdso_maps[] __ro_after_init = {
 	[AA64_MAP_VVAR] = {
 		.name	= "[vvar]",
+		.fault = vvar_fault,
 	},
 	[AA64_MAP_VDSO] = {
 		.name	= "[vdso]",
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
