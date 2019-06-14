Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5038246159
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Psw0VNFPeb3jRbV54lUHWmT0ues0v/VabZa28xv4mc0=; b=LKMEPBsDI+rj7V
	4yMvvQrQDKXxnG46+3JcPldgXb7jrgVAsGOg0VnCA+gQ1jivJ3MHE0DBdiujQBskINBE2IUckSg1j
	8LfzBviMsKd775Gsfc0IMIdMX71FZoKH1M7/jgRJqO7RIpAwKoXu8KpcPXqyxBdeqt/ULLH1dSW79
	Qjz/7NV+TdDGfzH3+/9Ps8I6NVSLqd1KCunbjQIKalgUZGKxVv3cjqmUIvfKjNKIrCkyPKS9F1Mfe
	E7X3OQeJPaz080vqeceKwYNv0mk7V5zitKv937u/0D50wN1cFJZ43AY/RN79Icfa7u4w54JH0L05E
	9whYG/I7HFSUlGtQyXvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnSs-00081w-Em; Fri, 14 Jun 2019 14:46:02 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnRf-0005uj-AL; Fri, 14 Jun 2019 14:44:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH 3/7] openrisc: remove the partial DMA_ATTR_NON_CONSISTENT
 support
Date: Fri, 14 Jun 2019 16:44:27 +0200
Message-Id: <20190614144431.21760-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614144431.21760-1-hch@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 Helge Deller <deller@gmx.de>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The openrisc DMA code supports DMA_ATTR_NON_CONSISTENT allocations, but
does not provide a cache_sync operation.  This means any user of it
will never be able to actually transfer cache ownership and thus cause
coherency bugs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/openrisc/kernel/dma.c | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/arch/openrisc/kernel/dma.c b/arch/openrisc/kernel/dma.c
index f79457cb3741..9f25fd0fbb5d 100644
--- a/arch/openrisc/kernel/dma.c
+++ b/arch/openrisc/kernel/dma.c
@@ -98,15 +98,13 @@ arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 
 	va = (unsigned long)page;
 
-	if ((attrs & DMA_ATTR_NON_CONSISTENT) == 0) {
-		/*
-		 * We need to iterate through the pages, clearing the dcache for
-		 * them and setting the cache-inhibit bit.
-		 */
-		if (walk_page_range(va, va + size, &walk)) {
-			free_pages_exact(page, size);
-			return NULL;
-		}
+	/*
+	 * We need to iterate through the pages, clearing the dcache for
+	 * them and setting the cache-inhibit bit.
+	 */
+	if (walk_page_range(va, va + size, &walk)) {
+		free_pages_exact(page, size);
+		return NULL;
 	}
 
 	return (void *)va;
@@ -122,10 +120,8 @@ arch_dma_free(struct device *dev, size_t size, void *vaddr,
 		.mm = &init_mm
 	};
 
-	if ((attrs & DMA_ATTR_NON_CONSISTENT) == 0) {
-		/* walk_page_range shouldn't be able to fail here */
-		WARN_ON(walk_page_range(va, va + size, &walk));
-	}
+	/* walk_page_range shouldn't be able to fail here */
+	WARN_ON(walk_page_range(va, va + size, &walk));
 
 	free_pages_exact(vaddr, size);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
