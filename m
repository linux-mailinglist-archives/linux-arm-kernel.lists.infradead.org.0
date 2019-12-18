Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D065124DB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1d4WgMzqye8B4/Kg6l/waBVOMYDsYXfydGa5V2PJfw=; b=ZwMctShHF8Lpm1
	FxYJ+ca10Wt4pwxwVHp3M1dT8UwxdKIiaxwajS5v2K1LA1E0PiJQjXCNCztVuJeweJuOQO3d3ipc+
	uV9hcVtP2BcLUu63kbZaENWo2pv9kYHvkLAYIZtVg/g1EeLm7ITMRc0DqjfKxRYR8FCDUpNEPo18j
	QRfbkzp5gnfscVFBoIawpTQzoNHs/BicWLRnaGmKzdGYw7BfXklTXJvNc6UC0eo58iSUKVetPIH6a
	sBUBrhX2LzrLMgaAdlXe7BwZuSuLGOnVmhbI81LxAuemQwb263HSD9hpM7OY3Wc5RoR6N6kuGyhN1
	ipOAoSlerztC+Gb2utdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcFU-0007Eg-Rd; Wed, 18 Dec 2019 16:32:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc8F-0007Tj-OS
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:25:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD8BA31B;
 Wed, 18 Dec 2019 08:25:02 -0800 (PST)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C08C3F719;
 Wed, 18 Dec 2019 08:25:00 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Subject: [PATCH v17 13/23] mm: pagewalk: Don't lock PTEs for
 walk_page_range_novma()
Date: Wed, 18 Dec 2019 16:23:52 +0000
Message-Id: <20191218162402.45610-14-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191218162402.45610-1-steven.price@arm.com>
References: <20191218162402.45610-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082503_980485_6079763F 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

walk_page_range_novma() can be used to walk page tables or the kernel or
for firmware. These page tables may contain entries that are not backed
by a struct page and so it isn't (in general) possible to take the PTE
lock for the pte_entry() callback. So update walk_pte_range() to only
take the lock when no_vma==false by splitting out the inner loop to a
separate function and add a comment explaining the difference to
walk_page_range_novma().

Signed-off-by: Steven Price <steven.price@arm.com>
---
 mm/pagewalk.c | 35 ++++++++++++++++++++++++++++-------
 1 file changed, 28 insertions(+), 7 deletions(-)

diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index d5773465f6da..4b5ee92ba079 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -4,15 +4,12 @@
 #include <linux/sched.h>
 #include <linux/hugetlb.h>
 
-static int walk_pte_range(pmd_t *pmd, unsigned long addr, unsigned long end,
-			  struct mm_walk *walk)
+static int walk_pte_range_inner(pte_t *pte, unsigned long addr,
+				unsigned long end, struct mm_walk *walk)
 {
-	pte_t *pte;
-	int err = 0;
 	const struct mm_walk_ops *ops = walk->ops;
-	spinlock_t *ptl;
+	int err = 0;
 
-	pte = pte_offset_map_lock(walk->mm, pmd, addr, &ptl);
 	for (;;) {
 		err = ops->pte_entry(pte, addr, addr + PAGE_SIZE, walk);
 		if (err)
@@ -22,8 +19,26 @@ static int walk_pte_range(pmd_t *pmd, unsigned long addr, unsigned long end,
 			break;
 		pte++;
 	}
+	return err;
+}
+
+static int walk_pte_range(pmd_t *pmd, unsigned long addr, unsigned long end,
+			  struct mm_walk *walk)
+{
+	pte_t *pte;
+	int err = 0;
+	spinlock_t *ptl;
+
+	if (walk->no_vma) {
+		pte = pte_offset_map(pmd, addr);
+		err = walk_pte_range_inner(pte, addr, end, walk);
+		pte_unmap(pte);
+	} else {
+		pte = pte_offset_map_lock(walk->mm, pmd, addr, &ptl);
+		err = walk_pte_range_inner(pte, addr, end, walk);
+		pte_unmap_unlock(pte, ptl);
+	}
 
-	pte_unmap_unlock(pte, ptl);
 	return err;
 }
 
@@ -394,6 +409,12 @@ int walk_page_range(struct mm_struct *mm, unsigned long start,
 	return err;
 }
 
+/*
+ * Similar to walk_page_range() but can walk any page tables even if they are
+ * not backed by VMAs. Because 'unusual' entries may be walked this function
+ * will also not lock the PTEs for the pte_entry() callback. This is useful for
+ * walking the kernel pages tables or page tables for firmware.
+ */
 int walk_page_range_novma(struct mm_struct *mm, unsigned long start,
 			  unsigned long end, const struct mm_walk_ops *ops,
 			  void *private)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
