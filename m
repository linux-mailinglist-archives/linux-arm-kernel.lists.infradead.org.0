Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441E89CB1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPxOPe5eGqv6ekuqvhnhfnLYBoleUSnDj99ktbtcj4U=; b=qNWSnZAQDqghBi
	RX/AC3O1R/JKLiek8qRTOQZm1SULOq40ihoL87aa9es3FZ9veAwvWxYThU3MfmLCs754yP4wtMun4
	/RJ6LIdbbMlV1m509rGyP2W1Q0RBNFGK7pti1PoQTemJRH72mOYGUwaJJI9Tj4R69zPfyRx+4plwC
	0gzcC2+ah9Eq19lFp6olsH+xndq8kiyeINa5qKXJvcx94HtBxSPsRG4YuV3oZkMVfGEpF2M+/MasB
	LtJdZpfhYWQYSMZbLcIFHqAFAsaoB0TEY14oHwwuFBEKbzVSZF5vOUTHKkJxn4NR87GO5EkptWp6r
	VbJ9i08hm+7nWAXETlpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29sb-0001Tb-72; Mon, 26 Aug 2019 07:57:33 +0000
Received: from [2001:4bb8:180:3f4c:c944:137d:e92e:5fab] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i29rM-0000ad-VF; Mon, 26 Aug 2019 07:56:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org
Subject: [PATCH 5/5] x86: remove the unused set_pages_array_wt function
Date: Mon, 26 Aug 2019 09:55:58 +0200
Message-Id: <20190826075558.8125-6-hch@lst.de>
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
 arch/x86/include/asm/set_memory.h | 1 -
 arch/x86/mm/pageattr.c            | 6 ------
 2 files changed, 7 deletions(-)

diff --git a/arch/x86/include/asm/set_memory.h b/arch/x86/include/asm/set_memory.h
index 2ee8e469dcf5..cff5e07c1e19 100644
--- a/arch/x86/include/asm/set_memory.h
+++ b/arch/x86/include/asm/set_memory.h
@@ -49,7 +49,6 @@ int set_memory_np_noalias(unsigned long addr, int numpages);
 
 int set_pages_array_uc(struct page **pages, int addrinarray);
 int set_pages_array_wc(struct page **pages, int addrinarray);
-int set_pages_array_wt(struct page **pages, int addrinarray);
 int set_pages_array_wb(struct page **pages, int addrinarray);
 
 /*
diff --git a/arch/x86/mm/pageattr.c b/arch/x86/mm/pageattr.c
index 9acd568c4faa..255c90d6aaa7 100644
--- a/arch/x86/mm/pageattr.c
+++ b/arch/x86/mm/pageattr.c
@@ -2047,12 +2047,6 @@ int set_pages_array_wc(struct page **pages, int numpages)
 }
 EXPORT_SYMBOL(set_pages_array_wc);
 
-int set_pages_array_wt(struct page **pages, int numpages)
-{
-	return _set_pages_array(pages, numpages, _PAGE_CACHE_MODE_WT);
-}
-EXPORT_SYMBOL_GPL(set_pages_array_wt);
-
 int set_pages_wb(struct page *page, int numpages)
 {
 	unsigned long addr = (unsigned long)page_address(page);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
