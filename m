Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB8A4FAFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 11:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yZr8Jop4B8gOS212abRQOgwcPAG0HO3YnK1JIK6WEA=; b=GSYz5+Aa0lJ3ix
	fC7PGt+3m2vVNZiq1DN3CZwVzfcn8yVfOW+beucMEaOOEduZ7lg0UiePSFfXJb/upnm4az4sZyhC/
	5M1VVMdPtU6jUcCXg/s8F1z2BgU2rZi2Nu0QYf443btPK8dS+Bo0vLx+Fq6frRQZGoQpdLtXW8Lnm
	ppv5T67UzxhQunnQ+OIhfWaONZ8lntYn187Sv0y/0FmTdofUPHjFV9QjWZDbHB+jT2hHzmvfzWkZ9
	8hDCAD8TuproFreYHtYd8WHxLCJehTwayK46nENWk6GtpKVX2kK1yx243mSRvmnFb56XHyuLqE3sd
	U+xmjeQ2Do8cKYbcvnQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hez5B-0001cW-Ov; Sun, 23 Jun 2019 09:46:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hez4C-00019q-61
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 09:45:45 +0000
Received: by mail-pl1-x644.google.com with SMTP id t7so5185186plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 02:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8jypfSRuf2tzCnQqgBbeT0KAA5/GWGPe8r0gYwybhoA=;
 b=MC3FgqhtZqqZOa3fca2etHFPOlAX/zHSptGaJf3qBl/azqwKXvi2ibRnsxz9AQxojg
 EICGDT1H4meg+DusobPeLFIRimkWAHJJDK/dlKDhDPS57IyazF6sl+ol2f+XRdncSjTx
 ujEpJ6IHP0e4ia/heO06G73O29JIvv3eBxJ8vsug9U/B1QpbHlPO/jQtEgUyBX1hHmH5
 zhJon/QZMy/0r5wuDPk+yXcnBxYz2434lS1tOAZo8EudlMygn0yOCpQ4Q+dnsj6bSIhB
 TiQ0NJrPR2ggTlL8e/n3bTP2N95KcpYLeCsOcEREJ/hqIDZLZqTrbj00s66H18rrjXqL
 +jKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8jypfSRuf2tzCnQqgBbeT0KAA5/GWGPe8r0gYwybhoA=;
 b=mjN0icUCfEsHpcuKPeQFvyqK5TY1ViFZM9f8jsKkY+L1H7yW/UVx5gOqHg3Jc8O4E7
 ERXF/FypRBXsoZR22c5Mc/YzpblxYnu8eWWLOEJdoGl9xDu62VE6G+4G8KewxOfY9f1T
 9TqBZy+zdr+vsQInFModvOph2rHuuwY2WR00mHFFKZbSH3zk6wgp6Bjb7h6zQVwY7OWC
 kkD497OUOsYBxlYDXX73o5kySLN//j1xDjH8G3kV/z3jsxcngfadnVW17Kj2l3WbC0GS
 k9ZLG/92d6c2fnciE3lbFo2Pj7GAvkZGj/QaL6V3liR93+8GHmqotm12cYWNZYA5OZdr
 0DTQ==
X-Gm-Message-State: APjAAAXEibMEfUzPyJGsFUnvq5EOvr9pj8sBeEdwj8Ah97ikpcO70HHw
 7wJJ0AUlvZdKWArRgur9hhc=
X-Google-Smtp-Source: APXvYqxG5TUNwj0LFGeB24LqT2Ou4ZDW4mig65P9OQLsMEMD34gg1qObLUiUXmLaNRqELQkQNbwqkg==
X-Received: by 2002:a17:902:a517:: with SMTP id
 s23mr13564230plq.306.1561283142460; 
 Sun, 23 Jun 2019 02:45:42 -0700 (PDT)
Received: from bobo.ozlabs.ibm.com ([1.129.156.141])
 by smtp.gmail.com with ESMTPSA id d26sm6181062pfn.29.2019.06.23.02.45.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 02:45:42 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH 2/3] powerpc/64s: Add p?d_large definitions
Date: Sun, 23 Jun 2019 19:44:45 +1000
Message-Id: <20190623094446.28722-3-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190623094446.28722-1-npiggin@gmail.com>
References: <20190623094446.28722-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_024544_328784_14694A24 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicholas Piggin <npiggin@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The subsequent patch to fix vmalloc_to_page with huge vmap requires
HUGE_VMAP archs to provide p?d_large definitions for the non-pgd page
table levels they support.

Cc: linuxppc-dev@lists.ozlabs.org
Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
---
Upstream powerpc code does not enable HUGE_VMAP, but the powerpc next
tree has patches, so this patch is required to fix dependency between
this series and powerpc tree in linux-next.

 arch/powerpc/include/asm/book3s/64/pgtable.h | 24 ++++++++++++--------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
index ccf00a8b98c6..c19c8396a1bd 100644
--- a/arch/powerpc/include/asm/book3s/64/pgtable.h
+++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
@@ -915,6 +915,11 @@ static inline int pud_present(pud_t pud)
 	return !!(pud_raw(pud) & cpu_to_be64(_PAGE_PRESENT));
 }
 
+static inline int pud_large(pud_t pud)
+{
+	return !!(pud_raw(pud) & cpu_to_be64(_PAGE_PTE));
+}
+
 extern struct page *pud_page(pud_t pud);
 extern struct page *pmd_page(pmd_t pmd);
 static inline pte_t pud_pte(pud_t pud)
@@ -958,6 +963,11 @@ static inline int pgd_present(pgd_t pgd)
 	return !!(pgd_raw(pgd) & cpu_to_be64(_PAGE_PRESENT));
 }
 
+static inline int pgd_large(pgd_t pgd)
+{
+	return !!(pgd_raw(pgd) & cpu_to_be64(_PAGE_PTE));
+}
+
 static inline pte_t pgd_pte(pgd_t pgd)
 {
 	return __pte_raw(pgd_raw(pgd));
@@ -1083,6 +1093,11 @@ static inline pte_t *pmdp_ptep(pmd_t *pmd)
 #define pmd_mk_savedwrite(pmd)	pte_pmd(pte_mk_savedwrite(pmd_pte(pmd)))
 #define pmd_clear_savedwrite(pmd)	pte_pmd(pte_clear_savedwrite(pmd_pte(pmd)))
 
+static inline int pmd_large(pmd_t pmd)
+{
+	return !!(pmd_raw(pmd) & cpu_to_be64(_PAGE_PTE));
+}
+
 #ifdef CONFIG_HAVE_ARCH_SOFT_DIRTY
 #define pmd_soft_dirty(pmd)    pte_soft_dirty(pmd_pte(pmd))
 #define pmd_mksoft_dirty(pmd)  pte_pmd(pte_mksoft_dirty(pmd_pte(pmd)))
@@ -1151,15 +1166,6 @@ pmd_hugepage_update(struct mm_struct *mm, unsigned long addr, pmd_t *pmdp,
 	return hash__pmd_hugepage_update(mm, addr, pmdp, clr, set);
 }
 
-/*
- * returns true for pmd migration entries, THP, devmap, hugetlb
- * But compile time dependent on THP config
- */
-static inline int pmd_large(pmd_t pmd)
-{
-	return !!(pmd_raw(pmd) & cpu_to_be64(_PAGE_PTE));
-}
-
 static inline pmd_t pmd_mknotpresent(pmd_t pmd)
 {
 	return __pmd(pmd_val(pmd) & ~_PAGE_PRESENT);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
