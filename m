Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FE59CB15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1zheWj2YmBcw1/fH24DY9DKIaI6guxTigaXUeaJc/I=; b=L20Rn2Yu2KE3Dy
	aEmOfPH3Ji45K+2M8S2bKK06469E+uzPLioOcsR/ykmibMLxC3JZy+W0OvB/xC/kgvZMlymdsEPBo
	aBJYZ6u82/tO2OCbCtWKd1NXgVs+XDiGGcV4jqNHOc9+rtirepKjMa8kXHN9GwaCdmVB6nP2ySMju
	2A8epf5DncZw6hiSKZ2DVw0MiOveyNh1MlPxzEf7Nz+6QCKFokvL7bMiXT+XoUst3jTr+1ahtD9Bx
	xYTlcWYvKHaD9w6XMuVn3Dh5NLt+dlGRZUXwgMjFfHIplg0d2a2UPJ8MSjtQjoCmRg8kqm/z5bkvD
	MYtdpQcYfmKTPPGuPPOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29rn-0000oA-Lh; Mon, 26 Aug 2019 07:56:43 +0000
Received: from [2001:4bb8:180:3f4c:c944:137d:e92e:5fab] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i29rC-0000Pw-Va; Mon, 26 Aug 2019 07:56:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org
Subject: [PATCH 2/5] x86: remove the unused set_memory_array_* functions
Date: Mon, 26 Aug 2019 09:55:55 +0200
Message-Id: <20190826075558.8125-3-hch@lst.de>
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 arch/x86/include/asm/set_memory.h |  5 ---
 arch/x86/mm/pageattr.c            | 75 -------------------------------
 2 files changed, 80 deletions(-)

diff --git a/arch/x86/include/asm/set_memory.h b/arch/x86/include/asm/set_memory.h
index ae7b909dc242..899ec9ae7cff 100644
--- a/arch/x86/include/asm/set_memory.h
+++ b/arch/x86/include/asm/set_memory.h
@@ -48,11 +48,6 @@ int set_memory_encrypted(unsigned long addr, int numpages);
 int set_memory_decrypted(unsigned long addr, int numpages);
 int set_memory_np_noalias(unsigned long addr, int numpages);
 
-int set_memory_array_uc(unsigned long *addr, int addrinarray);
-int set_memory_array_wc(unsigned long *addr, int addrinarray);
-int set_memory_array_wt(unsigned long *addr, int addrinarray);
-int set_memory_array_wb(unsigned long *addr, int addrinarray);
-
 int set_pages_array_uc(struct page **pages, int addrinarray);
 int set_pages_array_wc(struct page **pages, int addrinarray);
 int set_pages_array_wt(struct page **pages, int addrinarray);
diff --git a/arch/x86/mm/pageattr.c b/arch/x86/mm/pageattr.c
index a02ca8986299..3be5d22c005a 100644
--- a/arch/x86/mm/pageattr.c
+++ b/arch/x86/mm/pageattr.c
@@ -1809,63 +1809,6 @@ int set_memory_uc(unsigned long addr, int numpages)
 }
 EXPORT_SYMBOL(set_memory_uc);
 
-static int _set_memory_array(unsigned long *addr, int numpages,
-		enum page_cache_mode new_type)
-{
-	enum page_cache_mode set_type;
-	int i, j;
-	int ret;
-
-	for (i = 0; i < numpages; i++) {
-		ret = reserve_memtype(__pa(addr[i]), __pa(addr[i]) + PAGE_SIZE,
-					new_type, NULL);
-		if (ret)
-			goto out_free;
-	}
-
-	/* If WC, set to UC- first and then WC */
-	set_type = (new_type == _PAGE_CACHE_MODE_WC) ?
-				_PAGE_CACHE_MODE_UC_MINUS : new_type;
-
-	ret = change_page_attr_set(addr, numpages,
-				   cachemode2pgprot(set_type), 1);
-
-	if (!ret && new_type == _PAGE_CACHE_MODE_WC)
-		ret = change_page_attr_set_clr(addr, numpages,
-					       cachemode2pgprot(
-						_PAGE_CACHE_MODE_WC),
-					       __pgprot(_PAGE_CACHE_MASK),
-					       0, CPA_ARRAY, NULL);
-	if (ret)
-		goto out_free;
-
-	return 0;
-
-out_free:
-	for (j = 0; j < i; j++)
-		free_memtype(__pa(addr[j]), __pa(addr[j]) + PAGE_SIZE);
-
-	return ret;
-}
-
-int set_memory_array_uc(unsigned long *addr, int numpages)
-{
-	return _set_memory_array(addr, numpages, _PAGE_CACHE_MODE_UC_MINUS);
-}
-EXPORT_SYMBOL(set_memory_array_uc);
-
-int set_memory_array_wc(unsigned long *addr, int numpages)
-{
-	return _set_memory_array(addr, numpages, _PAGE_CACHE_MODE_WC);
-}
-EXPORT_SYMBOL(set_memory_array_wc);
-
-int set_memory_array_wt(unsigned long *addr, int numpages)
-{
-	return _set_memory_array(addr, numpages, _PAGE_CACHE_MODE_WT);
-}
-EXPORT_SYMBOL_GPL(set_memory_array_wt);
-
 int _set_memory_wc(unsigned long addr, int numpages)
 {
 	int ret;
@@ -1942,24 +1885,6 @@ int set_memory_wb(unsigned long addr, int numpages)
 }
 EXPORT_SYMBOL(set_memory_wb);
 
-int set_memory_array_wb(unsigned long *addr, int numpages)
-{
-	int i;
-	int ret;
-
-	/* WB cache mode is hard wired to all cache attribute bits being 0 */
-	ret = change_page_attr_clear(addr, numpages,
-				      __pgprot(_PAGE_CACHE_MASK), 1);
-	if (ret)
-		return ret;
-
-	for (i = 0; i < numpages; i++)
-		free_memtype(__pa(addr[i]), __pa(addr[i]) + PAGE_SIZE);
-
-	return 0;
-}
-EXPORT_SYMBOL(set_memory_array_wb);
-
 int set_memory_x(unsigned long addr, int numpages)
 {
 	if (!(__supported_pte_mask & _PAGE_NX))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
