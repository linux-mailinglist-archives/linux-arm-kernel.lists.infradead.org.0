Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803871EC18D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 20:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=css8nNgARgeFC4UYnwZvMW+ARRAv+h1i/rWg5oLuJGw=; b=cCH26b7v2QKY7wr+6mV+mA2b5z
	ytG+wFuNNfUVAFeq200Hf+7SIRXG/iWuOxtoljD3kwY+4u067DALn42jF8IYg7LwM3bYbpMpYH3cU
	7AsrAHlnlxY9eIIc+tVl2XJ+UfMTpfDUimMHlmYIT+6jqZ/E+iN9koH3HKqRP4riJWM47PPWq4uxP
	Q4Hmzo0CysfzfB7VwVD1RnceVpLhHopSBJNV+3JVdJLrFcNaokinIaaBHKn1hqRoo53JaBBkHSUA5
	hJ0CM3ACT8cUOp5ICiOqzxXGnJ18W1uqtE+vQnIf6x8AOjv6q2zYD16LV4orYIFrrh9A8K0zwp8by
	ZiKE09PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBG6-0002p6-1r; Tue, 02 Jun 2020 18:03:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBFi-0002fl-He
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 18:03:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id n23so126897pgb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 11:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QGD1nesqWyjyIgD1rTMvSAFAGLyEEfpYf/1KB187E2U=;
 b=VuUGPGEoUPTURf3RYtx8Z5AxOLk+4ls2cqG0NCwDdNNrLuavo7E/67YQMT5DYSBitj
 DcxdX+4jvlaoTt9LHsCu9HGbMyZHqQ6bVCSFaB8adeIRJm4fYzmR31+I5r3RCSP+amp9
 Pk9bR/KKzgVT3IRovnElkSO1N87zEp8wXAQZNx1nk54spjwa7E50kcADlKGaec7JO5BU
 2ltsrKE+wN67Y4f+JCgLF3gJ8QtqQfDUZNJSqnZvmO+DgSRj/YF6/iyS8GIczHHE0RJj
 ZFCYC0aiCiiKNi5M5a43bEI7CwXFp6IEhnQlUwkt7XtDd9GX3rQhMsJer4wWS70asgJA
 iANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QGD1nesqWyjyIgD1rTMvSAFAGLyEEfpYf/1KB187E2U=;
 b=INQinK9vHFuZpjBmhtScw10BmgkuFEvRP86gW+TqvVZ2GAxHKnafrFnj5XcPmgBM5r
 kpmExnJMabJ7gCnnnbY1DyaoemppzjkL0DzlLRlSKZplij7luUg3YD2XwvxnJEgF4qwc
 /BGP3c40ShVovbu9Y6ydGYazQ5VtsC2PZFr4wYapz3DU++bwxZHwcuY08HxNkIch69uR
 1ZvJCsTg6Kw1P4cYAlYqC5ifeUJVghq20wZwU8VFQnfnDZFrlpmlrdTuNkGgehCUJHMd
 Tl8gj1Fqh8opspDfVRSHKkqbynmfqsW3dGhtTl7yHsrsFrgJ/+5OdjNtIYSQXdzuWDY4
 Qoyw==
X-Gm-Message-State: AOAM533/eozS4nLXKAavdInb3Vy1DZu8XkIE3A+pQW4H5oaEjO2gwqIa
 eEzPIXFV+MR/oYe0gNVUWuGhaGAk
X-Google-Smtp-Source: ABdhPJxi9crDyNOlXl/+7uBWebXj2rltTHVnLx2F894AlFvwI/cNoCm8+fb6Ps/1YNhITdbvtnMY9Q==
X-Received: by 2002:a63:e549:: with SMTP id z9mr26130165pgj.213.1591120985545; 
 Tue, 02 Jun 2020 11:03:05 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id p8sm2740053pgs.29.2020.06.02.11.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 11:03:04 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 1/6] arm64/vdso: use the fault callback to map vvar pages
Date: Tue,  2 Jun 2020 11:02:54 -0700
Message-Id: <20200602180259.76361-2-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200602180259.76361-1-avagin@gmail.com>
References: <20200602180259.76361-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_110306_581257_B71E62AE 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 033a48f30dbb..031ee1a8d4a8 100644
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
@@ -385,6 +390,7 @@ static int vdso_mremap(const struct vm_special_mapping *sm,
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
