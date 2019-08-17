Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C97A90C41
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 04:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9FzPZ4rLT6JJiHTihbTrKv/1i9G2G31JxjL5wqyvUE=; b=gzaTY7q8zXB4Bu
	3FpBsfJpjFTNoihoumnqZNGPpW1LA/qEQokQZ32LO2kVQ28suPtTygS+7KhpjdJiaHk9Yn5eMs3m9
	e+RlIp1VJOYNzi526mAs5DhEwNBmexst7hkhPIZjjBYDzhVZMIxtB/sxtk2KtYj4+POamqxagBvSl
	WtmzjHXFH4hgpsLahwqR93HVxNxw28sEhJaRKAHs4QK33+oxBtHu0EXmdTb2ZmAeGh9srCqhgJ+mH
	56EX/X65AvYGtgGLymUJWM2Uo290gqgqDTyXMmeO4MRQh55DeKf7R4zZcn8JD/beOF1xU5e0KtgWe
	q/oGrM6ZJAz5hTIVzl7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyokM-0002pS-L1; Sat, 17 Aug 2019 02:47:14 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyojl-0002Pp-GP
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 02:46:39 +0000
Received: by mail-qt1-x841.google.com with SMTP id 44so8193857qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 19:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=K4mtuNsym73dHWEDL4hJM0gd2cT9s68JdquM/qnM6EE=;
 b=KemMiArfhB/bkmgPhLe269DxdJ2sfUaz9BBRBWeEwBei3UcHKilv5YTdxNIM4RiWZH
 Lom5gHj4hJWo1eaeNJD82dMK3k2fH0A5/ReY1tb8n89jgfH9sJymNlsHbUReswF741Ee
 D6XAyOB5PE3OJRfWPTXL7s49Q2cskfn/e6NkuL9zjzno9KVLjDTcc6sP7R0OOIkFKtit
 5jdvxdN8IjqB75e7PwasKxUnAxP2j8IdmYiNE7eLGhlFq1ZcUQLsE2Y/r6NPFy3Ajc1O
 HvoVAdk5fv0xOTZIGQZmY96Kd3bjixZ21+14XkaZMM1xQJg/N2IKZsH4DVlHDwJs6nP2
 PhUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K4mtuNsym73dHWEDL4hJM0gd2cT9s68JdquM/qnM6EE=;
 b=caActo7y+IueOO6fFmkOrgxQSRDRIDDvs/OhTHBUUiNU9ezyG3NOfW7MSr2wL3FH2K
 JK07MibjN+Qe3UlmOP0kzs9D1dWZALs4sjHH/o4F+8vRRLZYCJe6m50NVMowsJZoX0Gh
 P9wOVTPGELJ1pJasUtiepknUXcQMYDO4c2DT3e+ma94vBZI1FwqTAYut8uhBB8H6oqDp
 budBoGHmne0DXQzTpVHPJquHJRwn7xB76Lt3vhKW5m+PqjaeK9YMpLyVtLQw4OlR/pSt
 t7sR15FpMD0O52/3SJP3xC5gxl9DKMv5TAObtL5HFBdxW3VL4egyxg6IEp2Ve3VkOb8+
 35kw==
X-Gm-Message-State: APjAAAWtVnD7uxvtLuHhJ7UGfZ8+TgRcgxIr4hYNMMs5JjaiORPy6gTW
 7sgwl+zTcJ6P6hhJgGdlKtnvEw==
X-Google-Smtp-Source: APXvYqwLah3JFnz5InFyJaEdMbrmW5wa4z0VC1v4yTqNJxq6j6zENAvViIR8vGnHzPMR31kzpHCCug==
X-Received: by 2002:a0c:ffc5:: with SMTP id h5mr3894666qvv.43.1566009994194;
 Fri, 16 Aug 2019 19:46:34 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:33 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 02/14] arm64, hibernate: create_safe_exec_page cleanup
Date: Fri, 16 Aug 2019 22:46:17 -0400
Message-Id: <20190817024629.26611-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194637_559948_25CCBEE0 
X-CRM114-Status: GOOD (  11.34  )
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

create_safe_exec_page() is going to be split into two parts in preparation
of moving page table handling code out of hibernate.c

Remove allocator parameter, and rename dst to page. Also, remove the
goto's, as we can return directly without cleanups.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 60 +++++++++++++++--------------------
 1 file changed, 26 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 9341fcc6e809..96b6f8da7e49 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -196,57 +196,51 @@ EXPORT_SYMBOL(arch_hibernation_header_restore);
  */
 static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr,
-				 void *(*allocator)(gfp_t mask),
-				 gfp_t mask)
+				 phys_addr_t *phys_dst_addr)
 {
-	int rc = 0;
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
+	pgd_t *trans_table;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = (unsigned long)allocator(mask);
 
-	if (!dst) {
-		rc = -ENOMEM;
-		goto out;
-	}
+	if (!page)
+		return -ENOMEM;
+
+	memcpy((void *)page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
-	memcpy((void *)dst, src_start, length);
-	__flush_icache_range(dst, dst + length);
+	trans_table = (void *)get_safe_page(GFP_ATOMIC);
+	if (!trans_table)
+		return -ENOMEM;
 
-	pgdp = pgd_offset_raw(allocator(mask), dst_addr);
+	pgdp = pgd_offset_raw(trans_table, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
-		pudp = allocator(mask);
-		if (!pudp) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		pudp = (void *)get_safe_page(GFP_ATOMIC);
+		if (!pudp)
+			return -ENOMEM;
 		pgd_populate(&init_mm, pgdp, pudp);
 	}
 
 	pudp = pud_offset(pgdp, dst_addr);
 	if (pud_none(READ_ONCE(*pudp))) {
-		pmdp = allocator(mask);
-		if (!pmdp) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		pmdp = (void *)get_safe_page(GFP_ATOMIC);
+		if (!pmdp)
+			return -ENOMEM;
 		pud_populate(&init_mm, pudp, pmdp);
 	}
 
 	pmdp = pmd_offset(pudp, dst_addr);
 	if (pmd_none(READ_ONCE(*pmdp))) {
-		ptep = allocator(mask);
-		if (!ptep) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		ptep = (void *)get_safe_page(GFP_ATOMIC);
+		if (!ptep)
+			return -ENOMEM;
 		pmd_populate_kernel(&init_mm, pmdp, ptep);
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -262,13 +256,12 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	write_sysreg(phys_to_ttbr(virt_to_phys(trans_table)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)dst);
+	*phys_dst_addr = virt_to_phys((void *)page);
 
-out:
-	return rc;
+	return 0;
 }
 
 #define dcache_clean_range(start, end)	__flush_dcache_area(start, (end - start))
@@ -523,8 +516,7 @@ int swsusp_arch_resume(void)
 	 */
 	rc = create_safe_exec_page(__hibernate_exit_text_start, exit_size,
 				   (unsigned long)hibernate_exit,
-				   &phys_hibernate_exit,
-				   (void *)get_safe_page, GFP_ATOMIC);
+				   &phys_hibernate_exit);
 	if (rc) {
 		pr_err("Failed to create safe executable page for hibernate_exit code.\n");
 		goto out;
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
