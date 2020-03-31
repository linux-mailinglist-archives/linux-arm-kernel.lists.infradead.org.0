Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E279199A61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSCw+xwaM4DomQNSxjRUDfBX6mkyM5gn+TBNmwHdnxg=; b=ZpWj+PCAF7GiwI
	s/DUz8m45AIsFirYxgLK6X3/UaN+7Yo+31QJYN8heb/rb7JXQssYune30rWOuDNZ5AhnmQx+O6bgo
	dEXtHu/50pxPQ53xqheYxVjAvWEzk0TB1aw9Su3ShB5TX3Ee4v92HYx4Rie0P/DCMVcDT4thaRV8O
	9Am4Pzmf42/jg4OyF8rXkEVWKuOG0kga4pHQvgkb4Pz4niTo39oSuda3lb+YDC1+BSBq2pLECyg5C
	xPyxrnx0TRZtwExtEdmhINJpw1N+LVWGQFjZZzTqbyTp5P/2tqrbqeT7gibS5H9O8MTKx6AX/82v4
	RoiIYr1tzFGmVUg58jMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJCs-0003xQ-An; Tue, 31 Mar 2020 15:53:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJBE-0002oZ-38
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=evWbOPgp72cgW6XzSIZlKXJG27TiLL2rxkKNq62hTdM=; b=Y1BpmhOSJhF7N3gx1i71ZO7JMf
 5J7xg6pOUbpiYEwN9jAkzmeGd3G2V4n/M6jhaD1bDdMpHuFYukS92iOIswB85dcoft6a4kaS3sGYY
 EYg3zcSoikzS7Igi7ZBTTbfsafPv9FVZHgwN4xTDHItvh0bU16BP/VA+CEQIkWdaDlf33kqjMDEJs
 jBCXXpd2dhcmlgIkrxOYzGXGlNVS0XQxXCOXIsoFwzn44KJ1ZKT29eGh3TIQIPmlTYYU7Fgn2I6xX
 sXdIZM5o54EB9a2w2RES022hzaE32YyRuc2zARGqzEde9qQNuJFze/04B7m67NuU1IMzBtp/e/Gpx
 2MEn/Iaw==;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHuN-0003bM-2s
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:30:29 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 38FC7F38AA079AC0D10D;
 Tue, 31 Mar 2020 22:30:03 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Tue, 31 Mar 2020 22:29:54 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <peterz@infradead.org>, <mark.rutland@arm.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, <npiggin@gmail.com>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>,
 <corbet@lwn.net>, <vgupta@synopsys.com>, <tony.luck@intel.com>
Subject: [RFC PATCH v5 6/8] mm: tlb: Pass struct mmu_gather to
 flush_hugetlb_tlb_range
Date: Tue, 31 Mar 2020 22:29:25 +0800
Message-ID: <20200331142927.1237-7-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200331142927.1237-1-yezhenyu2@huawei.com>
References: <20200331142927.1237-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_153027_528189_CCA574A2 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Preparations to support for passing struct mmu_gather to
flush_tlb_range.  See in future patches.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/powerpc/include/asm/book3s/64/tlbflush.h |  3 ++-
 mm/hugetlb.c                                  | 17 ++++++++++++-----
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/powerpc/include/asm/book3s/64/tlbflush.h b/arch/powerpc/include/asm/book3s/64/tlbflush.h
index 6445d179ac15..968f10ef3d51 100644
--- a/arch/powerpc/include/asm/book3s/64/tlbflush.h
+++ b/arch/powerpc/include/asm/book3s/64/tlbflush.h
@@ -57,7 +57,8 @@ static inline void flush_pmd_tlb_range(struct mmu_gather *tlb,
 }
 
 #define __HAVE_ARCH_FLUSH_HUGETLB_TLB_RANGE
-static inline void flush_hugetlb_tlb_range(struct vm_area_struct *vma,
+static inline void flush_hugetlb_tlb_range(struct mmu_gather *tlb,
+					   struct vm_area_struct *vma,
 					   unsigned long start,
 					   unsigned long end)
 {
diff --git a/mm/hugetlb.c b/mm/hugetlb.c
index dd8737a94bec..f913ce0b4831 100644
--- a/mm/hugetlb.c
+++ b/mm/hugetlb.c
@@ -4441,7 +4441,8 @@ long follow_hugetlb_page(struct mm_struct *mm, struct vm_area_struct *vma,
  * ARCHes with special requirements for evicting HUGETLB backing TLB entries can
  * implement this.
  */
-#define flush_hugetlb_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
+#define flush_hugetlb_tlb_range(tlb, vma, addr, end)	\
+	flush_tlb_range(vma, addr, end)
 #endif
 
 unsigned long hugetlb_change_protection(struct vm_area_struct *vma,
@@ -4455,6 +4456,7 @@ unsigned long hugetlb_change_protection(struct vm_area_struct *vma,
 	unsigned long pages = 0;
 	bool shared_pmd = false;
 	struct mmu_notifier_range range;
+	struct mmu_gather tlb;
 
 	/*
 	 * In the case of shared PMDs, the area to flush could be beyond
@@ -4520,10 +4522,15 @@ unsigned long hugetlb_change_protection(struct vm_area_struct *vma,
 	 * and that page table be reused and filled with junk.  If we actually
 	 * did unshare a page of pmds, flush the range corresponding to the pud.
 	 */
-	if (shared_pmd)
-		flush_hugetlb_tlb_range(vma, range.start, range.end);
-	else
-		flush_hugetlb_tlb_range(vma, start, end);
+	if (shared_pmd) {
+		tlb_gather_mmu(&tlb, mm, range.start, range.end);
+		flush_hugetlb_tlb_range(&tlb, vma, range.start, range.end);
+		tlb_finish_mmu(&tlb, range.start, range.end);
+	} else {
+		tlb_gather_mmu(&tlb, mm, start, end);
+		flush_hugetlb_tlb_range(&tlb, vma, start, end);
+		tlb_finish_mmu(&tlb, start, end);
+	}
 	/*
 	 * No need to call mmu_notifier_invalidate_range() we are downgrading
 	 * page table protection not changing it to point to a new page.
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
