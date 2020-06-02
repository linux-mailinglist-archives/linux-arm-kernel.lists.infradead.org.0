Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69191EC196
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 20:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wwk740LSQnCqGe3RaQ0mOK99HN2VAXn+FP0GjXyxJ3M=; b=gCwE6zK4AaoZio+GZeQ08HkkRw
	xdwsFgXzSFzKvidvG4RU8bTHy/AthLCjqSroDLIwUHomKInp5L3Vi3ObLiNjAi0kLusB+MIGDdgEu
	yyaBOq4HTxDaHeU8bVqRMxeJPH7UVnsijE/qrVq/Er8TtHXTZbv8GbSsO23hf4j4yzLdIDcXwVDgJ
	Dhq1E2CjlklNAtA8WDXx1pO8YOFtqDnUTzJ9VFiITBaHF/5ga0xSPFIA+mKFWa5HDCP099FtJKULX
	qwOgxt4prw8YDgSH1GIbbxdsUMVtjDGs6gkmuODysUU8cpKcS9wLRc5nt4Uhg7XNWRgd8hfn54E3e
	/P6ydfBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBGy-0003i7-El; Tue, 02 Jun 2020 18:04:24 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBFm-0002hN-0i
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 18:03:11 +0000
Received: by mail-pj1-x1042.google.com with SMTP id d6so1893537pjs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 11:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pYFSYa09zr69QLygLryWctXuj1LoNkWSXD+By1jBPHc=;
 b=qUzo7Htwnb4o/U1sPEPo4n59Pz3Gtet9GVRwIWHj4yKj32lDKLpkIsyWwQoKDckgvG
 NmiwHf2CfErIQV1ueag5uXysuSiioBL1K6cEa3SgbGK78JP6epci1KgN3YtHfrmu8G2z
 N7OsYPi51MCqlo90TkS6jvxrR2rFemS0JNaouPfAvUhkUi/4vohLB5ObkRxa/tXAHztv
 klV/C53z0G+2BW8UCmKjP5MYHdv/aQRSLi9xQLsjw5/RewsZoERNtFX3E0k+TX4ue6M/
 uYNwi9f/Vi3XXbl2+hKrlyd/Bwgb8sysAZCgF6lEKw3LuXKwg9dtIQNloUZ2sMTiRy67
 w6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pYFSYa09zr69QLygLryWctXuj1LoNkWSXD+By1jBPHc=;
 b=inPX8x2Q8kR4MO+4FwjDI228j3IOuMvjug9AbxRkamr72d+EvjxvTqtZwy0B7A/SQF
 58KMo90VRw1neF9xSE2OgurKAFm3PibB3hU2wG5fRQGnHkTuI7h1gmcA96hEvZ/wFOe9
 7ZP7YaEo6ZKH9yIxULAOKtCLT2jH0d2sohGM85EuSqNo5KcwBKTA9CuWKPzBIl9Rp+LV
 o7eVXAZEtBUENpvhBUPwhA0SeENr18dvby91hBlsrgPsYlxaiHWQvoy4YUBT75PwofrN
 ypyNUrcfogMjzyAx1rwk2c799F7QS1qi6SXgHG0YOGekkxK6x6z9ZLhty7JVWkITa6hu
 t8+Q==
X-Gm-Message-State: AOAM531ae8UryX3c0YLqIgOjEMd3/q+OUbifskE4rXCi4HiHh5Vrx11N
 PZHrjTrYXi/BQl2w6++4zP85OcPR
X-Google-Smtp-Source: ABdhPJxjq8mzXPifWl0Kc+KsV7By219qzUuO5Tzse7+mioUC3UiBfTQEoYr22AavOCwIwF9ZYEIRTQ==
X-Received: by 2002:a17:90a:ce05:: with SMTP id f5mr449132pju.32.1591120988929; 
 Tue, 02 Jun 2020 11:03:08 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id p8sm2740053pgs.29.2020.06.02.11.03.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 11:03:08 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 4/6] arm64/vdso: Handle faults on timens page
Date: Tue,  2 Jun 2020 11:02:57 -0700
Message-Id: <20200602180259.76361-5-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200602180259.76361-1-avagin@gmail.com>
References: <20200602180259.76361-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_110310_062540_ABFE1E32 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 57 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 53 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 1fa6f9362e56..f3baecd8edfb 100644
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
