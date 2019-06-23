Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6D24FAFF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 11:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K17MB4Dibd7M4Dzl3C8O1hyUu9HeCe5ZpT6BsnRs3Os=; b=cj6DE38lT3bpno
	aCOoHQTKe+/CLzR+7CNe6Spy/ckvrhLqz9BpXOQ4hmPGvHXv3h/+6Z5PaOUsRSrEs7kwE9k7bldis
	8MYMViPIdCIPsG4Pyr1TlQ4xN2sQng0AXzHoYEL7tYndSS5qCg2oKoZQuJEtYUc0ia5LnVgQba0yu
	esWSnglWQbzaegAzS2cdZv5y/OiViQcRei7ATMaNAW4PSULkBmuVg9hrHPwmmgjiq9ZaWjdZlNzpX
	4foU9/3d9Qb+U/HYW18uSB0h/T2TQi87Vmp7y28hJuwgbnfyx5EVD3LhSe5i+h8W+0px/LRBkfs0Y
	RWDXp1Pi9pQaWjvSlIEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hez5T-0001tx-Cw; Sun, 23 Jun 2019 09:47:03 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hez4G-0001DC-8j
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 09:45:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id r1so5800110pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 02:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BUni308L4TNZcRdWweuUiutx4ej146UezPXSv2fRAeU=;
 b=JqeYVSNxIoqFzu0xK2z/Z3ztnBfVaDvdJ4jBDcTZwl1ZZSzJpb4XVAqFLNcvsicZQx
 8azD+7/r8TB6Xe4GCrMf2HyZfHSfUYK9qHQtKFQhT72bYJ5DCjJKYW0muFytZdbqa87K
 C4bitxQYLZlwTNsjcupbcQlpamUux3vetpFGshSj8TWe5rPmtnBH77PG9DeEGbtuVAlg
 hcFCbqVaJ5nfQFVZKN55i3/+v0EylIZXr82F3dOYsbZrBaddGQETYoJ3hPGwQwMDgiaF
 hhN2431E96e1zXHj299iMvvgry3NSb6UH8u1MpCg5ujVQm+BqSQj0GWssD6TTCp7Ci3I
 5cVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BUni308L4TNZcRdWweuUiutx4ej146UezPXSv2fRAeU=;
 b=jmhXL415fXEqtG+O5nM1mlBcirHOceNaY00immIHa8+TPnQDJ5AUlcM68P/ra+JW4u
 3GuJNoccZMn/T6e4Vxarfe2NJ7MV0iVksitV3bEi8fF3XrXOsP66Hmy9z0K7G9i1lrHj
 yRy6NV4CFGptU1Vd5Mdaa4czQIdZV0Bgm2DOdUGqFDOlnOxPk1i3+FSbHUvB+YDnxjbu
 m7vlyVejRgaAfRuHTBvSxc4ZuQkiSE4EwmXysn9VpQZK9wYRjp7jRNdXAYjXIomwlAKJ
 l5EewwV1iHmRzMW+uOP7li8KgX98e+newsEFHJMXIFsWDjbB6cw4iVH17lTHDjlmti8m
 /UTg==
X-Gm-Message-State: APjAAAXW9h1/kdToHdT4ZCK3PBy/z2Lu99AA2m4N+r1SfXw+kmUo4Fsz
 AOF2RyUwXps/tUd/dxpsG6M=
X-Google-Smtp-Source: APXvYqzXhmFEsFsp6pqN+TP8Jn+x9XMVyMY/SjTnneXCEg7e318qlarpEXN25vv1DI0lY9gT+msajA==
X-Received: by 2002:a17:90a:be0a:: with SMTP id
 a10mr16827730pjs.112.1561283147081; 
 Sun, 23 Jun 2019 02:45:47 -0700 (PDT)
Received: from bobo.ozlabs.ibm.com ([1.129.156.141])
 by smtp.gmail.com with ESMTPSA id d26sm6181062pfn.29.2019.06.23.02.45.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 02:45:46 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH 3/3] mm/vmalloc: fix vmalloc_to_page for huge vmap mappings
Date: Sun, 23 Jun 2019 19:44:46 +1000
Message-Id: <20190623094446.28722-4-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190623094446.28722-1-npiggin@gmail.com>
References: <20190623094446.28722-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_024548_698709_4C3E3F2F 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 include/asm-generic/4level-fixup.h |  1 +
 include/asm-generic/5level-fixup.h |  1 +
 mm/vmalloc.c                       | 37 +++++++++++++++++++-----------
 3 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/include/asm-generic/4level-fixup.h b/include/asm-generic/4level-fixup.h
index e3667c9a33a5..3cc65a4dd093 100644
--- a/include/asm-generic/4level-fixup.h
+++ b/include/asm-generic/4level-fixup.h
@@ -20,6 +20,7 @@
 #define pud_none(pud)			0
 #define pud_bad(pud)			0
 #define pud_present(pud)		1
+#define pud_large(pud)			0
 #define pud_ERROR(pud)			do { } while (0)
 #define pud_clear(pud)			pgd_clear(pud)
 #define pud_val(pud)			pgd_val(pud)
diff --git a/include/asm-generic/5level-fixup.h b/include/asm-generic/5level-fixup.h
index bb6cb347018c..c4377db09a4f 100644
--- a/include/asm-generic/5level-fixup.h
+++ b/include/asm-generic/5level-fixup.h
@@ -22,6 +22,7 @@
 #define p4d_none(p4d)			0
 #define p4d_bad(p4d)			0
 #define p4d_present(p4d)		1
+#define p4d_large(p4d)			0
 #define p4d_ERROR(p4d)			do { } while (0)
 #define p4d_clear(p4d)			pgd_clear(p4d)
 #define p4d_val(p4d)			pgd_val(p4d)
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 4c9e150e5ad3..4be98f700862 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -36,6 +36,7 @@
 #include <linux/rbtree_augmented.h>
 
 #include <linux/uaccess.h>
+#include <asm/pgtable.h>
 #include <asm/tlbflush.h>
 #include <asm/shmparam.h>
 
@@ -284,26 +285,36 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
 
 	if (pgd_none(*pgd))
 		return NULL;
+
 	p4d = p4d_offset(pgd, addr);
 	if (p4d_none(*p4d))
 		return NULL;
-	pud = pud_offset(p4d, addr);
+	if (WARN_ON_ONCE(p4d_bad(*p4d)))
+		return NULL;
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+	if (p4d_large(*p4d))
+		return p4d_page(*p4d) + ((addr & ~P4D_MASK) >> PAGE_SHIFT);
+#endif
 
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
+	if (WARN_ON_ONCE(pud_bad(*pud)))
 		return NULL;
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+	if (pud_large(*pud))
+		return pud_page(*pud) + ((addr & ~PUD_MASK) >> PAGE_SHIFT);
+#endif
+
 	pmd = pmd_offset(pud, addr);
-	WARN_ON_ONCE(pmd_bad(*pmd));
-	if (pmd_none(*pmd) || pmd_bad(*pmd))
+	if (pmd_none(*pmd))
+		return NULL;
+	if (WARN_ON_ONCE(pmd_bad(*pmd)))
 		return NULL;
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+	if (pmd_large(*pmd))
+		return pmd_page(*pmd) + ((addr & ~PMD_MASK) >> PAGE_SHIFT);
+#endif
 
 	ptep = pte_offset_map(pmd, addr);
 	pte = *ptep;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
