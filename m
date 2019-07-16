Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAD56AD41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 18:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZeqmXoZanzimYxLPc6BwczdjAjBbl4jb6FJTaJ7s4p8=; b=cAQz1ZRaj4LYLM
	wDUXPTkS1UucgGFWlNZxEL6BNJBchZCmg02J232QvPWjhHPC0dJ8v8KKFocqf+tg+8hLeWpai620X
	vQuskJFRphLG2niPY7ZbyRkkWdR8UJNvRbsspXZ0tWWoKj3nNm7crhkGa1+0k2uHITX8MHK+w5rY7
	pxmHI45+J9vG2+SQXI2hqeY05d+FJPZjxoW0/RyU8GeOi8OaEdGQvk3vMDUVj6P0FxY5vZz/WYCF5
	M1IrrGd8Uvz+Er/QtpKhKyB2uVrQ1QZ9Dui0ocec63UUTPL81t91Fk7toi3QX9sn7+z9EwR7ipSWI
	j2Bhmv+7Pk8muXMmVT0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQmR-00060I-4Q; Tue, 16 Jul 2019 16:58:19 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQkx-00053s-R2
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 16:56:51 +0000
Received: by mail-qk1-x743.google.com with SMTP id a27so15147257qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=5D8mlvVawCjEgddelLAduhKCIQh0CPiyGgQp446bGsE=;
 b=VxsqpYcitDOLAtpg1Jls5stspr2tgCl0PGz2J1Z817sVMFGcuo/roOKCaavlnYeATr
 jU6YTyCAGZdlqYJ/jAs5NtTWvKRhJMmjirZcQE+Iucd/gw8X+OddfHUsoLTZ8sMYS/3c
 ve/dJt/iFA5AYuQOfT8c21qt+EjJ268NVoprOSpHjzlTm8z+pnUOXbMTcz0Wg8M1xsbA
 VBgDOJX8ALLB3Bwq5D6MxZszG6wXjnwReOXDz93IVfYtFF6y2ddjcZH7FZb1wO7Km03h
 cbJW0XLKEZ9fLZEWNShJLv0RqMAIYlex+//VRDwPg40RaMG+UAF8sT158AGKpfuS8DXz
 p6jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5D8mlvVawCjEgddelLAduhKCIQh0CPiyGgQp446bGsE=;
 b=LW/8/i0ZxKoMhX6DjTzpSQUmxBqqCroU534kFZChh5AJf/L2WFn4oZus5Mwp85Pi83
 tT3l0vpmS6FS+GK7mhxe+xIagFJmEwV5V8U5ImeTd31Uu9CXkaoMKsnacg3HdCUs3AEy
 l0AZMeR8qxDuVH+N5P4AKXeKfwgMl/0SIA/+LYdgYlQg7zDelFei2/sYKKg6X4dC4KpH
 u4LEls75f+ShOUx4mzEgmzFrbkZaqmNCMKpfgjWDFfUSZQmKJcykJx5IZEd8iKqyGFqX
 um/ZpPaOtT1HgYlRpb2LEH1qHHBzkrxzzQCWEpJcNatT3xwf//zc48Gb7/eg9Hdw3Ziw
 uGbg==
X-Gm-Message-State: APjAAAXsXs3iQMeznH34n0ckrxt1tFqO/RC3En6qfAfRACzXPnJHOpOE
 LL5V9A5nlR+JLGAr1HmsfEg=
X-Google-Smtp-Source: APXvYqzvQ0JQLAGkRNhRdaqxRVuO7Hvjn0EZosyRHwPjvqeoogbj3QaW6JZ3XDhFK6dpEIze4WbX/w==
X-Received: by 2002:a05:620a:69c:: with SMTP id
 f28mr22093343qkh.274.1563296206729; 
 Tue, 16 Jul 2019 09:56:46 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f20sm8519538qkh.15.2019.07.16.09.56.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:56:46 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC v1 3/4] arm64, kexec: add kexec's own identity page table
Date: Tue, 16 Jul 2019 12:56:40 -0400
Message-Id: <20190716165641.6990-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716165641.6990-1-pasha.tatashin@soleen.com>
References: <20190716165641.6990-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_095647_875357_5DD325D9 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allocate and configure identity page table to be used for kexec reboot.
Note, for now we still have MMU disabled during kernel relocation phase,
so this table is still used the same as idmap_pg_dir was used.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/machine_kexec.c | 78 ++++++++++++++++++++++++++++++-
 1 file changed, 76 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index f4565eb01d09..60433c264178 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -12,6 +12,7 @@
 #include <linux/kexec.h>
 #include <linux/page-flags.h>
 #include <linux/smp.h>
