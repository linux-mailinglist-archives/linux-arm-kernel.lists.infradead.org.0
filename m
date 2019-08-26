Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E5D9CB14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZOO4gnfYsPJXLjmEeS6S+IR+h/NJLs8ioBRv/YZiYU=; b=hjk4zF1jpQK8KW
	wo4/jLV+3EGRwVjV24PZ6qNGMfRgtdmtnGwxLIz0pYk5qo4tBW3jMIGU1TySUQOJGzO191anzZkEw
	xR4Rw89l+hewq+mR+zC/AkaXZ7oK17QbqFALS3Q67/ILrxAEbpoyI3W7UFYLMKuoGQnGQxSq4M487
	mD0phMwfLJxKUio0l6HNbT5RaWl9fm14j3HWwiHFW9TsJW7WKdBSYdO9uqwACFEwDMBLJhNhpfCaM
	xaYcCbzFAB7YrHXGJUVdf+uHbdnH6YfE+mVwWV5rpIn7fwn90m45B6GL06JUGA8ElWuYAeqjtKtjD
	w75fO7OyMZxuTxsQF78Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29rY-0000Xk-0D; Mon, 26 Aug 2019 07:56:28 +0000
Received: from [2001:4bb8:180:3f4c:c944:137d:e92e:5fab] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i29r9-0000NQ-Kf; Mon, 26 Aug 2019 07:56:04 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org
Subject: [PATCH 1/5] x86: unexport set_memory_x and set_memory_nx
Date: Mon, 26 Aug 2019 09:55:54 +0200
Message-Id: <20190826075558.8125-2-hch@lst.de>
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

No module currently messed with clearing or setting the execute
permission of kernel memory, and none really should.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 arch/x86/mm/pageattr.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/x86/mm/pageattr.c b/arch/x86/mm/pageattr.c
index 6a9a77a403c9..a02ca8986299 100644
--- a/arch/x86/mm/pageattr.c
+++ b/arch/x86/mm/pageattr.c
@@ -1967,7 +1967,6 @@ int set_memory_x(unsigned long addr, int numpages)
 
 	return change_page_attr_clear(&addr, numpages, __pgprot(_PAGE_NX), 0);
 }
-EXPORT_SYMBOL(set_memory_x);
 
 int set_memory_nx(unsigned long addr, int numpages)
 {
@@ -1976,7 +1975,6 @@ int set_memory_nx(unsigned long addr, int numpages)
 
 	return change_page_attr_set(&addr, numpages, __pgprot(_PAGE_NX), 0);
 }
-EXPORT_SYMBOL(set_memory_nx);
 
 int set_memory_ro(unsigned long addr, int numpages)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
