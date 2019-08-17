Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB7490C48
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 04:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLplNIeYHPHbkc7wP0HD3Us+l28VX4MbJxSAIv1+hmc=; b=mMgBIWjm4g2rLR
	2SFsCexwJPrYSXOR0hTx5QbQakAl+Q07MQQ+fUnRMN8IxLJb+DXYhnK4oQjkn2+5YfyWBheiLohBJ
	fdgkSDov4JqiW3UTH4hLqrp7+PI7QPBPg/GLEvKwEGQVg7bkR73RIT4B8dCHbJmCtue8UjFFYx7mO
	2bsAEpeYczqWvlhOIwhACxiwAAseZsxXPDPWhag1aZqa++zdxMoeuWOFVvr/EsTrww49uM7HZcsfx
	UCFJPpo5gnpNqiquB8UL3nFAyKNI0qXMrJo6CTKKyqd5nLsM/hS+sWg+YWiPyjl8ZhPHRgcwenSBq
	sZHEe4NTtQzD8LKFhBog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyol3-0003SE-Hw; Sat, 17 Aug 2019 02:47:57 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyojl-0002Pr-GQ
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 02:46:42 +0000
Received: by mail-qt1-x841.google.com with SMTP id z4so8232432qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 19:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fhpOZXqdUBODzNYqQty59G5Ge7iC8PlIDy+5W4I7/qk=;
 b=mBM/N/z8yGTKkYzwBN4o/dCrlkPlU17gfdIIzSulgS6UObI37vB1wBM5E6QzN8Edol
 +ZIF+vG/LQ4sxc0fhJFMx1EUVqlrj1DZKhZOG5CG+2qnASJdJfF++BFPASeRZHsrOQ7l
 5f5Lc2n5wxaoFUY9/BftGTkGUIh93/1fDGukg46wRC7GIydl3rlFzVY7RYr8PU6ldDDJ
 T2/7MEX8je/x6UAz61qYNb9xAA4NihykJGICQtRl9NHdCGBGDJiuoKt5p6G9UGaGsalu
 ARbq1ne4gYamC8J8nKiChRzS3vCLuqR2484D9RiHFr+NU6SCL7isdVmTwg3yDP1oz/ig
 Fbzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fhpOZXqdUBODzNYqQty59G5Ge7iC8PlIDy+5W4I7/qk=;
 b=a8eZ/rLLGHp3R/ymG7r29Pzfw5ojbmI0sL91ocR71ZPk61tqIP6oF1S06wRjN+gm9c
 4ZWDsWsmppkc7W0by9pgqysadRNaIJGMjp+ksbUbWI43NA4KP1YSwuiUfZQnnm98SLDg
 IU9Ll8Q7r0pZyqYMKX5qLLDPq3yP+dySNbpcbMehEo3LTZq4rvNnssv1+zqDWUajFiFS
 eFkqZwkF+Vx3dkGcS9b3QTJ/+afi4L8BRp9MfyZV17Evd3S7Jou8aGPYCUF1rKjfHM5D
 S+6k4oYD9smy8JKnVmMrC3VoyREtJaTkX96rvLHeGfWeay7Y7J/I7gVBu4CH5MwOSCtI
 ZX9g==
X-Gm-Message-State: APjAAAU1nqkQEGVv5xixgntcKKAjT9P1bPuRFdj7meCw1A2wGz9zBbwC
 nNTau2sgySwQVp7cWKkhRC96fg==
X-Google-Smtp-Source: APXvYqwmnAgW0ugL2Xh/QQG6ta19bkx2PHnTpQKH7KpRdc000K+gJIFau3+/d7lsbnc3Od8y2BFYyw==
X-Received: by 2002:a0c:d251:: with SMTP id o17mr3892714qvh.109.1566009995607; 
 Fri, 16 Aug 2019 19:46:35 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:35 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 03/14] arm64, hibernate: add trans_table public functions
Date: Fri, 16 Aug 2019 22:46:18 -0400
Message-Id: <20190817024629.26611-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194637_574540_40B9E2AD 
X-CRM114-Status: GOOD (  15.61  )
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

