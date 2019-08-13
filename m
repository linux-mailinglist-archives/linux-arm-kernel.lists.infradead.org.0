Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB668B34A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 11:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVVuUD1s0Pt4hdPPZ9v5aZfpf9UWXysdRXYBf7p5VQk=; b=tZHyzkxNlQRxUJ
	XhH3+Vs1rWNUzK6IFhQ4PXHpqNfIWQkQOfCdpkZ8VEKxux0jmRlPew7nW5qcUg2lYZ6HP1Q7rp8gn
	P50T89wf1/PhMXRAEHWVGy7dte+xGf8T8av2UoaCVLH8SSmfX5QAeYe9VqdOZe3GnJGDLA59wV23f
	1wXBHdaZjq4dO3N+TDLgAMgI/EmsMhpm1CTimK0nTzf3ACyr26ceQBZVxoDunNS0ZvQAGI5u/o4NY
	OJhJ01Yvy8nU932UlxujVN3x9MB/FXrGqpfgo9a4jOufzQVe9+nfs96bZ4a1dSK1GMnRTDbjAjckD
	WKLgti728Wk9HwcfopCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxSiX-0007c5-H6; Tue, 13 Aug 2019 09:03:45 +0000
Received: from [2001:4bb8:180:1ec3:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxSgt-0006XN-VM; Tue, 13 Aug 2019 09:02:04 +0000
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 x86@kernel.org
Subject: [PATCH 5/6] x86: remove the unused set_memory_wt function
Date: Tue, 13 Aug 2019 11:01:45 +0200
Message-Id: <20190813090146.26377-6-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190813090146.26377-1-hch@lst.de>
References: <20190813090146.26377-1-hch@lst.de>
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
---
 arch/x86/include/asm/set_memory.h |  1 -
 arch/x86/mm/pageattr.c            | 17 -----------------
 2 files changed, 18 deletions(-)

diff --git a/arch/x86/include/asm/set_memory.h b/arch/x86/include/asm/set_memory.h
index fd549c3ebb17..2ee8e469dcf5 100644
--- a/arch/x86/include/asm/set_memory.h
+++ b/arch/x86/include/asm/set_memory.h
@@ -40,7 +40,6 @@ int _set_memory_wt(unsigned long addr, int numpages);
 int _set_memory_wb(unsigned long addr, int numpages);
 int set_memory_uc(unsigned long addr, int numpages);
 int set_memory_wc(unsigned long addr, int numpages);
-int set_memory_wt(unsigned long addr, int numpages);
 int set_memory_wb(unsigned long addr, int numpages);
 int set_memory_np(unsigned long addr, int numpages);
 int set_memory_4k(unsigned long addr, int numpages);
diff --git a/arch/x86/mm/pageattr.c b/arch/x86/mm/pageattr.c
index 0e39b344556d..9acd568c4faa 100644
--- a/arch/x86/mm/pageattr.c
+++ b/arch/x86/mm/pageattr.c
@@ -1848,23 +1848,6 @@ int _set_memory_wt(unsigned long addr, int numpages)
 				    cachemode2pgprot(_PAGE_CACHE_MODE_WT), 0);
 }
 
-int set_memory_wt(unsigned long addr, int numpages)
-{
-	int ret;
-
-	ret = reserve_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE,
-			      _PAGE_CACHE_MODE_WT, NULL);
-	if (ret)
-		return ret;
-
-	ret = _set_memory_wt(addr, numpages);
-	if (ret)
-		free_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE);
-
-	return ret;
-}
-EXPORT_SYMBOL_GPL(set_memory_wt);
-
 int _set_memory_wb(unsigned long addr, int numpages)
 {
 	/* WB cache mode is hard wired to all cache attribute bits being 0 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
