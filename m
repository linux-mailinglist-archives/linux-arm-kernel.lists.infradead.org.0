Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA22D9AC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cqceD2Fhcl3aTR8fY5/C+UTy+lYVQFSDWlombshnmI=; b=QEV/VQ741U2Tx5
	cM+6EjIG+xuJyNcxV4+Cc+1+/SSfxapHvRw3EPZ1proNJYhPxntRziGNyqxi0crCubzq6WSSQYBZ6
	aWdDzSDspvRGz48hfaYKQJnFZ1oESLhwSuN8RHe4xhIWgki0qn9n+PdxM3HL8QsRjEUHO9he6720X
	nXDgK6AGJehfsVHlT7Cc0TfLmnnZzFaFeBUH5Mwrwae2yRp4376nVi4lQ5z7pcdyjEtVAT+YUhP2c
	CR6jctt1bVJxKUMhkyOgNtvimvKtPqjViRTtADXwr7PfxA4D8xoa5a0zJ5DzQ8wR73jSU5cXpzjs3
	Ql1s0GsZgqU/q1jnuhpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpY4-0000aj-NK; Wed, 16 Oct 2019 20:05:32 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTd-0004JI-Qn
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:01:01 +0000
Received: by mail-qk1-x741.google.com with SMTP id u184so24000711qkd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=kjFZz1G4ugH0NKdqzmA4xYVTuBGkmMH5xSN576uyAO4=;
 b=d3QjW2W3a1uBTmmIMFG0sc8+tYx0/OVet1O2zr6IQkBkiooOeGabdTXBEr1KCrSroJ
 Ds5NhGlGHM5L41CdhNAeR+LS71N+uAp5DJke6AnM9QQY418Ktw+OTSrzW40FHKGq88g8
 X3RPjgAFtqDBCrH4ffwL5zSk4UycGnhz+hLRMKoMRCM4imhPMmQEZXckosT+0B/nYi3g
 nQmFR9iUvmPw9xtIFsADL22jCfmY0JZwxSMHwQDUakR0qEVA7vFmMXcKqGnzfAYhUz8L
 IflUZi5pc0nFEq5KJIjiLLtCgCoqveG2K+nagkxx8M/Z48ZaFJgkC7XqytMQM/E+Dejd
 XCvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kjFZz1G4ugH0NKdqzmA4xYVTuBGkmMH5xSN576uyAO4=;
 b=uAr56+4Zx3XAZSp7QI+e6ycjYb4oWBfN/V3bqGGQyIvdb5zlcFnxWP1FNpjxZSUwgG
 5vBwIEwW2Xu2GRs2UxGuUSIFYOuQ7eTmNNBY6it17fFRBuYl0FZrv+KBDu2ODlwBnrBl
 BnkVnaouATbJoj3oQZj/4Z04rrmVWiroHRDI7Q0/v4fNpZkcW3+CVoY0z0jxXwXJywbh
 tvfLDyDALYXVczKAVWW7deW0QCG9Iyy7h239cWjzkLz52jixXBNEArdPgjVnH+nGwUet
 msLoquVWdQFtzkQC4NLHYp/tXm4zcgVGIZxjzhG+9+EvhPeIr5qJ10CPb82zra+mx2fd
 wReA==
X-Gm-Message-State: APjAAAX3gEr3H2Fk5l9hCjsWE7U5W7l/G91j3p23wIajQpNXbi4owknt
 2RFva0lOzBEPSLG+1/g851bhyg==
X-Google-Smtp-Source: APXvYqw7n+rHBNtSkcB67+6NLb5nupsbBYrCacnem74iT36XKjodM7eEhPYV0nl+ZJEvFFdveb12HQ==
X-Received: by 2002:a05:620a:12c7:: with SMTP id
 e7mr42096476qkl.162.1571256056534; 
 Wed, 16 Oct 2019 13:00:56 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:55 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 12/25] arm64: trans_pgd: make trans_pgd_map_page generic
Date: Wed, 16 Oct 2019 16:00:21 -0400
Message-Id: <20191016200034.1342308-13-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130057_997682_56E36493 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

kexec is going to use a different allocator, so make
trans_pgd_map_page to accept allocator as an argument, and also
kexec is going to use a different map protection, so also pass
it via argument.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Matthias Brugger <mbrugger@suse.com>
---
 arch/arm64/include/asm/trans_pgd.h | 18 ++++++++++++++++--
 arch/arm64/kernel/hibernate.c      | 12 +++++++++++-
 arch/arm64/mm/trans_pgd.c          | 27 +++++++++++++++++++++------
 3 files changed, 48 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
