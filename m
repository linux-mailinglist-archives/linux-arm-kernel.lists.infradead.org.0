Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07F61AB742
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 07:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JoLKjtaonXcAASHN6hhIXjatg/iRNY08dBLQhiY0aUY=; b=lC27hp1Q8TUy6NDJQlvfQ4GhYY
	daVpwFWBqFKLVy5R3m3lj4YqhUB2aJV9nXWLkeaYQu3fbGeikkjuIv+K+45/f5tFk7GgSg8qAL3lN
	wdflrEpoe4HCxkuS7DrBmJN2b+JMKJwto3NWFCFsQCO0EKw4Ob2H9/0nvpAA4K7tAk5qoZYH2/Zlf
	Bmah1OTo0/He7pM/qEAk0jze92UlwUW+0BwF7+rZ9D6r/hRzE2TvaLuAOalJr2GX7Mffsmoqkpne2
	YPFFAZqjitR+Hg/JYIxNtZlqepotcuJ+mEEiwAY768q3kDgWj5w0v8RvBZFakTsO3p/f0T7oza+z6
	+GKYuK3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOx4E-0007oA-2V; Thu, 16 Apr 2020 05:28:02 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOx32-0006hD-34
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 05:26:49 +0000
Received: by mail-pl1-x641.google.com with SMTP id w3so951897plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 22:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HkFB2IFB6eu4Qsibzpvaj5eV40S/BQoyfyZyOgKqRdU=;
 b=Ki4VmJyQMAakb5h1e5GCup2A4dLJWYNrW9MVsygLyscRN0NtUNWyro1UJ79U6GamhL
 wCx0wQUMRrNE+eoV514UXPJfpSWfXwd/3IHLfUk7UWgk8sO0sytG8qn9wMNCphu5wfoA
 j8s/9IqOnvtdc3P7CFy4kIIh1PUcLynMIEp7OJR0DVd8pp4f+MPRtnxtR5va94odSYpX
 yG+5UUBFUvYTREJAAkL8dHdRh4P+ezpXrpSV6EMhdTIK779brbdv0TyVZT7Xs0Zh7uA+
 e0GzurT7JqT08V+9p9slejCqK9EsZHcZH7RkNygBLU+Mw0QM+4veSdGqdPob9bxI2R0a
 feNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HkFB2IFB6eu4Qsibzpvaj5eV40S/BQoyfyZyOgKqRdU=;
 b=QJ+ADlOEDpCuRm4398lLK4tbS/z44+xBR893gZzQPSQ+hDfOc06IGC8iXpmOnRc5A9
 RjIIDho+y23cx9ywKJ/p39WF8ylPpzDSC861UPzxTWEfQGpgmM7/eWgpnGFfO1KSnHLj
 el7AJtJHT0JHpfEivG+zx/96Cr4oTbfxQmIP4wiNOTJbtt+5KhPcRzOxYvCrUpKtqiao
 A2WsOPTXjLHOKAJIcV7r/QX9kGVpnCpe8CR0pvnwPhH3y/zNAfYPq9Zsni3DIQ6I0teY
 +jKsCYu/ABTVgQgNuIe6/S9uH6EJi1NzUBRUSM8dugb87UrR2g4QGKCfxnDXCMfMkZc6
 vCdA==
X-Gm-Message-State: AGi0PuYmrkqvfyPJRrHJnIc8jsECarUCV++X0CCSNE+XTmJXnKJJNZOo
 VbOBDJq4sjyYB1aV3BdzJwE=
X-Google-Smtp-Source: APiQypJl6jnFydHzld8Y6PdrjF3ChQCmvwCzlPXym6IsyBAFXmPGRV+0P3/LzKyTAxQ+iI6harv6Sw==
X-Received: by 2002:a17:90b:19c9:: with SMTP id
 nm9mr3171152pjb.86.1587014806945; 
 Wed, 15 Apr 2020 22:26:46 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id c21sm53699pjr.2.2020.04.15.22.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 22:26:46 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 4/6] arm64/vdso: Handle faults on timens page
Date: Wed, 15 Apr 2020 22:26:16 -0700
Message-Id: <20200416052618.804515-5-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200416052618.804515-1-avagin@gmail.com>
References: <20200416052618.804515-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_222648_166068_A0837907 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 57 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 53 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index b3e7ce24e59b..fb32c6f76078 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -18,6 +18,7 @@
 #include <linux/sched.h>
 #include <linux/signal.h>
 #include <linux/slab.h>
+#include <linux/time_namespace.h>
 #include <linux/timekeeper_internal.h>
 #include <linux/vmalloc.h>
 #include <vdso/datapage.h>
@@ -175,15 +176,63 @@ int vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
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
+#ifdef CONFIG_TIME_NS
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
+#endif /* CONFIG_TIME_NS */
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
