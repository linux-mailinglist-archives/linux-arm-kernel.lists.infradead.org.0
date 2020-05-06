Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520E91C682A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uZfzbTZNV3gUtvM8RPSn1cejkf7Nz+x9X2zWUP50WUw=; b=iA3VKXdYo70/1/32wXRGkbfmA8
	JYx2kpHcXN0wK38VzOpVXaWarTbTG6DuRu5VlETARGWPO2BAq9YAqXaUg0ID+wMKSlvqv5/zhFWr8
	rYlL2LpBOO0axvcod8oUG/wmz4OX2kcnvt3HTxXDHEXILGcVIAb9OFI+DBaHaqiyXgsCDYqtdpvq8
	Uv62qrYcCuvP7Q8ARxRlH9NeAp6or1e/XtMOvMD+hEYMy54CAl+NZEzXSr/Vw13PuFBTHPciDM11l
	AThL6Kqv+9jZjrU+nzuv2q4Svh4bIAOAtbJrI+BYYpudz89cqLd3a/07nLl1GKJJltS2BPIwEubtg
	hpF3dcOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDJL-0005Br-Ut; Wed, 06 May 2020 06:13:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDIq-0004x4-IO
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:13:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BB871045;
 Tue,  5 May 2020 23:13:07 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.71.196])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 01BE43F68F;
 Tue,  5 May 2020 23:13:04 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	akpm@linux-foundation.org
Subject: [PATCH V2 1/3] arm64/mm: Drop __HAVE_ARCH_HUGE_PTEP_GET
Date: Wed,  6 May 2020 11:42:12 +0530
Message-Id: <1588745534-24418-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588745534-24418-1-git-send-email-anshuman.khandual@arm.com>
References: <1588745534-24418-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_231308_654073_20CC9DF6 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Platform specific huge_ptep_get() is required only when fetching the huge
PTE involves more than just dereferencing the page table pointer. This is
not the case on arm64 platform. Hence huge_ptep_pte() can be dropped along
with it's __HAVE_ARCH_HUGE_PTEP_GET subscription.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/hugetlb.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/include/asm/hugetlb.h b/arch/arm64/include/asm/hugetlb.h
index 2eb6c234d594..b88878ddc88b 100644
--- a/arch/arm64/include/asm/hugetlb.h
+++ b/arch/arm64/include/asm/hugetlb.h
@@ -17,12 +17,6 @@
 extern bool arch_hugetlb_migration_supported(struct hstate *h);
 #endif
 
-#define __HAVE_ARCH_HUGE_PTEP_GET
-static inline pte_t huge_ptep_get(pte_t *ptep)
-{
-	return READ_ONCE(*ptep);
-}
-
 static inline int is_hugepage_only_range(struct mm_struct *mm,
 					 unsigned long addr, unsigned long len)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
