Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081BE7C711
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X37nT5LzpRJrCEJC23BvNcQwFGHMmDVm6sRKL1YAbrY=; b=dlgvOXJ56fwk0U
	jutJYZib5xtJ2MLhcqM+4TGh+LWa9mrX3nQ64+MpzNSnDlxgzy4PQ6Akszf4tpP8+9X3jrmU0caoV
	E9pZ22Y8K43972+XmLrhC/PHPhxei31Cs8DPpMA9HfyadMMgkH8hOC3c2cn1yHwwO0uNdPZxoOOg6
	acY8KxrrjJJ8qdFP/fGu7FUhzI4L1bC/GJs9Wvl0liBu2PJCAAhMh8H1L9WqEl8Y/0bgl5YnwWVWr
	Fc2VolbAJORpWv2Zen3NE0VCXvZkjvw5U2exiKAEVv7LJSBW3Ddjf6wL/enSIVt/d9JachLxB67jg
	ZxN37v/kkLzmrPJ5v4WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqir-0002R3-6A; Wed, 31 Jul 2019 15:41:01 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqh3-0007qK-JD
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:39:12 +0000
Received: by mail-qt1-x841.google.com with SMTP id l9so66969265qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 08:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=2TaYhOiI7KpUUvoumCBN2Lbnal9E4X64rBpNT0SqQZE=;
 b=i1Elz6C2MClCEZoSwzlpK3Xd+SoeWvaa3h/7LPEK598s+cCkT+uqd6SJfeSDDiZyx8
 af7CegDqeGjvoifmnrZrU6ndAa/plTQppagyRJjHdCnYiBUz7SPWoH8PUP5PPK8Cn6r1
 bqEx/2VRpQ582wxfdn6ell47OeVd0NWB6mG9rr5x4+9Ksf7BsBRoTuTX0MeapQuLsn1Q
 RG4VWOLe9L7yEkyRB/kcaDXCDD5H3PAvG+Zxecbt7v2/9zbrB0oa8DKZLX8IQWgojtP1
 qiOUhu2zlEBGJoXCPVULBot5rVGAGIOAJmyLvbpyFREH5C2KeMKkZhdIFV8ylzK3tFCD
 B6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2TaYhOiI7KpUUvoumCBN2Lbnal9E4X64rBpNT0SqQZE=;
 b=iuBw+im4sxahfYnxXogX5uqVhnbfD55t9zCIi+GHTUWL3WJ20reMvW+dysJffhXUH6
 VVBP/UaJirsOmlpDAMczvRSOKDKTK8heECqZsWch2JUqvEaxwR7HBWv+99hWq5onpYaV
 Zjg0NHBhzAgZqA6mZQnXtNVI25HkyEY8I2KMxNvZlwX3WNVgHjLWGzwxm6edmTW4e0+0
 MkEEvlQGpZ2ks2JW+vXebE4J7dD34mqX1AXuN4yfA69JUdETVtKDDrgQ8M+7zMzW4E4j
 1Q7lrCXrU5YlMOPOytCo6qfRybiKjkcDEGjsuan8ALa+zI6OpmUFyyFEbqoKDKUvsdNk
 HBPQ==
X-Gm-Message-State: APjAAAX1gQIuPYaOzz/TpUbRElj7jpqqVPg7nv1qhfW1C4CXYxz0dv40
 b2zPAoRLJT5Wf+k913j3nqX/QSrJ
X-Google-Smtp-Source: APXvYqyxMmvwl0RXSQBVJwR1Npj7vUzF0+xnqd3FDu11Bt5mJAI7HT5mhKuJmjwDNUagfZCK7qrX4w==
X-Received: by 2002:aed:3325:: with SMTP id u34mr84683890qtd.324.1564587548713; 
 Wed, 31 Jul 2019 08:39:08 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f25sm35116803qta.81.2019.07.31.08.39.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:39:08 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com
Subject: [RFC v2 7/8] arm64, kexec: configure transitional page table for kexec
Date: Wed, 31 Jul 2019 11:38:56 -0400
Message-Id: <20190731153857.4045-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731153857.4045-1-pasha.tatashin@soleen.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083909_770263_8AAB6A4E 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Configure a page table located in kexec-safe memory that has
the following mappings:

1. mapping for text of relocation function with executable permission.
2. mapping for argument for relocation function.
3. mappings for all source ranges
4. mappings for all destination ranges.
5. mappings for array that contains information about source/destinations.

We could make this page table to contain liner addresses, but instead do
identity maps (va == pa) for every mapping. This is because the relocation
code can be executed at EV2, where ttbr1 might not be available. There is
no way to execute relocation code at EV1, because the old world is
overwritten and thus no place to trap to to escalator to EV2.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    |  3 +
 arch/arm64/kernel/asm-offsets.c   |  1 +
 arch/arm64/kernel/machine_kexec.c | 96 ++++++++++++++++++++++++++++++-
 3 files changed, 99 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index d5b79d4c7fae..1f226cc76e24 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -97,6 +97,8 @@ static inline void crash_post_resume(void) {}
  *		kernel, or purgatory entry address).
  * kern_arg0	first argument to kernel is its dtb address. The other
  *		arguments are currently unused, and must be set to 0
