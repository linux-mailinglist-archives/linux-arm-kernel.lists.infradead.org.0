Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98197199A50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUDa8QrzvcCJb2rHIl1B5QlG3c0EVYIr/KmVFFa8plM=; b=dBFW6LQIHv/tP2
	itfgSZfwpE00srhHj7kQ1mb/UJ5OUgDtVkKKDbqBOFNhMAXJsOWMa6POZubzqkY2wSaLRU1lBKYsP
	oUn9zBgW4dDYKxIdoTtUIKBQS7E7wPBk8waep0QK2dLqSZ7KYdjURGOUftORh9+JXNCQiJblInWuC
	vFosdETCro43uOgEj6lVdcdblhEaUb4fihDYBvU8+0jk5KFjS5emikPeH0Nlq3LrCujqhMmklNXuP
	ORnlbDlPVV/ZurL1W1SMVKInYhY+3wSEhjA1FroxXekSfghOitJ35nimPfYyT4Q1MgbcuxFX1Uo3L
	iPGNS7FHRamM2VMQZeGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJBe-0002sN-G3; Tue, 31 Mar 2020 15:52:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJB3-0002g2-Sa
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=ORhgUsZRXz/7VRggA5yYP8KfRDKfMc8nypj0UKQ9Kxk=; b=Yicv2l3CvTTifsxdEe9eAUdQHg
 eP0JbD1muwlqmN24X8pnrhpwgqqgImYYgHymMPReFR0IYdiUt8iDQluJUaEm8voSC3BujIAR8Yb3D
 yh87/+JyNhjTz8OOO5j9g2w3CpJdW9HNvjvtwDaY7P9dwl42AUeoK/EawtfBop1DZxIXB+Zwk/JSl
 BGrc38xf3UyCM23/SMW/E/GjPERpcxbT2ceYeSEodz0NjC2lSzes/HIQ0V+4jSAd3cVJvw2c+HNsM
 n8GPAvuQGo3Q2yxTtZUT56gNrUGXT4Bhy4pqNQpEaTbEzvBr4817txxMPELkV30qPOWoNaQp1y8Qg
 +0eHLSEA==;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHuE-0003YK-2x
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:30:22 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2AAA3FA5DC822BD68937;
 Tue, 31 Mar 2020 22:29:58 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Tue, 31 Mar 2020 22:29:52 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <peterz@infradead.org>, <mark.rutland@arm.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, <npiggin@gmail.com>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>,
 <corbet@lwn.net>, <vgupta@synopsys.com>, <tony.luck@intel.com>
Subject: [RFC PATCH v5 5/8] mm: tlb: Pass struct mmu_gather to
 flush_pud_tlb_range
Date: Tue, 31 Mar 2020 22:29:24 +0800
Message-ID: <20200331142927.1237-6-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200331142927.1237-1-yezhenyu2@huawei.com>
References: <20200331142927.1237-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_153019_445821_B9241B2C 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
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
 include/asm-generic/pgtable.h | 4 ++--
 mm/pgtable-generic.c          | 8 +++++++-
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index 32d4661e5a56..1c67a744877e 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -1161,10 +1161,10 @@ static inline int pmd_free_pte_page(pmd_t *pmd, unsigned long addr)
  * e.g. see arch/arc: flush_pmd_tlb_range
  */
 #define flush_pmd_tlb_range(tlb, vma, addr, end)	flush_tlb_range(vma, addr, end)
-#define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
+#define flush_pud_tlb_range(tlb, vma, addr, end)	flush_tlb_range(vma, addr, end)
 #else
 #define flush_pmd_tlb_range(tlb, vma, addr, end)	BUILD_BUG()
-#define flush_pud_tlb_range(vma, addr, end)	BUILD_BUG()
+#define flush_pud_tlb_range(tlb, vma, addr, end)	BUILD_BUG()
 #endif
 #endif
 
diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
index 96c9cf77bfb5..9ab9d8f698ea 100644
--- a/mm/pgtable-generic.c
+++ b/mm/pgtable-generic.c
@@ -166,11 +166,17 @@ pud_t pudp_huge_clear_flush(struct vm_area_struct *vma, unsigned long address,
 			    pud_t *pudp)
 {
 	pud_t pud;
+	struct mmu_gather tlb;
+	unsigned long tlb_start = address;
+	unsigned long tlb_end = address + HPAGE_PUD_SIZE;
 
 	VM_BUG_ON(address & ~HPAGE_PUD_MASK);
 	VM_BUG_ON(!pud_trans_huge(*pudp) && !pud_devmap(*pudp));
 	pud = pudp_huge_get_and_clear(vma->vm_mm, address, pudp);
-	flush_pud_tlb_range(vma, address, address + HPAGE_PUD_SIZE);
+	tlb_gather_mmu(&tlb, vma->vm_mm, tlb_start, tlb_end);
+	tlb.cleared_puds = 1;
+	flush_pud_tlb_range(&tlb, vma, tlb_start, tlb_end);
+	tlb_finish_mmu(&tlb, tlb_start, tlb_end);
 	return pud;
 }
 #endif
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