index c7b5402b7d87..bb38f73aa7aa 100644
--- a/arch/arm64/include/asm/trans_pgd.h
+++ b/arch/arm64/include/asm/trans_pgd.h
@@ -11,10 +11,24 @@
 #include <linux/bits.h>
 #include <asm/pgtable-types.h>
 
+/*
+ * trans_alloc_page
+ *	- Allocator that should return exactly one zeroed page, if this
+ *	 allocator fails, trans_pgd returns -ENOMEM error.
+ *
+ * trans_alloc_arg
+ *	- Passed to trans_alloc_page as an argument
+ */
+
+struct trans_pgd_info {
+	void * (*trans_alloc_page)(void *arg);
+	void *trans_alloc_arg;
+};
+
 int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
 			  unsigned long end);
 
-int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
-		       pgprot_t pgprot);
+int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
+		       void *page, unsigned long dst_addr, pgprot_t pgprot);
 
 #endif /* _ASM_TRANS_TABLE_H */
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 3d6f0fd73591..607bb1fbc349 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -179,6 +179,11 @@ int arch_hibernation_header_restore(void *addr)
 }
 EXPORT_SYMBOL(arch_hibernation_header_restore);
 
+static void *hibernate_page_alloc(void *arg)
+{
+	return (void *)get_safe_page((gfp_t)(unsigned long)arg);
+}
+
 /*
  * Copies length bytes, starting at src_start into an new page,
  * perform cache maintenance, then maps it at the specified address low
@@ -195,6 +200,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
+	struct trans_pgd_info trans_info = {
+		.trans_alloc_page	= hibernate_page_alloc,
+		.trans_alloc_arg	= (void *)GFP_ATOMIC,
+	};
+
 	void *page = (void *)get_safe_page(GFP_ATOMIC);
 	pgd_t *trans_pgd;
 	int rc;
@@ -209,7 +219,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	if (!trans_pgd)
 		return -ENOMEM;
 
-	rc = trans_pgd_map_page(trans_pgd, page, dst_addr,
+	rc = trans_pgd_map_page(&trans_info, trans_pgd, page, dst_addr,
 				PAGE_KERNEL_EXEC);
 	if (rc)
 		return rc;
diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
index 5ac712b92439..1142dde8c02f 100644
--- a/arch/arm64/mm/trans_pgd.c
+++ b/arch/arm64/mm/trans_pgd.c
@@ -25,6 +25,11 @@
 #include <linux/mm.h>
 #include <linux/mmzone.h>
 
+static void *trans_alloc(struct trans_pgd_info *info)
+{
+	return info->trans_alloc_page(info->trans_alloc_arg);
+}
+
 static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
 {
 	pte_t pte = READ_ONCE(*src_ptep);
@@ -180,8 +185,18 @@ int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
 	return rc;
 }
 
-int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
-		       pgprot_t pgprot)
+/*
+ * Add map entry to trans_pgd for a base-size page at PTE level.
+ * info:	contains allocator and its argument
+ * trans_pgd:	page table in which new map is added.
+ * page:	page to be mapped.
+ * dst_addr:	new VA address for the pages
+ * pgprot:	protection for the page.
+ *
+ * Returns 0 on success, and -ENOMEM on failure.
+ */
+int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
+		       void *page, unsigned long dst_addr, pgprot_t pgprot)
 {
 	pgd_t *pgdp;
 	pud_t *pudp;
@@ -190,7 +205,7 @@ int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
 
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
-		pudp = (void *)get_safe_page(GFP_ATOMIC);
+		pudp = trans_alloc(info);
 		if (!pudp)
 			return -ENOMEM;
 		pgd_populate(&init_mm, pgdp, pudp);
@@ -198,7 +213,7 @@ int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
 
 	pudp = pud_offset(pgdp, dst_addr);
 	if (pud_none(READ_ONCE(*pudp))) {
-		pmdp = (void *)get_safe_page(GFP_ATOMIC);
+		pmdp = trans_alloc(info);
 		if (!pmdp)
 			return -ENOMEM;
 		pud_populate(&init_mm, pudp, pmdp);
@@ -206,14 +221,14 @@ int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
 
 	pmdp = pmd_offset(pudp, dst_addr);
 	if (pmd_none(READ_ONCE(*pmdp))) {
-		ptep = (void *)get_safe_page(GFP_ATOMIC);
+		ptep = trans_alloc(info);
 		if (!ptep)
 			return -ENOMEM;
 		pmd_populate_kernel(&init_mm, pmdp, ptep);
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), pgprot));
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
