Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB239ADEA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRogMCJnLGj1qp+oraEVI/yl9z9tbcp+/sVA2N1EJMA=; b=ppCz8dLNRbl4RL
	vdGTqjDuW5c/VlWELZpd/rjaCsisK7HiyRQPo2oYI1+c11Kn2AoS3F890e/xDFrpVDQJJCCG1lW8r
	PWswughbXwUFq8ZsbuFDpWuuGiF8tBjy0Uszbf6diw3mvbZU1gZBYfAcNlEDqL755C1hdQD65y/CZ
	eSc9+AsYjKc4jUuCa5gM4mVaVYgJETK4+Gjl0M1KhKra6pojwTm9xW2pp7c4a1FFecIgh+mZLUhTZ
	VZ622+ZR5Lemi0h/FNrS/D1grBKX0Dgrqu10sXRmX5yQ3w7by1ZvdDLYcBxYN0jkzyRL8XB5W0IKd
	sU6XxxzA0SIAcl7+kCaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OCt-0004gs-62; Mon, 09 Sep 2019 18:16:07 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9Z-00007B-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:43 +0000
Received: by mail-qt1-x844.google.com with SMTP id c9so17256516qth.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=2LohODRye0AXb6pFFAov36EHdB22I7TfTyru75JBhPY=;
 b=b4JWeuEqNHu1nxwYKfDEsBPTvMMBWZi2cqM0adTfZFS4l+t2aJ3B29NCi9xuB49OSa
 C77Y9e1TYrSKEeJmNf39D7K4bVy/4ZNWPvYi4dam1Nwsr0JFlQrwCLlmTVBcNdq5YV+8
 MrgKWmXLLtlYEqTc93GG36FcY0hdxv863oZlRKWBhnek6e0iEXX8ItgAmzFG37ddwOGk
 Amv6GRDOMInAjA3xefoEOGpOL9a8kveoC8s0a5ApLBvvouNSdofiM0Qs0ltzEq6V/nEi
 zarysFCuCJY5uzMpcTTKAdeRqmX51hU5bkn5vuS7qY/SeLhaIpVhrZlj3rOjk+qTrY+j
 iZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2LohODRye0AXb6pFFAov36EHdB22I7TfTyru75JBhPY=;
 b=Xn34YaxVulTN/1ZltO3qLhDYQD7pJLitETkmREtovfmfbQXMyU1jN2HGWIdRGdKZR+
 1Dhoqc9xODVpM3ZQi/FgWE9GXiik/SpFL0FEQO4sWXbtnuMBUf1WqFCmsHL2sBCMZYs6
 vNYTXZt/1GemavFgnDKIZGzdvHnZszdJJ6MT9v9DxDmYkykQSHHxu8XJRy/8jC1ouwgA
 uOYEJvh2tXuiIHgLZP0aAt5tjuvO88kx/EDRsyHKCPynEwf/2OWMDmqrOGDMS8RzwcWN
 /CVZu8X+kxM9yRd8+vaB63uA8yXW0wUKUqC+LCtjsuF5IbHWw064ZR67Nzio2qC0Qu5Z
 9v2Q==
X-Gm-Message-State: APjAAAWjnQg4S7ESfUaE4kj1GQPOWeLjpI8CYT/ceP60ORf3Hu/goHJD
 lX/GtwusVZSWEhM3PY5PXPxpJQ==
X-Google-Smtp-Source: APXvYqwZbXP54u+gMB+FnMTzfwcMtvxaxlwtPafub/S1cyQjKXudNEOHdzHtrwsLKwZy4rWiD0HpCg==
X-Received: by 2002:a0c:e64e:: with SMTP id c14mr15416016qvn.17.1568052760215; 
 Mon, 09 Sep 2019 11:12:40 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:39 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 11/17] arm64: trans_pgd: pass allocator
 trans_pgd_create_copy
Date: Mon,  9 Sep 2019 14:12:15 -0400
Message-Id: <20190909181221.309510-12-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111241_163188_F8C1E02B 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Make trans_pgd_create_copy and its subroutines to use allocator that is
passed as an argument

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/trans_pgd.h |  7 ++++--
 arch/arm64/kernel/hibernate.c      |  6 ++++-
 arch/arm64/mm/trans_pgd.c          | 35 +++++++++++++++---------------
 3 files changed, 28 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
index 53f67ec84cdc..61a725fe1093 100644
--- a/arch/arm64/include/asm/trans_pgd.h
+++ b/arch/arm64/include/asm/trans_pgd.h
@@ -25,8 +25,11 @@ struct trans_pgd_info {
 	void *trans_alloc_arg;
 };
 
-int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
-			  unsigned long end);
+/*
+ * Create trans_pgd and copy linear map [start, end)
+ */
+int trans_pgd_create_copy(struct trans_pgd_info *info, pgd_t **trans_pgd,
+			  unsigned long start, unsigned long end);
 
 /*
  * Add map entry to trans_pgd for a base-size page at PTE level.
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 9b75b680ab70..36eccf63629c 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -322,13 +322,17 @@ int swsusp_arch_resume(void)
 	phys_addr_t phys_hibernate_exit;
 	void __noreturn (*hibernate_exit)(phys_addr_t, phys_addr_t, void *,
 					  void *, phys_addr_t, phys_addr_t);
+	struct trans_pgd_info trans_info = {
+		.trans_alloc_page	= hibernate_page_alloc,
+		.trans_alloc_arg	= (void *)GFP_ATOMIC,
+	};
 
 	/*
 	 * Restoring the memory image will overwrite the ttbr1 page tables.
 	 * Create a second copy of just the linear map, and use this when
 	 * restoring.
 	 */
