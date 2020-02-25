Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E21B16BAD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:39:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qJV3o/RSmQNaZvpz5bTWyeRFuZ2EwNZG/4kXU36YCpE=; b=GAUJUlxNnasSbQidovQ6qz+qVB
	hubO2qqqHRM/RAUI/CBX5Q0/V6dzn4h/lPulq8GL8rOO06vbvKjaE9429mQnATfd8/tUD1JJnZY9O
	39NcNB8mjGdZQyEaVtyjBQQZNeQADR3eEfRAv8pusPmOCwpyUyc8DqW3UN9MKHoOlrt67qvqM0+0+
	CIJRvinoDq7XDvhLtYXdedInQagM1qKZGzCMaY0TTahrtdB/B7yChLTjIFlwY4/Qo+/pJeeA4aHNW
	r2P6E61sMU0AoPJcd8b28Afb1w7OgX0k8ODrGTiY/I5TzwRAypeMjTP/zWYsiIc/ZcoJGQB3XbLhz
	YN8b/8Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Uo5-00018b-Dk; Tue, 25 Feb 2020 07:39:05 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Umo-00009x-54
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:37:47 +0000
Received: by mail-pf1-x443.google.com with SMTP id 84so6721498pfy.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 23:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sg/RdX3cnApG8KxqkYoz0JziOI+7hxQWlWjP9QA0+OY=;
 b=bG7g6CDSIPw+Dm3VI7iFviDISIYyxvfWj9Pl0agk37XSxmqnG5rCsKwBuWfymVraGU
 ssayjkKy90mnHv3wWpqR83zu96CHiZ+mWnq2iNOwaLTsqEW42Xp09oSLJ81Eh8i0mKLF
 fnEgZBf9486TV3tvM0zhksBqUE6skHGPmHY/7a5odVG/1w6Iw1IZMuPQgfblaq3iTLJ7
 x+VPSOq8x2HtpbZkWbFJ4ObJz/8hp5HwNRf6u4IU8feZhQOx194ntqH37grqvXpAE8PX
 Coj8g8QfWtcOF5ES/1p+ZzXeFkLbfR/9tBD+8/RbgFYWdzZPjjLK02GlcEuP0XcvqKHY
 z8lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sg/RdX3cnApG8KxqkYoz0JziOI+7hxQWlWjP9QA0+OY=;
 b=YsZFJ+rOkao9f2zI6HoqinfTOy1ZxXobn16mGd41GmDD4jMe+xhBYboDTMeDLTNp4t
 TIYzmqGEdakUs4KmibEFSr3SR22L+kuL7Pm7v3iH4ZDiqX3U3QUU1R5/UtsMtvHSDE04
 JnB8BKs5HsYYyokHRrFEbJxytN22p3yFOQ7xIvlkffVxPPH4swgJCxodU2QOJD/GxUop
 n72sK8yV+ufmEx90dfQ/0gVigyEyk7Ecn9UmipcPrJdVbkS7SnwA+2ryM7dUvj04QSB6
 YVNNOoIrtuDbB/6255te9DY3cJvZuyq+23y783fHjsemSgNl30H3cPkMALCFzlpP3Xrl
 DSKQ==
X-Gm-Message-State: APjAAAW5o6agS0GtK/i/u8rteq0XqHaIS1B3SAahZ0HFHkqJEVTTy6W1
 Jp8lmR6xysdCzFCwfNEnzZY=
X-Google-Smtp-Source: APXvYqxIsjWOLBzTKLNKC3BCo8OjuyQYteq3bx+WPxxZJOKSjwatxv3mV1yfko8OVrPQEAf5RqkS6A==
X-Received: by 2002:a63:fe4f:: with SMTP id x15mr58115551pgj.30.1582616264731; 
 Mon, 24 Feb 2020 23:37:44 -0800 (PST)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id m128sm15979390pfm.183.2020.02.24.23.37.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 23:37:44 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH v2 4/6] arm64/vdso: Handle faults on timens page
Date: Mon, 24 Feb 2020 23:37:29 -0800
Message-Id: <20200225073731.465270-5-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200225073731.465270-1-avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_233746_249568_24EE4E85 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page.

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
