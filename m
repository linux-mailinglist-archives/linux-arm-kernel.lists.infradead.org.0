Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290D9B47A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 08:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6cJdGAr6yIWXORoKXNNMhfiYm93z//sDHEhuxTDUUzs=; b=CkdomU6xmrjjyiuI3atGC6kM9A
	EVI3H4evwNPs51digKC0hugX3mXElOi6emvAxEdmzSAb+O9TikmcQr8x5jVNfyoAbeAdw9G0tzNr1
	q/nhchkqqCpuJ6+pt/ffcu14jmlDwUWxLHJMjgo54h1be8cHMCX76ndaFDhtlpl4vZOiXTwgxbT0Y
	RqqtohcPDfoRtdKwn9K1eninE5x4ffierx6P9aItkn8W4oVZhoYzDfRz848A9VXCcPJWrSk8eNxKs
	nKVxGgcsbHo4Q6pFYCNILddzi53my+iq6z8bafWn6ZTCv2Fpi+jaL6jV1AdE6kBTy3G0sEN54GMHP
	qkq/ldqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7Dl-0006kh-Q6; Tue, 17 Sep 2019 06:44:18 +0000
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7DV-0006kG-Pg
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 06:44:03 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R191e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04420; MF=shile.zhang@linux.alibaba.com; NM=1;
 PH=DS; RN=3; SR=0; TI=SMTPD_---0TcaHJnG_1568702495; 
Received: from
 e18g09479.et15sqa.tbsite.net(mailfrom:shile.zhang@linux.alibaba.com
 fp:SMTPD_---0TcaHJnG_1568702495) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 17 Sep 2019 14:41:41 +0800
From: shile.zhang@linux.alibaba.com
To: linux@armlinux.org.uk
Subject: [RESEND PATCH] mm/hugetlb: topdown mmap supports for hugepage
Date: Tue, 17 Sep 2019 14:41:35 +0800
Message-Id: <1568702495-220091-1-git-send-email-shile.zhang@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <VI1PR0701MB2846C892037A515D0B3F4EF8A12B0@VI1PR0701MB2846.eurprd07.prod.outlook.com>
References: <VI1PR0701MB2846C892037A515D0B3F4EF8A12B0@VI1PR0701MB2846.eurprd07.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_234401_971411_6B229C12 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -8.7 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [47.88.44.36 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shile Zhang <shile.zhang@linux.alibaba.com>

Similar to other arches, this adds topdown mmap support for hugepage
in user process address space allocation. It allows mmap big size
hugepage. This patch copied from the implementation in arch/x86.

Signed-off-by: Shile Zhang <shile.zhang@linux.alibaba.com>
---
 arch/arm/include/asm/page.h |  1 +
 arch/arm/mm/hugetlbpage.c   | 85 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 86 insertions(+)

diff --git a/arch/arm/include/asm/page.h b/arch/arm/include/asm/page.h
index c2b75cb..dcb4df5 100644
--- a/arch/arm/include/asm/page.h
+++ b/arch/arm/include/asm/page.h
@@ -141,6 +141,7 @@ extern void __cpu_copy_user_highpage(struct page *to, struct page *from,
 
 #ifdef CONFIG_KUSER_HELPERS
 #define __HAVE_ARCH_GATE_AREA 1
+#define HAVE_ARCH_HUGETLB_UNMAPPED_AREA
 #endif
 
 #ifdef CONFIG_ARM_LPAE
diff --git a/arch/arm/mm/hugetlbpage.c b/arch/arm/mm/hugetlbpage.c
index a1e5aac..ba9e151 100644
--- a/arch/arm/mm/hugetlbpage.c
+++ b/arch/arm/mm/hugetlbpage.c
@@ -33,3 +33,88 @@ int pmd_huge(pmd_t pmd)
 {
 	return pmd_val(pmd) && !(pmd_val(pmd) & PMD_TABLE_BIT);
 }
+
+#ifdef CONFIG_HUGETLB_PAGE
+static unsigned long hugetlb_get_unmapped_area_bottomup(struct file *file,
+		unsigned long addr, unsigned long len,
+		unsigned long pgoff, unsigned long flags)
+{
+	struct hstate *h = hstate_file(file);
+	struct vm_unmapped_area_info info;
+
+	info.flags = 0;
+	info.length = len;
+	info.low_limit = current->mm->mmap_legacy_base;
+	info.high_limit = TASK_SIZE;
+	info.align_mask = PAGE_MASK & ~huge_page_mask(h);
+	info.align_offset = 0;
+	return vm_unmapped_area(&info);
+}
+
+static unsigned long hugetlb_get_unmapped_area_topdown(struct file *file,
+		unsigned long addr0, unsigned long len,
+		unsigned long pgoff, unsigned long flags)
+{
+	struct hstate *h = hstate_file(file);
+	struct vm_unmapped_area_info info;
+	unsigned long addr;
+
+	info.flags = VM_UNMAPPED_AREA_TOPDOWN;
+	info.length = len;
+	info.low_limit = PAGE_SIZE;
+	info.high_limit = current->mm->mmap_base;
+	info.align_mask = PAGE_MASK & ~huge_page_mask(h);
+	info.align_offset = 0;
+	addr = vm_unmapped_area(&info);
+
+	/*
+	 * A failed mmap() very likely causes application failure,
+	 * so fall back to the bottom-up function here. This scenario
+	 * can happen with large stack limits and large mmap()
+	 * allocations.
+	 */
+	if (addr & ~PAGE_MASK) {
+		VM_BUG_ON(addr != -ENOMEM);
+		info.flags = 0;
+		info.low_limit = TASK_UNMAPPED_BASE;
+		info.high_limit = TASK_SIZE;
+		addr = vm_unmapped_area(&info);
+	}
+
+	return addr;
+}
+
+unsigned long
+hugetlb_get_unmapped_area(struct file *file, unsigned long addr,
+		unsigned long len, unsigned long pgoff, unsigned long flags)
+{
+	struct hstate *h = hstate_file(file);
+	struct mm_struct *mm = current->mm;
+	struct vm_area_struct *vma;
+
+	if (len & ~huge_page_mask(h))
+		return -EINVAL;
+	if (len > TASK_SIZE)
+		return -ENOMEM;
+
+	if (flags & MAP_FIXED) {
+		if (prepare_hugepage_range(file, addr, len))
+			return -EINVAL;
+		return addr;
+	}
+
+	if (addr) {
+		addr = ALIGN(addr, huge_page_size(h));
+		vma = find_vma(mm, addr);
+		if (TASK_SIZE - len >= addr &&
+		    (!vma || addr + len <= vma->vm_start))
+			return addr;
+	}
+	if (mm->get_unmapped_area == arch_get_unmapped_area)
+		return hugetlb_get_unmapped_area_bottomup(file, addr, len,
+				pgoff, flags);
+	else
+		return hugetlb_get_unmapped_area_topdown(file, addr, len,
+				pgoff, flags);
+}
+#endif /* CONFIG_HUGETLB_PAGE */
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