trans_table_create_copy() and trans_table_map_page() are going to be
the basis for public interface of new subsystem that handles page
tables for cases which are between kernels: kexec, and hibernate.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 96 ++++++++++++++++++++++-------------
 1 file changed, 61 insertions(+), 35 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 96b6f8da7e49..449d69b5651c 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -182,39 +182,15 @@ int arch_hibernation_header_restore(void *addr)
 }
 EXPORT_SYMBOL(arch_hibernation_header_restore);
 
-/*
- * Copies length bytes, starting at src_start into an new page,
- * perform cache maintentance, then maps it at the specified address low
- * address as executable.
- *
- * This is used by hibernate to copy the code it needs to execute when
- * overwriting the kernel text. This function generates a new set of page
- * tables, which it loads into ttbr0.
- *
- * Length is provided as we probably only want 4K of data, even on a 64K
- * page system.
- */
-static int create_safe_exec_page(void *src_start, size_t length,
-				 unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr)
+int trans_table_map_page(pgd_t *trans_table, void *page,
+			 unsigned long dst_addr,
+			 pgprot_t pgprot)
 {
-	void *page = (void *)get_safe_page(GFP_ATOMIC);
-	pgd_t *trans_table;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
 
-	if (!page)
-		return -ENOMEM;
-
-	memcpy((void *)page, src_start, length);
-	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
-
-	trans_table = (void *)get_safe_page(GFP_ATOMIC);
-	if (!trans_table)
-		return -ENOMEM;
-
 	pgdp = pgd_offset_raw(trans_table, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = (void *)get_safe_page(GFP_ATOMIC);
@@ -242,6 +218,44 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	ptep = pte_offset_kernel(pmdp, dst_addr);
 	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
+	return 0;
+}
+
+/*
+ * Copies length bytes, starting at src_start into an new page,
+ * perform cache maintentance, then maps it at the specified address low
+ * address as executable.
+ *
+ * This is used by hibernate to copy the code it needs to execute when
+ * overwriting the kernel text. This function generates a new set of page
+ * tables, which it loads into ttbr0.
+ *
+ * Length is provided as we probably only want 4K of data, even on a 64K
+ * page system.
+ */
+static int create_safe_exec_page(void *src_start, size_t length,
+				 unsigned long dst_addr,
+				 phys_addr_t *phys_dst_addr)
+{
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
+	pgd_t *trans_table;
+	int rc;
+
+	if (!page)
+		return -ENOMEM;
+
+	memcpy(page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
+
+	trans_table = (void *)get_safe_page(GFP_ATOMIC);
+	if (!trans_table)
+		return -ENOMEM;
+
+	rc = trans_table_map_page(trans_table, page, dst_addr,
+				  PAGE_KERNEL_EXEC);
+	if (rc)
+		return rc;
+
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
 	 * ensure that TLBs are free of any entries that may overlap with the
@@ -259,7 +273,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	write_sysreg(phys_to_ttbr(virt_to_phys(trans_table)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)page);
+	*phys_dst_addr = virt_to_phys(page);
 
 	return 0;
 }
@@ -462,6 +476,24 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
 	return 0;
 }
 
+int trans_table_create_copy(pgd_t **dst_pgdp, unsigned long start,
+			    unsigned long end)
+{
+	int rc;
+	pgd_t *trans_table = (pgd_t *)get_safe_page(GFP_ATOMIC);
+
+	if (!trans_table) {
+		pr_err("Failed to allocate memory for temporary page tables.\n");
+		return -ENOMEM;
+	}
+
+	rc = copy_page_tables(trans_table, start, end);
+	if (!rc)
+		*dst_pgdp = trans_table;
+
+	return rc;
+}
+
 /*
  * Setup then Resume from the hibernate image using swsusp_arch_suspend_exit().
  *
@@ -483,13 +515,7 @@ int swsusp_arch_resume(void)
 	 * Create a second copy of just the linear map, and use this when
 	 * restoring.
 	 */
-	tmp_pg_dir = (pgd_t *)get_safe_page(GFP_ATOMIC);
-	if (!tmp_pg_dir) {
-		pr_err("Failed to allocate memory for temporary page tables.\n");
-		rc = -ENOMEM;
-		goto out;
-	}
-	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, 0);
+	rc = trans_table_create_copy(&tmp_pg_dir, PAGE_OFFSET, 0);
 	if (rc)
 		goto out;
 
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