+ * trans_table:	idmap for source and destination pages, as well as for
+ *		relocation text.
  */
 struct kern_reloc_arg {
 	unsigned long	head;
@@ -105,6 +107,7 @@ struct kern_reloc_arg {
 	unsigned long	kern_arg1;
 	unsigned long	kern_arg2;
 	unsigned long	kern_arg3;
+	unsigned long	trans_table;
 };
 
 #define ARCH_HAS_KIMAGE_ARCH
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 900394907fd8..002db58b28f3 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -135,6 +135,7 @@ int main(void)
   DEFINE(KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, kern_arg1));
   DEFINE(KRELOC_KERN_ARG2,	offsetof(struct kern_reloc_arg, kern_arg2));
   DEFINE(KRELOC_KERN_ARG3,	offsetof(struct kern_reloc_arg, kern_arg3));
+  DEFINE(KRELOC_TRANS_TABLE,	offsetof(struct kern_reloc_arg, trans_table));
 #endif
   return 0;
 }
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index d7291a663379..402c8fb48f7e 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -20,6 +20,7 @@
 #include <asm/mmu.h>
 #include <asm/mmu_context.h>
 #include <asm/page.h>
+#include <asm/trans_table.h>
 
 #include "cpu-reset.h"
 
@@ -72,11 +73,96 @@ static void *kexec_page_alloc(void *arg)
 	return page_address(page);
 }
 
+/*
+ * idmap every segment that needs to be relocated. We map pages for
+ * destination, source, and also array that holds source, and destination
+ * addresses.
+ * Ideally, we could linearly map src and dst addresses, so, in relocation
+ * routine we would need to only do memcpy(dst, src, len), but this is not
+ * possible, because on armv8.0 EL2 does not have ttbr1, and thus we might
+ * not have enough linear VA range. So, simply idmap it here, that works
+ * for both EL1, and EL2. Note: we cannot really do relocation in EL1 and
+ * later upgrade to EL2 because old world is erased, so there is no where
+ * to trap.
+ */
+static int map_segments(struct kimage *kimage, pgd_t *pgdp,
+			struct trans_table_info *info)
+{
+	unsigned long *ptr = 0;
+	unsigned long dest = 0;
+	unsigned long entry, addr;
+	int rc;
+
+	for (entry = kimage->head; !(entry & IND_DONE); entry = *ptr++) {
+		addr = entry & PAGE_MASK;
+
+		switch (entry & IND_FLAGS) {
+		case IND_DESTINATION:
+			dest = addr;
+			break;
+		case IND_INDIRECTION:
+			ptr = __va(addr);
+			rc = trans_table_map_page(info, pgdp, ptr,
+						  addr, PAGE_KERNEL);
+			if (rc)
+				return rc;
+			break;
+		case IND_SOURCE:
+			rc = trans_table_map_page(info, pgdp, __va(addr),
+						  addr, PAGE_KERNEL);
+			if (rc)
+				return rc;
+			rc = trans_table_map_page(info, pgdp, __va(dest),
+						  dest, PAGE_KERNEL);
+			if (rc)
+				return rc;
+			dest += PAGE_SIZE;
+		}
+	}
+	return 0;
+}
+
+static int mmu_relocate_setup(struct kimage *kimage, unsigned long kern_reloc,
+			      struct kern_reloc_arg *kern_reloc_arg)
+{
+	struct trans_table_info info = {
+		.trans_alloc_page	= kexec_page_alloc,
+		.trans_alloc_arg	= kimage,
+		.trans_flags		= 0,
+	};
+	pgd_t *trans_table;
+	int rc;
+
+	rc = trans_table_create_empty(&info, &trans_table);
+	if (rc)
+		return rc;
+
+	rc = map_segments(kimage, trans_table, &info);
+	if (rc)
+		return rc;
+
+	/* Map relocation function va == pa */
+	rc = trans_table_map_page(&info, trans_table,  __va(kern_reloc),
+				  kern_reloc, PAGE_KERNEL_EXEC);
+	if (rc)
+		return rc;
+
+	/* Map relocation function argument va == pa */
+	rc = trans_table_map_page(&info, trans_table, kern_reloc_arg,
+				  __pa(kern_reloc_arg), PAGE_KERNEL);
+	if (rc)
+		return rc;
+
+	kern_reloc_arg->trans_table = __pa(trans_table);
+
+	return 0;
+}
 
 int machine_kexec_post_load(struct kimage *kimage)
 {
 	unsigned long kern_reloc;
 	struct kern_reloc_arg *kern_reloc_arg;
+	int rc = 0;
 
 	kern_reloc = page_to_phys(kimage->control_code_page);
 	memcpy(__va(kern_reloc), arm64_relocate_new_kernel,
@@ -94,8 +180,16 @@ int machine_kexec_post_load(struct kimage *kimage)
 	kern_reloc_arg->entry_addr = kimage->start;
 	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
 
+	/*
+	 * If relocation is not needed, we do not need to enable MMU in
+	 * relocation routine, therefore do not create page tables for
+	 * scenarios such as crash kernel
+	 */
+	if (!(kimage->head & IND_DONE))
+		rc = mmu_relocate_setup(kimage, kern_reloc, kern_reloc_arg);
+
 	kexec_image_info(kimage);
-	return 0;
+	return rc;
 }
 
 /**
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
