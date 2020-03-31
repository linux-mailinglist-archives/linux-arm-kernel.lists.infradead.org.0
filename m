Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF57198B93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 07:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xq62EKbuiK0f7qZOJOWFxfbXW+rfUFsjQ+wnM3rUi/c=; b=ZqbpWAXd943lUH7THIXyU99pKg
	18p0RaoJRgBMV7ve2kjQ8GPGFDjhdZd0JMAOi6niWjSaJFz0DJR3WvkU0ARKQfdPF5X12Wr/HK9wZ
	r4F03XvK+PZdNNvTNX66MARSbUOBsd3cawa7TnM3qui2aSsaWSRgXNhzQAYS0ZlEt41MJm5hhI0J6
	L2Rp6X2pzb6502ZdW4+vg1HUdPMGa8mNucQKqGj2Lr6cnDJNlRiXOQiANKROijQ5tb7Sf5TRhJmBn
	uqQpJa60XNAkdEmESO/sEOb0BB8jI/LuuFsIhByzpJ+zEoXenrMuYfSqnSa9HvrBDtcUHBOLgXVPu
	jmlOuw3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ9BP-0004nA-BC; Tue, 31 Mar 2020 05:11:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ9Ao-0004Rd-LB
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 05:10:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F354B1FB;
 Mon, 30 Mar 2020 22:10:49 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CA48B3F71E;
 Mon, 30 Mar 2020 22:10:38 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V3 2/3] mm/sparsemem: Enable vmem_altmap support in
 vmemmap_alloc_block_buf()
