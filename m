Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1AFE7302
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ew+yt1ZMlkdtKpfqmqxBq4FH6HODTTGIm2AoRaqwmIo=; b=D08R2wv/xv0hIQ
	YC/Xp+2JDvQJJFFh7li74t3nq94BG0zDIhIxcqMYn9GvC/5/VxisDi0Og6qck/7iLtlM3RIPVr2iW
	fi6fpJXhEAtKfutSGXg9qiP1H54RKpr4GsxRVZLGQ1GdHbQWST2FpFmP82jaTZ40+wHS3ePieET59
	ITt8rPaP/x+vFEpcDCBn4rnImXuH/XlSdl+5FU0OT/ZSnnWRZTFOk7JzUmGMFLjUgiwjI00Z1uNy+
	UbF1f9D0dh2Z6bvOVzSAlkDW34E+NgiuKO+vDlkBlaAnuVGtXlDmaDfvkaw7VVmhNjETSY1j/wrTT
	ANm8pPu5JIF9/ZeJXABQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP5Yo-0005Ym-5V; Mon, 28 Oct 2019 13:59:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP5YI-0005Lc-3E
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 13:59:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83B17337;
 Mon, 28 Oct 2019 06:59:21 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (unknown [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D23433F6C4;
 Mon, 28 Oct 2019 06:59:18 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v14 01/22] mm: Add generic p?d_leaf() macros
Date: Mon, 28 Oct 2019 13:58:49 +0000
Message-Id: <20191028135910.33253-2-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028135910.33253-1-steven.price@arm.com>
References: <20191028135910.33253-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_065922_179967_CB9B2332 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Exposing the pud/pgd levels of the page tables to walk_page_range() means
we may come across the exotic large mappings that come with large areas
of contiguous memory (such as the kernel's linear map).

For architectures that don't provide all p?d_leaf() macros, provide
generic do nothing default that are suitable where there cannot be leaf
pages at that level. Futher patches will add implementations for
individual architectures.

The name p?d_leaf() is chosen to minimize the confusion with existing
uses of "large" pages and "huge" pages which do not necessary mean that
the entry is a leaf (for example it may be a set of contiguous entries
that only take 1 TLB slot). For the purpose of walking the page tables
we don't need to know how it will be represented in the TLB, but we do
need to know for sure if it is a leaf of the tree.

Signed-off-by: Steven Price <steven.price@arm.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
---
 include/asm-generic/pgtable.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index 818691846c90..7f9eced287b7 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -1187,4 +1187,24 @@ static inline bool arch_has_pfn_modify_check(void)
 #define mm_pmd_folded(mm)	__is_defined(__PAGETABLE_PMD_FOLDED)
 #endif
 
+/*
+ * p?d_leaf() - true if this entry is a final mapping to a physical address.
+ * This differs from p?d_huge() by the fact that they are always available (if
+ * the architecture supports large pages at the appropriate level) even
+ * if CONFIG_HUGETLB_PAGE is not defined.
+ * Only meaningful when called on a valid entry.
+ */
+#ifndef pgd_leaf
+#define pgd_leaf(x)	0
+#endif
+#ifndef p4d_leaf
+#define p4d_leaf(x)	0
+#endif
+#ifndef pud_leaf
+#define pud_leaf(x)	0
+#endif
+#ifndef pmd_leaf
+#define pmd_leaf(x)	0
+#endif
+
 #endif /* _ASM_GENERIC_PGTABLE_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