-	rc = trans_pgd_create_copy(&tmp_pg_dir, PAGE_OFFSET, 0);
+	rc = trans_pgd_create_copy(&trans_info, &tmp_pg_dir, PAGE_OFFSET, 0);
 	if (rc)
 		goto out;
 
diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
index 7521d558a0b9..dfde87159840 100644
--- a/arch/arm64/mm/trans_pgd.c
+++ b/arch/arm64/mm/trans_pgd.c
@@ -57,14 +57,14 @@ static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
 	}
 }
 
-static int copy_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long start,
-		    unsigned long end)
+static int copy_pte(struct trans_pgd_info *info, pmd_t *dst_pmdp,
+		    pmd_t *src_pmdp, unsigned long start, unsigned long end)
 {
 	pte_t *src_ptep;
 	pte_t *dst_ptep;
 	unsigned long addr = start;
 
-	dst_ptep = (pte_t *)get_safe_page(GFP_ATOMIC);
+	dst_ptep = trans_alloc(info);
 	if (!dst_ptep)
 		return -ENOMEM;
 	pmd_populate_kernel(&init_mm, dst_pmdp, dst_ptep);
@@ -78,8 +78,8 @@ static int copy_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long start,
 	return 0;
 }
 
-static int copy_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
-		    unsigned long end)
+static int copy_pmd(struct trans_pgd_info *info, pud_t *dst_pudp,
+		    pud_t *src_pudp, unsigned long start, unsigned long end)
 {
 	pmd_t *src_pmdp;
 	pmd_t *dst_pmdp;
@@ -87,7 +87,7 @@ static int copy_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
 	unsigned long addr = start;
 
 	if (pud_none(READ_ONCE(*dst_pudp))) {
-		dst_pmdp = (pmd_t *)get_safe_page(GFP_ATOMIC);
+		dst_pmdp = trans_alloc(info);
 		if (!dst_pmdp)
 			return -ENOMEM;
 		pud_populate(&init_mm, dst_pudp, dst_pmdp);
@@ -102,7 +102,7 @@ static int copy_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
 		if (pmd_none(pmd))
 			continue;
 		if (pmd_table(pmd)) {
-			if (copy_pte(dst_pmdp, src_pmdp, addr, next))
+			if (copy_pte(info, dst_pmdp, src_pmdp, addr, next))
 				return -ENOMEM;
 		} else {
 			set_pmd(dst_pmdp,
@@ -113,7 +113,8 @@ static int copy_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
 	return 0;
 }
 
-static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
+static int copy_pud(struct trans_pgd_info *info, pgd_t *dst_pgdp,
+		    pgd_t *src_pgdp, unsigned long start,
 		    unsigned long end)
 {
 	pud_t *dst_pudp;
@@ -122,7 +123,7 @@ static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
 	unsigned long addr = start;
 
 	if (pgd_none(READ_ONCE(*dst_pgdp))) {
-		dst_pudp = (pud_t *)get_safe_page(GFP_ATOMIC);
+		dst_pudp = trans_alloc(info);
 		if (!dst_pudp)
 			return -ENOMEM;
 		pgd_populate(&init_mm, dst_pgdp, dst_pudp);
@@ -137,7 +138,7 @@ static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
 		if (pud_none(pud))
 			continue;
 		if (pud_table(pud)) {
-			if (copy_pmd(dst_pudp, src_pudp, addr, next))
+			if (copy_pmd(info, dst_pudp, src_pudp, addr, next))
 				return -ENOMEM;
 		} else {
 			set_pud(dst_pudp,
@@ -148,8 +149,8 @@ static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
 	return 0;
 }
 
-static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
-			    unsigned long end)
+static int copy_page_tables(struct trans_pgd_info *info, pgd_t *dst_pgdp,
+			    unsigned long start, unsigned long end)
 {
 	unsigned long next;
 	unsigned long addr = start;
@@ -160,25 +161,25 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
 		next = pgd_addr_end(addr, end);
 		if (pgd_none(READ_ONCE(*src_pgdp)))
 			continue;
-		if (copy_pud(dst_pgdp, src_pgdp, addr, next))
+		if (copy_pud(info, dst_pgdp, src_pgdp, addr, next))
 			return -ENOMEM;
 	} while (dst_pgdp++, src_pgdp++, addr = next, addr != end);
 
 	return 0;
 }
 
-int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
-			  unsigned long end)
+int trans_pgd_create_copy(struct trans_pgd_info *info, pgd_t **dst_pgdp,
+			  unsigned long start, unsigned long end)
 {
 	int rc;
-	pgd_t *trans_pgd = (pgd_t *)get_safe_page(GFP_ATOMIC);
+	pgd_t *trans_pgd = trans_alloc(info);
 
 	if (!trans_pgd) {
 		pr_err("Failed to allocate memory for temporary page tables.\n");
 		return -ENOMEM;
 	}
 
-	rc = copy_page_tables(trans_pgd, start, end);
+	rc = copy_page_tables(info, trans_pgd, start, end);
 	if (!rc)
 		*dst_pgdp = trans_pgd;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
