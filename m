Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1181890C57
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 04:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/BLxcHPvX7ZRA6cgDEq4+FvlQJ+mXXf4JH0oQpYoaM=; b=XD/AllbF05C8Gr
	Jwr80qmTAr3KdiNDyxtcXT0LzW66qvEAWZcqD9V27hJYF/46uiPi0p6RvYq27F/GSTAoCLB4Gmuvz
	MFvU+qGFJ+RfNSJD3q0eu85i571zbuWY0OSCt27dtMVDXDWmEa7hD1P/kELGen29PDtnM2/dnlHaw
	PM9+6iop4Mw3UOv8f9oUf6K0jyxt9k37Vvok3/Qo7wNMGwbEXI9VtZdav0qBV1LL1PWRf1ENgeIrW
	6eKDhAIUbfgT2Nch7sMzMAE9GDUnQrwfxWtNZLnLWCSHr45nq1knIopCkjvAtCBXxJnW4FNwimjdC
	mTkV6eAeY4uiORrb/lHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyonE-0005OD-5M; Sat, 17 Aug 2019 02:50:12 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyojs-0002ZY-Um
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 02:46:47 +0000
Received: by mail-qt1-x842.google.com with SMTP id t12so8203288qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 19:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=YcRiD81CkGA/tiGkEwYWkDWZvYJnW8+40y1Dv0r42/8=;
 b=l+p8+edOT71ecECp/u3tuhk3eamkWriWn5ws7p7UJAZCeqR7QgvXu6HxZKWdU7tRwJ
 UUtPACIFNZF+eStlnshfs4kvXDNRIMzyYMJWusoTQ3Chewjw32LETYU7RV2ejjvGFY1j
 R7djYTkVxGAOeWVwSx5wdHkDns8SbXlC8L5ECHyzW0RHLkO4xvSOtS80IZ9cs6L1stig
 3pbKsKq4Pm2dFO0SZIYeFOC146IAJshB/M9rfARer8wtZ5DkuVtj5GBUmf8nDP7QQrvB
 mQoAFnQOsMvesegMQSau8Hsley1Fg4tKSbpDObFqFyNOMOwuVewaUpD4CtySzvddH5/S
 VjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YcRiD81CkGA/tiGkEwYWkDWZvYJnW8+40y1Dv0r42/8=;
 b=QMkAOl2d4O/0AMlm6wfWP0pTUNrY0K9SOuPglP+5ME/22f89biJ9khGD/0CaZ0OYim
 s2Bxr7DhM01OluHmvRhcvIXGiM/BTT4vtB4cPB4c3kt81/atSqhmR8FZv4IUKUxYounp
 80rNSch+7jeiqALb8AEp+uBw4LChTVQ7EDpWYVtFl16hRCWiZ31W6s42PpBz/uAYqwb8
 7vw8vj+19mrOlb2BmGYmiV6XsrH0m9F/mscjUoLXYcU49D0ICOouBgia8jK7ZHYNEPb9
 LivgtTX7tGRo+qNggbJTDjO0trKf0wDx9pEYFWVRZYt3VfulhTdWF4cHC8RVWU1tbjHQ
 v8lQ==
X-Gm-Message-State: APjAAAUqkE14b4vuZSnQpO7QeTP7RsHRnlss1x9E1BwwKOeXQicUJt5o
 Gzi4LBZ5jC9KBjNG/h39J13wIA==
X-Google-Smtp-Source: APXvYqzkvUJTKF443y0fqKhgWTNB+cG/M187ziS8mkOR9Fisvx3ycBpiOm4doD2LJHgEFGwqmKufxg==
X-Received: by 2002:ac8:7b56:: with SMTP id m22mr4350519qtu.390.1566010003981; 
 Fri, 16 Aug 2019 19:46:43 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:43 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 09/14] arm64,
 trans_table: complete generalization of trans_tables
Date: Fri, 16 Aug 2019 22:46:24 -0400
Message-Id: <20190817024629.26611-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194645_164844_218AB909 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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

Make the last private functions in page table copy path generlized for use
outside of hibernate.

Switch to use the provided allocator, flags, and source page table. Also,
unify all copy function implementations to reduce the possibility of bugs.
All page table levels are implemented symmetrically.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/mm/trans_table.c | 204 ++++++++++++++++++++----------------
 1 file changed, 113 insertions(+), 91 deletions(-)

diff --git a/arch/arm64/mm/trans_table.c b/arch/arm64/mm/trans_table.c
index 815e40bb1316..ce0f24806eaa 100644
--- a/arch/arm64/mm/trans_table.c
+++ b/arch/arm64/mm/trans_table.c
@@ -27,139 +27,161 @@ static void *trans_alloc(struct trans_table_info *info)
 	return page;
 }
 
