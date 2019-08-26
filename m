Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15839CB16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSJoEnLp5ZK8x6Oc0PhUfM1kC+g1IdH891RyV+ZiKqk=; b=Vt4HRHxhhIpqLP
	30AW6HBVC/dGAtyPbck9y9/KmLheBwL+fedg3qAOH0u7bxvnL4KpE0ZkeLtysJkhiw4Fn46hC2eqb
	yjukU4in+BI5AKjsVPQVCX97olcV54ctZIcH/XEwZHXpiyb1DrBZHMIm7bAMdj2hTjSh2rNli3EBZ
	8ogS80mSjuPh/jFoZHihh4cqIW/RKXIobPXSOgayXssXu+sTKpy/JleSbk/hi6+2TlKVUiC1sYMVp
	YGz16TMaUeLhDdH6SFrEtN9Neg/CrENT4AobPb631T4QiFOwA9zJtR7E7E7BUPLAXJOww6v6HJYYM
	XfrWm3rFOOV+BTQSBKVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29s1-00012t-U9; Mon, 26 Aug 2019 07:56:57 +0000
Received: from [2001:4bb8:180:3f4c:c944:137d:e92e:5fab] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i29rG-0000TN-2a; Mon, 26 Aug 2019 07:56:10 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org
Subject: [PATCH 3/5] x86: remove set_pages_x and set_pages_nx
Date: Mon, 26 Aug 2019 09:55:56 +0200
Message-Id: <20190826075558.8125-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190826075558.8125-1-hch@lst.de>
References: <20190826075558.8125-1-hch@lst.de>
MIME-Version: 1.0
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
 Dave Hansen <dave.hansen@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These wrappers don't provide a real benefit over just using
set_memory_x and set_memory_nx.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 arch/x86/include/asm/set_memory.h  |  2 --
 arch/x86/kernel/machine_kexec_32.c |  4 ++--
 arch/x86/mm/init_32.c              |  2 +-
 arch/x86/mm/pageattr.c             | 16 ----------------
 4 files changed, 3 insertions(+), 21 deletions(-)

diff --git a/arch/x86/include/asm/set_memory.h b/arch/x86/include/asm/set_memory.h
index 899ec9ae7cff..fd549c3ebb17 100644
--- a/arch/x86/include/asm/set_memory.h
+++ b/arch/x86/include/asm/set_memory.h
@@ -75,8 +75,6 @@ int set_pages_array_wb(struct page **pages, int addrinarray);
 
 int set_pages_uc(struct page *page, int numpages);
 int set_pages_wb(struct page *page, int numpages);
-int set_pages_x(struct page *page, int numpages);
-int set_pages_nx(struct page *page, int numpages);
 int set_pages_ro(struct page *page, int numpages);
 int set_pages_rw(struct page *page, int numpages);
 
diff --git a/arch/x86/kernel/machine_kexec_32.c b/arch/x86/kernel/machine_kexec_32.c
index 77854b192fef..7b45e8daad22 100644
--- a/arch/x86/kernel/machine_kexec_32.c
+++ b/arch/x86/kernel/machine_kexec_32.c
@@ -148,7 +148,7 @@ int machine_kexec_prepare(struct kimage *image)
 {
 	int error;
 
-	set_pages_x(image->control_code_page, 1);
+	set_memory_x((unsigned long)page_address(image->control_code_page), 1);
 	error = machine_kexec_alloc_page_tables(image);
 	if (error)
 		return error;
@@ -162,7 +162,7 @@ int machine_kexec_prepare(struct kimage *image)
  */
 void machine_kexec_cleanup(struct kimage *image)
 {
-	set_pages_nx(image->control_code_page, 1);
+	set_memory_nx((unsigned long)page_address(image->control_code_page), 1);
 	machine_kexec_free_page_tables(image);
 }
 
diff --git a/arch/x86/mm/init_32.c b/arch/x86/mm/init_32.c
index 4068abb9427f..930edeb41ec3 100644
--- a/arch/x86/mm/init_32.c
+++ b/arch/x86/mm/init_32.c
@@ -916,7 +916,7 @@ static void mark_nxdata_nx(void)
 
 	if (__supported_pte_mask & _PAGE_NX)
 		printk(KERN_INFO "NX-protecting the kernel data: %luk\n", size >> 10);
-	set_pages_nx(virt_to_page(start), size >> PAGE_SHIFT);
+	set_memory_nx(start, size >> PAGE_SHIFT);
 }
 
 void mark_rodata_ro(void)
diff --git a/arch/x86/mm/pageattr.c b/arch/x86/mm/pageattr.c
index 3be5d22c005a..0e39b344556d 100644
--- a/arch/x86/mm/pageattr.c
+++ b/arch/x86/mm/pageattr.c
@@ -2103,22 +2103,6 @@ int set_pages_array_wb(struct page **pages, int numpages)
 }
 EXPORT_SYMBOL(set_pages_array_wb);
 
-int set_pages_x(struct page *page, int numpages)
-{
-	unsigned long addr = (unsigned long)page_address(page);
-
-	return set_memory_x(addr, numpages);
-}
-EXPORT_SYMBOL(set_pages_x);
-
-int set_pages_nx(struct page *page, int numpages)
-{
-	unsigned long addr = (unsigned long)page_address(page);
-
-	return set_memory_nx(addr, numpages);
-}
-EXPORT_SYMBOL(set_pages_nx);
-
 int set_pages_ro(struct page *page, int numpages)
 {
 	unsigned long addr = (unsigned long)page_address(page);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
