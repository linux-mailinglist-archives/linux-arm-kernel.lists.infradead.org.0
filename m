Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6271936E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqujZKrDl5ZWKUEG1aeSSLU/DBhGuqNJ6oZQCZTjlTk=; b=VUSKvFqygff35G
	BqHL9JvMlWn5AmYuB1/1TPyHtwpjFT5te2yevW97kRk3T8A7NmRa0JPJvBRO+EWUC8IQroahjAItU
	TMR4dL6d1TK0k2cGmKL5WItfZkQiIn4RDbWGj5nTm5YrFfiy+k8YZnsF9OKrmmiAH6ANDMH1rqiHZ
	bTVsAr992gqEu71GEPJ9qm7F37PgqduqmmrMjQxGM7mIwn+FJz3/U/eo2fKVDBJznN9KCOQ8C6uO7
	nyPfvpbGCjEmoz3uN8mDB3ccKoR0gjtlMxOK/jO0eqd0cBtbQOP2k2oomBDqpIrEFKAxpwVPYLu2K
	k3B/wfscUreB4Tt+brCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJAB-0006w3-Q8; Thu, 26 Mar 2020 03:26:35 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ88-0004UN-TJ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:31 +0000
Received: by mail-qk1-x741.google.com with SMTP id v7so5139964qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=gPIr3sMHKm0Eg/X2MJ83Q4o7q/Yh6VlfcqjWss6+Y4o=;
 b=Np+ER3XpXP3xatSew72fqYIgywSlmUJyfUzsR7RuwvTnKQrjpyERrNj+EvfXrJyWW9
 W+sxelJuhu1ZSGw+1n9sRGoH4Nu4KbAtfrqTCoUWKeqGQ2bicHmBN1jJWZqMxTNmxRnF
 plOne/JIMjbqnR6Cv0oF8IIkx/ey2DSlmgA0ifhIEVBxx+KhxneyfC8D1ikFhE8Z8Zx3
 I4nzMR2Re4f41bAosqjpj5BpevCMGoQKcH23PFSImbgHc94xQtAEg70FWoX9XFL2tjH9
 0ZDNtowg0Y+IPP+hUNhz2LdLMllsx4K4YruLTGFWoi9ENKz3fnxKMYegeeFuD0vQM7vV
 arLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=gPIr3sMHKm0Eg/X2MJ83Q4o7q/Yh6VlfcqjWss6+Y4o=;
 b=bjH3bO2JUA5+xBD6hHCIhILajoOC10Z70gm/syeNQ6Zjl7iG0cVwLLamcy4GRdNUHJ
 t7B4G00GV/qk1Cie4XyXOF+mE3TdsuiZvJZOzqvL95bDd8WMKFqiTgmYaY/Ka6TbuLgH
 LhlGSPDXWr8kovKdaRnZdKOGrGGmv4ApINmkLzgChppIIwvs3W91JWB2eaFj0/HKh283
 PrUWME2SLyrTyF9eNTBJ3b3fcErqphSgXRtGUf2WaYkrrQSTnMmflQsd5vURLNb7biRL
 bNuRRnk3APRwcPlskmer9AuHMUBABcUvuwkUqdhP5AVbeaDtOaBWJ1lGOY1XMAiU9Fln
 k1hQ==
X-Gm-Message-State: ANhLgQ36OzT1FB/AaLvop9yg3XqTc2swwwdbX4A5aq23n5wb+qaAM02P
 wnl0qMBUNLa3smrrpUbom60XXw==
X-Google-Smtp-Source: ADFU+vu2LuSP2xM/wRHh5Sup1U57yJstHfVsFcFOMuWM8U2UTB5lN9kl0Z/AesTxoJRpDvCFmCt3Ng==
X-Received: by 2002:a37:9e88:: with SMTP id h130mr6125408qke.145.1585193067625; 
 Wed, 25 Mar 2020 20:24:27 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:27 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 03/18] arm64: trans_pgd: make trans_pgd_map_page generic
Date: Wed, 25 Mar 2020 23:24:05 -0400
Message-Id: <20200326032420.27220-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202429_020171_88083026 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
MIME-Version: 1.0
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
index 23153c13d1ce..ad5194ad178d 100644
--- a/arch/arm64/include/asm/trans_pgd.h
+++ b/arch/arm64/include/asm/trans_pgd.h
@@ -12,10 +12,24 @@
 #include <linux/types.h>
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
index d20e48520cef..275a79935d7e 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