-static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
+static int trans_table_copy_pte(struct trans_table_info *info, pte_t *dst_ptep,
+				pte_t *src_ptep, unsigned long start,
+				unsigned long end)
 {
-	pte_t pte = READ_ONCE(*src_ptep);
-
-	if (pte_valid(pte)) {
-		/*
-		 * Resume will overwrite areas that may be marked
-		 * read only (code, rodata). Clear the RDONLY bit from
-		 * the temporary mappings we use during restore.
-		 */
-		set_pte(dst_ptep, pte_mkwrite(pte));
-	} else if (debug_pagealloc_enabled() && !pte_none(pte)) {
-		/*
-		 * debug_pagealloc will removed the PTE_VALID bit if
-		 * the page isn't in use by the resume kernel. It may have
-		 * been in use by the original kernel, in which case we need
-		 * to put it back in our copy to do the restore.
-		 *
-		 * Before marking this entry valid, check the pfn should
-		 * be mapped.
-		 */
-		BUG_ON(!pfn_valid(pte_pfn(pte)));
-
-		set_pte(dst_ptep, pte_mkpresent(pte_mkwrite(pte)));
-	}
-}
-
-static int copy_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long start,
-		    unsigned long end)
-{
-	pte_t *src_ptep;
-	pte_t *dst_ptep;
 	unsigned long addr = start;
+	int i = pte_index(addr);
 
-	dst_ptep = (pte_t *)get_safe_page(GFP_ATOMIC);
-	if (!dst_ptep)
-		return -ENOMEM;
-	pmd_populate_kernel(&init_mm, dst_pmdp, dst_ptep);
-	dst_ptep = pte_offset_kernel(dst_pmdp, start);
-
-	src_ptep = pte_offset_kernel(src_pmdp, start);
 	do {
-		_copy_pte(dst_ptep, src_ptep, addr);
-	} while (dst_ptep++, src_ptep++, addr += PAGE_SIZE, addr != end);
+		pte_t src_pte = READ_ONCE(src_ptep[i]);
+
+		if (pte_none(src_pte))
+			continue;
+		if (info->trans_flags & TRANS_MKWRITE)
+			src_pte = pte_mkwrite(src_pte);
+		if (info->trans_flags & TRANS_MKVALID)
+			src_pte = pte_mkpresent(src_pte);
+		if (info->trans_flags & TRANS_CHECKPFN) {
+			if (!pfn_valid(pte_pfn(src_pte)))
+				return -ENXIO;
+		}
+		set_pte(&dst_ptep[i], src_pte);
+	} while (addr += PAGE_SIZE, i++, addr != end && i < PTRS_PER_PTE);
 
 	return 0;
 }
 
-static int copy_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
-		    unsigned long end)
+static int trans_table_copy_pmd(struct trans_table_info *info, pmd_t *dst_pmdp,
+				pmd_t *src_pmdp, unsigned long start,
+				unsigned long end)
 {
-	pmd_t *src_pmdp;
-	pmd_t *dst_pmdp;
 	unsigned long next;
 	unsigned long addr = start;
+	int i = pmd_index(addr);
+	int rc;
 
-	if (pud_none(READ_ONCE(*dst_pudp))) {
-		dst_pmdp = (pmd_t *)get_safe_page(GFP_ATOMIC);
-		if (!dst_pmdp)
-			return -ENOMEM;
-		pud_populate(&init_mm, dst_pudp, dst_pmdp);
-	}
-	dst_pmdp = pmd_offset(dst_pudp, start);
-
-	src_pmdp = pmd_offset(src_pudp, start);
 	do {
-		pmd_t pmd = READ_ONCE(*src_pmdp);
+		pmd_t src_pmd = READ_ONCE(src_pmdp[i]);
+		pmd_t dst_pmd = READ_ONCE(dst_pmdp[i]);
+		pte_t *dst_ptep, *src_ptep;
 
 		next = pmd_addr_end(addr, end);
-		if (pmd_none(pmd))
+		if (pmd_none(src_pmd))
+			continue;
+
+		if (!pmd_table(src_pmd)) {
+			if (info->trans_flags & TRANS_MKWRITE)
+				pmd_val(src_pmd) &= ~PMD_SECT_RDONLY;
+			set_pmd(&dst_pmdp[i], src_pmd);
 			continue;
-		if (pmd_table(pmd)) {
-			if (copy_pte(dst_pmdp, src_pmdp, addr, next))
+		}
+
+		if (pmd_none(dst_pmd)) {
+			pte_t *t = trans_alloc(info);
+
+			if (!t)
 				return -ENOMEM;
-		} else {
-			set_pmd(dst_pmdp,
-				__pmd(pmd_val(pmd) & ~PMD_SECT_RDONLY));
+
+			__pmd_populate(&dst_pmdp[i], __pa(t), PTE_TYPE_PAGE);
+			dst_pmd = READ_ONCE(dst_pmdp[i]);
 		}
-	} while (dst_pmdp++, src_pmdp++, addr = next, addr != end);
+
+		src_ptep = __va(pmd_page_paddr(src_pmd));
+		dst_ptep = __va(pmd_page_paddr(dst_pmd));
+
+		rc = trans_table_copy_pte(info, dst_ptep, src_ptep, addr, next);
+		if (rc)
+			return rc;
+	} while (addr = next, i++, addr != end && i < PTRS_PER_PMD);
 
 	return 0;
 }
 
