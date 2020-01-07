Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4545B133162
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3wj4tIfKDrZ+3SP2CpK1PkGmGZtygfayy0L+RNT1QI=; b=Aj4bwdiuj6vqN/
	YwHbC12RmbOOZmLXfR3CxxuAxcvVJ1bddaQ0sA3dwzMb6UPuTa0Nzvm3CJSOwNyRcnfqu0+cUhlU6
	qYugoC+yPQpFgox2ySpCFzXMZCByGHXix83fKnnItLw8wHrSaYTjVRn+r0Exnnu3WjNrMGTMJZP+N
	cWPN3/L5UUnZs1TyY5Vq3km055nyBQvrHvucq6PvqeS/D4t5hZg7sYncyc1m+l7EIqJlct1vvairY
	amsaXfII7cQQMCTsk5qm/0ynAaIoO3ODgB6TU8wck7QcvEbqNoJQHUZUkDbmv5yXAOVboeNJSgEyQ
	qcR9DU4l5lrIX15DCCfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovxe-0001V5-2l; Tue, 07 Jan 2020 21:00:22 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovxU-0001Rr-4t
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 21:00:13 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1iovxO-0007vv-QG; Tue, 07 Jan 2020 14:00:09 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1iovxJ-0001zJ-1Y; Tue, 07 Jan 2020 14:00:01 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>, Michal Hocko <mhocko@kernel.org>,
 David Hildenbrand <david@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Date: Tue,  7 Jan 2020 13:59:57 -0700
Message-Id: <20200107205959.7575-7-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200107205959.7575-1-logang@deltatee.com>
References: <20200107205959.7575-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-sh@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, dan.j.williams@intel.com, akpm@linux-foundation.org,
 hch@lst.de, catalin.marinas@arm.com, benh@kernel.crashing.org,
 tglx@linutronix.de, david@redhat.com, mingo@redhat.com, bp@alien8.de,
 dave.hansen@linux.intel.com, mhocko@kernel.org, will@kernel.org,
 luto@kernel.org, peterz@infradead.org, ebadger@gigaio.com, logang@deltatee.com,
 gor@linux.ibm.com, heiko.carstens@de.ibm.com, borntraeger@de.ibm.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/8] s390/mm: Thread pgprot_t through vmem_add_mapping()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_130012_202382_DB61FBB6 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
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
Cc: Eric Badger <ebadger@gigaio.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In prepartion to support a pgprot_t argument for arch_add_memory().

Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 arch/s390/include/asm/pgtable.h |  3 ++-
 arch/s390/mm/extmem.c           |  3 ++-
 arch/s390/mm/init.c             |  2 +-
 arch/s390/mm/vmem.c             | 10 +++++-----
 4 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/s390/include/asm/pgtable.h b/arch/s390/include/asm/pgtable.h
index 7b03037a8475..e667a1a96879 100644
--- a/arch/s390/include/asm/pgtable.h
+++ b/arch/s390/include/asm/pgtable.h
@@ -1640,7 +1640,8 @@ static inline swp_entry_t __swp_entry(unsigned long type, unsigned long offset)
 
 #define kern_addr_valid(addr)   (1)
 
-extern int vmem_add_mapping(unsigned long start, unsigned long size);
+extern int vmem_add_mapping(unsigned long start, unsigned long size,
+			    pgprot_t prot);
 extern int vmem_remove_mapping(unsigned long start, unsigned long size);
 extern int s390_enable_sie(void);
 extern int s390_enable_skey(void);
diff --git a/arch/s390/mm/extmem.c b/arch/s390/mm/extmem.c
index fd0dae9d10f4..6cf7029a7b35 100644
--- a/arch/s390/mm/extmem.c
+++ b/arch/s390/mm/extmem.c
@@ -313,7 +313,8 @@ __segment_load (char *name, int do_nonshared, unsigned long *addr, unsigned long
 		goto out_free;
 	}
 
-	rc = vmem_add_mapping(seg->start_addr, seg->end - seg->start_addr + 1);
+	rc = vmem_add_mapping(seg->start_addr, seg->end - seg->start_addr + 1,
+			      PAGE_KERNEL);
 
 	if (rc)
 		goto out_free;
diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
index a0c88c1c9ad0..ef19522ddad2 100644
--- a/arch/s390/mm/init.c
+++ b/arch/s390/mm/init.c
@@ -277,7 +277,7 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	if (WARN_ON_ONCE(modifiers->altmap))
 		return -EINVAL;
 
-	rc = vmem_add_mapping(start, size);
+	rc = vmem_add_mapping(start, size, PAGE_KERNEL);
 	if (rc)
 		return rc;
 
diff --git a/arch/s390/mm/vmem.c b/arch/s390/mm/vmem.c
index b403fa14847d..8a5e95f184a2 100644
--- a/arch/s390/mm/vmem.c
+++ b/arch/s390/mm/vmem.c
@@ -66,7 +66,7 @@ pte_t __ref *vmem_pte_alloc(void)
 /*
  * Add a physical memory range to the 1:1 mapping.
  */
-static int vmem_add_mem(unsigned long start, unsigned long size)
+static int vmem_add_mem(unsigned long start, unsigned long size, pgprot_t prot)
 {
 	unsigned long pgt_prot, sgt_prot, r3_prot;
 	unsigned long pages4k, pages1m, pages2g;
@@ -79,7 +79,7 @@ static int vmem_add_mem(unsigned long start, unsigned long size)
 	pte_t *pt_dir;
 	int ret = -ENOMEM;
 
-	pgt_prot = pgprot_val(PAGE_KERNEL);
+	pgt_prot = pgprot_val(prot);
 	sgt_prot = pgprot_val(SEGMENT_KERNEL);
 	r3_prot = pgprot_val(REGION3_KERNEL);
 	if (!MACHINE_HAS_NX) {
@@ -362,7 +362,7 @@ int vmem_remove_mapping(unsigned long start, unsigned long size)
 	return ret;
 }
 
-int vmem_add_mapping(unsigned long start, unsigned long size)
+int vmem_add_mapping(unsigned long start, unsigned long size, pgprot_t prot)
 {
 	struct memory_segment *seg;
 	int ret;
@@ -379,7 +379,7 @@ int vmem_add_mapping(unsigned long start, unsigned long size)
 	if (ret)
 		goto out_free;
 
-	ret = vmem_add_mem(start, size);
+	ret = vmem_add_mem(start, size, prot);
 	if (ret)
 		goto out_remove;
 	goto out;
@@ -403,7 +403,7 @@ void __init vmem_map_init(void)
 	struct memblock_region *reg;
 
 	for_each_memblock(memory, reg)
-		vmem_add_mem(reg->base, reg->size);
+		vmem_add_mem(reg->base, reg->size, PAGE_KERNEL);
 	__set_memory((unsigned long)_stext,
 		     (unsigned long)(_etext - _stext) >> PAGE_SHIFT,
 		     SET_MEMORY_RO | SET_MEMORY_X);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
