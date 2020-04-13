Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA4B1A668A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 14:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhMdUhGbA2pdnP02lKik9bRomkRujue5i7inU70VUsY=; b=P4D+kzUklzzCRH
	GDyqExL8eJZ51izoo8rjOG1/f73SfZEuBJ7JC5ulVBW6ghLiFkI/b7gPdoMIDPbh6vsWGX1sxAHtf
	zEfJ9RpOQ66Xzl7bs87SucE/8nf5p6kxs8tEwjjEdydBs7GRuGEnz3JuyQmHbec9wRSd6vc1zoaji
	svtmgB7XVn54e4DKUdf4n6xbbe0Ys0D0Ift+2lWsqfzW2kppxZU/ZC5RnzhBASNXJOYkvaOVvYwiH
	HKd2hOjmx8WaMew/+sTQXBL+6USQcLOsCdrTJZnhkyL6AWDVxeROEQeaxCcMxih5MaJLb4mlTW89s
	0mskoMxp6z7XCJ7HfQ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNybx-00054a-Ro; Mon, 13 Apr 2020 12:54:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNybY-0004wD-Br
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 12:54:25 +0000
Received: by mail-pl1-x643.google.com with SMTP id a23so3364054plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 05:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k49Z1eeIe8RAePIWxlY/V+bEMZoWrI+Axi8oPgRhVtE=;
 b=L5S1BJRQ9w88zx9XItTQeKB1SWsCw9jN3PuCuTfVxmuOCKWgUewZNKRsVyQjwxHom4
 ryvIxTIOl9WF3LHatElNK8cNsWnR1tE7/N5ODwBzb5+SkQvox0yCH821WVCcfqm495pa
 LK65a2FSueaENFn4ZvlWg3x+AHB5L2wFPRT41i9dbpsLWS2dWFfpccRmZEmhKUWPEymx
 WyI5x9Acu8dyiVuDncUPJrEQb0Sf9Z9Fwppf9ivQJDnmtOAgeNFzkaQYfo3pypCDwIVI
 ITWDYFpdOCKbVXLiHa2pbhcRH0bGRxSg+GfkJc2W005zzgPh63LtWhzwzkFkwciB+nEy
 N5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k49Z1eeIe8RAePIWxlY/V+bEMZoWrI+Axi8oPgRhVtE=;
 b=fqmTJXVu7BZuZEKENB7oouuIQ0ioimgRyurPufK19m2XCrbXnKglBkWQrUv3fsmycB
 qMXfhWa6+UC52di1vTSWuFE75pYqTKkPRvL0pzyqlqZxLP5BAMx4Y7dScGAyUCk60sIJ
 N5T8zethb0ubgVWpCpN5sfc0DkHax2Wu5sWCTP5y9OohNa0l1+VPuULFqHwon3eeGOS5
 FNc8Ajz29Zryfq8r7WqlGi/t8U8Q5Z0rV6ynT0HaZJOVL3nI5anj/XNVPMndS2x1pEBc
 kCmnboVLrwgVUpIAmCA2N+Gv6DG5LCbBWVy4bc2aLFYI/3SPlbP2va2Kk6rL0xBYrr45
 iVsw==
X-Gm-Message-State: AGi0PuYsw8czKHvMEGgW1UAmycKlXnep8ASOHIPtqgAqPouSKAZpoHPj
 0I2hcBEVQYSbBXWjlRQf67o=
X-Google-Smtp-Source: APiQypKN1B5uL3kKzB/lOZ19Pz9DdktaX2dQyGsTq0k0RExJ7gXb2rmJrqHeHeQ2h0CyWmOAFzHcaA==
X-Received: by 2002:a17:90a:368d:: with SMTP id
 t13mr20937061pjb.175.1586782463462; 
 Mon, 13 Apr 2020 05:54:23 -0700 (PDT)
Received: from bobo.ibm.com (60-241-117-97.tpgi.com.au. [60.241.117.97])
 by smtp.gmail.com with ESMTPSA id j24sm9235610pji.20.2020.04.13.05.54.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 05:54:22 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH v2 1/4] mm/vmalloc: fix vmalloc_to_page for huge vmap mappings
