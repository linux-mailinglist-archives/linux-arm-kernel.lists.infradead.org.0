Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F578B33B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 11:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4wbT6Sbti0qDy+3uwQb+PDgbn52p+7BXkLxnptGqKE=; b=ucnl5oiNooh9nY
	JQuOZB98R2u5cGdyP3xsZnvi5l+J0D9AUWipLDPrl1/0VeIq+hNtGxaH459I+uqNw6qqRtzuw0z/J
	3wLO4P+pwyb8OZpbldvyyIwtd1WHdy0R/kSw/DGTGeG+8gCJqq3oVgHjjKJqHts6ppTPfftlAEqfe
	lgvzxQp07h9/RhQP00gBW8BC/MMJwtRHX04xhRUa7LMU/8APMWZ/1MJyJwdt83vv0i4OIBeWrgrDw
	bXwdeFJqLtzTJ0y56aqOoA8xLzLbc33SInhRxhcAZvzAR9oI+fDCHEzv3GqNXfdSKQZe7r05CtwcV
	7rSJP2YLjl5gfNJYO8jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxShF-0006bP-91; Tue, 13 Aug 2019 09:02:25 +0000
Received: from [2001:4bb8:180:1ec3:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxSgj-0006Ox-70; Tue, 13 Aug 2019 09:01:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 x86@kernel.org
Subject: [PATCH 1/6] arm64: unexport set_memory_x and set_memory_nx
Date: Tue, 13 Aug 2019 11:01:41 +0200
Message-Id: <20190813090146.26377-2-hch@lst.de>
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

No module currently messed with clearing or setting the execute
permission of kernel memory, and none really should.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm64/mm/pageattr.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
index 03c53f16ee77..9ce7bd9d4d9c 100644
--- a/arch/arm64/mm/pageattr.c
+++ b/arch/arm64/mm/pageattr.c
@@ -128,7 +128,6 @@ int set_memory_nx(unsigned long addr, int numpages)
 					__pgprot(PTE_PXN),
 					__pgprot(0));
 }
-EXPORT_SYMBOL_GPL(set_memory_nx);
 
 int set_memory_x(unsigned long addr, int numpages)
 {
@@ -136,7 +135,6 @@ int set_memory_x(unsigned long addr, int numpages)
 					__pgprot(0),
 					__pgprot(PTE_PXN));
 }
-EXPORT_SYMBOL_GPL(set_memory_x);
 
 int set_memory_valid(unsigned long addr, int numpages, int enable)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
