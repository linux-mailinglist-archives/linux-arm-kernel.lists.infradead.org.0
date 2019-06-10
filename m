Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683C03AE46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 06:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N01sdOaDGmkT6/1BVNl8F/NJNYQBv8BQ12Ah0Dq3nNg=; b=OQAz1MXOrQGn1B
	beqS+12p5qtpJvkFVc+lCT0vpBXXIqFf48SxdC/TQvZ9xPGKXZxbmNfGtZutW7/C/zyfjSBum4v/R
	WPV+Pvxiu1HHfNADmINHmmMH1oPTGnF6gpkBGgZ8LuhL/VEW1kyRxfLaH2dHcfodKJXz3XjXTdaEF
	bOIOY1EFhEA7Fe9AutiynkB81jQ9Hr1dB0hZtAekI6TSeHZ8/Xcc3ADysDU8RwT/5XswSdH7y0f8U
	s6qdL4sbiHZzXwDzZFAM1LgRCtQL4rjnn4tfScXbWi5hQM6RNk1Uz7ZxdWnvWu27pskuRSj8IyVXC
	+ETz1p3pTAC5RLwxVs8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haC84-0003Dz-R3; Mon, 10 Jun 2019 04:41:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haC7I-0002nW-2q
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 04:41:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id u22so4522242pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 21:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j0iK9oPhBRVSERhwHAEayZPRDfAp+ATJEAPI7I5uyj4=;
 b=QcKUZrLgQKctcgR3ilhCBa5vjFh1fCNel4R0mH2jk1Tp1iY8hD5fmbOXmGKoUrtwrX
 aooSLGAYY4vJTaJiilgcSwtsbtlReimSqPJehqwexfgMa1TSDy87tibLD1OVDBuraUgF
 1eug6DwfebsLN8WATm5Uo/buzMbsbe7cmFeeGAou4YR8gUntPh269QbxM4FU0ceR+tkZ
 yYV/k5ae9a57jsDNkdnoZv/7BNEnWzMf2bpp4UgMJtp4lhaMos2gOosWi+v2Q2ucsNo8
 u4SyyZAk+CXBmcTfhN9KeuKxn8I04ooCPtfQSfJVzUy10NVs7IEypZ1DcHHiWqHw2nfp
 FjMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j0iK9oPhBRVSERhwHAEayZPRDfAp+ATJEAPI7I5uyj4=;
 b=af34FxtE0Xs4LMS/hKzY3+7+Uemb2V/8Grh6D6VF6Jk64gAMmyXbyJWy4HcgSno/Fi
 6vgZDi7UnEbTrwrAdKv7sYvGFRP8Skk3sJKKhUo1VMxQ2meaQrt5qqz7q8dDht5Eei7F
 jyz0Z2KwFVd11g9nmMx8W2BQ6V+B82iIu1UT07dLJYEaew75zsGltNnyhl6ip6DwSAfj
 NGOHtlymzB2xseQBPCnt6SGKoAmxMQCvFMlusrCluEQViSJ18or6gj3z1nEUPkSWazKh
 eu3fodt/qpXwtMeLzjWNBinNMlqSpDlM/gqcqdJFDB5LCRNvGyD7D0nv6oRg7CPfOQCE
 +hwg==
X-Gm-Message-State: APjAAAU484V4rRLwKWhgCs1fR5BDtldEpr51HgzSUG28jcSUDP5RoQB9
 lAkad6SuMzV+P5ac+yeEhjU=
X-Google-Smtp-Source: APXvYqw+VLnzFiNoQ//mElPmrK/yDIA214P00B8jjBcBGJdQSiCpHxlwG6iJk4iNAZq+HcvbqmTphQ==
X-Received: by 2002:a17:90a:9f8e:: with SMTP id
 o14mr18793157pjp.82.1560141667565; 
 Sun, 09 Jun 2019 21:41:07 -0700 (PDT)
Received: from bobo.local0.net (60-241-56-246.tpgi.com.au. [60.241.56.246])
 by smtp.gmail.com with ESMTPSA id l1sm9166802pgj.67.2019.06.09.21.41.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 21:41:07 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH 3/4] powerpc/64s/radix: support huge vmap vmalloc
Date: Mon, 10 Jun 2019 14:38:37 +1000
Message-Id: <20190610043838.27916-3-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610043838.27916-1-npiggin@gmail.com>
References: <20190610043838.27916-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_214108_189495_5A09F389 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Nicholas Piggin <npiggin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Applying huge vmap to vmalloc requires vmalloc_to_page to walk huge
pages. Define pud_large and pmd_large to support this.

Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
---
 arch/powerpc/include/asm/book3s/64/pgtable.h | 24 ++++++++++++--------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
index 5faceeefd9f9..8e02077b11fb 100644
--- a/arch/powerpc/include/asm/book3s/64/pgtable.h
+++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
@@ -923,6 +923,11 @@ static inline int pud_present(pud_t pud)
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
@@ -966,6 +971,11 @@ static inline int pgd_present(pgd_t pgd)
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
@@ -1091,6 +1101,11 @@ static inline pte_t *pmdp_ptep(pmd_t *pmd)
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
@@ -1159,15 +1174,6 @@ pmd_hugepage_update(struct mm_struct *mm, unsigned long addr, pmd_t *pmdp,
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