-static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
-		    unsigned long end)
+static int trans_table_copy_pud(struct trans_table_info *info, pud_t *dst_pudp,
+				pud_t *src_pudp, unsigned long start,
+				unsigned long end)
 {
-	pud_t *dst_pudp;
-	pud_t *src_pudp;
 	unsigned long next;
 	unsigned long addr = start;
+	int i = pud_index(addr);
+	int rc;
 
-	if (pgd_none(READ_ONCE(*dst_pgdp))) {
-		dst_pudp = (pud_t *)get_safe_page(GFP_ATOMIC);
-		if (!dst_pudp)
-			return -ENOMEM;
-		pgd_populate(&init_mm, dst_pgdp, dst_pudp);
-	}
-	dst_pudp = pud_offset(dst_pgdp, start);
-
-	src_pudp = pud_offset(src_pgdp, start);
 	do {
-		pud_t pud = READ_ONCE(*src_pudp);
+		pud_t src_pud = READ_ONCE(src_pudp[i]);
+		pud_t dst_pud = READ_ONCE(dst_pudp[i]);
+		pmd_t *dst_pmdp, *src_pmdp;
 
 		next = pud_addr_end(addr, end);
-		if (pud_none(pud))
+		if (pud_none(src_pud))
 			continue;
-		if (pud_table(pud)) {
-			if (copy_pmd(dst_pudp, src_pudp, addr, next))
+
+		if (!pud_table(src_pud)) {
+			if (info->trans_flags & TRANS_MKWRITE)
+				pud_val(src_pud) &= ~PUD_SECT_RDONLY;
+			set_pud(&dst_pudp[i], src_pud);
+			continue;
+		}
+
+		if (pud_none(dst_pud)) {
+			pmd_t *t = trans_alloc(info);
+
+			if (!t)
 				return -ENOMEM;
-		} else {
-			set_pud(dst_pudp,
-				__pud(pud_val(pud) & ~PUD_SECT_RDONLY));
+
+			__pud_populate(&dst_pudp[i], __pa(t), PMD_TYPE_TABLE);
+			dst_pud = READ_ONCE(dst_pudp[i]);
 		}
-	} while (dst_pudp++, src_pudp++, addr = next, addr != end);
+
+		src_pmdp = __va(pud_page_paddr(src_pud));
+		dst_pmdp = __va(pud_page_paddr(dst_pud));
+
+		rc = trans_table_copy_pmd(info, dst_pmdp, src_pmdp, addr, next);
+		if (rc)
+			return rc;
+	} while (addr = next, i++, addr != end && i < PTRS_PER_PUD);
 
 	return 0;
 }
 
-static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
-			    unsigned long end)
+static int trans_table_copy_pgd(struct trans_table_info *info, pgd_t *dst_pgdp,
+				pgd_t *src_pgdp, unsigned long start,
+				unsigned long end)
 {
 	unsigned long next;
 	unsigned long addr = start;
-	pgd_t *src_pgdp = pgd_offset_k(start);
+	int i = pgd_index(addr);
+	int rc;
 
-	dst_pgdp = pgd_offset_raw(dst_pgdp, start);
 	do {
+		pgd_t src_pgd;
+		pgd_t dst_pgd;
+		pud_t *dst_pudp, *src_pudp;
+
+		src_pgd = READ_ONCE(src_pgdp[i]);
+		dst_pgd = READ_ONCE(dst_pgdp[i]);
 		next = pgd_addr_end(addr, end);
-		if (pgd_none(READ_ONCE(*src_pgdp)))
+		if (pgd_none(src_pgd))
 			continue;
-		if (copy_pud(dst_pgdp, src_pgdp, addr, next))
-			return -ENOMEM;
-	} while (dst_pgdp++, src_pgdp++, addr = next, addr != end);
+
+		if (pgd_none(dst_pgd)) {
+			pud_t *t = trans_alloc(info);
+
+			if (!t)
+				return -ENOMEM;
+
+			__pgd_populate(&dst_pgdp[i], __pa(t), PUD_TYPE_TABLE);
+			dst_pgd = READ_ONCE(dst_pgdp[i]);
+		}
+
+		src_pudp = __va(pgd_page_paddr(src_pgd));
+		dst_pudp = __va(pgd_page_paddr(dst_pgd));
+
+		rc = trans_table_copy_pud(info, dst_pudp, src_pudp, addr, next);
+		if (rc)
+			return rc;
+	} while (addr = next, i++, addr != end && i < PTRS_PER_PGD);
 
 	return 0;
 }
@@ -186,7 +208,7 @@ int trans_table_create_copy(struct trans_table_info *info, pgd_t **trans_table,
 	if (rc)
 		return rc;
 
-	return copy_page_tables(*trans_table, start, end);
+	return trans_table_copy_pgd(info, *trans_table, from_table, start, end);
 }
 
 int trans_table_map_page(struct trans_table_info *info, pgd_t *trans_table,
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