+#include <linux/memblock.h>
 
 #include <asm/cacheflush.h>
 #include <asm/cpu_ops.h>
@@ -20,6 +21,7 @@
 #include <asm/mmu.h>
 #include <asm/mmu_context.h>
 #include <asm/page.h>
+#include <asm/ident_map.h>
 
 #include "cpu-reset.h"
 
@@ -55,6 +57,77 @@ static void _kexec_image_info(const char *func, int line,
 	}
 }
 
+/* Allocates pages for kexec page table */
+static void *kexec_pgtable_alloc(void *arg)
+{
+	struct kimage *kimage = (struct kimage *)arg;
+	struct page *page = kimage_alloc_control_pages(kimage, 0);
+
+	if (!page)
+		return NULL;
+
+	return page_address(page);
+}
+
+/*
+ * Create identity mapped page table for kexec purposes. The flags that are used
+ * in this page table are the same as what is set in __create_page_tables. The
+ * page table is needed for performance reasons. Without it, kernel relocation
+ * is rather slow, because when MMU is off, d-caching is disabled as well.
+ */
+static int
+kexec_create_pgtable(struct kimage *kimage)
+{
+	void *pgd_page = kexec_pgtable_alloc(kimage);
+	phys_addr_t kexec_pgtable;
+	int rv, i;
+	struct memblock_region *reg;
+	struct ident_map_info info = {
+		.alloc_pgt_page	= kexec_pgtable_alloc,
+		.alloc_arg	= kimage,
+		.page_flags	= PMD_SECT_VALID | PMD_SECT_AF | PMD_SECT_S |
+				  PMD_ATTRINDX(MT_NORMAL),
+		.offset		= 0,
+		.pud_pages	= false,
+	};
+
+	if (!pgd_page)
+		return -ENOMEM;
+
+	clear_page(pgd_page);
+	kexec_pgtable = __pa(pgd_page);
+
+	for_each_memblock(memory, reg) {
+		phys_addr_t mstart = reg->base;
+		phys_addr_t mend   = reg->base + reg->size;
+
+		rv = ident_map_pgd_populate(&info, kexec_pgtable, mstart, mend);
+		if (rv)
+			return rv;
+	}
+
+	/*
+	 * It is possible new kernel knows of some physical addresses that this
+	 * kernel does not know: for example a different device tree might
+	 * provide information of a memory region, or memory could have been
+	 * reduced via mem= kernel parameter.
+	 * This is why also unconditionally map new kernel segments, even though
+	 * most likely this is redundant.
+	 */
+	for (i = 0; i < kimage->nr_segments; i++) {
+		phys_addr_t mstart = kimage->segment[i].mem;
+		phys_addr_t mend   = mstart + kimage->segment[i].memsz;
+
+		rv = ident_map_pgd_populate(&info, kexec_pgtable, mstart, mend);
+		if (rv)
+			return rv;
+	}
+
+	kimage->arch.kexec_pgtable = pgd_page;
+
+	return 0;
+}
+
 void machine_kexec_cleanup(struct kimage *kimage)
 {
 	/* Empty routine needed to avoid build errors. */
@@ -70,6 +143,7 @@ void machine_kexec_cleanup(struct kimage *kimage)
 int machine_kexec_prepare(struct kimage *kimage)
 {
 	void *reloc_buf = page_address(kimage->control_code_page);
+	int rv;
 
 	if (kimage->type != KEXEC_TYPE_CRASH && cpus_are_stuck_in_kernel()) {
 		pr_err("Can't kexec: CPUs are stuck in the kernel.\n");
@@ -84,10 +158,10 @@ int machine_kexec_prepare(struct kimage *kimage)
 	       arm64_relocate_new_kernel_size);
 
 	kimage->arch.relocate_kern = reloc_buf;
-	kimage->arch.kexec_pgtable = lm_alias(idmap_pg_dir);
+	rv = kexec_create_pgtable(kimage);
 	kexec_image_info(kimage);
 
-	return 0;
+	return rv;
 }
 
 /**
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