Date: Tue, 31 Mar 2020 10:39:46 +0530
Message-Id: <1585631387-18819-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585631387-18819-1-git-send-email-anshuman.khandual@arm.com>
References: <1585631387-18819-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_221050_825243_A5545302 
X-CRM114-Status: GOOD (  16.82  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>,
 jgg@mellanox.com, aneesh.kumar@linux.ibm.com, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 rcampbell@nvidia.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 jglisse@redhat.com, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, robin.murphy@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are many instances where vmemap allocation is often switched between
regular memory and device memory just based on whether altmap is available
or not. vmemmap_alloc_block_buf() is used in various platforms to allocate
vmemmap mappings. Lets also enable it to handle altmap based device memory
allocation along with existing regular memory allocations. This will help
in avoiding the altmap based allocation switch in many places.

While here also implement a regular memory allocation fallback mechanism
when the first preferred device memory allocation fails. This will ensure
preserving the existing semantics on powerpc platform. To summarize there
are three different methods to call vmemmap_alloc_block_buf().

(., NULL,   false) /* Allocate from system RAM */
(., altmap, false) /* Allocate from altmap without any fallback */
(., altmap, true)  /* Allocate from altmap with fallback (system RAM) */

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: x86@kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/mm/mmu.c       |  3 ++-
 arch/powerpc/mm/init_64.c | 10 +++++-----
 arch/x86/mm/init_64.c     |  6 ++----
 include/linux/mm.h        |  3 ++-
 mm/sparse-vmemmap.c       | 30 ++++++++++++++++++++++++------
 5 files changed, 35 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 2feed38106d6..81f88c88484f 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -1063,7 +1063,8 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 		if (pmd_none(READ_ONCE(*pmdp))) {
 			void *p = NULL;
 
-			p = vmemmap_alloc_block_buf(PMD_SIZE, node);
+			p = vmemmap_alloc_block_buf(PMD_SIZE, node,
+						    NULL, false);
 			if (!p)
 				return -ENOMEM;
 
diff --git a/arch/powerpc/mm/init_64.c b/arch/powerpc/mm/init_64.c
index 4002ced3596f..f67f2b909fe5 100644
--- a/arch/powerpc/mm/init_64.c
+++ b/arch/powerpc/mm/init_64.c
@@ -226,12 +226,12 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 		 * fall back to system memory if the altmap allocation fail.
 		 */
 		if (altmap && !altmap_cross_boundary(altmap, start, page_size)) {
-			p = altmap_alloc_block_buf(page_size, altmap);
-			if (!p)
-				pr_debug("altmap block allocation failed, falling back to system memory");
+			p = vmemmap_alloc_block_buf(page_size, node,
+						    altmap, true);
+		} else {
+			p = vmemmap_alloc_block_buf(page_size, node,
+						    NULL, false);
 		}
-		if (!p)
-			p = vmemmap_alloc_block_buf(page_size, node);
 		if (!p)
 			return -ENOMEM;
 
diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
index c22677571619..35cc0c9d9578 100644
--- a/arch/x86/mm/init_64.c
+++ b/arch/x86/mm/init_64.c
@@ -1444,10 +1444,8 @@ static int __meminit vmemmap_populate_hugepages(unsigned long start,
 		if (pmd_none(*pmd)) {
 			void *p;
 
-			if (altmap)
-				p = altmap_alloc_block_buf(PMD_SIZE, altmap);
-			else
-				p = vmemmap_alloc_block_buf(PMD_SIZE, node);
+			p = vmemmap_alloc_block_buf(PMD_SIZE, node,
+						    altmap, false);
 			if (p) {
 				pte_t entry;
 
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 955be0331833..b8d3d90c9c47 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2991,7 +2991,8 @@ pte_t *vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
 			    struct vmem_altmap *altmap);
 void *vmemmap_alloc_block(unsigned long size, int node);
 struct vmem_altmap;
-void *vmemmap_alloc_block_buf(unsigned long size, int node);
+void *vmemmap_alloc_block_buf(unsigned long size, int node,
+			      struct vmem_altmap *altmap, bool sysram_fallback);
 void *altmap_alloc_block_buf(unsigned long size, struct vmem_altmap *altmap);
 void vmemmap_verify(pte_t *, int, unsigned long, unsigned long);
 int vmemmap_populate_basepages(unsigned long start, unsigned long end,
diff --git a/mm/sparse-vmemmap.c b/mm/sparse-vmemmap.c
index a407abc9b46c..ff5adc233e38 100644
--- a/mm/sparse-vmemmap.c
+++ b/mm/sparse-vmemmap.c
@@ -71,10 +71,31 @@ void * __meminit vmemmap_alloc_block(unsigned long size, int node)
 }
 
 /* need to make sure size is all the same during early stage */
-void * __meminit vmemmap_alloc_block_buf(unsigned long size, int node)
+void * __meminit vmemmap_alloc_block_buf(unsigned long size, int node,
+					 struct vmem_altmap *altmap,
+					 bool sysram_fallback)
 {
-	void *ptr = sparse_buffer_alloc(size);
+	void *ptr;
 
+	/*
+	 * There is no point in asking for sysram fallback
+	 * without an altmap request to begin with. So just
+	 * warn here to catch potential call sites that may
+	 * be violating this.
+	 */
+	WARN_ON(!altmap && sysram_fallback);
+
+	if (altmap) {
+		ptr = altmap_alloc_block_buf(size, altmap);
+		if (ptr)
+			return ptr;
+		pr_debug("altmap block allocation failed\n");
+		if (!sysram_fallback)
+			return NULL;
+		pr_debug("falling back to system memory\n");
+	}
+
+	ptr = sparse_buffer_alloc(size);
 	if (!ptr)
 		ptr = vmemmap_alloc_block(size, node);
 	return ptr;
@@ -148,10 +169,7 @@ pte_t * __meminit vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
 		pte_t entry;
 		void *p;
 
-		if (altmap)
-			p = altmap_alloc_block_buf(PAGE_SIZE, altmap);
-		else
-			p = vmemmap_alloc_block_buf(PAGE_SIZE, node);
+		p = vmemmap_alloc_block_buf(PAGE_SIZE, node, altmap, false);
 		if (!p)
 			return NULL;
 		entry = pfn_pte(__pa(p) >> PAGE_SHIFT, PAGE_KERNEL);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
