Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04172152026
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 19:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M9iNMZlz6sf174Nb3PPuNTi2mSTP/uwZWvDVS1adKTU=; b=XXNGwsDaCepcw6L6KUNlMWu1+A
	83Ldhiny0SEbYqbjR79/9EiJkMhZYJZjFg50feMRh0M5JMm697AkNw7OKPMIz3I1gbb3IBJ8TBhwk
	tULiZXRY7B3vubV79UT3VpVuM82FGPlX7/yaWTkbvW0B8cZjSNIESln10aODMmCldLcPCxPRz/4rJ
	dY0hkFejwz0JHVi+yx7Hcl0C1SkcqxPdfca+10wjoMehsRsESWsG3Tows6eOAymPXwSNgDa4NMZGz
	xxre7/cLS8BnCokBPjoEN/EqHOjP5n2pmIfDvaqMSstmCXg/tTmX/SOQuKYYjttl1smJsxdUA1/XC
	JsyNYR1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2V6-0001E9-W8; Tue, 04 Feb 2020 18:00:41 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2Tx-0007Zs-KW
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:59:31 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so7557051pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 09:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b/tatmAbPqQvnbldAouTM/R8vE/FozyyVbJhnSwJXGA=;
 b=m/jQpv2JIjMmYb0com4+E9ygLdFliyeNs30azzuB5uZxmGdg2Z6m6ZNxWcUsWuV/58
 a/IYICceuBaOBCgC5vHB1M3Jd8ov0ZRQT07oApqu7FdsVSYpwcxaE7bmxkWzs1URLwwk
 OwaD4YOFmg4eX2KSoNfwnkbvyGlH4m9IfKZ/75I3RkdIbKGQOz8Vkr3RbNDIgyNugFeX
 4ubvJkQ2YxE9geC4va10CzZfuDAe5NXvu5zbP1vIrNorrYvodKAKH04QZ5nPkGJ0v0A2
 IZiSap0cjNjQ7ZwaeUo3lB1kD7GRcAn9Q7ywK3zOwnE5nNbWCy76F70T1AFe2UZ0qvIt
 cDrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b/tatmAbPqQvnbldAouTM/R8vE/FozyyVbJhnSwJXGA=;
 b=hsgNyy0oEE91hSr47p91JMExhOq0iHsPoPAPvMLPnEI8pcGgc1SFY75hfUUp8UGG66
 b76CFFXc84M4FU2CCKU1YX8pdygJoyRj4QUH4XSKxWVMubbB1sn6d79sD1Y6WrjlNqLd
 hmFBjW7reN5tSBB/UwXsgfZZ/7L2jO7hTAAdJIZt2NkghG9DkYE0BOZsTjmVwNhYUAWI
 CnFfUsellOITGwtaJMz60CtyCe/4BlN05TvXMlLHEmMu1CIF2kfXP/pYDkOWShYPHsyL
 uLj1yIvq7taJdNXR63FdHZjrvJxpU+GiIagVn0Oksz2AERE/fSOugjoppyqwqXIx6M6G
 lvDg==
X-Gm-Message-State: APjAAAW006Nfyng1DoBuLHoqPglWENytBUmCFGfEPgiEJ8qh7M8tCU1R
 gEeSq3Sc3xqGGf1ZM5hJjxc=
X-Google-Smtp-Source: APXvYqz/wsrLImmXNuI6MmUGKvGiwMhcKuUinmHKrZOCjZ8lY4eaVm8L+1GK00GJH3It8luUkRKQ+Q==
X-Received: by 2002:a17:90b:4015:: with SMTP id
 ie21mr334038pjb.1.1580839168199; 
 Tue, 04 Feb 2020 09:59:28 -0800 (PST)
Received: from localhost.localdomain ([2620:0:1008:fd00:25a6:3140:768c:a64d])
 by smtp.gmail.com with ESMTPSA id
 d73sm25414465pfd.109.2020.02.04.09.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 09:59:27 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH 4/5] arm64/vdso: Handle faults on timens page
Date: Tue,  4 Feb 2020 09:59:12 -0800
Message-Id: <20200204175913.74901-5-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200204175913.74901-1-avagin@gmail.com>
References: <20200204175913.74901-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_095929_706138_C96382B0 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page.

Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 55 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 51 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index bc93e26ae485..2e553468b183 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -23,6 +23,7 @@
 #include <vdso/datapage.h>
 #include <vdso/helpers.h>
 #include <vdso/vsyscall.h>
+#include <linux/time_namespace.h>
 
 #include <asm/cacheflush.h>
 #include <asm/signal32.h>
@@ -171,15 +172,61 @@ int vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
 	up_write(&mm->mmap_sem);
 	return 0;
 }
+
+static struct page *find_timens_vvar_page(struct vm_area_struct *vma)
+{
+	if (likely(vma->vm_mm == current->mm))
+		return current->nsproxy->time_ns->vvar_page;
+
+	/*
+	 * VM_PFNMAP | VM_IO protect .fault() handler from being called
+	 * through interfaces like /proc/$pid/mem or
+	 * process_vm_{readv,writev}() as long as there's no .access()
+	 * in special_mapping_vmops().
+	 * For more details check_vma_flags() and __access_remote_vm()
+	 */
+
+	WARN(1, "vvar_page accessed remotely");
+
+	return NULL;
+}
+#else
+static inline struct page *find_timens_vvar_page(struct vm_area_struct *vma)
+{
+	return NULL;
+}
 #endif
 
 static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
 		      struct vm_area_struct *vma, struct vm_fault *vmf)
 {
-	if (vmf->pgoff == 0)
-		return vmf_insert_pfn(vma, vmf->address,
-				sym_to_pfn(vdso_data));
-	return VM_FAULT_SIGBUS;
+	struct page *timens_page = find_timens_vvar_page(vma);
+	unsigned long pfn;
+
+	switch (vmf->pgoff) {
+	case VVAR_DATA_PAGE_OFFSET:
+		if (timens_page)
+			pfn = page_to_pfn(timens_page);
+		else
+			pfn = sym_to_pfn(vdso_data);
+		break;
+	case VVAR_TIMENS_PAGE_OFFSET:
+		/*
+		 * If a task belongs to a time namespace then a namespace
+		 * specific VVAR is mapped with the VVAR_DATA_PAGE_OFFSET and
+		 * the real VVAR page is mapped with the VVAR_TIMENS_PAGE_OFFSET
+		 * offset.
+		 * See also the comment near timens_setup_vdso_data().
+		 */
+		if (!timens_page)
+			return VM_FAULT_SIGBUS;
+		pfn = sym_to_pfn(vdso_data);
+		break;
+	default:
+		return VM_FAULT_SIGBUS;
+	}
+
+	return vmf_insert_pfn(vma, vmf->address, pfn);
 }
 
 static int __setup_additional_pages(enum arch_vdso_type arch_index,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
