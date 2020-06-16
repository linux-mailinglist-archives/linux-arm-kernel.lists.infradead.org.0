Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5E31FAA95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1lsK/crvWq6GYfnuiG3p/oFVCb0GW1HQEwwm9HJV2eQ=; b=DDTdFIjh0g6T2ih4IuHATUTKnE
	MkIjXWgCum92nbxM9EyiPgbijaxEy9mAuAr1UOmwM24/UoKx4Z48Fc1OM5qtJ1kVVmlMWHH7ED2dK
	za7fwnSpIRhT9AzMn5dP2Hjkacb0r/otfBOZzY+5MipxF+l+Apq2FzAQ6O+V2FLqarrz860sD2VgS
	emzGkvvY+43GqgCUD8VE4nMWV8a5lq+MJWtLMQYc6A3ja65o1aeEj53zH3T6qO5/wj1cqQNjdf97I
	FRsQ3Hjwrzj5XKDn0oX+Pkk8p3gqAoCeg0Mx67gDxlOAEE7ZaE9JNRgGjpfdFrMEv642M4G3ihS0P
	CBI7WBPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6T2-0000yc-Jr; Tue, 16 Jun 2020 07:57:12 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6Rs-0008WV-U3
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:56:02 +0000
Received: by mail-pj1-x1042.google.com with SMTP id h22so1172588pjf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8oQ1io/qQi+y3itntJsBYA2dRhXjx47tAO/g5lp+Xfc=;
 b=dUudr8tehj5H24uL5Ho0iwb+sZ5G6JJdKuZ/zEFCnEYnP0ATralz+E+Z8at+Z8YTJh
 ROT3Vnf0VnaKvwVQY2AdbYf9YmGavQkooUekLQkRuZykW0uHVxr4fC+R8O9NAHTympvy
 C1zyK5SJO9VhTxh5y3BLeq0yb3AnXqjj0dJmSvT+gpdYtVoXxG2fA6ZQRjyZ57VMhIWK
 6kLdGdvV2+vyWs5VUAJ3tYdVeKju9EG1K4rQnQF+O3/8Vp+kSc5lm9z7SEnarZZohFIt
 DWl0nIOa7kJ/aODibBgLCCK2xJ1JWkFjqA3hQ1nmIWRwU2B0k1dwPECsOyq4/KcfSjJM
 +BTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8oQ1io/qQi+y3itntJsBYA2dRhXjx47tAO/g5lp+Xfc=;
 b=cuIZkHxAZaVRXPpOO2vgbdG+PFRe5fYqE+igB7xw6X06phjqQ1DfA6VaeOic28QJiU
 xlTVKugT6FM0Hee/TkNBdnxcLTkMssoAe+AB4bxvcC8qG21dG5xUSsI4Ehkdd8yogvAX
 7h1TCCs8jx4OctASgUR/vV8vFTLR79Fis8C6ryC3Nj5NO0bBd7hDIET0cN9qwYUnuvli
 bxeoBzArAtn10pfG9HKy5vHcKjCNwmW57v6JrjxJ+MfwsoYImcuhFXQ5Vw+g6w/bb7tq
 iKbxUHePtixf3rQ6Q6EzxAdpuolr0lEBI0iWkIbd7a+kiYNyr6TN4nzK96YXBLFgUVsO
 daDg==
X-Gm-Message-State: AOAM532jYmQpI0uXN41umzdpuPDI/1crlWeO5BmYMdducS/iXDhc9Alq
 rAmzkAPy2bsJ7fn4EqfMdS25eU1F
X-Google-Smtp-Source: ABdhPJyBbHCAFPTNgi+mnpbvSvrE+TrECh5PjtavYN/bmJ9l5eb5ApOgY5NzKWJ5Wy7Yqg/KjNDG+A==
X-Received: by 2002:a17:90b:23c6:: with SMTP id
 md6mr1884893pjb.122.1592294159866; 
 Tue, 16 Jun 2020 00:55:59 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id g6sm16168984pfb.164.2020.06.16.00.55.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:55:59 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 4/6] arm64/vdso: Handle faults on timens page
Date: Tue, 16 Jun 2020 00:55:43 -0700
Message-Id: <20200616075545.312684-5-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200616075545.312684-1-avagin@gmail.com>
References: <20200616075545.312684-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_005600_973630_2F4B0A41 
X-CRM114-Status: GOOD (  14.97  )
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

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Dmitry Safonov <dima@arista.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 57 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 53 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 14d5b7642b62..21bdd0d74f40 100644
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
@@ -166,15 +167,63 @@ int vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
 	mmap_write_unlock(mm);
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
 
 static int __setup_additional_pages(enum vdso_abi abi,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
