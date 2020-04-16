Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A3F1AB73E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 07:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I9yb+rZUPjSayKNHDd/ntAuTLZjbMwtCQJRlaBfbpl8=; b=I/BCZdYuB5N/abp3SwJ9W1WquF
	menLeHgIB3sjMplBqxsCOq1BylqfKLCmoKA93Opz/UP+Dw5udzdCWs6aHu/yB7dmC9/WFLURxlyKx
	Q3v4XFuv4sVZk1mUb6hCY6AFnaBu6LK8tx6FOa2wxqBsrFmvhi5Yqz1MJDYfgOeqC9o1hc9Xb4IOb
	02MZ0XRLodbYcJvsMdi3KM1Mh9uK5gHMYYAPOY/gdTLVF8hphM6zQCDeh+8/J2EoAOQhDa1YOfTg4
	uVgdXEpAB5farwu462VnOWxB4tIS9oIoJvP0Mwv/ImzWGBKP1rDPLBLwSy3BO3pJl/cz0YgwzBNIO
	U9oM40gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOx3T-0006ts-1a; Thu, 16 Apr 2020 05:27:15 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOx2y-0006fm-Lf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 05:26:45 +0000
Received: by mail-pl1-x644.google.com with SMTP id w3so951834plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 22:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oYx3rFG6KM20BdDmNDmRew1PF1Kw/jTeIMBMcMn6Uag=;
 b=HUErtq3UvZ5uwOow+WJX2AdXLUZNH3EYTmjk1UnWAicVd/8Oq4rS+5iZT/pPWIgopr
 9vtmrNOLGfSrNontxw2/IvOKbuFu7qJJfOp4VFegTfW17BiCSbbuFDoxOZhIezEuq7ft
 w1VYv0JrqmzhoTrE4ru74gTH76FFMWJCCXRPIenWlCbIVXKKjC9m82YAZ2Xd1g0aVlSw
 LcpbVAKIdnCq23MpjjQGF3uHQqJDX1ebFQC6m06JL7NDw1aXI34fUprRI4+mhYHq6H+D
 GzDf7ykQ9EKJ7NkvyTfird2NPNLRVH6h6KmXbhygnHQ669kjabD1gkP7f/5QmNMgnrP5
 zWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oYx3rFG6KM20BdDmNDmRew1PF1Kw/jTeIMBMcMn6Uag=;
 b=bIM6yjFj38dyP2N10w3M5yFSHHiyVJ2rtYNpSzSow7LOd0PWRjRP8rrax1QEkDDtVK
 gxbus9V6024DfY/SImIlXAhSiKNs/siW6TpQt5ZVVqOQnuLD5l/5ywJZydTgK+4mu6tK
 YcfZ4uzklW7ly6VzB2o9wZSmtoof2++vzrCa4DcLSqah6lcvLjWOB7JPg/bs5LNZh7Mt
 J25HDd90cT6P6ot5JLNZEwmPdE++KDrAUwiN6L/2HLNad4DMV/5K5hMY37Uy5ojH+qPH
 Plz8W8cnUu0rBNJrk//1PoLCWl75Hn6pw4todzrTP2cGW9g9sGvAYMUVDQ6M/q4lbJ1v
 MoKQ==
X-Gm-Message-State: AGi0PuYxl+fzlT4agAfVkH8TCs8yJkYrUlyNaGifJV8iUsgnhg5VB+Lp
 f7UXQ2kLLyEbtsr0sQsNm5Q=
X-Google-Smtp-Source: APiQypK/2FwQOgHFn/PlAUl6famODzCE4lTGQ6yxpTUvumbVbDZFXkExYLzU004YRAurasnvaR75mg==
X-Received: by 2002:a17:90a:cc2:: with SMTP id 2mr3160651pjt.33.1587014803490; 
 Wed, 15 Apr 2020 22:26:43 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id c21sm53699pjr.2.2020.04.15.22.26.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 22:26:43 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 1/6] arm64/vdso: use the fault callback to map vvar pages
Date: Wed, 15 Apr 2020 22:26:13 -0700
Message-Id: <20200416052618.804515-2-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200416052618.804515-1-avagin@gmail.com>
References: <20200416052618.804515-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_222644_704974_1C06F251 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
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