Date: Mon, 13 Apr 2020 22:53:00 +1000
Message-Id: <20200413125303.423864-2-npiggin@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200413125303.423864-1-npiggin@gmail.com>
References: <20200413125303.423864-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_055424_453628_7CD1B5DD 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 Nicholas Piggin <npiggin@gmail.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vmalloc_to_page returns NULL for addresses mapped by larger pages[*].
Whether or not a vmap is huge depends on the architecture details,
alignments, boot options, etc., which the caller can not be expected
to know. Therefore HUGE_VMAP is a regression for vmalloc_to_page.

This change teaches vmalloc_to_page about larger pages, and returns
the struct page that corresponds to the offset within the large page.
This makes the API agnostic to mapping implementation details.

[*] As explained by commit 029c54b095995 ("mm/vmalloc.c: huge-vmap:
    fail gracefully on unexpected huge vmap mappings")

Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
---
 mm/vmalloc.c | 40 ++++++++++++++++++++++++++--------------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 399f219544f7..1afec7def23f 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -36,6 +36,7 @@
 #include <linux/rbtree_augmented.h>
 
 #include <linux/uaccess.h>
+#include <asm/pgtable.h>
 #include <asm/tlbflush.h>
 #include <asm/shmparam.h>
 
@@ -272,7 +273,9 @@ int is_vmalloc_or_module_addr(const void *x)
 }
 
 /*
- * Walk a vmap address to the struct page it maps.
+ * Walk a vmap address to the struct page it maps. Huge vmap mappings will
+ * return the tail page that corresponds to the base page address, which
+ * matches small vmap mappings.
  */
 struct page *vmalloc_to_page(const void *vmalloc_addr)
 {
@@ -292,25 +295,33 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
 
 	if (pgd_none(*pgd))
 		return NULL;
+	if (WARN_ON_ONCE(pgd_leaf(*pgd)))
+		return NULL; /* XXX: no allowance for huge pgd */
+	if (WARN_ON_ONCE(pgd_bad(*pgd)))
+		return NULL;
+
 	p4d = p4d_offset(pgd, addr);
 	if (p4d_none(*p4d))
 		return NULL;
-	pud = pud_offset(p4d, addr);
+	if (p4d_leaf(*p4d))
+		return p4d_page(*p4d) + ((addr & ~P4D_MASK) >> PAGE_SHIFT);
+	if (WARN_ON_ONCE(p4d_bad(*p4d)))
+		return NULL;
 
-	/*
-	 * Don't dereference bad PUD or PMD (below) entries. This will also
-	 * identify huge mappings, which we may encounter on architectures
-	 * that define CONFIG_HAVE_ARCH_HUGE_VMAP=y. Such regions will be
-	 * identified as vmalloc addresses by is_vmalloc_addr(), but are
-	 * not [unambiguously] associated with a struct page, so there is
-	 * no correct value to return for them.
-	 */
-	WARN_ON_ONCE(pud_bad(*pud));
-	if (pud_none(*pud) || pud_bad(*pud))
+	pud = pud_offset(p4d, addr);
+	if (pud_none(*pud))
+		return NULL;
+	if (pud_leaf(*pud))
+		return pud_page(*pud) + ((addr & ~PUD_MASK) >> PAGE_SHIFT);
+	if (WARN_ON_ONCE(pud_bad(*pud)))
 		return NULL;
+
 	pmd = pmd_offset(pud, addr);
-	WARN_ON_ONCE(pmd_bad(*pmd));
-	if (pmd_none(*pmd) || pmd_bad(*pmd))
+	if (pmd_none(*pmd))
+		return NULL;
+	if (pmd_leaf(*pmd))
+		return pmd_page(*pmd) + ((addr & ~PMD_MASK) >> PAGE_SHIFT);
+	if (WARN_ON_ONCE(pmd_bad(*pmd)))
 		return NULL;
 
 	ptep = pte_offset_map(pmd, addr);
@@ -318,6 +329,7 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
 	if (pte_present(pte))
 		page = pte_page(pte);
 	pte_unmap(ptep);
+
 	return page;
 }
 EXPORT_SYMBOL(vmalloc_to_page);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
