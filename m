Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7315B533
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 08:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3J/SA77xYuu823/KkBNl7jszIVTZ1fNPqMT5SiSoU3M=; b=AKY8BolbQV5pie
	4ZjiUFxYEEHrtJD05rx0aqkIuK3dI9KZbv/63pEKvx3TRjMrx/ZzJ0yU4wqQnjFWqLDtvbukwgtH7
	moYqbAZX/pYqO907gvIdp8ru2U3N4R0ffNVoSk7STsTlG227+GHifxmHxQjdvslIXAvrM60xP6mBn
	J+5CR7PYqLvtuNoxJQAWcZYvTUXWdeAONTxvVjstq8/LM3FE1UGgCnAEFdtL+BXPBuGNYB6nw/w/L
	zw/P5juuNG7vduovBBv6rQxjkyiZZcF4ZXUJPwVLlNQAaKTUg7MLDC10tL7hw2y/8ZulM7qxUfL+K
	ZCBU7EqcV6BZ5znX5QzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhq0Z-00064k-4V; Mon, 01 Jul 2019 06:41:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhpzm-0005eO-25
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 06:40:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id m4so5530074pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 23:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6Zlw/hCGICkGVg8omOyX/d2u3HngLNHtlfTr8g+whbg=;
 b=ouq5FzdIf9rNySj7b3zWVPcAwWspCJDbKnSjFCLmfjwBeC3LJPB34aIN0+a7wQ8McC
 p1Txuhs4kMtY+16Cqhhps3AA30X2hrE5mj6QueTPMfgLdP9ZAL77JuJMAafKBj8Wct8b
 QjxaYZ1kTJ5UE+4AUmDCQjs7UUTxxBoXRQu5Wj84zOrGTJ8ez4CMlZFv3/c0+r5SCFqa
 UrMNuge9PYhXovbwW/X9u2mXxujZnpVUsInRSBgusFGBG9eoHqQ+JcLGdPYGoL91mbVG
 Yu1phLwtKP+clAkHJhLFNUWD84oz9qvm0JbedtUx+FFMqCYLfFmH0zttRDXk8AY+NjND
 E4nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6Zlw/hCGICkGVg8omOyX/d2u3HngLNHtlfTr8g+whbg=;
 b=fARk7q2LZ3VLmqgUB1hIi1KLNjYtwXshlSyDV6etL3l/NHHElcMWLbatMA+lVBaH8C
 3PWIiLM881KdygOH4gkzvFap8bAZ8VOHuPgzdJF7uXq8NGtHypGRd04YsePyiTRD9ds2
 Iikv3Ll/rDOYZehpHxATbW3X2Vy3XGQ7h83iXyZF9s2VvmHkh0C5XzSrUSSNQvABOKr8
 iki7SN8meMzLKwrTqp+TxDvkFMRUpMpDICA+m9yjGg+puY5Y5LpcWJ/zKVtofZW0HHJF
 bTAEHnIyw1PkD94RaYXp0WVtTeFaYog0X1FK4aXHVrClGCv8sSQlgnMqPbnD4CaCeJTN
 zi6A==
X-Gm-Message-State: APjAAAU3UrDTCqF6AhAyJ9tkueULWkRoLPrMOHyYTbF8p3vffvjPaX+S
 wI+c0IlkeCalO5MQYhUA+jw=
X-Google-Smtp-Source: APXvYqx98EZ/1NGwoXYug6FXGMmAdVT2/AyL1LfX+2sBRIhK5AVZczoBxviaDZiO/22AP1OmmeXKEg==
X-Received: by 2002:a17:90a:ac11:: with SMTP id
 o17mr29589490pjq.134.1561963257515; 
 Sun, 30 Jun 2019 23:40:57 -0700 (PDT)
Received: from bobo.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id x128sm24238285pfd.17.2019.06.30.23.40.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:40:57 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: "linux-mm @ kvack . org" <linux-mm@kvack.org>
Subject: [PATCH v2 2/3] powerpc/64s: Add p?d_large definitions
Date: Mon,  1 Jul 2019 16:40:25 +1000
Message-Id: <20190701064026.970-3-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190701064026.970-1-npiggin@gmail.com>
References: <20190701064026.970-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_234058_198925_8E69EB27 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicholas Piggin <npiggin@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev @ lists . ozlabs . org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
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
