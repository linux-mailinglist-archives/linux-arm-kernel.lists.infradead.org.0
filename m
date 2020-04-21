Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31B21B2121
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B0HShRpmQJSVYRoCNUJglYgsbqRGekAKpETv0FyaleE=; b=uj746r70ESbeyR
	U94usdJqTDxSkm/FDyRQZ7m+WTMJwRLviB9rmT2U4qvhWb/yTE680jky1klUwn/jRyzEbiqHriVwD
	ireqdGMABIuhcIarVKPFJXMsZsLFd58lCPaJNdpIxtS/bbk/zuSv+/Wy2v4xXHw8OoGXe0p5SJenB
	kxIywoF+RytOhAjTfsHm5Unve55czaya8i7QDBHsSD3ix/3oo29Hle0+a6gn+C8STPiarg+MobPhl
	l6scafu1XdPeh72STFPhmrRU7qMhuIVW1JDlYZByzTF2g1hRcNBM9MJWzFyUAVLo14dsxAxKwmYgN
	GurVJi8oD0viQcnUVw9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnz0-0008WH-8B; Tue, 21 Apr 2020 08:10:18 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnya-0008Ff-0O
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:09:53 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 4E462C5A192B1903B93A;
 Tue, 21 Apr 2020 16:09:35 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Tue, 21 Apr 2020 16:09:27 +0800
From: Tian Tao <tiantao6@hisilicon.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>,
 <gregkh@linuxfoundation.org>, <info@metux.net>, <allison@lohutok.net>,
 <james.morse@arm.com>, <tglx@linutronix.de>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <jonathan.cameron@huawei.com>
Subject: [PATCH] arm32: fix flushcache syscall with device address
Date: Tue, 21 Apr 2020 16:08:34 +0800
Message-ID: <1587456514-61156-1-git-send-email-tiantao6@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_010952_217427_5AED8929 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linuxarm@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An issue has been observed on our Kungpeng916 systems when using a PCI
express GPU. This occurs when a 32 bit application running on a 64 bit
kernel issues a cache flush operation to a memory address that is in
a PCI BAR of the GPU.The results in an illegal operation and
subsequent crash.

Signed-off-by: Tian Tao <tiantao6@hisilicon.com>
Signed-off-by: Lixin Chen <chenlixin1@huawei.com>
Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
---
 arch/arm64/kernel/sys_compat.c | 69 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/arch/arm64/kernel/sys_compat.c b/arch/arm64/kernel/sys_compat.c
index 3c18c24..6c07944 100644
--- a/arch/arm64/kernel/sys_compat.c
+++ b/arch/arm64/kernel/sys_compat.c
@@ -15,12 +15,74 @@
 #include <linux/slab.h>
 #include <linux/syscalls.h>
 #include <linux/uaccess.h>
+#include <linux/hugetlb.h>
 
 #include <asm/cacheflush.h>
 #include <asm/system_misc.h>
 #include <asm/tlbflush.h>
 #include <asm/unistd.h>
 
+static long __check_pt_cacheable(unsigned long vaddr)
+{
+	struct mm_struct *mm = current->mm;
+	pgd_t *pgd;
+	p4d_t *p4d;
+	pud_t *pud;
+	pudval_t pudval;
+	pmd_t *pmd;
+	pmdval_t pmdval;
+	pte_t *pte;
+	pteval_t pteval;
+	pgprot_t pgprot;
+
+	spin_lock(&mm->page_table_lock);
+	pgd = pgd_offset(mm, vaddr);
+	if (pgd_none(*pgd) || unlikely(pgd_bad(*pgd)))
+		goto no_page;
+
+	p4d = p4d_offset(pgd, vaddr);
+	if (p4d_none(*p4d) || unlikely(p4d_bad(*p4d)))
+		goto no_page;
+
+	pud = pud_offset(p4d, vaddr);
+	if (pud_none(*pud) || unlikely(pud_bad(*pud)))
+		goto no_page;
+	if (pud_huge(*pud)) {
+		pudval = pud_val(*pud);
+		pgprot = __pgprot(pudval);
+		goto out;
+	}
+
+	pmd = pmd_offset(pud, vaddr);
+	if (pmd_none(*pmd) || unlikely(pmd_bad(*pmd)))
+		goto no_page;
+	if (pmd_huge(*pmd)) {
+		pmdval = pmd_val(*pmd);
+		pgprot = __pgprot(pmdval);
+		goto out;
+	}
+
+	pte = pte_offset_map(pmd, vaddr);
+	if (!pte_present(*pte) || pte_none(*pte))
+		goto no_page;
+	pteval = pte_val(*pte);
+	pgprot = __pgprot(pteval);
+
+out:
+	pgprot.pgprot &= PTE_ATTRINDX_MASK;
+	if (pgprot.pgprot != PTE_ATTRINDX(MT_NORMAL)) {
+		pr_debug("non-cache page pgprot value=0x%llx.\n",
+			pgprot.pgprot);
+		goto no_page;
+	}
+	spin_unlock(&mm->page_table_lock);
+	return 1;
+
+no_page:
+	spin_unlock(&mm->page_table_lock);
+	return 0;
+}
+
 static long
 __do_compat_cache_op(unsigned long start, unsigned long end)
 {
@@ -32,6 +94,13 @@ __do_compat_cache_op(unsigned long start, unsigned long end)
 		if (fatal_signal_pending(current))
 			return 0;
 
+		 /* do not flush page table is non-cacheable */
+		if (!__check_pt_cacheable(start)) {
+			cond_resched();
+			start += chunk;
+			continue;
+		}
+
 		if (cpus_have_const_cap(ARM64_WORKAROUND_1542419)) {
 			/*
 			 * The workaround requires an inner-shareable tlbi.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
